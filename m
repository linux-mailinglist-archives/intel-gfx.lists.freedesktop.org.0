Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 827CD4A6FBE
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Feb 2022 12:16:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EF8510E9D7;
	Wed,  2 Feb 2022 11:16:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 816F610E9DC
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Feb 2022 11:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643800583; x=1675336583;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=NQoOYQYW1pWxHTm3MI5nO/wwR5wRsNIbiem3YyCPJmY=;
 b=iSQiabJAkC55kPPD7gKxQ5bx3rgA/cFstOhwTPAoyt1iPFSfeTeeW897
 Vh7CA0akBs/qCNGPVcds2QBza5pt6YBgz8j3/Omgo1LMrvGVNAYDbNcEK
 4CHdDZZQlYev+v542AUV7mNuRY8MQYiTFI56LKQN20LzxNgVYfamr098E
 iE9ePU3h9H8StLR/TlXyrJQUV4M01QDPDHR9Ui/3TWRiHuSHZ5iNF59uF
 OIpYuGZRqmIu0jqUKj2Xk3+S5EGWzFkZkbDJ8207/7nIqyKshpcfD6CsV
 MLw892ExSZJ6+bNE/Ao+HK9CEQrKBhKdItL51pSPFF9k7FiqhlJT6ilWw A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10245"; a="334253812"
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="334253812"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 03:16:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,336,1635231600"; d="scan'208";a="565953732"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga001.jf.intel.com with SMTP; 02 Feb 2022 03:16:20 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 02 Feb 2022 13:16:19 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Feb 2022 13:16:14 +0200
Message-Id: <20220202111616.1579-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220202111616.1579-1-ville.syrjala@linux.intel.com>
References: <20220202111616.1579-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915: Make the pipe/output CSC register
 writes lockless
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

The pipe/output CSC register writes don't need to be locked
since all the registers are suitably isolated to their own
cachelines. So eliminate the locks to reduce the overhead
during the vblank evade critical section.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 80 +++++++++++-----------
 1 file changed, 40 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index de3ded1e327a..a41da9e3f9dc 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -160,29 +160,29 @@ static void ilk_update_pipe_csc(struct intel_crtc *crtc,
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
-	intel_de_write(dev_priv, PIPE_CSC_PREOFF_HI(pipe), preoff[0]);
-	intel_de_write(dev_priv, PIPE_CSC_PREOFF_ME(pipe), preoff[1]);
-	intel_de_write(dev_priv, PIPE_CSC_PREOFF_LO(pipe), preoff[2]);
+	intel_de_write_fw(dev_priv, PIPE_CSC_PREOFF_HI(pipe), preoff[0]);
+	intel_de_write_fw(dev_priv, PIPE_CSC_PREOFF_ME(pipe), preoff[1]);
+	intel_de_write_fw(dev_priv, PIPE_CSC_PREOFF_LO(pipe), preoff[2]);
 
-	intel_de_write(dev_priv, PIPE_CSC_COEFF_RY_GY(pipe),
-		       coeff[0] << 16 | coeff[1]);
-	intel_de_write(dev_priv, PIPE_CSC_COEFF_BY(pipe), coeff[2] << 16);
+	intel_de_write_fw(dev_priv, PIPE_CSC_COEFF_RY_GY(pipe),
+			  coeff[0] << 16 | coeff[1]);
+	intel_de_write_fw(dev_priv, PIPE_CSC_COEFF_BY(pipe), coeff[2] << 16);
 
-	intel_de_write(dev_priv, PIPE_CSC_COEFF_RU_GU(pipe),
-		       coeff[3] << 16 | coeff[4]);
-	intel_de_write(dev_priv, PIPE_CSC_COEFF_BU(pipe), coeff[5] << 16);
+	intel_de_write_fw(dev_priv, PIPE_CSC_COEFF_RU_GU(pipe),
+			  coeff[3] << 16 | coeff[4]);
+	intel_de_write_fw(dev_priv, PIPE_CSC_COEFF_BU(pipe), coeff[5] << 16);
 
-	intel_de_write(dev_priv, PIPE_CSC_COEFF_RV_GV(pipe),
-		       coeff[6] << 16 | coeff[7]);
-	intel_de_write(dev_priv, PIPE_CSC_COEFF_BV(pipe), coeff[8] << 16);
+	intel_de_write_fw(dev_priv, PIPE_CSC_COEFF_RV_GV(pipe),
+			  coeff[6] << 16 | coeff[7]);
+	intel_de_write_fw(dev_priv, PIPE_CSC_COEFF_BV(pipe), coeff[8] << 16);
 
 	if (DISPLAY_VER(dev_priv) >= 7) {
-		intel_de_write(dev_priv, PIPE_CSC_POSTOFF_HI(pipe),
-			       postoff[0]);
-		intel_de_write(dev_priv, PIPE_CSC_POSTOFF_ME(pipe),
-			       postoff[1]);
-		intel_de_write(dev_priv, PIPE_CSC_POSTOFF_LO(pipe),
-			       postoff[2]);
+		intel_de_write_fw(dev_priv, PIPE_CSC_POSTOFF_HI(pipe),
+				  postoff[0]);
+		intel_de_write_fw(dev_priv, PIPE_CSC_POSTOFF_ME(pipe),
+				  postoff[1]);
+		intel_de_write_fw(dev_priv, PIPE_CSC_POSTOFF_LO(pipe),
+				  postoff[2]);
 	}
 }
 
