Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12486760D09
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 10:31:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FAF110E3C3;
	Tue, 25 Jul 2023 08:31:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B060F10E3C2
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jul 2023 08:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690273885; x=1721809885;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pGdXij6pELHkVAJc2tATfAvpwq3ku7goESf4ZMUWssA=;
 b=gMjHtTMAlxP75SG2RY2ZZlmT6mXKFtcElWUSYQRFjUCQJNBucvhR01Zq
 wohl2LlYGPVwADql8C29cQ0K7eQN+dzguweAkr07AH+FCng5R6nLvf2VP
 7BKSJvuJ+Lm/ls1M8X5qR08iha4ufATIzV0Cah/lnI22TstNoyKqeuUmf
 Fb7TE+sKN1VNjKnvQQc6M1P77V1o7wjw8v0n1xW6d5N8XinkKhNW8dGpx
 l9nDVjVdBKrkAUWbhScjfIbY6QvbA6uRtLGRVKNDYq7tjEcyKgvznt+PV
 QEzmy2UnwRZu4itNP2U/S0pR+ssIzJP3HaZ0dIdYcCBmSMWiy61u3onH5 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="371262339"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="371262339"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2023 01:31:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="899849469"
X-IronPort-AV: E=Sophos;i="6.01,230,1684825200"; d="scan'208";a="899849469"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orsmga005.jf.intel.com with ESMTP; 25 Jul 2023 01:31:06 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jul 2023 14:00:02 +0530
Message-Id: <20230725083002.3779717-3-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230725083002.3779717-1-chaitanya.kumar.borah@intel.com>
References: <20230725083002.3779717-1-chaitanya.kumar.borah@intel.com>
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
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 32182cdff928..d78e2715d419 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -3457,6 +3457,14 @@ static struct drm_property_blob *glk_read_degamma_lut(struct intel_crtc *crtc)
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

