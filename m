Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D973621826
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 16:24:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 837EE10E4A2;
	Tue,  8 Nov 2022 15:24:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4508C10E48B
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 15:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667920996; x=1699456996;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qpOUsv8AWxFuAf0ZyfByi0O7A/FTD52GxIyttIMJKSM=;
 b=brR+n3KeZWnDFigB/g0QUaknaiwQPkXSAk32YNF/El/unaY2uERV4f+4
 IGYfk41dvo1uX9LsEw+Dkf1Cy40MtQ0Ya41P3/8IRFpLoKYicSssdsSE/
 YZbYYV4Vs+ArpsoPjKh/RtnzgIq4RxbwJRJTg+RwadjnGm+PkrDsQA4m5
 7hDe2Gt7rHGCzMrBLA/Z5AS8f9DIngFgRyTrXbCBYEs0J1WuNL6ai30ad
 bji22YkTnOr+Uufxb23xC5fRxvbC/wlJWIX9rocqUk6ZEvqEaCyE5f1/l
 E64KlfsWxnb63MjOwzzPm9fh4ZVNn94LSoxHa99kKHt7ICOjBNF3++m7l Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="310718921"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="310718921"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 07:19:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="725590958"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="725590958"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by FMSMGA003.fm.intel.com with SMTP; 08 Nov 2022 07:19:33 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Nov 2022 17:19:32 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Nov 2022 17:18:39 +0200
Message-Id: <20221108151839.31567-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
References: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 15/15] drm/i915/audio: Clean up the PCH type
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
Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Cc: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 4286f7a7cc76..847c7a9ddb06 100644
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
 
@@ -954,12 +954,11 @@ void intel_audio_hooks_init(struct drm_i915_private *i915)
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
2.37.4

