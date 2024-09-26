Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 961A0986BC3
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 06:36:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E45B10E0C9;
	Thu, 26 Sep 2024 04:36:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OMCaKUxp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF23F10E1E4
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2024 04:36:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727325402; x=1758861402;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yHLkBO7XTdXR1dDMwM/USI9RqfsUEuWY09m6w+0nH7A=;
 b=OMCaKUxprwKtNsYTBNDKoxT49bAVwWys7n07CW0Nf1HH6HtAST7DY2nV
 x0PnuN5fWmf17WVB0e9ALV8b6b74RY9eLHT0O4kmNZq/9sXRIByvGqos0
 Dt0P9MmKNiHfDMMlm0+QzTQ7nDbdfSzh3U6eIMKC8aLfu13kfp7d8qdfp
 GjUDch9qGOkapRUmZQUTRBU7rr+Ou6Wp+GUesr0+qdC5BUpn49F5zWGh9
 Pfvt9UDGoVG5q+jVmNCdWjBWDvAO+BlZzun3LSarufgWU3Brpa9hz7ocE
 /kPah2pUYNImLCnQ8zC6J5xF6l1CZIWgPs0K0I2Zi6/UL9KQLQevgPR82 g==;
X-CSE-ConnectionGUID: qaVvia7SSqKBJ2CnfDFNtA==
X-CSE-MsgGUID: GFycTqDdTlWuq7ipKPHcqg==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="30286937"
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="30286937"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 21:36:10 -0700
X-CSE-ConnectionGUID: jPcy+23bR1OvUBQoCnpvJw==
X-CSE-MsgGUID: aCA09Y0HTpqgoYCiVdjVrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="72297076"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa006.jf.intel.com with ESMTP; 25 Sep 2024 21:36:09 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/vdsc: Add bpc check in intel_dsc_compute_params
Date: Thu, 26 Sep 2024 10:03:33 +0530
Message-ID: <20240926043332.1284692-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
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

DSC does not support bpc under 8. Return an error if that
happens to be the case.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 8158e3702ed5..39bf8bee106c 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -297,6 +297,11 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 
 	vdsc_cfg->bits_per_pixel = pipe_config->dsc.compressed_bpp_x16;
 
+	if (vdsc_cfg->bites_per_pixel < 8) {
+		drm_dbg_kms(&dev_priv->drm, "DSC bpc requirements not met\n");
+		return -EINVAL;
+	}
+
 	/*
 	 * According to DSC 1.2 specs in Section 4.1 if native_420 is set
 	 * we need to double the current bpp.
-- 
2.43.2

