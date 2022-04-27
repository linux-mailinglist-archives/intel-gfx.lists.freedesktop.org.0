Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42DE351109B
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Apr 2022 07:42:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B00E410F928;
	Wed, 27 Apr 2022 05:42:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF83610F92C
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Apr 2022 05:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651038121; x=1682574121;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=jEErSTSwvO2esYC39wj6u0JtnM2vBVUe/X9VDAalVtc=;
 b=cTqGqgUjom3HTUrpHRyQQhH5FssYtUAw1jYBSfS+ZHucdxzsf49+7db8
 CqmAPvmQZ9qYaoC51pKYKvWZe7VkbqOXkn9zWPyTtIXEpETXdPXwyesWc
 GTADdvMP0dLcoIT4/GTBcExg2/+AB7akgGAbvfi7zDlwRJ3IkoZfGm4oa
 pGOC5rk4cRnyg4D7wlsQGKMNbpNAmndlmjx1kQCFchy4GHlby7vFnillQ
 B3+Rm1XuFpd3B1kaS6c05FYh9W1xRs79JUrOT1aVfoIIBWIpQEkaTxb0y
 EW4lJ+fgtbxGP72CFpbF7JvC0rIoJs9rWHFLDE+CqOUoF4jGzrp33eG0E g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="290970389"
X-IronPort-AV: E=Sophos;i="5.90,292,1643702400"; d="scan'208";a="290970389"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 22:41:55 -0700
X-IronPort-AV: E=Sophos;i="5.90,292,1643702400"; d="scan'208";a="539548258"
Received: from gforcumx-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.84.57])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 22:41:54 -0700
Date: Tue, 26 Apr 2022 22:41:54 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <20220427054154.mrila5bwwk2durvv@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220427003509.267683-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220427003509.267683-1-anusha.srivatsa@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Add MMIO range restrictions
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 26, 2022 at 05:35:09PM -0700, Anusha Srivatsa wrote:
>Bspec has added some steps that check forDMC MMIO range before
>programming them
>
>v2: Fix for CI
>v3: move register defines to .h (Anusha)
>- Check MMIO restrictions per pipe
>- Add MMIO restricton for v1 dmc header as well (Lucas)
>
>BSpec: 49193
>
>Cc: <stable@vger.kernel.org>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_dmc.c      | 48 ++++++++++++++++---
> drivers/gpu/drm/i915/display/intel_dmc_regs.h | 31 ++++++++++++
> 2 files changed, 72 insertions(+), 7 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>index 257cf662f9f4..ac7896835bfa 100644
>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>@@ -97,13 +97,6 @@ MODULE_FIRMWARE(SKL_DMC_PATH);
> #define BXT_DMC_MAX_FW_SIZE		0x3000
> MODULE_FIRMWARE(BXT_DMC_PATH);
>
>-#define DMC_DEFAULT_FW_OFFSET		0xFFFFFFFF
>-#define PACKAGE_MAX_FW_INFO_ENTRIES	20
>-#define PACKAGE_V2_MAX_FW_INFO_ENTRIES	32
>-#define DMC_V1_MAX_MMIO_COUNT		8
>-#define DMC_V3_MAX_MMIO_COUNT		20
>-#define DMC_V1_MMIO_START_RANGE		0x80000
>-
> struct intel_css_header {
> 	/* 0x09 for DMC */
> 	u32 module_type;
>@@ -374,6 +367,43 @@ static void dmc_set_fw_offset(struct intel_dmc *dmc,
> 	}
> }
>
>+static bool dmc_mmio_addr_sanity_check(struct intel_dmc *dmc, const u32 *mmioaddr,
>+				       u32 mmio_count, int header_ver, u8 dmc_id)
>+{
>+	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), dmc);
>+	int i;
>+
>+	if (header_ver == 1) {
>+		for (i = 0; i < mmio_count; i++) {
>+			if (mmioaddr[i] < DMC_MMIO_START_RANGE || mmioaddr[i] > DMC_MMIO_END_RANGE)
>+				return false;
>+		}

return missing here

>+	}
>+
>+	/* Main DMC MMIO check */
>+	if (dmc_id == DMC_FW_MAIN) {
>+		for (i = 0; i < mmio_count; i++) {
>+			if (mmioaddr[i] < TGL_DMC_MMIO_START(dmc_id) || mmioaddr[i] > TGL_DMC_MMIO_END(dmc_id))
>+				return false;
>+		}
>+	}
>+
>+	/* Pipe DMC MMIO check */
>+	if (IS_DG2(i915) || IS_ALDERLAKE_P(i915)) {
>+		for (i = 0; i < mmio_count; i++) {
>+			if (mmioaddr[i] < ADLP_PIPE_MMIO_START && mmioaddr[i] > ADLP_PIPE_MMIO_END)
>+				return false;
>+		}

for DG2, main should use TGL_DMC_MMIO_START? and then fail here because
of another missing return above?

>+	} else if (IS_TIGERLAKE(i915) || IS_DG1(i915) || IS_ALDERLAKE_S(i915)) {
>+		for (i = 0; i < mmio_count; i++) {
>+			if (mmioaddr[i] < TGL_DMC_MMIO_START(dmc_id) || mmioaddr[i] > TGL_DMC_MMIO_END(dmc_id))
>+				return false;

this is handling DMC_FW_MAIN twice.


Maybe something like this:

	u32 start, end;

	if (header_ver == 1) {
		start = DMC_MMIO_START_RANGE;
		end = DMC_MMIO_END_RANGE;
	} else if (dmc_id == DMC_FW_MAIN || IS_TIGERLAKE(i915) || IS_DG1(i915) || IS_ALDERLAKE_S(i915)) {
		start = TGL_DMC_MMIO_START(dmc_id);
		end = TGL_DMC_MMIO_END(dmc_id);
	} else if (IS_DG2(i915) || IS_ALDERLAKE_P(i915)) {
		start = ADLP_PIPE_MMIO_START;
		end = ADLP_PIPE_MMIO_END;
	} else {
		drm_warn(&i915->drm, "Unknown mmio range for sanity check");
		return false;
	}

	for (i = 0; i < mmio_count; i++)
		if (mmioaddr[i] < start || mmioaddr[i] > end)
			return false;

	return true;


... untested, and may need tweaks depending on the answer to the
question above on what range to use for ADL-P/DG2 on main DMC.

>+		}
>+	}
>+
>+	return true;
>+}
>+
> static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
> 			       const struct intel_dmc_header_base *dmc_header,
> 			       size_t rem_size, u8 dmc_id)
>@@ -443,6 +473,10 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
> 		return 0;
> 	}
>
>+	if (!dmc_mmio_addr_sanity_check(dmc, mmioaddr, mmio_count, dmc_header->header_ver, dmc_id))
>+		drm_err(&i915->drm, "DMC firmware has Wrong MMIO Addresses\n");
>+		return 0;

