Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A15F498CA7
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 20:26:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41ED210EA43;
	Mon, 24 Jan 2022 19:26:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A59C210EA43
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jan 2022 19:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643052404; x=1674588404;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2OLwBi01rsBqDbizWcSssfnzWXdwpc5SPGlozk7MmjA=;
 b=JwHSo4rt3oFVjbufiemw/Cuf8SEFTx2q8MKqDV8yNVU6htkcqCCXZkel
 BduF8P3e6XryiUjEsUjppqiQui78B0Hyjcq1vsSaJpiiQPx1WEQy4OioG
 b5VbjYde8AGnZw8DvSqVhqUqfvtagLz/nN5oaqfQdfpquZ2d3EDirYIzs
 OpNMFrAXCX4kfVeTuWE6+D+W9N75kRivd7xjQ+F9sZ9zl1PYiKB7FdsIB
 7TdCZ7VpihTRPw5CJHyvByJEH8e5WYW+rv/XNeBHR08/R51QiBJiUkWna
 IYHOl1cNYOBf9WU68fJ/2dg1/PKIPtLE+EkoqrN0q/jfjGRu5ZEhGL9ZW g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10237"; a="226801136"
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="226801136"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2022 11:26:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,311,1635231600"; d="scan'208";a="673729138"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga001.fm.intel.com with SMTP; 24 Jan 2022 11:26:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Jan 2022 21:26:41 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Jan 2022 21:26:35 +0200
Message-Id: <20220124192638.26262-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220124192638.26262-1-ville.syrjala@linux.intel.com>
References: <20220124192638.26262-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/5] drm/i915: Simplify
 intel_dsc_source_support()
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We can simplify the icl check in intel_dsc_source_support()
by noting that the only case when DSC is not supported is when
using transcoder A.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 9b05f93ed8bc..3faea903b9ae 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -341,19 +341,14 @@ bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state)
 	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
-	enum pipe pipe = crtc->pipe;
 
 	if (!INTEL_INFO(i915)->display.has_dsc)
 		return false;
 
-	/* On TGL, DSC is supported on all Pipes */
 	if (DISPLAY_VER(i915) >= 12)
 		return true;
 
-	if (DISPLAY_VER(i915) >= 11 &&
-	    (pipe != PIPE_A || cpu_transcoder == TRANSCODER_EDP ||
-	     cpu_transcoder == TRANSCODER_DSI_0 ||
-	     cpu_transcoder == TRANSCODER_DSI_1))
+	if (DISPLAY_VER(i915) >= 11 && cpu_transcoder != TRANSCODER_A)
 		return true;
 
 	return false;
-- 
2.34.1