@@ -194,28 +194,28 @@ static void icl_update_output_csc(struct intel_crtc *crtc,
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
-	intel_de_write(dev_priv, PIPE_CSC_OUTPUT_PREOFF_HI(pipe), preoff[0]);
-	intel_de_write(dev_priv, PIPE_CSC_OUTPUT_PREOFF_ME(pipe), preoff[1]);
-	intel_de_write(dev_priv, PIPE_CSC_OUTPUT_PREOFF_LO(pipe), preoff[2]);
+	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_PREOFF_HI(pipe), preoff[0]);
+	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_PREOFF_ME(pipe), preoff[1]);
+	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_PREOFF_LO(pipe), preoff[2]);
 
-	intel_de_write(dev_priv, PIPE_CSC_OUTPUT_COEFF_RY_GY(pipe),
-		       coeff[0] << 16 | coeff[1]);
-	intel_de_write(dev_priv, PIPE_CSC_OUTPUT_COEFF_BY(pipe),
-		       coeff[2] << 16);
+	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_COEFF_RY_GY(pipe),
+			  coeff[0] << 16 | coeff[1]);
+	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_COEFF_BY(pipe),
+			  coeff[2] << 16);
 
-	intel_de_write(dev_priv, PIPE_CSC_OUTPUT_COEFF_RU_GU(pipe),
-		       coeff[3] << 16 | coeff[4]);
-	intel_de_write(dev_priv, PIPE_CSC_OUTPUT_COEFF_BU(pipe),
-		       coeff[5] << 16);
+	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_COEFF_RU_GU(pipe),
+			  coeff[3] << 16 | coeff[4]);
+	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_COEFF_BU(pipe),
+			  coeff[5] << 16);
 
-	intel_de_write(dev_priv, PIPE_CSC_OUTPUT_COEFF_RV_GV(pipe),
-		       coeff[6] << 16 | coeff[7]);
-	intel_de_write(dev_priv, PIPE_CSC_OUTPUT_COEFF_BV(pipe),
-		       coeff[8] << 16);
+	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_COEFF_RV_GV(pipe),
+			  coeff[6] << 16 | coeff[7]);
+	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_COEFF_BV(pipe),
+			  coeff[8] << 16);
 
-	intel_de_write(dev_priv, PIPE_CSC_OUTPUT_POSTOFF_HI(pipe), postoff[0]);
-	intel_de_write(dev_priv, PIPE_CSC_OUTPUT_POSTOFF_ME(pipe), postoff[1]);
-	intel_de_write(dev_priv, PIPE_CSC_OUTPUT_POSTOFF_LO(pipe), postoff[2]);
+	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_POSTOFF_HI(pipe), postoff[0]);
+	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_POSTOFF_ME(pipe), postoff[1]);
+	intel_de_write_fw(dev_priv, PIPE_CSC_OUTPUT_POSTOFF_LO(pipe), postoff[2]);
 }
 
 static bool ilk_csc_limited_range(const struct intel_crtc_state *crtc_state)
@@ -319,8 +319,8 @@ static void ilk_load_csc_matrix(const struct intel_crtc_state *crtc_state)
 				    ilk_csc_off_zero);
 	}
 
-	intel_de_write(dev_priv, PIPE_CSC_MODE(crtc->pipe),
-		       crtc_state->csc_mode);
+	intel_de_write_fw(dev_priv, PIPE_CSC_MODE(crtc->pipe),
+			  crtc_state->csc_mode);
 }
 
 static void icl_load_csc_matrix(const struct intel_crtc_state *crtc_state)
@@ -346,8 +346,8 @@ static void icl_load_csc_matrix(const struct intel_crtc_state *crtc_state)
 				      ilk_csc_postoff_limited_range);
 	}
 
-	intel_de_write(dev_priv, PIPE_CSC_MODE(crtc->pipe),
-		       crtc_state->csc_mode);
+	intel_de_write_fw(dev_priv, PIPE_CSC_MODE(crtc->pipe),
+			  crtc_state->csc_mode);
 }
 
 static void chv_load_cgm_csc(struct intel_crtc *crtc,
-- 
2.34.1