you don't like DMC and decided to fail it for all platforms?

>+
> 	for (i = 0; i < mmio_count; i++) {
> 		dmc_info->mmioaddr[i] = _MMIO(mmioaddr[i]);
> 		dmc_info->mmiodata[i] = mmiodata[i];
>diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
>index d65e698832eb..235d1b721334 100644
>--- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
>+++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
>@@ -11,12 +11,43 @@
> #define DMC_PROGRAM(addr, i)	_MMIO((addr) + (i) * 4)
> #define DMC_SSP_BASE_ADDR_GEN9	0x00002FC0
> #define DMC_HTP_ADDR_SKL	0x00500034
>+#define DMC_DEFAULT_FW_OFFSET	0xFFFFFFFF
> #define DMC_SSP_BASE		_MMIO(0x8F074)
> #define DMC_HTP_SKL		_MMIO(0x8F004)
> #define DMC_LAST_WRITE		_MMIO(0x8F034)
> #define DMC_LAST_WRITE_VALUE	0xc003b400
> #define DMC_MMIO_START_RANGE	0x80000
> #define DMC_MMIO_END_RANGE	0x8FFFF
>+#define PACKAGE_MAX_FW_INFO_ENTRIES	20
>+#define PACKAGE_V2_MAX_FW_INFO_ENTRIES	32
>+#define DMC_V1_MAX_MMIO_COUNT		8
>+#define DMC_V3_MAX_MMIO_COUNT		20


why are you moving these to _regs?  these describe the DMC header/blob


>+#define DMC_V1_MMIO_START_RANGE		0x80000
>+#define _TGL_MAIN_MMIO_START		0x8F000
>+#define _TGL_MAIN_MMIO_END		0x8FFFF
>+#define _TGL_PIPEA_MMIO_START		0x92000
>+#define _TGL_PIPEA_MMIO_END		0x93FFF
>+#define _TGL_PIPEB_MMIO_START		0x96000
>+#define _TGL_PIPEB_MMIO_END		0x97FFF
>+#define _TGL_PIPEC_MMIO_START		0x9A000
>+#define _TGL_PIPEC_MMIO_END		0x9BFFF
>+#define _TGL_PIPED_MMIO_START		0x9E000
>+#define _TGL_PIPED_MMIO_END		0x9FFFF
>+#define ADLP_PIPE_MMIO_START		0x5F000
>+#define ADLP_PIPE_MMIO_END		0x5FFFF
>+
>+#define TGL_DMC_MMIO_START(pipe)	_PICK(pipe, _TGL_MAIN_MMIO_START,\

_PICK?  Did you miss my previous review?

Lucas De Marchi

>+					      _TGL_PIPEA_MMIO_START,\
>+					      _TGL_PIPEB_MMIO_START,\
>+					      _TGL_PIPEC_MMIO_START,\
>+					      _TGL_PIPEB_MMIO_START)
>+
>+#define TGL_DMC_MMIO_END(pipe)		_PICK(pipe, _TGL_MAIN_MMIO_END,\
>+					      _TGL_PIPEA_MMIO_END,\
>+					      _TGL_PIPEB_MMIO_END,\
>+					      _TGL_PIPEC_MMIO_END,\
>+					      _TGL_PIPEB_MMIO_END)
>+
> #define SKL_DMC_DC3_DC5_COUNT	_MMIO(0x80030)
> #define SKL_DMC_DC5_DC6_COUNT	_MMIO(0x8002C)
> #define BXT_DMC_DC3_DC5_COUNT	_MMIO(0x80038)
>-- 
>2.25.1
>
