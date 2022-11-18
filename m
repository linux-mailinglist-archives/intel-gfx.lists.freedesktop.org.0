Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5454662FD3D
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 19:52:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4BE110E1F6;
	Fri, 18 Nov 2022 18:52:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32B4510E1F6
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 18:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668797525; x=1700333525;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aPhlre0yxDO7G1HGacJ0K5S+PqVSSxUBCEBZd0ppoCc=;
 b=nVzMSF0R+oHjDhD7+rgz0I9RjtVDMnnS7DMw3RQ28vLWguiP/aszCvLB
 J89q1csPvY0DLbv8tJ4JjbgLFYR9ih2ZQJFx62vwLiBmOuXbJIbq2Fs5v
 xwo4T+iexzLjmGhVwy1lhTNqeQnxhPYmJssoAe92IppB+pb6VX+WAPNxr
 fvyQ++ZNIK2giXoqZ7fmpWyuixbGDEtdnKtxglwLt9tDtI/d+4xD30CFy
 Y0qnFrVNM38v3LVJRUI2GwzTftWBDS6hZOWmBVBt3/v2tVuGgiP90DR3O
 MKjkWR3/YnUYqBnNV8AX8PMVpZt2eEY+9kquQ8Quf6oDjtqgRMtkch0M8 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="399493646"
X-IronPort-AV: E=Sophos;i="5.96,175,1665471600"; d="scan'208";a="399493646"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 10:52:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="634522534"
X-IronPort-AV: E=Sophos;i="5.96,175,1665471600"; d="scan'208";a="634522534"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 18 Nov 2022 10:52:02 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 18 Nov 2022 20:52:01 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Nov 2022 20:52:01 +0200
Message-Id: <20221118185201.10469-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Remove non-existent pipes from
 bigjoiner pipe mask
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

bigjoiner_pipes() doesn't consider that:
- RKL only has three pipes
- some pipes may be fused off

This means that intel_atomic_check_bigjoiner() won't reject
all configurations that would need a non-existent pipe.
Instead we just keep on rolling witout actually having
reserved the slave pipe we need.

It's possible that we don't outright explode anywhere due to
this since eg. for_each_intel_crtc_in_pipe_mask() will only
walk the crtcs we've registered even though the passed in
pipe_mask asks for more of them. But clearly the thing won't
do what is expected of it when the required pipes are not
present.

Fix the problem by consulting the device info pipe_mask already
in bigjoiner_pipes().

Cc: stable@vger.kernel.org
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b3e23708d194..6c2686ecb62a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3733,12 +3733,16 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 
 static u8 bigjoiner_pipes(struct drm_i915_private *i915)
 {
+	u8 pipes;
+
 	if (DISPLAY_VER(i915) >= 12)
-		return BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D);
+		pipes = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D);
 	else if (DISPLAY_VER(i915) >= 11)
-		return BIT(PIPE_B) | BIT(PIPE_C);
+		pipes = BIT(PIPE_B) | BIT(PIPE_C);
 	else
-		return 0;
+		pipes = 0;
+
+	return pipes & RUNTIME_INFO(i915)->pipe_mask;
 }
 
 static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
-- 
2.37.4

