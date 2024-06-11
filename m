Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE71903ED3
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 16:30:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6A9D10E15D;
	Tue, 11 Jun 2024 14:30:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G0ZhOhiE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DA7310E04D;
 Tue, 11 Jun 2024 14:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718116244; x=1749652244;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ddSmGFrKosmGt07/5iez3l6GA3mrHW6gIlEakO6WlUI=;
 b=G0ZhOhiEAKJpjcMWaGWVhpGg2aTf9L1Fqekim2zuLgO1oDjqE/Zn2Itq
 EvoIj8IgPNJTtmBPPM6iD2ooEUfdSAey27XMoUhdqpCzTEUZjdiu/k1FY
 678V+3IqudbZ7DrbmLZJuWnaWaXIS019BEc9zhsbfpe+tuLyWq329czEP
 NafBVsNPs0iItiyxqqDUMCVrKi86lOnjB+PpibhwbGEM4aKAovZhSmoX8
 IDA1Ge406HCE5DqWh8xwncNMj08LWm3sj2Wh186lqdDsTSd09+tTNhscI
 x0GdG/jioa1vzYgfPbCHUxgT03jnlOXPUmcHfGuRMtVIOIh5g6vWzL8tR A==;
X-CSE-ConnectionGUID: K9uSTGVlRKao2C+hyHZcig==
X-CSE-MsgGUID: urlfCrFfTIiP2xlWq2t9ZA==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="14957499"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="14957499"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 07:30:41 -0700
X-CSE-ConnectionGUID: rfWr2sEISQaDdEXze8Vnug==
X-CSE-MsgGUID: xhP5t7VfSNacShmLsm/JVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="44357787"
Received: from mwajdecz-mobl.ger.corp.intel.com ([10.94.248.185])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 07:30:40 -0700
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Subject: [RFC 1/7] drm/xe/guc: Promote GuC ABI headers to shared location
Date: Tue, 11 Jun 2024 16:30:02 +0200
Message-Id: <20240611143008.1900-2-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20240611143008.1900-1-michal.wajdeczko@intel.com>
References: <20240611143008.1900-1-michal.wajdeczko@intel.com>
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

GuC ABI definitions do not have to be the Xe driver specific.
Move them to shared location for later reuse by the i915 driver.
While at it, fixup few improper kernel-doc annotations.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
---
 .../{xe => intel/guc}/abi/guc_communication_ctb_abi.h  |  0
 .../{xe => intel/guc}/abi/guc_communication_mmio_abi.h |  0
 drivers/gpu/drm/{xe => intel/guc}/abi/guc_klvs_abi.h   | 10 +++++-----
 .../gpu/drm/{xe => intel/guc}/abi/guc_messages_abi.h   |  0
 drivers/gpu/drm/xe/Makefile                            |  5 +++++
 5 files changed, 10 insertions(+), 5 deletions(-)
 rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_communication_ctb_abi.h (100%)
 rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_communication_mmio_abi.h (100%)
 rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_klvs_abi.h (98%)
 rename drivers/gpu/drm/{xe => intel/guc}/abi/guc_messages_abi.h (100%)

diff --git a/drivers/gpu/drm/xe/abi/guc_communication_ctb_abi.h b/drivers/gpu/drm/intel/guc/abi/guc_communication_ctb_abi.h
similarity index 100%
rename from drivers/gpu/drm/xe/abi/guc_communication_ctb_abi.h
rename to drivers/gpu/drm/intel/guc/abi/guc_communication_ctb_abi.h
diff --git a/drivers/gpu/drm/xe/abi/guc_communication_mmio_abi.h b/drivers/gpu/drm/intel/guc/abi/guc_communication_mmio_abi.h
similarity index 100%
rename from drivers/gpu/drm/xe/abi/guc_communication_mmio_abi.h
rename to drivers/gpu/drm/intel/guc/abi/guc_communication_mmio_abi.h
diff --git a/drivers/gpu/drm/xe/abi/guc_klvs_abi.h b/drivers/gpu/drm/intel/guc/abi/guc_klvs_abi.h
similarity index 98%
rename from drivers/gpu/drm/xe/abi/guc_klvs_abi.h
rename to drivers/gpu/drm/intel/guc/abi/guc_klvs_abi.h
index 8f9f60b28306..191995e4cb1d 100644
--- a/drivers/gpu/drm/xe/abi/guc_klvs_abi.h
+++ b/drivers/gpu/drm/intel/guc/abi/guc_klvs_abi.h
@@ -66,23 +66,23 @@
  *      Refers to 64 bit Global Gfx address of H2G `CT Buffer`_.
  *      Should be above WOPCM address but below APIC base address for native mode.
  *
- * _`GUC_KLV_SELF_CFG_H2G_CTB_DESCRIPTOR_ADDR : 0x0903
+ * _`GUC_KLV_SELF_CFG_H2G_CTB_DESCRIPTOR_ADDR` : 0x0903
  *      Refers to 64 bit Global Gfx address of H2G `CTB Descriptor`_.
  *      Should be above WOPCM address but below APIC base address for native mode.
  *
- * _`GUC_KLV_SELF_CFG_H2G_CTB_SIZE : 0x0904
+ * _`GUC_KLV_SELF_CFG_H2G_CTB_SIZE` : 0x0904
  *      Refers to size of H2G `CT Buffer`_ in bytes.
  *      Should be a multiple of 4K.
  *
- * _`GUC_KLV_SELF_CFG_G2H_CTB_ADDR : 0x0905
+ * _`GUC_KLV_SELF_CFG_G2H_CTB_ADDR` : 0x0905
  *      Refers to 64 bit Global Gfx address of G2H `CT Buffer`_.
  *      Should be above WOPCM address but below APIC base address for native mode.
  *
- * _GUC_KLV_SELF_CFG_G2H_CTB_DESCRIPTOR_ADDR : 0x0906
+ * _`GUC_KLV_SELF_CFG_G2H_CTB_DESCRIPTOR_ADDR` : 0x0906
  *      Refers to 64 bit Global Gfx address of G2H `CTB Descriptor`_.
  *      Should be above WOPCM address but below APIC base address for native mode.
  *
- * _GUC_KLV_SELF_CFG_G2H_CTB_SIZE : 0x0907
+ * _`GUC_KLV_SELF_CFG_G2H_CTB_SIZE` : 0x0907
  *      Refers to size of G2H `CT Buffer`_ in bytes.
  *      Should be a multiple of 4K.
  */
diff --git a/drivers/gpu/drm/xe/abi/guc_messages_abi.h b/drivers/gpu/drm/intel/guc/abi/guc_messages_abi.h
similarity index 100%
rename from drivers/gpu/drm/xe/abi/guc_messages_abi.h
rename to drivers/gpu/drm/intel/guc/abi/guc_messages_abi.h
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 478acc94a71c..a6325ee08a91 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -35,6 +35,11 @@ uses_generated_oob := \
 
 $(uses_generated_oob): $(generated_oob)
 
+# Shared ABI definitions
+subdir-ccflags-y += \
+	-I$(srctree)/drivers/gpu/drm/intel/guc/ \
+	-I$(srctree)/drivers/gpu/drm/intel/guc/abi
+
 # Please keep these build lists sorted!
 
 # core driver code
-- 
2.43.0

