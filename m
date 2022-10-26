Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 777E960DEA8
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 12:12:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87F6610E492;
	Wed, 26 Oct 2022 10:11:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62FEC10E4A7
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 10:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666779105; x=1698315105;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OdxGfXAWeQWB7d4z4d16YQro4plB+ZqSdzTYXSm6u70=;
 b=ioMcD7bilajubhail3vBWb5/MXCYyx2CXrYALqruk3PHGy/c4WBgFWej
 KeAx81yQ3mODlr+iNy9CuV33hkik1Hy5OD/lnp64Mfxjwlqne+rzJwMfv
 1ctEcTNwwZ8/DXYI3/3BpOAF3sDjbBRPWcblYzTDYFsKgK6DjWDM98VTH
 Kk4u0tOvOPW6VIKI2Xtgmgt88jdTSJrP4nEilf6fXaGPFljbL0Vb++HV/
 JZvauLyspa5z6jgje5mAN8/ZeOK0CiF8WZcPcPUtxkDNmOnp3aXWICX+H
 nm0TwijT7G3HBr35I4WZ445FeT/c7rW3sTdOMCblK0tK13YyhXbxgwia+ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="394222256"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="394222256"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 03:11:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="695305849"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="695305849"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 26 Oct 2022 03:11:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Oct 2022 13:11:37 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 13:11:27 +0300
Message-Id: <20221026101134.20865-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221026101134.20865-1-ville.syrjala@linux.intel.com>
References: <20221026101134.20865-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/8] drm/i915/sdvo: Filter out invalid outputs
 more sensibly
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

We try to filter out the corresponding xxx1 output
if the xxx0 output is not present. But the way that is
being done is pretty awkward. Make it less so.

Cc: stable@vger.kernel.org
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 29 ++++++++++++++++++-----
 1 file changed, 23 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index cf8e80936d8e..c6200a91a777 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2925,16 +2925,33 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
 	return false;
 }
 
-static bool
-intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo, u16 flags)
+static u16 intel_sdvo_filter_output_flags(u16 flags)
 {
+	flags &= SDVO_OUTPUT_MASK;
+
 	/* SDVO requires XXX1 function may not exist unless it has XXX0 function.*/
+	if (!(flags & SDVO_OUTPUT_TMDS0))
+		flags &= ~SDVO_OUTPUT_TMDS1;
+
+	if (!(flags & SDVO_OUTPUT_RGB0))
+		flags &= ~SDVO_OUTPUT_RGB1;
+
+	if (!(flags & SDVO_OUTPUT_LVDS0))
+		flags &= ~SDVO_OUTPUT_LVDS1;
+
+	return flags;
+}
+
+static bool
+intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo, u16 flags)
+{
+	flags = intel_sdvo_filter_output_flags(flags);
 
 	if (flags & SDVO_OUTPUT_TMDS0)
 		if (!intel_sdvo_dvi_init(intel_sdvo, 0))
 			return false;
 
-	if ((flags & SDVO_TMDS_MASK) == SDVO_TMDS_MASK)
+	if (flags & SDVO_OUTPUT_TMDS1)
 		if (!intel_sdvo_dvi_init(intel_sdvo, 1))
 			return false;
 
@@ -2955,7 +2972,7 @@ intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo, u16 flags)
 		if (!intel_sdvo_analog_init(intel_sdvo, 0))
 			return false;
 
-	if ((flags & SDVO_RGB_MASK) == SDVO_RGB_MASK)
+	if (flags & SDVO_OUTPUT_RGB1)
 		if (!intel_sdvo_analog_init(intel_sdvo, 1))
 			return false;
 
@@ -2963,11 +2980,11 @@ intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo, u16 flags)
 		if (!intel_sdvo_lvds_init(intel_sdvo, 0))
 			return false;
 
-	if ((flags & SDVO_LVDS_MASK) == SDVO_LVDS_MASK)
+	if (flags & SDVO_OUTPUT_LVDS1)
 		if (!intel_sdvo_lvds_init(intel_sdvo, 1))
 			return false;
 
-	if ((flags & SDVO_OUTPUT_MASK) == 0) {
+	if (flags == 0) {
 		unsigned char bytes[2];
 
 		intel_sdvo->controlled_output = 0;
-- 
2.37.4

