Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A41986C19
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 07:37:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8F2610E87E;
	Thu, 26 Sep 2024 05:37:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D/7SfpoY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5517210E87E
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2024 05:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727329052; x=1758865052;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M3p1O4GgwlIMztpwm77Z8RvWMmnJWacVE/Aw2o+eV5I=;
 b=D/7SfpoYUbRsusBz1LxL0IiqrwFDA8bbYOwefY/k4vkzJa3VT644Y5b4
 3E2rSmDP4jwt3VwHEvTpqf/p0XFiOtgmccafSvQ0mU5d0FPLzuqswpqYo
 fngeBcwGt9nOtCCQ//b0IHjI1xJSBk3p6gk619nXpPvNza6hjRmxZk3fr
 f51U0opBXVvjCMQp1NQCkQqT9mWegzztSwCSnxcwlwnRac7kDy7Oxk/Y5
 9N6El1DxA7Fs2P2YHggJ1e4Do1W1X2gKnTEiOL99vm6iuRNi2atMYpRgh
 kpoH3OC3MWOI/0oCwiIo9a3NcSRU7mbdOiO/WLAAb7aK6jDtalltwB0n9 A==;
X-CSE-ConnectionGUID: i/fkOiJERoyddRB7acTXaA==
X-CSE-MsgGUID: KU3Wt8+yT/CZlXM07CKmHQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="43877881"
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="43877881"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 22:37:31 -0700
X-CSE-ConnectionGUID: y+q/Ik/+SJGxDHjpAhfjqg==
X-CSE-MsgGUID: 7Or1DDcERuq8hoXPxzt4SA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="72018930"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa009.fm.intel.com with ESMTP; 25 Sep 2024 22:37:30 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: mitulkumar.ajitkumar.golani@intel.com, chaitanya.kumar.borah@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/vdsc: Add bpc check in intel_dsc_compute_params
Date: Thu, 26 Sep 2024 11:03:47 +0530
Message-ID: <20240926053346.1391776-2-suraj.kandpal@intel.com>
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
-should be bits_per_component [Mitul/Chaitanya/Srikanth]
-Add reference to this restriction [Chaitanya]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 8158e3702ed5..7a30fdea16da 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -306,6 +306,11 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 
 	vdsc_cfg->bits_per_component = pipe_config->pipe_bpp / 3;
 
+	if (vdsc_cfg->bits_per_component < 8) {
+		drm_dbg_kms(&dev_priv->drm, "DSC bpc requirements not met\n");
+		return -EINVAL;
+	}
+
 	drm_dsc_set_rc_buf_thresh(vdsc_cfg);
 
 	/*
-- 
2.43.2

