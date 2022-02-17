Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9FFD4B9D2F
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 11:32:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 321FA10EB9D;
	Thu, 17 Feb 2022 10:32:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D22210EB9D
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 10:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645093960; x=1676629960;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=dSNF1+0XJvgCpnGAvAoOjp2JkBrVDa7ybHwv8OcjRRE=;
 b=CrOAYH7zMSxIw723B+9kMJwzcZICPrVeLEQa25Z9+hVaeQMj24njeoo5
 kOLKyOPHPvTslqKuAnZK6kPJoR+OcxtuqllWy2UKg1p4uIMOGDOS0+LQK
 jHE08S/88/34tMy/vhUgUse0g3b+QfCFfpxLMcF1E9NfbbzR5xYLcC4t1
 kNtvdv82jzel4efLLT5gWwwaf6OGb2CjJBaWB494eC7mipQBcU2SnLjM5
 oCl2LNQzcBfJvhbCuW6t01kO/sU+VRa4EkP4TwigbcudUbsPylY9fOLA+
 ZIzhwM9g+QpdvIZICrqqUBjZq/Tp5Xvsou1irLlxgnJSNyIOA7ZMved3O A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="231468616"
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="231468616"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 02:32:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="625941615"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by FMSMGA003.fm.intel.com with SMTP; 17 Feb 2022 02:32:24 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Feb 2022 12:32:24 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Feb 2022 12:32:18 +0200
Message-Id: <20220217103221.10405-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220217103221.10405-1-ville.syrjala@linux.intel.com>
References: <20220217103221.10405-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: Dump the crtc hw state always
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Let's just dump the "full" hw crtc state in debugs so that we can
see if some stale junk was left behind when the crtc is supposed
to be entirely off.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_display_debugfs.c | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 84be489c3399..f1d78b1c7702 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -923,17 +923,15 @@ static void intel_crtc_info(struct seq_file *m, struct intel_crtc *crtc)
 		   yesno(crtc_state->uapi.active),
 		   DRM_MODE_ARG(&crtc_state->uapi.mode));
 
-	if (crtc_state->hw.enable) {
-		seq_printf(m, "\thw: active=%s, adjusted_mode=" DRM_MODE_FMT "\n",
-			   yesno(crtc_state->hw.active),
-			   DRM_MODE_ARG(&crtc_state->hw.adjusted_mode));
+	seq_printf(m, "\thw: active=%s, adjusted_mode=" DRM_MODE_FMT "\n",
+		   yesno(crtc_state->hw.active),
+		   DRM_MODE_ARG(&crtc_state->hw.adjusted_mode));
 
-		seq_printf(m, "\tpipe src size=%dx%d, dither=%s, bpp=%d\n",
-			   crtc_state->pipe_src_w, crtc_state->pipe_src_h,
-			   yesno(crtc_state->dither), crtc_state->pipe_bpp);
+	seq_printf(m, "\tpipe src size=%dx%d, dither=%s, bpp=%d\n",
+		   crtc_state->pipe_src_w, crtc_state->pipe_src_h,
+		   yesno(crtc_state->dither), crtc_state->pipe_bpp);
 
-		intel_scaler_info(m, crtc);
-	}
+	intel_scaler_info(m, crtc);
 
 	if (crtc_state->bigjoiner)
 		seq_printf(m, "\tLinked to 0x%x pipes as a %s\n",
-- 
2.34.1

