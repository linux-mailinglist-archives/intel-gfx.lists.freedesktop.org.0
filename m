Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8306A45982A
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Nov 2021 00:03:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FC2489F2E;
	Mon, 22 Nov 2021 23:02:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5949E89ECD
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 23:02:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10176"; a="215612622"
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="215612622"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 15:02:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="674237071"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga005.jf.intel.com with ESMTP; 22 Nov 2021 15:02:51 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Nov 2021 15:03:59 -0800
Message-Id: <20211122230402.2023576-5-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
References: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 4/7] drm/i915/guc: Add GuC's error state capture
 output structures.
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add GuC's error capture output structures and definitions as how
they would appear in GuC log buffer's error capture subregion after
an error state capture G2H event notification.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_capture.h    | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
index df420f0f49b3..b2454b6cd778 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
@@ -29,6 +29,41 @@ struct __guc_mmio_reg_descr_group {
 	struct __guc_mmio_reg_descr * ext;
 };
 
+struct intel_guc_capture_out_data_header {
+	u32 reserved1;
+	u32 info;
+		#define GUC_CAPTURE_DATAHDR_SRC_TYPE GENMASK(3, 0) /* as per enum guc_capture_type */
+		#define GUC_CAPTURE_DATAHDR_SRC_CLASS GENMASK(7, 4) /* as per GUC_MAX_ENGINE_CLASSES */
+		#define GUC_CAPTURE_DATAHDR_SRC_INSTANCE GENMASK(11, 8)
+	u32 lrca; /* if type-instance, LRCA (address) that hung, else set to ~0 */
+	u32 guc_ctx_id; /* if type-instance, context index of hung context, else set to ~0 */
+	u32 num_mmios;
+		#define GUC_CAPTURE_DATAHDR_NUM_MMIOS GENMASK(9, 0)
+};
+
+struct intel_guc_capture_out_data {
+	struct intel_guc_capture_out_data_header capture_header;
+	struct guc_mmio_reg capture_list[0];
+};
+
+enum guc_capture_group_types {
+	GUC_STATE_CAPTURE_GROUP_TYPE_FULL,
+	GUC_STATE_CAPTURE_GROUP_TYPE_PARTIAL,
+	GUC_STATE_CAPTURE_GROUP_TYPE_MAX,
+};
+
+struct intel_guc_capture_out_group_header {
+	u32 reserved1;
+	u32 info;
+		#define GUC_CAPTURE_GRPHDR_SRC_NUMCAPTURES GENMASK(7, 0)
+		#define GUC_CAPTURE_GRPHDR_SRC_CAPTURE_TYPE GENMASK(15, 8)
+};
+
+struct intel_guc_capture_out_group {
+	struct intel_guc_capture_out_group_header group_header;
+	struct intel_guc_capture_out_data group_lists[0];
+};
+
 struct intel_guc_state_capture {
 	struct __guc_mmio_reg_descr_group *reglists;
 	u16 num_instance_regs[GUC_CAPTURE_LIST_INDEX_MAX][GUC_MAX_ENGINE_CLASSES];
-- 
2.25.1

