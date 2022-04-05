Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E782D4F3D18
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 20:02:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B535C10EBF7;
	Tue,  5 Apr 2022 18:02:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A227E10EBF7
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 18:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649181764; x=1680717764;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=8d1tII8tb2dJV34BVf/BFghSaZl0JTTxOOaxpB802BE=;
 b=CtdYkmGWeg5JeVtJs9XG8mbB1rbC+2IJgh8B0Fs/UuuO24dQ0PplgMZr
 w39sW4v/n9jrwld38dFAX/J5JmRQLcJLUa3JuuLIcL0b/WncyYVwYYRTN
 HoHfzH6+///vYgoyQvsqFFglsUijrvRS6tmyO/QERgd3nxdcQ4O7g5ijO
 uFy+e0UQy4IHpTVwa7War//DffuHiN4ItX1qxNe7lJE/+V53UuU0+V+2s
 yfu7mLFZAbXt9+yGzbEpMSvji1wjqcU/UfHih+SeMj8WyNciekxR6rKee
 MSZSVbZQrvnYE5jGyze1Lbt5cF0cqQtKGC68zTdzZtYBin0Cm92T/NSDz A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="321522529"
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="321522529"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 11:02:43 -0700
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="850844355"
Received: from wendu-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.136.77])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 11:02:42 -0700
Date: Tue, 5 Apr 2022 11:02:42 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <20220405180242.naisj5g2edrhrfsi@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220405171429.3149199-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220405171429.3149199-1-anusha.srivatsa@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 05, 2022 at 10:14:29AM -0700, Anusha Srivatsa wrote:
>Bspec has added some steps that check for DMC MMIO range before
>programming them.
>
>v2: Fix for CI failure for v1
>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_dmc.c | 42 ++++++++++++++++++++++++
> 1 file changed, 42 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>index 257cf662f9f4..05d8e90854ec 100644
>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>@@ -103,6 +103,18 @@ MODULE_FIRMWARE(BXT_DMC_PATH);
> #define DMC_V1_MAX_MMIO_COUNT		8
> #define DMC_V3_MAX_MMIO_COUNT		20
> #define DMC_V1_MMIO_START_RANGE		0x80000
>+#define TGL_MAIN_MMIO_START		0x8F000
>+#define TGL_MAIN_MMIO_END		0x8FFFF
>+#define TGL_PIPEA_MMIO_START		0x92000
>+#define TGL_PIPEA_MMIO_END		0x93FFF
>+#define TGL_PIPEB_MMIO_START		0x96000
>+#define TGL_PIPEB_MMIO_END		0x97FFF
>+#define TGL_PIPEC_MMIO_START		0x9A000
>+#define TGL_PIPEC_MMIO_END		0x9BFFF
>+#define TGL_PIPED_MMIO_START		0x9E000
>+#define TGL_PIPED_MMIO_END		0x9FFFF
>+#define ADLP_PIPE_MMIO_START		0x5F000
>+#define ADLP_PIPE_MMIO_END		0x5FFFF
>
> struct intel_css_header {
> 	/* 0x09 for DMC */
>@@ -374,6 +386,30 @@ static void dmc_set_fw_offset(struct intel_dmc *dmc,
> 	}
> }
>
>+static bool dmc_mmio_addr_sanity_check(struct intel_dmc *dmc, const u32 *mmioaddr,
>+u32 mmio_count)
>+{
>+	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), dmc);
>+	int i;
>+
>+	if (IS_DG2(i915) || IS_ALDERLAKE_P(i915)) {
>+		for (i = 0; i < mmio_count; i++) {
>+			if (!((mmioaddr[i] >= TGL_MAIN_MMIO_START && mmioaddr[i] <= TGL_MAIN_MMIO_END) ||
>+			      (mmioaddr[i] >= ADLP_PIPE_MMIO_START && mmioaddr[i] <= ADLP_PIPE_MMIO_END)))
>+				return false;
>+		}
>+	} else if (IS_TIGERLAKE(i915) || IS_DG1(i915) || IS_ALDERLAKE_S(i915))
>+		for (i = 0; i < mmio_count; i++) {
>+			if (!((mmioaddr[i] >= TGL_MAIN_MMIO_START && mmioaddr[i] <= TGL_MAIN_MMIO_END) ||
>+			      (mmioaddr[i] >= TGL_PIPEA_MMIO_START && mmioaddr[i] <= TGL_PIPEA_MMIO_END) ||
>+			      (mmioaddr[i] >= TGL_PIPEB_MMIO_START && mmioaddr[i] <= TGL_PIPEB_MMIO_END) ||
>+			      (mmioaddr[i] >= TGL_PIPEC_MMIO_START && mmioaddr[i] <= TGL_PIPEC_MMIO_END) ||
>+			      (mmioaddr[i] >= TGL_PIPED_MMIO_START && mmioaddr[i] <= TGL_PIPEC_MMIO_END)))
>+				return false;

wonder if we should check for each pipe DMC range independently rather
than just checking all the ranges.

>+	}
>+	return true;
>+}
>+
> static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
> 			       const struct intel_dmc_header_base *dmc_header,
> 			       size_t rem_size, u8 dmc_id)
>@@ -443,6 +479,12 @@ static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
> 		return 0;
> 	}
>
>+	if (dmc_header->header_ver == 3) {

this also needs to be done for ver 2

Lucas De Marchi
