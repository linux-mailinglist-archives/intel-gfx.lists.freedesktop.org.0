Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C80174D800
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jul 2023 15:44:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40E5F10E163;
	Mon, 10 Jul 2023 13:44:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02D8A10E11B
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jul 2023 13:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688996659; x=1720532659;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LV3By9G233OHd6fEqks2hzgk34phMWcMgJ+nTGuGLUA=;
 b=E2N8B7I6He5a3rFzlpgHUVLV8FYt9gct3l5EoT0Jw1zPYWqCNcWVM4TC
 y4BY035qNgY06PfcGHGt3z3GzopT/FV+Wxi0B58EoGTYKufJt9caEfga6
 53yil7mgyxfOajowl6EULmCwyVJcK8O8oKg/u5d0X4t2/SSIst8Dsid7U
 gRy4x2ebL7al7ojLVLXNlL61B3RTTzN860p7qe/Eejd8g4js/HV4Y7rxq
 t5U6S/eVkOx5tMa87eCJSheBhx9p8yHn8fnxxmg8NK4NT+aPrpVDi/dEG
 t+feBaizXT8qweZdUjKOWEjLA2UTCI9/8LyaRaBO7e4u+7QxvCHnXEtUU A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="343939139"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="343939139"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 06:44:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="1051364402"
X-IronPort-AV: E=Sophos;i="6.01,194,1684825200"; d="scan'208";a="1051364402"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmsmga005.fm.intel.com with ESMTP; 10 Jul 2023 06:44:17 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jul 2023 19:13:17 +0530
Message-Id: <20230710134317.2794177-3-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230710134317.2794177-1-chaitanya.kumar.borah@intel.com>
References: <20230710134317.2794177-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/color: Downscale degamma lut
 values read from hardware
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

For MTL and beyond, convert back the 24 bit lut values
read from HW to 16 bit values to maintain parity with
userspace values. This way we avoid pipe config mismatch
for pre-csc lut values.

v2: Add helper function to downscale values (Jani)

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 15ada7fada96..41666e778c03 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -3456,6 +3456,14 @@ static struct drm_property_blob *glk_read_degamma_lut(struct intel_crtc *crtc)
 	for (i = 0; i < lut_size; i++) {
 		u32 val = intel_de_read_fw(dev_priv, PRE_CSC_GAMC_DATA(pipe));
 
+		/*
+		 * For MTL and beyond, convert back the 24 bit lut values
+		 * read from HW to 16 bit values to maintain parity with
+		 * userspace values
+		 */
+		if (DISPLAY_VER(dev_priv) >= 14)
+			val = change_lut_val_precision(val, 16, 24);
+
 		lut[i].red = val;
 		lut[i].green = val;
 		lut[i].blue = val;
-- 
2.25.1

