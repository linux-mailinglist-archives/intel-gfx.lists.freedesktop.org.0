Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F46162E6F1
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Nov 2022 22:31:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FC1510E68F;
	Thu, 17 Nov 2022 21:31:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4B7A10E693
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Nov 2022 21:31:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668720667; x=1700256667;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GnBQ0muGYOrxSXXXXPXrD8r3GO36x353WbYMg7RZAZQ=;
 b=Idusu6jWu6JRVFaDAcCGmpprw7gzeLeJLJ/WMJ3MIgf2spb/EMe+tZa6
 TlMqM9LbKMAC7rlX6IdfuoxsazmhxCSCWD8CenYKuMFBp4LEh19yKti18
 07LUSReiyeV14GQ9YhFbNaBjc/gN+jKg0zUG8LdVJdcVZn5a/pqwvVZi0
 D1j+MH9FqW8tnUKl5EkeR9A1PQpREIZcmHf1U5yW1G/AtwOVUblYpm20D
 xoyNDyg9HFk4OLzLH0JqGL806K2L5NTthU6YhMuYgOIZdf0SNhJkxWfgu
 KTga+3jKO3DtiFeHmO/FgwYWFad8sd55aMLUsppoS6Sr4uw4NQi79BwBx g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="300514789"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="300514789"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 13:31:04 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="782397054"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="782397054"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 13:31:04 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Nov 2022 13:30:14 -0800
Message-Id: <20221117213015.584417-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/mtl: Fix dram info readout
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

Register info read from the hardware is being cleared out. Preserve
the register value and use extracted fields in the logic.

Fixes: 825477e77912 ("drm/i915/mtl: Obtain SAGV values from MMIO instead of GT pcode mailbox")
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/intel_dram.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/intel_dram.c
index 2403ccd52c74..bba8cb6e8ae4 100644
--- a/drivers/gpu/drm/i915/intel_dram.c
+++ b/drivers/gpu/drm/i915/intel_dram.c
@@ -471,8 +471,7 @@ static int xelpdp_get_dram_info(struct drm_i915_private *i915)
 	u32 val = intel_uncore_read(&i915->uncore, MTL_MEM_SS_INFO_GLOBAL);
 	struct dram_info *dram_info = &i915->dram_info;
 
-	val = REG_FIELD_GET(MTL_DDR_TYPE_MASK, val);
-	switch (val) {
+	switch (REG_FIELD_GET(MTL_DDR_TYPE_MASK, val)) {
 	case 0:
 		dram_info->type = INTEL_DRAM_DDR4;
 		break;
-- 
2.34.1

