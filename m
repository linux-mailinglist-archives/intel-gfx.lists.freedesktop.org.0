Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9F8679C60
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 15:47:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D0B710E694;
	Tue, 24 Jan 2023 14:47:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7DA210E692
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 14:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674571646; x=1706107646;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jvmslUJoIORnG/l6psXDImxnLcEM3s+QlV1/HNZAgNg=;
 b=Hea5OplIMKTN21EyqNgEm2WvLtg2gRWnVGxIdXbm9QVqDUG8gij6EnuB
 gIc3L6SDaZj3l+AjlRAR/g31pwLN0e/APZsHLDAf05B5IfSGflImim313
 eqmFVSlrrtptjTdQ4M2bi5ycUNuFtMKhGTcx5PtZj642pGzqtKe1cPB7a
 ZtM72MiEw0FpgtFalV9D/lMAercsteJ5CD0Wu/fcfsQcn9ZO9fXtVQYfL
 pTsA+ZDbim3SzNomu5RUILOPBV+0uWMF7F3RlOfZgG7O08ejN8tTGbVmL
 tp+whg4xqIYO8IJWER9Xm5Y1GGQcv2d5gEPKf7nmchB/dP4EiZw7vJfQu A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="412538996"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="412538996"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 06:47:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="639602766"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="639602766"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga006.jf.intel.com with SMTP; 24 Jan 2023 06:47:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 24 Jan 2023 16:47:22 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Jan 2023 16:46:28 +0200
Message-Id: <20230124144628.4649-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230124144628.4649-1-ville.syrjala@linux.intel.com>
References: <20230124144628.4649-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 13/13] drm/i915/audio: Clean up the PCH type
 checks
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
Cc: Takashi Iwai <tiwai@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Use explicit PCH type checks to make it more clear
which platforms use which codepaths.

Also reorder the branches in ibx_audio_regs_init()
a bit to be more in chronological order.

Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 99a3ed84dac9..a9335c856644 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -666,21 +666,21 @@ static void ibx_audio_regs_init(struct drm_i915_private *i915,
 				enum pipe pipe,
 				struct ibx_audio_regs *regs)
 {
-	if (HAS_PCH_IBX(i915)) {
-		regs->hdmiw_hdmiedid = IBX_HDMIW_HDMIEDID(pipe);
-		regs->aud_config = IBX_AUD_CFG(pipe);
-		regs->aud_cntl_st = IBX_AUD_CNTL_ST(pipe);
-		regs->aud_cntrl_st2 = IBX_AUD_CNTL_ST2;
-	} else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
+	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
 		regs->hdmiw_hdmiedid = VLV_HDMIW_HDMIEDID(pipe);
 		regs->aud_config = VLV_AUD_CFG(pipe);
 		regs->aud_cntl_st = VLV_AUD_CNTL_ST(pipe);
 		regs->aud_cntrl_st2 = VLV_AUD_CNTL_ST2;
-	} else {
+	} else if (HAS_PCH_CPT(i915)) {
 		regs->hdmiw_hdmiedid = CPT_HDMIW_HDMIEDID(pipe);
 		regs->aud_config = CPT_AUD_CFG(pipe);
 		regs->aud_cntl_st = CPT_AUD_CNTL_ST(pipe);
 		regs->aud_cntrl_st2 = CPT_AUD_CNTRL_ST2;
+	} else if (HAS_PCH_IBX(i915)) {
+		regs->hdmiw_hdmiedid = IBX_HDMIW_HDMIEDID(pipe);
+		regs->aud_config = IBX_AUD_CFG(pipe);
+		regs->aud_cntl_st = IBX_AUD_CNTL_ST(pipe);
+		regs->aud_cntrl_st2 = IBX_AUD_CNTL_ST2;
 	}
 }
 
@@ -965,12 +965,11 @@ void intel_audio_hooks_init(struct drm_i915_private *i915)
 {
 	if (IS_G4X(i915))
 		i915->display.funcs.audio = &g4x_audio_funcs;
-	else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
+	else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915) ||
+		 HAS_PCH_CPT(i915) || HAS_PCH_IBX(i915))
 		i915->display.funcs.audio = &ibx_audio_funcs;
 	else if (IS_HASWELL(i915) || DISPLAY_VER(i915) >= 8)
 		i915->display.funcs.audio = &hsw_audio_funcs;
-	else if (HAS_PCH_SPLIT(i915))
-		i915->display.funcs.audio = &ibx_audio_funcs;
 }
 
 struct aud_ts_cdclk_m_n {
-- 
2.39.1

