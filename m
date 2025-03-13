Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C66B8A5F748
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Mar 2025 15:09:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58A1210E8A7;
	Thu, 13 Mar 2025 14:09:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LQZcGiCU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A72510E178
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Mar 2025 14:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741874961; x=1773410961;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Z88vcvi/FsnYdxnCwEgJFJrodOV31ZQRL49Tle7TOSM=;
 b=LQZcGiCUsMDIChHjQAhKxZcbFMBRZQDZaoih/kJPRo0N+AVDDyNkPqDw
 Axic2AjQwFdJ1Po0K5jE8tHtlDix1qb5Hn3ToXvtzttOrOcxVOUqP0tnW
 KpmxAN90MVMEowtiinamrBfyboypW6gKfSNQ9+Hzj4UisNXGcmaQ4SyN/
 bi1cYkb2/pIVs47xfzvaZtosMc2WY5xHXuWubS15IKUhcXIApZ0fUce7y
 I5M340EktNMrpQGFMcf+gWYIuTH0Ocr7LropIZa/rcQLtlmwFKbXv1mGH
 xksBI8fiSc7tdTS+JKiH7AaDjj48iCPnMlgpC55QEvydUNCk0tSoKA2kU A==;
X-CSE-ConnectionGUID: M1dZ/1aTT0OKSAnKrF9CYw==
X-CSE-MsgGUID: WaAlrVUCQ3iP90BJtZDLaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="42854890"
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="42854890"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 07:08:49 -0700
X-CSE-ConnectionGUID: 92rvbAErSSSUOJgYrTO7uQ==
X-CSE-MsgGUID: Bw/uktSJQDKeT5zmZUFvaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="126138422"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 13 Mar 2025 07:08:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 13 Mar 2025 16:08:46 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 03/10] agp/intel-gtt: Add intel_gmch_gtt_read_entry()
Date: Thu, 13 Mar 2025 16:08:31 +0200
Message-ID: <20250313140838.29742-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250313140838.29742-1-ville.syrjala@linux.intel.com>
References: <20250313140838.29742-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

i915 wants to read out the PTE(s) populated by the BIOS/GOP
to verify that the framebuffer is in the correct location.
Introduce intel_gmch_gtt_read_entry() that reads out the
PTE and decodes it to a somewhat abstract form. For now
we just return the dma_addr, present bit, and local memory
bit. I didn't bother with the snoop bit/etc.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/char/agp/intel-gtt.c  | 55 +++++++++++++++++++++++++++++++++++
 include/drm/intel/intel-gtt.h |  2 ++
 2 files changed, 57 insertions(+)

