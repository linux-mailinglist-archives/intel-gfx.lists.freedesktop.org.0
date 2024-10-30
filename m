Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FB49B6CCE
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 20:22:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EBE810E0CA;
	Wed, 30 Oct 2024 19:22:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V41oPWjb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E33210E7EA
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 19:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730316172; x=1761852172;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Lu4itYljrS3wlgYES/q6L0fS4p3bpUXoqzKJY7+k0kw=;
 b=V41oPWjbrxJr5MPPlAXlqxHL1f5zDaO42ZUsqbdz4VZnrM/e+iVt/Bx9
 5cdq6FXYuOcE22b3f02PSXlVHQDfAPNyyqWQVUgfIfthJL4PqRBG1cfcr
 DBkAzsPg/GVUI2PQ10Zi03nsYV/kOauIN3MR1KEVM6X4mPOlnFsqRKGfg
 au3ipF1T1LJ6rYUYwrva9wxxBOPpPtCJYE0va6l9QhxUESM0jLoDj9nxo
 gsLkmVUvrrG/VDcCyABMecrqQ3lWQU0N7YpB1yTN1p/qoR2hAqnx9vFx5
 AVCvoXVBAG3oY2ajdHkp5wjO2P42xGPVw01bxlIVZXalNXbREmmTcDitQ A==;
X-CSE-ConnectionGUID: 7JwWWQsERC26gP0oZqcErQ==
X-CSE-MsgGUID: sfTmmltnR1aFI2t+esOxTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="41435008"
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="41435008"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 12:22:43 -0700
X-CSE-ConnectionGUID: GlqcJ4/FRHqLTQOZZ501Kg==
X-CSE-MsgGUID: azr4c8B9TRSZQ36h2aaA7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="82521949"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 12:22:42 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 2/5] drm/i915/adlp+/dp_mst: Align slave transcoder enabling
 with spec wrt. DDI function
Date: Wed, 30 Oct 2024 21:23:10 +0200
Message-ID: <20241030192313.4030617-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20241030192313.4030617-1-imre.deak@intel.com>
References: <20241030192313.4030617-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

On ADLP+ during modeset enabling configure the DDI function without
enabling it for MST slave transcoders before programming the data and
link M/N values. The DDI function gets enabled separately later in the
transcoder enabling sequence.

Align the code with the spec based on the above.

v2: Move this patch earlier in the series, addressing the DP2
    config fixes for all ADLP+ platforms later.

Bspec: 55424, 54128, 65448, 68849
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 7c16406883594..bf264bd1881b5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1224,7 +1224,7 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 	if (DISPLAY_VER(dev_priv) < 12 || !first_mst_stream)
 		intel_ddi_enable_transcoder_clock(encoder, pipe_config);
 
-	if (DISPLAY_VER(dev_priv) >= 30 && !first_mst_stream)
+	if (DISPLAY_VER(dev_priv) >= 13 && !first_mst_stream)
 		intel_ddi_config_transcoder_func(encoder, pipe_config);
 
 	intel_dsc_dp_pps_write(&dig_port->base, pipe_config);
-- 
2.44.2

