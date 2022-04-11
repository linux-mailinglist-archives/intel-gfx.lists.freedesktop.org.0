Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 709B94FBF35
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Apr 2022 16:34:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C112D10E312;
	Mon, 11 Apr 2022 14:34:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A73910E312;
 Mon, 11 Apr 2022 14:34:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649687658; x=1681223658;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dFcIk2NkOQBZ35R9YTE4tUZcAuuVp11jZSnyMI78wKE=;
 b=bWrZ0xoD03BjLl5sL9QFjR9sHnhmHPNJjwVhK+s1ZnyoUD5HOSp6r6bt
 Y5VWN85hClMm1kWkiieHZNAoCRYC5KYTaByYTvdcbfmWCl3HtEaXSKPBU
 2TtzYFc70mykwpB7aKTTXXoNnaznUSKuZv1dPfxgw5YQH29gsRH6piufx
 UsPLIMxNIIlGSgYbxdPNTL+5V4AviRpp07uvXDaLyVpjCnZfLPgbHfyPD
 fPrvnBx7GA/jpikasKGpCaKk5qJCjG8kA+B7FqCTN6s2fi8dT4z594dXo
 LJv0Sf0ovWMlyEynFNmvYt9iYog9xExuqVLiLYbsPhcXLbKZhVjBS5fGL A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10314"; a="348568511"
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="348568511"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 07:34:17 -0700
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="525999856"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 07:34:15 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Apr 2022 17:34:04 +0300
Message-Id: <20220411143405.1073845-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220411143405.1073845-1-imre.deak@intel.com>
References: <20220411143405.1073845-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/4] drm/fourcc: Introduce format modifier
 for DG2 clear color
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
Cc: dri-devel@lists.freedesktop.org,
 =?UTF-8?q?Juha-Pekka=20Heikkil=C3=A4?= <juha-pekka.heikkila@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Mika Kahola <mika.kahola@intel.com>

DG2 clear color render compression uses Tile4 layout. Therefore, we need
to define a new format modifier for uAPI to support clear color rendering.

v2:
  Display version is fixed. [Imre]
  KDoc is enhanced for cc modifier. [Nanley & Lionel]
v3:
  Split out the modifier addition to a separate patch.
  Clarify the modifier layout description.

Cc: dri-devel@lists.freedesktop.org
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
cc: Anshuman Gupta <anshuman.gupta@intel.com>
Signed-off-by: Juha-Pekka Heikkilä <juha-pekka.heikkila@intel.com>
Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
Acked-by: Nanley Chery <nanley.g.chery@intel.com>
Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Acked-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20220404133846.131401-4-imre.deak@intel.com
---
 include/uapi/drm/drm_fourcc.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
index 4a5117715db3c..e5074162bcdd4 100644
--- a/include/uapi/drm/drm_fourcc.h
+++ b/include/uapi/drm/drm_fourcc.h
@@ -605,6 +605,20 @@ extern "C" {
  */
 #define I915_FORMAT_MOD_4_TILED_DG2_MC_CCS fourcc_mod_code(INTEL, 11)
 
+/*
+ * Intel Color Control Surface with Clear Color (CCS) for DG2 render compression.
+ *
+ * The main surface is Tile 4 and at plane index 0. The CCS data is stored
+ * outside of the GEM object in a reserved memory area dedicated for the
+ * storage of the CCS data for all RC/RC_CC/MC compressible GEM objects. The
+ * main surface pitch is required to be a multiple of four Tile 4 widths. The
+ * clear color is stored at plane index 1 and the pitch should be ignored. The
+ * format of the 256 bits of clear color data matches the one used for the
+ * I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC modifier, see its description
+ * for details.
+ */
+#define I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC fourcc_mod_code(INTEL, 12)
+
 /*
  * Tiled, NV12MT, grouped in 64 (pixels) x 32 (lines) -sized macroblocks
  *
-- 
2.30.2

