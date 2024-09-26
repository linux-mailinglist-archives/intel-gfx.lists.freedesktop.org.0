Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3551986BF3
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 07:17:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0739510E87A;
	Thu, 26 Sep 2024 05:17:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FAoG9F34";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B13A10E87E
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2024 05:16:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727327808; x=1758863808;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1ut8S1Pnby4ZzIVcHCy5y+x+Hs6LsAy0WZtL5zu0UDM=;
 b=FAoG9F34UNzd2BBA+uFgojOmKwwutxsd9jUFLvCt+1gti+/uyhlL5b5Z
 oKRiO+0U8qHj/3ymqrE31UNRbSseU+9P01DTq3ujqDetazvFogkhUyB7I
 KpBreN7+G5V/GZgQkjEQv6A3H1fRmGHFPCzPHRxnMqHIduLzVcdSKD4GE
 U3TJ9Dh4/JuabwTQ6E2aP1tz1lKHqAwR21Xd480WruvgWloG7ar7uWV6O
 mgXT3Q3t0WBmPrBSLf8zssxjICVE4YqMOCy13VyoDXyu5lKaJqsBYWXR8
 FQ+gLq+vVHxOX5zWi+Nycb36KQW4vV5L2wRvhVnNo7YdHPdMs04B/r8/H g==;
X-CSE-ConnectionGUID: mlhJNG31TnuHnazvSc3xPg==
X-CSE-MsgGUID: RbeFuRigR/+1uUhjqGtL7w==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="26500530"
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="26500530"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 22:16:46 -0700
X-CSE-ConnectionGUID: fgL0ar4HSGKwA5nOFhaG1g==
X-CSE-MsgGUID: JsjiKkwXQqi9w9cG9H8X+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="71891135"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa010.jf.intel.com with ESMTP; 25 Sep 2024 22:16:45 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: mitulkumar.ajitkumar.golani@intel.com, chaitanya.kumar.borah@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/vdsc: Add bpc check in intel_dsc_compute_params
Date: Thu, 26 Sep 2024 10:44:10 +0530
Message-ID: <20240926051410.1285547-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240926043332.1284692-2-suraj.kandpal@intel.com>
References: <20240926043332.1284692-2-suraj.kandpal@intel.com>
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

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 8158e3702ed5..57401ce71970 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -306,6 +306,11 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 
 	vdsc_cfg->bits_per_component = pipe_config->pipe_bpp / 3;
 
+	if (vdsc_cfg->bites_per_component < 8) {
+		drm_dbg_kms(&dev_priv->drm, "DSC bpc requirements not met\n");
+		return -EINVAL;
+	}
+
 	drm_dsc_set_rc_buf_thresh(vdsc_cfg);
 
 	/*
-- 
2.43.2

