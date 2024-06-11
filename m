Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A011D903EDD
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2024 16:31:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC93410E17B;
	Tue, 11 Jun 2024 14:31:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oH9+fprJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7927410E17B;
 Tue, 11 Jun 2024 14:30:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718116249; x=1749652249;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H6rL+QrCgFhaLu5U0XyzVKGo0ekrtV9FzlWiCRFQVCA=;
 b=oH9+fprJ50/9iVuiFA7GBWDsQ2aw5UOTjDyEVgkTUYv0LjKbUvbWawIf
 sNaLC33FNaYD+JMw1/8FnQMtSy5t4UG8q4Wrx5/z8NHStQH5hE2KghXJY
 4ffr2QsZRbCaGfB39F7dK5bfYQ5UcVm6qMKfSHWjQ/LApPc6TO3V+fCAd
 0lYYrXK4ZTKTJ0YttGYOACwfAjT2o3sfR8TMhtA7UJcMpqADpyYtixczh
 zaXkpPLBHAYeSHhMZXbJv04dp1tEJ9EQEwYBw9fTsGX/ybakOekFRs6DE
 7gNnmohb3he5UVWUZIPwA7UNAzMPfwU/2LXnXCQ8BmqMnEJ7xIfdq2ZRG A==;
X-CSE-ConnectionGUID: Dst+DycTQXOJZ4GpMlNFZw==
X-CSE-MsgGUID: kh03f66PQma2u/uqt9WUEA==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="14957547"
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="14957547"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 07:30:47 -0700
X-CSE-ConnectionGUID: 8Xf7omn1TQKWyauIS3jRhw==
X-CSE-MsgGUID: wbNSjC59Rz+3jed7AvbRsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,230,1712646000"; d="scan'208";a="44357827"
Received: from mwajdecz-mobl.ger.corp.intel.com ([10.94.248.185])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 07:30:46 -0700
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Subject: [RFC 5/7] drm/intel/guc: Add new KLV definitions
Date: Tue, 11 Jun 2024 16:30:06 +0200
Message-Id: <20240611143008.1900-6-michal.wajdeczko@intel.com>
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

Some KLVs were not used by the Xe driver, but are used by the i915.
Add scheduling policy update key and another workaround key.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
---
 drivers/gpu/drm/intel/guc/abi/guc_klvs_abi.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/intel/guc/abi/guc_klvs_abi.h b/drivers/gpu/drm/intel/guc/abi/guc_klvs_abi.h
index 191995e4cb1d..e6dcd8346ac2 100644
--- a/drivers/gpu/drm/intel/guc/abi/guc_klvs_abi.h
+++ b/drivers/gpu/drm/intel/guc/abi/guc_klvs_abi.h
@@ -111,6 +111,13 @@
 #define GUC_KLV_SELF_CFG_G2H_CTB_SIZE_KEY		0x0907
 #define GUC_KLV_SELF_CFG_G2H_CTB_SIZE_LEN		1u
 
+/*
+ * Global scheduling policy update keys.
+ */
+enum {
+	GUC_SCHEDULING_POLICIES_KLV_ID_RENDER_COMPUTE_YIELD	= 0x1001,
+};
+
 /*
  * Per context scheduling policy update keys.
  */
@@ -347,6 +354,7 @@ enum  {
  * Workaround keys:
  */
 enum xe_guc_klv_ids {
+	GUC_WORKAROUND_KLV_SERIALIZED_RA_MODE						= 0x9001,
 	GUC_WORKAROUND_KLV_BLOCK_INTERRUPTS_WHEN_MGSR_BLOCKED				= 0x9002,
 	GUC_WORKAROUND_KLV_ID_GAM_PFQ_SHADOW_TAIL_POLLING				= 0x9005,
 	GUC_WORKAROUND_KLV_ID_DISABLE_MTP_DURING_ASYNC_COMPUTE				= 0x9007,
-- 
2.43.0

