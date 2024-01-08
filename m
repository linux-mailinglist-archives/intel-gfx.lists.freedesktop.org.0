Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B381D827B3A
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jan 2024 00:07:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F062810E332;
	Mon,  8 Jan 2024 23:07:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCCEC10E332
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 23:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704755222; x=1736291222;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YVh3D/7n4Z+AFfe5d+eF/QiRdMGZBnm3Uou8YA9mWZA=;
 b=UGiIzgtRd+7eNGhfKep4wt17SHnwZWSsLZCH4/E5sDXrRJ51VmX5zaT9
 +sD7esu6vWL6LqBHFk526alROCmeWc9kkGE/VtpiaqOJUTZ9JSgZQpxEg
 LHy+3AIMzkabwp8R2GV1yC69RetCT/sHoTS0qD664q6rp0y1D1EXRwfyG
 Z4LIAWk8jhxIX9s8ACB8cuIkoyJHa/PD9L61wAn6qLUy3dWsiHJvGxa1m
 qQbG8qpZATH6ve6hczyru5r/H6dgHXKqQlUSJYN7MKoUD64MFq/GnpxNe
 RHKbBlXU9fGXJ8k/M4wm0W601OLe3WXs/G5Bxit88r3ByAs6ufp2R+SCT w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="11514126"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="11514126"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 15:07:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="774647098"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="774647098"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 15:07:00 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [RFC 08/15] drm/i915: Make intel_bios_init operate on intel_vbt
Date: Mon,  8 Jan 2024 15:05:10 -0800
Message-Id: <20240108230517.1497504-9-radhakrishna.sripada@intel.com>
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

intel_bios_init previously operated on vbt_header. Make use
of the newly introduced intel_vbt to be later streamline
different vbt reading methods.

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 28 ++++++++++++-----------
 1 file changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index ccfc4a4e4c98..bde58a1ceadb 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3081,8 +3081,9 @@ static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915)
  */
 void intel_bios_init(struct drm_i915_private *i915)
 {
-	const struct vbt_header *vbt = i915->display.vbt.vbt;
+	struct intel_vbt *vbt = &i915->display.vbt;
 	struct vbt_header *oprom_vbt = NULL;
+	struct vbt_header *header = NULL;
 	const struct bdb_header *bdb;
 	const char * const vbt_type[] = {
 		[I915_VBT_NONE] = "None",
@@ -3092,8 +3093,8 @@ void intel_bios_init(struct drm_i915_private *i915)
 		[I915_VBT_SPI] = "SPI",
 	};
 
-	INIT_LIST_HEAD(&i915->display.vbt.data.display_devices);
-	INIT_LIST_HEAD(&i915->display.vbt.data.bdb_blocks);
+	INIT_LIST_HEAD(&vbt->data.display_devices);
+	INIT_LIST_HEAD(&vbt->data.bdb_blocks);
 
 	if (!HAS_DISPLAY(i915)) {
 		drm_dbg_kms(&i915->drm,
@@ -3107,25 +3108,26 @@ void intel_bios_init(struct drm_i915_private *i915)
 	 * If the OpRegion does not have VBT, look in SPI flash through MMIO or
 	 * PCI mapping
 	 */
-	if (!vbt && IS_DGFX(i915)) {
+	if (!vbt->vbt && IS_DGFX(i915)) {
 		oprom_vbt = spi_oprom_get_vbt(i915);
-		vbt = oprom_vbt;
+		vbt->vbt = oprom_vbt;
 	}
 
-	if (!vbt) {
+	if (!vbt->vbt) {
 		oprom_vbt = oprom_get_vbt(i915);
-		vbt = oprom_vbt;
+		vbt->vbt = oprom_vbt;
 	}
 
-	if (!vbt)
+	if (!vbt->vbt)
 		goto out;
 
-	bdb = get_bdb_header(vbt);
-	i915->display.vbt.data.version = bdb->version;
+	header = (struct vbt_header *)vbt->vbt;
+	bdb = get_bdb_header(header);
+	vbt->data.version = bdb->version;
 
 	drm_dbg_kms(&i915->drm, "%s VBT signature \"%.*s\", BDB version %d\n",
-		    vbt_type[i915->display.vbt.type], (int)sizeof(vbt->signature),
-		    vbt->signature, i915->display.vbt.data.version);
+		    vbt_type[vbt->type], (int)sizeof(header->signature),
+		    header->signature, vbt->data.version);
 
 	init_bdb_blocks(i915, bdb);
 
@@ -3138,7 +3140,7 @@ void intel_bios_init(struct drm_i915_private *i915)
 	parse_compression_parameters(i915);
 
 out:
-	if (!vbt) {
+	if (!vbt->vbt) {
 		drm_info(&i915->drm,
 			 "Failed to find VBIOS tables (VBT)\n");
 		init_vbt_missing_defaults(i915);
-- 
2.34.1

