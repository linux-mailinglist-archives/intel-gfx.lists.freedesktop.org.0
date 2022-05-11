Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFEF452284F
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 02:12:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E87EA10E693;
	Wed, 11 May 2022 00:12:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 079CC10E693
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 May 2022 00:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652227952; x=1683763952;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=w0azL0q6ssRSbPC4xFs4TUNcvxKHHixsj3awX1ePSbg=;
 b=jSBQjxcuTTeuH9rpGBbD6t3J4MVZLKalDFHcKXoAzFpygCQv6YV6dDBI
 TvYnrUNDA7CTSwZDzZ1LNHsk3+MUQyV/Z/KJC39zIYRDo1ebRsB+Lyln/
 clRAw118o9CrCtPJX50Mcyb9a19K4zDpej3w1aj35VLGtDfkpzXT4hNCw
 2rg6Y5SEY8g3uK/5O6rJLIU3+rGR2ROuPQfO9kQHiZh8+cRnFLrGHgNZ6
 rHkgmTsUYjWa72KhcIxm4BqTyKq6YHcKPS1U1hcbW3lEffgyoXzN4TBm4
 JxTILgfcaHabU4vWlnAe6Mx3KgvQIrjMAd3UntJxJKEJVYF7kZUELaz2N Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10343"; a="268378033"
X-IronPort-AV: E=Sophos;i="5.91,215,1647327600"; d="scan'208";a="268378033"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 17:12:30 -0700
X-IronPort-AV: E=Sophos;i="5.91,215,1647327600"; d="scan'208";a="593820986"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 17:12:30 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 May 2022 17:08:47 -0700
Message-Id: <20220511000847.1068302-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI] drm/i915/dmc: Add MMIO range restrictions
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Bspec has added some steps that check forDMC MMIO range before
programming them

v2: Fix for CI
v3: move register defines to .h (Anusha)
- Check MMIO restrictions per pipe
- Add MMIO restricton for v1 dmc header as well (Lucas)
v4: s/_PICK/_PICK_EVEN and use it only for Pipe DMC scenario.
- clean up sanity check logic.(Lucas)
- Add MMIO range for RKL as well.(Anusha)
v5: Use DISPLAY_VER instead of per platform check (Lucas)

BSpec: 49193

Cc: <stable@vger.kernel.org>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c      | 44 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dmc_regs.h | 18 +++++++-
 2 files changed, 61 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 2f01aca4d981..34d00f5aff25 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -378,6 +378,44 @@ static void dmc_set_fw_offset(struct intel_dmc *dmc,
 	}
 }
 
+static bool dmc_mmio_addr_sanity_check(struct intel_dmc *dmc,
+				       const u32 *mmioaddr, u32 mmio_count,
+				       int header_ver, u8 dmc_id)
+{
+	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), dmc);
+	u32 start_range, end_range;
+	int i;
+
+	if (dmc_id >= DMC_FW_MAX) {
+		drm_warn(&i915->drm, "Unsupported firmware id %u\n", dmc_id);
+		return false;
+	}
+
+	if (header_ver == 1) {
+		start_range = DMC_MMIO_START_RANGE;
+		end_range = DMC_MMIO_END_RANGE;
+	} else if (dmc_id == DMC_FW_MAIN) {
+		start_range = TGL_MAIN_MMIO_START;
+		end_range = TGL_MAIN_MMIO_END;
+	} else if (DISPLAY_VER(i915) >= 13) {
+		start_range = ADLP_PIPE_MMIO_START;
+		end_range = ADLP_PIPE_MMIO_END;
+	} else if (DISPLAY_VER(i915) >= 12) {
+		start_range = TGL_PIPE_MMIO_START(dmc_id);
+		end_range = TGL_PIPE_MMIO_END(dmc_id);
+	} else {
+		drm_warn(&i915->drm, "Unknown mmio range for sanity check");
+		return false;
+	}
+
+	for (i = 0; i < mmio_count; i++) {
+		if (mmioaddr[i] < start_range || mmioaddr[i] > end_range)
+			return false;
+	}
+
+	return true;
+}
+
 static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
 			       const struct intel_dmc_header_base *dmc_header,
 			       size_t rem_size, u8 dmc_id)
@@ -447,6 +485,12 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
 		return 0;
 	}
 
+	if (!dmc_mmio_addr_sanity_check(dmc, mmioaddr, mmio_count,
+					dmc_header->header_ver, dmc_id)) {
+		drm_err(&i915->drm, "DMC firmware has Wrong MMIO Addresses\n");
+		return 0;
+	}
+
 	for (i = 0; i < mmio_count; i++) {
 		dmc_info->mmioaddr[i] = _MMIO(mmioaddr[i]);
 		dmc_info->mmiodata[i] = mmiodata[i];
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
index d65e698832eb..67e14eb96a7a 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
@@ -16,7 +16,23 @@
 #define DMC_LAST_WRITE		_MMIO(0x8F034)
 #define DMC_LAST_WRITE_VALUE	0xc003b400
 #define DMC_MMIO_START_RANGE	0x80000
-#define DMC_MMIO_END_RANGE	0x8FFFF
+#define DMC_MMIO_END_RANGE     0x8FFFF
+#define DMC_V1_MMIO_START_RANGE		0x80000
+#define TGL_MAIN_MMIO_START		0x8F000
+#define TGL_MAIN_MMIO_END		0x8FFFF
+#define _TGL_PIPEA_MMIO_START		0x92000
+#define _TGL_PIPEA_MMIO_END		0x93FFF
+#define _TGL_PIPEB_MMIO_START		0x96000
+#define _TGL_PIPEB_MMIO_END		0x97FFF
+#define ADLP_PIPE_MMIO_START		0x5F000
+#define ADLP_PIPE_MMIO_END		0x5FFFF
+
+#define TGL_PIPE_MMIO_START(dmc_id)	_PICK_EVEN(((dmc_id) - 1), _TGL_PIPEA_MMIO_START,\
+					      _TGL_PIPEB_MMIO_START)
+
+#define TGL_PIPE_MMIO_END(dmc_id)	_PICK_EVEN(((dmc_id) - 1), _TGL_PIPEA_MMIO_END,\
+					      _TGL_PIPEB_MMIO_END)
+
 #define SKL_DMC_DC3_DC5_COUNT	_MMIO(0x80030)
 #define SKL_DMC_DC5_DC6_COUNT	_MMIO(0x8002C)
 #define BXT_DMC_DC3_DC5_COUNT	_MMIO(0x80038)
-- 
2.25.1

