Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BD45192D4
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 02:31:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08BBB10E6F7;
	Wed,  4 May 2022 00:31:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13E0510E6F7
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 00:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651624284; x=1683160284;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=I3JkUtCbR5x/2i1pn9Xcz8TkVlp7T6XI3o8xwhwoyug=;
 b=STp29hSGNoUDx4Uxxn6lQ2wCzxsgHOm+lTrZjd9Hm1Pdm6WzlhsXEKpq
 kf2KPcwvskUswPPTM1DtDGmwpebbDlS5jAb4rFDiCVNxzMlAA5wSRbZ69
 clooaDh+QBf/I0Rzp447qgEnlZ519SILw8fWpbc7pl887khEdjMV1Ku7Z
 BqOkVF6BxxpCubU6fUcAsA/u0zm4etn3SJwSIrutIOaE/RI1imMkyisOf
 oOZiBmx8Tuj0mOJ7Gsge0mMmJq60DssCBOlT0J5/KBEL23FKZeBstVLAo
 MFxIfV+1TPMhr8rco0zgoGcseNVVRfAGJm5rwufCt6IklHaF1XAe2ct91 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="247534926"
X-IronPort-AV: E=Sophos;i="5.91,196,1647327600"; d="scan'208";a="247534926"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 17:31:23 -0700
X-IronPort-AV: E=Sophos;i="5.91,196,1647327600"; d="scan'208";a="653492631"
Received: from atmozipo-desk.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.251.21.190])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 17:31:23 -0700
Date: Tue, 3 May 2022 17:31:23 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <20220504003123.7z4cpxdae43tnuor@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220504001346.667825-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220504001346.667825-1-anusha.srivatsa@intel.com>
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

On Tue, May 03, 2022 at 05:13:46PM -0700, Anusha Srivatsa wrote:
>Bspec has added some steps that check forDMC MMIO range before
>programming them
>
>v2: Fix for CI
>v3: move register defines to .h (Anusha)
>- Check MMIO restrictions per pipe
>- Add MMIO restricton for v1 dmc header as well (Lucas)
>v4: s/_PICK/_PICK_EVEN and use it only for Pipe DMC scenario.
>- clean up sanity check logic.(Lucas)
>- Add MMIO range for RKL as well.(Anusha)
>
>BSpec: 49193
>
>Cc: <stable@vger.kernel.org>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_dmc.c      | 43 +++++++++++++++++++
> drivers/gpu/drm/i915/display/intel_dmc_regs.h | 18 +++++++-
> 2 files changed, 60 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>index 257cf662f9f4..e37ba75e68da 100644
>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>@@ -374,6 +374,44 @@ static void dmc_set_fw_offset(struct intel_dmc *dmc,
> 	}
> }
>
>+static bool dmc_mmio_addr_sanity_check(struct intel_dmc *dmc, const u32 *mmioaddr,
>+				       u32 mmio_count, int header_ver, u8 dmc_id)
>+{
>+	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), dmc);
>+	u32 start_range, end_range;
>+	int i;
>+
>+	if (dmc_id >= DMC_FW_MAX || dmc_id < DMC_FW_MAIN) {

dmc_id is unsigned and DMC_FW_MAIN is 0. dmc_id < DMC_FW_MAIN can't ever
possibly happen so you can remove it.

>+		drm_warn(&i915->drm, "Unsupported firmware id %u\n", dmc_id);
>+		return false;
>+	}
>+
>+	if (header_ver == 1) {
>+		start_range = DMC_MMIO_START_RANGE;
>+		end_range = DMC_MMIO_END_RANGE;
>+	} else if (dmc_id == DMC_FW_MAIN) {
>+		start_range = TGL_MAIN_MMIO_START;
>+		end_range = TGL_MAIN_MMIO_END;
>+	} else if (IS_DG2(i915) || IS_ALDERLAKE_P(i915)) {

	} else if (DISPLAY_VER(i915) >= 13) {

?

>+		start_range = ADLP_PIPE_MMIO_START;
>+		end_range = ADLP_PIPE_MMIO_END;
>+	} else if (IS_TIGERLAKE(i915) || IS_DG1(i915) || IS_ALDERLAKE_S(i915) ||
>+		   IS_ROCKETLAKE(i915)) {

	} else if (DISPLAY_VER(i915) >= 12) {

?

maintaining the if/else ladder fine grained by platform is somewhat painful.

>+		start_range = TGL_PIPE_MMIO_START(dmc_id);
>+		end_range = TGL_PIPE_MMIO_END(dmc_id);
>+	} else {
>+		drm_warn(&i915->drm, "Unknown mmio range for sanity check");
>+		return false;
>+	}
>+
>+	for (i = 0; i < mmio_count; i++) {
>+		if (mmioaddr[i] < start_range || mmioaddr[i] > end_range)
>+			return false;
>+	}
>+
>+	return true;
>+}
>+
> static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
> 			       const struct intel_dmc_header_base *dmc_header,
> 			       size_t rem_size, u8 dmc_id)
>@@ -443,6 +481,11 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
> 		return 0;
> 	}
>
>+	if (!dmc_mmio_addr_sanity_check(dmc, mmioaddr, mmio_count, dmc_header->header_ver, dmc_id)) {
>+		drm_err(&i915->drm, "DMC firmware has Wrong MMIO Addresses\n");
>+		return 0;
>+	}
>+
> 	for (i = 0; i < mmio_count; i++) {
> 		dmc_info->mmioaddr[i] = _MMIO(mmioaddr[i]);
> 		dmc_info->mmiodata[i] = mmiodata[i];
>diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
>index d65e698832eb..67e14eb96a7a 100644
>--- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
>+++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
>@@ -16,7 +16,23 @@
> #define DMC_LAST_WRITE		_MMIO(0x8F034)
> #define DMC_LAST_WRITE_VALUE	0xc003b400
> #define DMC_MMIO_START_RANGE	0x80000
>-#define DMC_MMIO_END_RANGE	0x8FFFF
>+#define DMC_MMIO_END_RANGE     0x8FFFF
>+#define DMC_V1_MMIO_START_RANGE		0x80000
>+#define TGL_MAIN_MMIO_START		0x8F000
>+#define TGL_MAIN_MMIO_END		0x8FFFF
>+#define _TGL_PIPEA_MMIO_START		0x92000
>+#define _TGL_PIPEA_MMIO_END		0x93FFF
>+#define _TGL_PIPEB_MMIO_START		0x96000
>+#define _TGL_PIPEB_MMIO_END		0x97FFF
>+#define ADLP_PIPE_MMIO_START		0x5F000
>+#define ADLP_PIPE_MMIO_END		0x5FFFF

don't we have per-pipe range for ADLP_? Or is there only pipe A?


with the above fixes, feel free to add my Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
in the next version.

Lucas De Marchi

>+
>+#define TGL_PIPE_MMIO_START(dmc_id)	_PICK_EVEN(((dmc_id) - 1), _TGL_PIPEA_MMIO_START,\
>+					      _TGL_PIPEB_MMIO_START)
>+
>+#define TGL_PIPE_MMIO_END(dmc_id)	_PICK_EVEN(((dmc_id) - 1), _TGL_PIPEA_MMIO_END,\
>+					      _TGL_PIPEB_MMIO_END)
>+
> #define SKL_DMC_DC3_DC5_COUNT	_MMIO(0x80030)
> #define SKL_DMC_DC5_DC6_COUNT	_MMIO(0x8002C)
> #define BXT_DMC_DC3_DC5_COUNT	_MMIO(0x80038)
>-- 
>2.25.1
>
