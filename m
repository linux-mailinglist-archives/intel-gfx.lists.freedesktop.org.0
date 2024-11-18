Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81FF19D1179
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2024 14:10:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F13AC10E237;
	Mon, 18 Nov 2024 13:10:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MLTH82Qy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB72F10E237;
 Mon, 18 Nov 2024 13:10:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731935410; x=1763471410;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5W7x77F7fwG+7KK69IM/RYjpKpCJ0yRonF2P5P4hzr8=;
 b=MLTH82QysnH1As2eZ52Jg7lFPsCsEelYIjetUpkMxLXYXm2hMx6a1/bg
 o6gTstkWIqCvCv/OvZbCpMpDDX/JGE6fMp9uKyjJNcEKeCmVWzA/V9IKi
 6nOa6gCi90uLfknW7pVidTIurEU1zrlmE0JXk45fxbAVbnbApbwdt4dun
 OKN6UF/AEglHXmUXaJzModTxaDYiI/j7P9DaJTx3/lXKVim7wUyz58Ulv
 e/8XaABT6sGrKAp5QSUU7mR3urtsajLS1BbUv9jDRAlWR7ywY10IQc6cl
 HBDoY+NxkXOAC+elEdlaVMqk65skdVieJgpN7qhCDMsI26m1RCjMBzLxi A==;
X-CSE-ConnectionGUID: 71WeZv5vTFmSX1DdvouIIg==
X-CSE-MsgGUID: qtznGWh9TJGAJLHdf9n/FQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11260"; a="35663615"
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="35663615"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 05:10:09 -0800
X-CSE-ConnectionGUID: I1dBu82ERXu2luQZzuRRPw==
X-CSE-MsgGUID: Jjso3LcXRIecyaJqIBXW4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="94034267"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 05:10:08 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI] drm/i915/dp_mst: Fix connector initialization in
 intel_dp_add_mst_connector()
Date: Mon, 18 Nov 2024 15:10:44 +0200
Message-ID: <20241118131044.1278028-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
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

The connector initialization in intel_dp_add_mst_connector() depends on
the device pointer in connector to be valid, at least by connector
debug printing. The device pointer is initialized by drm_connector_init(),
however that function also exposes the connector to in-kernel users,
which can't be done before the connector is fully initialized. For now
make sure the device pointer is valid before it's used, until a
follow-up change moving this to DRM core.

This issue was revealed by the commit in the Fixes: line below, before
which the above debug printing checked and handled a NULL device pointer
gracefully in DRM core.

Cc: Jani Nikula <jani.nikula@intel.com>
Fixes: 529798bd786a ("drm/i915/mst: convert to struct intel_display")
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12799
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index df7edcfe885b6..f058360a26413 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1727,6 +1727,16 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
 
 	intel_dp_init_modeset_retry_work(intel_connector);
 
+	/*
+	 * TODO: The following drm_connector specific initialization belongs
+	 * to DRM core, however it happens atm too late in
+	 * drm_connector_init(). That function will also expose the connector
+	 * to in-kernel users, so it can't be called until the connector is
+	 * sufficiently initialized; init the device pointer used by the
+	 * following DSC setup, until a fix moving this to DRM core.
+	 */
+	intel_connector->base.dev = mgr->dev;
+
 	intel_connector->dp.dsc_decompression_aux = drm_dp_mst_dsc_aux_for_port(port);
 	intel_dp_mst_read_decompression_port_dsc_caps(intel_dp, intel_connector);
 	intel_connector->dp.dsc_hblank_expansion_quirk =
-- 
2.44.2

