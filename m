Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D190949236D
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 11:02:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F7A5112A09;
	Tue, 18 Jan 2022 10:02:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC74710E253
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jan 2022 10:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642500128; x=1674036128;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L0KyIszebexoO5irrh3Mjt+/Tqs03dsOzt13PTJDg9c=;
 b=jtDCU1AYGdzz6kjnLh5+kkb1gCrUBob0lkP0gNRTkcejVE1vprOe6HHg
 C8rAhdxx10pgQ9c4B/5CMM6uczm+S3v30gEsEDQ4Bdv8rjY3UR+rWJCzA
 QkGU1yaQgkffQyG3CHrY0uFp/ieDQ5zNGb1H1WNIcfDVg/wK1RMG7W1SH
 nY8sJQjgBirI3UohSOHMf7es/fgRnXRNpdk9bGB1WHYbksoQn53EvFgo1
 M33Cc1aC9EASIFXk/J5L+Rc5VbQ73ty6pboZl+qWDZnRPyM6hjP7pJ8gC
 wArtf5Ets/b5ikjiT6KBGa8U/M0LroU2/GTxeJjQU7FUMeg7EjgqS+aJr g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="244576584"
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="244576584"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 02:02:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="615306442"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by FMSMGA003.fm.intel.com with ESMTP; 18 Jan 2022 02:02:06 -0800
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jan 2022 02:03:55 -0800
Message-Id: <20220118100358.1329655-5-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220118100358.1329655-1-alan.previn.teres.alexis@intel.com>
References: <20220118100358.1329655-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/7] drm/i915/guc: Add GuC's error state capture
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
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
index a2f97d04ff18..495cdb0228c6 100644
--- a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
@@ -28,6 +28,41 @@ struct __guc_mmio_reg_descr_group {
 	struct __guc_mmio_reg_descr *ext;
 };
 
+struct guc_state_capture_header_t {
+	u32 reserved1;
+	u32 info;
+		#define CAP_HDR_CAPTURE_TYPE GENMASK(3, 0) /* see enum guc_capture_type */
+		#define CAP_HDR_ENGINE_CLASS GENMASK(7, 4) /* see GUC_MAX_ENGINE_CLASSES */
+		#define CAP_HDR_ENGINE_INSTANCE GENMASK(11, 8)
+	u32 lrca; /* if type-instance, LRCA (address) that hung, else set to ~0 */
+	u32 guc_id; /* if type-instance, context index of hung context, else set to ~0 */
+	u32 num_mmios;
+		#define CAP_HDR_NUM_MMIOS GENMASK(9, 0)
+} __packed;
+
+struct guc_state_capture_t {
+	struct guc_state_capture_header_t header;
+	struct guc_mmio_reg mmio_entries[0];
+} __packed;
+
+enum guc_capture_group_types {
+	GUC_STATE_CAPTURE_GROUP_TYPE_FULL,
+	GUC_STATE_CAPTURE_GROUP_TYPE_PARTIAL,
+	GUC_STATE_CAPTURE_GROUP_TYPE_MAX,
+};
+
+struct guc_state_capture_group_header_t {
+	u32 reserved1;
+	u32 info;
+		#define CAP_GRP_HDR_NUM_CAPTURES GENMASK(7, 0)
+		#define CAP_GRP_HDR_CAPTURE_TYPE GENMASK(15, 8) /* guc_capture_group_types */
+} __packed;
+
+struct guc_state_capture_group_t {
+	struct guc_state_capture_group_header_t grp_header;
+	struct guc_state_capture_t capture_entries[0];
+} __packed;
+
 struct __guc_state_capture_priv {
 	struct __guc_mmio_reg_descr_group *reglists;
 	u16 num_instance_regs[GUC_CAPTURE_LIST_INDEX_MAX][GUC_MAX_ENGINE_CLASSES];
-- 
2.25.1

