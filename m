Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82FC5C62E10
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 09:21:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECA5110E2F4;
	Mon, 17 Nov 2025 08:21:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SoVM+3w3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FE9410E2F2;
 Mon, 17 Nov 2025 08:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763367668; x=1794903668;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=k6Rf2k4szB7la72BEDz+lnn9ZSJs8DuQofWcTDUToeo=;
 b=SoVM+3w32D8AtLor4cXZ+pw2+gx9qOM4qMu7425sos6JJ9kpIMCp306R
 wDpopGUYqpW7h7iCfemNh/ZRZnE/ZpQ9AEV6loMttn4uxycjQnfm1bxGd
 fNO8e4dzir8C9ULzR4MpSAYKUO4yKq01ayAcThqdR9eRj0MJforM/hO/w
 aZNRxh/4uoUmEZD1K1oN4EQ8SuZfyEKT5DMWDVKj7NfEEBLP74HLUQ/bB
 mp/WN0L6C52C+Kr6XkawSfMQh4c/b9m7V3g0VDP8qrbOjqwzsW3RzQ6AQ
 DDYJXc9oRaJB2HiD4Emps3G5HG3a4e4XGiBSHHzGSekpSJ+/NIloAnEUQ A==;
X-CSE-ConnectionGUID: dM7qcPFFQ4qmg4GVJZez7g==
X-CSE-MsgGUID: V1JU1bCER5O4x5vB3KITJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="82987087"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="82987087"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 00:21:07 -0800
X-CSE-ConnectionGUID: JV9JYGt7Tlu6DFpTJsx7dw==
X-CSE-MsgGUID: KFAN4sqsQMS15MDNdiVsSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="195338313"
Received: from administrator-system-product-name.igk.intel.com
 ([10.91.214.181])
 by fmviesa004.fm.intel.com with ESMTP; 17 Nov 2025 00:21:06 -0800
From: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH] i915/display/intel_ddi: Reduce severity of failed FEC enabling
Date: Mon, 17 Nov 2025 09:20:46 +0100
Message-ID: <20251117082046.4190705-1-michal.grzelak@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
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

During some IGT tests (e.g. xe_pm@s2idle-exec-after, xe_pm@s2idle-mocs)
sink disconnects across suspend/resume, reconnecting later during resume
at some point. Hence during resume, where the driver is restoring the
pre-suspend mode, all the AUX transfers to the sink are expected to
fail.

Switch error message to KMS debug message of failed FEC enabling.

Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 002ccd47856d..130d266242c8 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2446,7 +2446,7 @@ static void intel_ddi_enable_fec(struct intel_encoder *encoder,
 			return;
 	}
 
-	drm_err(display->drm, "Failed to enable FEC after retries\n");
+	drm_dbg_kms(display->drm, "Failed to enable FEC after retries\n");
 }
 
 static void intel_ddi_disable_fec(struct intel_encoder *encoder,
-- 
2.45.2

