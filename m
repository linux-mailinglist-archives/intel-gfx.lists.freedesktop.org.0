Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB854004BF
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Sep 2021 20:17:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E1566E8BC;
	Fri,  3 Sep 2021 18:17:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E6AB6E8BC
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Sep 2021 18:17:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10096"; a="217626234"
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; d="scan'208";a="217626234"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 11:17:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; d="scan'208";a="689862635"
Received: from raviteja-system-product-name.iind.intel.com ([10.145.162.127])
 by fmsmga006.fm.intel.com with ESMTP; 03 Sep 2021 11:17:30 -0700
From: Talla Raviteja Goud <ravitejax.gpud.talla@intel.com>
To: intel-gfx@lists.freedesktop.org,
 tejaskumarx.surendrakumar.upadhyay@intel.com, Mahesh.Meena@intel.com,
 hariom.pandey@intel.com
Cc: ravitejax.goud.talla@intel.com,
	lucas.demarchi@intel.com
Date: Fri,  3 Sep 2021 23:50:34 +0530
Message-Id: <20210903182034.668467-1-ravitejax.gpud.talla@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/adl_s: Remove require_force_probe
 protection
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

From: ravitejax <ravitejax.goud.talla@intel.com>

Removing force probe protection from ADLS platform. Did
not observe warnings, errors, flickering or any visual
defects while doing ordinary tasks like browsing and
editing documents in a two monitor setup.

For more info drm-tip idle run results :
https://intel-gfx-ci.01.org/tree/drm-tip/bat-all.html?

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: ravitejax <ravitejax.goud.talla@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 03a820955458..d4a6a9dcf182 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -912,7 +912,6 @@ static const struct intel_device_info adl_s_info = {
 	GEN12_FEATURES,
 	PLATFORM(INTEL_ALDERLAKE_S),
 	.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
-	.require_force_probe = 1,
 	.display.has_hti = 1,
 	.display.has_psr_hw_tracking = 0,
 	.platform_engine_mask =
-- 
2.30.2

