Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF0E653391
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Dec 2022 16:40:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D044910E125;
	Wed, 21 Dec 2022 15:39:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACF7F10E125
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Dec 2022 15:39:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671637191; x=1703173191;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ne81+rZv8RPuLpIvrNQ2EmuPxtHlPm0WBNsQXlttLsU=;
 b=lmwm/TpkSw8+LdzGRj/TuqkNfqyLIABiZPMDj3IWS6dFwepF44IbvP5D
 I89HPQJ7NPZD6HHpLWqIeKElwclNApkcpNzPx60nC2Ug1Drj30mxwcVzH
 SL0sMFB+QTu+B9fAMRPDnavY8lsTKefsJL0Dpid47OUJ4RCGUINpJK8hv
 zWpEaBiM4MW8czXlAc9OQb/RWao1nqe1zTXdJwFguUJmEoOzoH+4wQTpM
 94vJVjI7ssOHerrW3CS6XC4D/BmnI2zzikELHQjCPOPvV+Ipx84lAhnmX
 g0aiebvhpG9j5yEWbN2km6dH2kgwoRgQayF2Xxyfyu78wPOfe13wskpmg g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="299576465"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="299576465"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 07:39:50 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="644879797"
X-IronPort-AV: E=Sophos;i="5.96,262,1665471600"; d="scan'208";a="644879797"
Received: from dut-internal-9dd7.jf.intel.com ([10.24.14.53])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2022 07:39:49 -0800
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Dec 2022 07:35:14 -0800
Message-Id: <20221221153514.3874262-1-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Enable XE_HP 4Tile support
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
Cc: jonathan.cavitt@intel.com,
 Telukuntla Sreedhar <sreedhar.telukuntla@intel.com>,
 Bommu Krishnaiah <krishnaiah.bommu@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add .has_4tile tag to XE_HP_FEATURES set.
Remove duplicate entry from DG2_FEATURES.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
Cc: Roper Matthew D <matthew.d.roper@intel.com>
Cc: Kempczynski Zbigniew <Zbigniew.Kempczynski@intel.com>
Cc: Telukuntla Sreedhar <sreedhar.telukuntla@intel.com>
Acked-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 668e9da52584..7fd74cc28c0a 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1017,6 +1017,7 @@ static const struct intel_device_info adl_p_info = {
 	.has_3d_pipeline = 1, \
 	.has_64bit_reloc = 1, \
 	.has_flat_ccs = 1, \
+	.has_4tile = 1, \
 	.has_global_mocs = 1, \
 	.has_gt_uc = 1, \
 	.has_llc = 1, \
@@ -1061,7 +1062,6 @@ static const struct intel_device_info xehpsdv_info = {
 	.__runtime.graphics.ip.rel = 55, \
 	.__runtime.media.ip.rel = 55, \
 	PLATFORM(INTEL_DG2), \
-	.has_4tile = 1, \
 	.has_64k_pages = 1, \
 	.has_guc_deprivilege = 1, \
 	.has_heci_pxp = 1, \
-- 
2.25.1

