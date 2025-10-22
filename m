Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DEC1BF97A8
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 02:32:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9A3810E6AA;
	Wed, 22 Oct 2025 00:32:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mFfsVCAA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2ACA10E6AA;
 Wed, 22 Oct 2025 00:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761093175; x=1792629175;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=aeGnEkI/0g/BtB3NAVJfjN1NtR9C+u9q+M2wFHtUZag=;
 b=mFfsVCAAgDHaMdHCrvfcnCiXTMPt14wtk7G7xfEEoZ9uj1xZ6WusXeSC
 8kb74zUGGsp6iQSdyv+TjK5yXaNeA65pWjEmaOJJMbPexJ1U7C9dczGhh
 Vr8ZccfthW4c1jE0sb7pX3yubeJnRDzKJeEX3a321AyHQurXiNv89BAL0
 xicCkGp9VA8BE++z4+myOf9IqBu06nNsZ3nMoXV409CraaJ9lzNaV7Bff
 mMJEc6PFrd6G6WvtsoheqrGivRDLOsA+u8waqNj/tnJsZhJmUSiv4nCuI
 F5R1cW3fLWIIAa6X5i45fSzgUie0dubI7sfFbFHmGWMP84hbKdiXwcB8B A==;
X-CSE-ConnectionGUID: 74FDi98ERSW4KUZm2YhTmA==
X-CSE-MsgGUID: D43sJdecTvaHl9l9F0ZahQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="67095549"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="67095549"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:32:54 -0700
X-CSE-ConnectionGUID: Ort1kc8US3uFwOts44jBVQ==
X-CSE-MsgGUID: yI5L4Gv3TbCwcdFox2x3HA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="188132668"
Received: from gpacheco-mobl.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.221.26])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:32:51 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Tue, 21 Oct 2025 21:28:57 -0300
Subject: [PATCH v2 32/32] drm/i915/nvls: Add NVL-S display support
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251021-xe3p_lpd-basic-enabling-v2-32-10eae6d655b8@intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
In-Reply-To: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>, 
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
X-Mailer: b4 0.15-dev
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

From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>

Add platform description and PCI IDs for NVL-S.

BSpec: 74201
Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_display_device.h | 4 +++-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index a38de39ed98c..2350ade1419c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1420,6 +1420,10 @@ static const struct platform_desc ptl_desc = {
 	}
 };
 
+static const struct platform_desc nvl_desc = {
+	PLATFORM(novalake),
+};
+
 __diag_pop();
 
 /*
@@ -1495,6 +1499,7 @@ static const struct {
 	INTEL_BMG_IDS(INTEL_DISPLAY_DEVICE, &bmg_desc),
 	INTEL_PTL_IDS(INTEL_DISPLAY_DEVICE, &ptl_desc),
 	INTEL_WCL_IDS(INTEL_DISPLAY_DEVICE, &ptl_desc),
+	INTEL_NVLS_IDS(INTEL_DISPLAY_DEVICE, &nvl_desc),
 };
 
 static const struct {
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 8fdb8a0a4282..ed03630f9dcc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -102,7 +102,9 @@ struct pci_dev;
 	func(battlemage) \
 	/* Display ver 30 (based on GMD ID) */ \
 	func(pantherlake) \
-	func(pantherlake_wildcatlake)
+	func(pantherlake_wildcatlake) \
+	/* Display ver 35 (based on GMD ID) */ \
+	func(novalake)
 
 
 #define __MEMBER(name) unsigned long name:1;

-- 
2.51.0

