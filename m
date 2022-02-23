Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9394C13B2
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 14:13:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43BDE10F373;
	Wed, 23 Feb 2022 13:13:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 023ED10F395
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 13:13:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645622002; x=1677158002;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=D0Oabs5YsGSAceRqOC6KLdJCg/4Zdtc+5OcYwaNw13s=;
 b=QfHZciB1Yh3OtPFjA2qi2wLM3FkowwWNdA6iBKYMjKltSWbS+bUuXmKc
 g2sly3vM+DhX8vvmTddxGZyv8kgW9rB6zZ4aIAKMudjZA7V2GU6JnCr2e
 0428kTRusv7vbTH6ICr9bwotsaxVdBeYqFv0HpVdTxtKD0anmiVjnFlz5
 YQhXPYeSvbdFxztg7LJ1llxan5xF9l6Ia7VLrn1NuaWhLhgmEXoTPWKDg
 +xfccclDHf/nA9sZwNkTMcq8O2DV3YMVyFPQnfyay7gXscvCVW1AG88jf
 QaSy+MYeicuiueg1H6O9ZxZRutMLAgIWFNjVhYVxMMql+U+6KDTY3BcgL A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="232578928"
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="232578928"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 05:13:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,391,1635231600"; d="scan'208";a="548239537"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga008.jf.intel.com with SMTP; 23 Feb 2022 05:13:18 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Feb 2022 15:13:18 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Feb 2022 15:13:03 +0200
Message-Id: <20220223131315.18016-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220223131315.18016-1-ville.syrjala@linux.intel.com>
References: <20220223131315.18016-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 01/13] drm/i915: Avoid negative shift due to
 bigjoiner_pipes==0
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
Cc: kernel test robot <oliver.sang@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

bigjoiner_pipes==0 leads bigjoiner_master_pipe() to
do BIT(ffs(0)-1) which is undefined behaviour. The code should
actually still work fine since the only place we provoke
that is intel_crtc_bigjoiner_slave_pipes() and it'll bitwise
AND the result with 0, so doesn't really matter what we get
out of bigjoiner_master_pipe(). But best not provoke undefined
behaviour anyway.

Reported-by: kernel test robot <oliver.sang@intel.com>
Fixes: a6e7a006f5d5 ("drm/i915: Change bigjoiner state tracking to use the pipe bitmask")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 80b19c304c43..f3f5f11a5abf 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -346,7 +346,10 @@ static enum pipe bigjoiner_master_pipe(const struct intel_crtc_state *crtc_state
 
 u8 intel_crtc_bigjoiner_slave_pipes(const struct intel_crtc_state *crtc_state)
 {
-	return crtc_state->bigjoiner_pipes & ~BIT(bigjoiner_master_pipe(crtc_state));
+	if (crtc_state->bigjoiner_pipes)
+		return crtc_state->bigjoiner_pipes & ~BIT(bigjoiner_master_pipe(crtc_state));
+	else
+		return 0;
 }
 
 bool intel_crtc_is_bigjoiner_slave(const struct intel_crtc_state *crtc_state)
-- 
2.34.1

