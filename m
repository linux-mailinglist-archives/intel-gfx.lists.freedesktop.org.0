Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99368986E95
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 10:16:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F345410EAFC;
	Thu, 26 Sep 2024 08:16:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZnV+Dn1K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 133B310E042
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2024 08:16:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727338562; x=1758874562;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dKbqmoS8L4A/nD6PY6ujBkhVJdeb750TGnfnC+EI/ZE=;
 b=ZnV+Dn1KKyDrPGA7SPj3lORWuBl0gnDbXiPdT16lPnvk8r0DeFif8Zc1
 MPHxQfVj8YtXcF/9srtLsWb7RaEglOGzJG/nNBXJHDz2yl8mUgaw70Rmm
 Oi3hRnd5ve3J4iZRMZEgrw89/n2tNPVW0KsX9EiJwgz4dTpUKGecewg28
 d4dJLPJaofNPiXLwQiKJSoi1Jkly4SBsycNzwNo1Q2ZC2HB2p2Kpx7jNr
 chSZ5pX59noESJhxLJQMsZ25YE51FWZuKVhGERq29PjsLgke8y/wKb5+Y
 dApA0KCA6yVTLwbNfQAW3yj90U3MKkqNEiX+xcCJMWQGlkpA6s4Tz1tbJ Q==;
X-CSE-ConnectionGUID: 8/95hePWRwGAhyDVup13Pw==
X-CSE-MsgGUID: JXaNt3uvQhq0EbzzUgOl7w==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="37562664"
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="37562664"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 01:16:02 -0700
X-CSE-ConnectionGUID: wpsxU5iTQySRmRuG/rbixg==
X-CSE-MsgGUID: KqKUCGt7TlC5P9vIEOVxTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="76866772"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa003.jf.intel.com with ESMTP; 26 Sep 2024 01:16:01 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: mitulkumar.ajitkumar.golani@intel.com, chaitanya.kumar.borah@intel.com,
 jani.nikula@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/vdsc: Add bpc check in intel_dsc_compute_params
Date: Thu, 26 Sep 2024 13:43:28 +0530
Message-ID: <20240926081327.1409518-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240926053346.1391776-2-suraj.kandpal@intel.com>
References: <20240926053346.1391776-2-suraj.kandpal@intel.com>
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

DSC does not support bpc under 8 according to DSC 1.2a Section 2
Requirements. Return an error if that happens to be the case.

--v2
-should be bit_per_component [Mitul/Chaitanya]
-Add reference to this restriction [Chaitanya]

--v3
-Add the bpc in which we see this warning [Jani]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 8158e3702ed5..208f117ece57 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -306,6 +306,12 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 
 	vdsc_cfg->bits_per_component = pipe_config->pipe_bpp / 3;
 
+	if (vdsc_cfg->bits_per_component < 8) {
+		drm_dbg_kms(&dev_priv->drm, "DSC bpc requirements not met bpc: %d\n",
+			    vdsc_cfg->bits_per_component);
+		return -EINVAL;
+	}
+
 	drm_dsc_set_rc_buf_thresh(vdsc_cfg);
 
 	/*
-- 
2.43.2