diff --git a/drivers/char/agp/intel-gtt.c b/drivers/char/agp/intel-gtt.c
index ef30445527a2..bcc26785175d 100644
--- a/drivers/char/agp/intel-gtt.c
+++ b/drivers/char/agp/intel-gtt.c
@@ -53,6 +53,7 @@ struct intel_gtt_driver {
 	 * of the mmio register file, that's done in the generic code. */
 	void (*cleanup)(void);
 	void (*write_entry)(dma_addr_t addr, unsigned int entry, unsigned int flags);
+	dma_addr_t (*read_entry)(unsigned int entry, bool *is_present, bool *is_local);
 	/* Flags is a more or less chipset specific opaque value.
 	 * For chipsets that need to support old ums (non-gem) code, this
 	 * needs to be identical to the various supported agp memory types! */
@@ -336,6 +337,19 @@ static void i810_write_entry(dma_addr_t addr, unsigned int entry,
 	writel_relaxed(addr | pte_flags, intel_private.gtt + entry);
 }
 
+static dma_addr_t i810_read_entry(unsigned int entry,
+				  bool *is_present, bool *is_local)
+{
+	u32 val;
+
+	val = readl(intel_private.gtt + entry);
+
+	*is_present = val & I810_PTE_VALID;
+	*is_local = val & I810_PTE_LOCAL;
+
+	return val & ~0xfff;
+}
+
 static resource_size_t intel_gtt_stolen_size(void)
 {
 	u16 gmch_ctrl;
@@ -741,6 +755,19 @@ static void i830_write_entry(dma_addr_t addr, unsigned int entry,
 	writel_relaxed(addr | pte_flags, intel_private.gtt + entry);
 }
 
+static dma_addr_t i830_read_entry(unsigned int entry,
+				  bool *is_present, bool *is_local)
+{
+	u32 val;
+
+	val = readl(intel_private.gtt + entry);
+
+	*is_present = val & I810_PTE_VALID;
+	*is_local = false;
+
+	return val & ~0xfff;
+}
+
 bool intel_gmch_enable_gtt(void)
 {
 	u8 __iomem *reg;
@@ -878,6 +905,13 @@ void intel_gmch_gtt_insert_sg_entries(struct sg_table *st,
 }
 EXPORT_SYMBOL(intel_gmch_gtt_insert_sg_entries);
 
+dma_addr_t intel_gmch_gtt_read_entry(unsigned int pg,
+				     bool *is_present, bool *is_local)
+{
+	return intel_private.driver->read_entry(pg, is_present, is_local);
+}
+EXPORT_SYMBOL(intel_gmch_gtt_read_entry);
+
 #if IS_ENABLED(CONFIG_AGP_INTEL)
 static void intel_gmch_gtt_insert_pages(unsigned int first_entry,
 					unsigned int num_entries,
@@ -1126,6 +1160,19 @@ static void i965_write_entry(dma_addr_t addr,
 	writel_relaxed(addr | pte_flags, intel_private.gtt + entry);
 }
 
+static dma_addr_t i965_read_entry(unsigned int entry,
+				  bool *is_present, bool *is_local)
+{
+	u64 val;
+
+	val = readl(intel_private.gtt + entry);
+
+	*is_present = val & I810_PTE_VALID;
+	*is_local = false;
+
+	return ((val & 0xf0) << 28) | (val & ~0xfff);
+}
+
 static int i9xx_setup(void)
 {
 	phys_addr_t reg_addr;
@@ -1187,6 +1234,7 @@ static const struct intel_gtt_driver i81x_gtt_driver = {
 	.cleanup = i810_cleanup,
 	.check_flags = i830_check_flags,
 	.write_entry = i810_write_entry,
+	.read_entry = i810_read_entry,
 };
 static const struct intel_gtt_driver i8xx_gtt_driver = {
 	.gen = 2,
@@ -1194,6 +1242,7 @@ static const struct intel_gtt_driver i8xx_gtt_driver = {
 	.setup = i830_setup,
 	.cleanup = i830_cleanup,
 	.write_entry = i830_write_entry,
+	.read_entry = i830_read_entry,
 	.dma_mask_size = 32,
 	.check_flags = i830_check_flags,
 	.chipset_flush = i830_chipset_flush,
@@ -1205,6 +1254,7 @@ static const struct intel_gtt_driver i915_gtt_driver = {
 	.cleanup = i9xx_cleanup,
 	/* i945 is the last gpu to need phys mem (for overlay and cursors). */
 	.write_entry = i830_write_entry,
+	.read_entry = i830_read_entry,
 	.dma_mask_size = 32,
 	.check_flags = i830_check_flags,
 	.chipset_flush = i9xx_chipset_flush,
@@ -1215,6 +1265,7 @@ static const struct intel_gtt_driver g33_gtt_driver = {
 	.setup = i9xx_setup,
 	.cleanup = i9xx_cleanup,
 	.write_entry = i965_write_entry,
+	.read_entry = i965_read_entry,
 	.dma_mask_size = 36,
 	.check_flags = i830_check_flags,
 	.chipset_flush = i9xx_chipset_flush,
@@ -1225,6 +1276,7 @@ static const struct intel_gtt_driver pineview_gtt_driver = {
 	.setup = i9xx_setup,
 	.cleanup = i9xx_cleanup,
 	.write_entry = i965_write_entry,
+	.read_entry = i965_read_entry,
 	.dma_mask_size = 36,
 	.check_flags = i830_check_flags,
 	.chipset_flush = i9xx_chipset_flush,
@@ -1235,6 +1287,7 @@ static const struct intel_gtt_driver i965_gtt_driver = {
 	.setup = i9xx_setup,
 	.cleanup = i9xx_cleanup,
 	.write_entry = i965_write_entry,
+	.read_entry = i965_read_entry,
 	.dma_mask_size = 36,
 	.check_flags = i830_check_flags,
 	.chipset_flush = i9xx_chipset_flush,
@@ -1244,6 +1297,7 @@ static const struct intel_gtt_driver g4x_gtt_driver = {
 	.setup = i9xx_setup,
 	.cleanup = i9xx_cleanup,
 	.write_entry = i965_write_entry,
+	.read_entry = i965_read_entry,
 	.dma_mask_size = 36,
 	.check_flags = i830_check_flags,
 	.chipset_flush = i9xx_chipset_flush,
@@ -1254,6 +1308,7 @@ static const struct intel_gtt_driver ironlake_gtt_driver = {
 	.setup = i9xx_setup,
 	.cleanup = i9xx_cleanup,
 	.write_entry = i965_write_entry,
+	.read_entry = i965_read_entry,
 	.dma_mask_size = 36,
 	.check_flags = i830_check_flags,
 	.chipset_flush = i9xx_chipset_flush,
diff --git a/include/drm/intel/intel-gtt.h b/include/drm/intel/intel-gtt.h
index cb0d5b7200c7..f53bcff01f22 100644
--- a/include/drm/intel/intel-gtt.h
+++ b/include/drm/intel/intel-gtt.h
@@ -28,6 +28,8 @@ void intel_gmch_gtt_insert_sg_entries(struct sg_table *st,
 				      unsigned int pg_start,
 				      unsigned int flags);
 void intel_gmch_gtt_clear_range(unsigned int first_entry, unsigned int num_entries);
+dma_addr_t intel_gmch_gtt_read_entry(unsigned int pg,
+				     bool *is_present, bool *is_local);
 
 /* Special gtt memory types */
 #define AGP_DCACHE_MEMORY	1
-- 
2.45.3

