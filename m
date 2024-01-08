Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73BB5827B45
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jan 2024 00:07:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07B9B10E342;
	Mon,  8 Jan 2024 23:07:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5736210E326
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 23:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704755222; x=1736291222;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WNEuB+srrZ1uco+Gd4vFdYbLesrC+INYl2oJP05gcX8=;
 b=fLqdpBaMO2Qze9LNJS0O+RSG8nAZyQ7pbCyz5aiU2dIlAig/asBzH/k0
 C+Z1czaUSZaQi7yMv0sTwWtClY1QhhZXzT8rKG0kgi3ox36s1BDO491UJ
 W/2GkUp+x/2hJDWFBTE6xT/feaS8Qj5o5SoIE+sxvvZx66qX6pE5DVytX
 deB/Wk5QkWtrpDmCYkH22oKkrH7t8Y+yostyRrwYOiHX4j8zn1LMV+QoM
 NAQNUp5MUYez1TjLVh75JhgI2Ymk9n7pJSZCdyQIr2dLRle8b1/lDNT3t
 j3lZoumSaBJAT5libAuy8iNVAPBdtyBNgIR1RlzYS9I2Ekv9aY4tbkte5 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="11514119"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="11514119"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 15:07:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="774647083"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="774647083"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 15:06:59 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [RFC 03/15] drm/i915: Cache opregion asls pointer
Date: Mon,  8 Jan 2024 15:05:05 -0800
Message-Id: <20240108230517.1497504-4-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240108230517.1497504-1-radhakrishna.sripada@intel.com>
References: <20240108230517.1497504-1-radhakrishna.sripada@intel.com>
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

Asls offset is used to calculate the relative offset of vbt in ASLE
mailbox. Cache the address read from PCI config space to use later during
vbt extraction.

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 4 +++-
 drivers/gpu/drm/i915/display/intel_opregion.h | 1 +
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index fa25007fac3a..bd654d773ca7 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -903,6 +903,7 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 		return -ENOTSUPP;
 	}
 
+	opregion->asls = asls;
 	INIT_WORK(&opregion->asle_work, asle_work);
 
 	base = memremap(asls, OPREGION_SIZE, MEMREMAP_WB);
@@ -987,7 +988,7 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 		    opregion->header->over.minor >= 1) {
 			drm_WARN_ON(&dev_priv->drm, rvda < OPREGION_SIZE);
 
-			rvda += asls;
+			rvda += opregion->asls;
 		}
 
 		opregion->rvda = memremap(rvda, opregion->asle->rvds,
@@ -1262,6 +1263,7 @@ void intel_opregion_cleanup(struct drm_i915_private *i915)
 	opregion->swsci = NULL;
 	opregion->asle = NULL;
 	opregion->asle_ext = NULL;
+	opregion->asls = 0;
 	vbt->vbt = NULL;
 	opregion->lid_state = NULL;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
index 7e1c8f1c2da5..03838fa39d0d 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.h
+++ b/drivers/gpu/drm/i915/display/intel_opregion.h
@@ -48,6 +48,7 @@ struct intel_opregion {
 	struct opregion_asle_ext *asle_ext;
 	void *rvda;
 	u32 *lid_state;
+	u32 asls;
 	struct work_struct asle_work;
 	struct notifier_block acpi_notifier;
 };
-- 
2.34.1

