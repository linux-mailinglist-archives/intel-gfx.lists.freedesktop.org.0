Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9339533089
	for <lists+intel-gfx@lfdr.de>; Tue, 24 May 2022 20:36:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEB8F10FB62;
	Tue, 24 May 2022 18:36:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8680310FB5C;
 Tue, 24 May 2022 18:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653417411; x=1684953411;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=55tMkLxJY/Mf1mN/1koHQFi/lO7FK680xUZAazWH2cI=;
 b=RpEuRNFMtlhwbZl6ONgiUgK9qt1FZVffi52NO7ejoh2ltQLUXxA7As/U
 s7zPZBPpGXqHVeNJJMsImaJ+KVrDeyRVHsd3On60XYckevzeOjs/gHrcU
 PhoO3ripba1K5HbI7GGgpRo43Y/Bwyv48OTj3NyUFYDYQYnAkt/f0NpNt
 LkE6KXWC2qK0WPwGpEBc6XCdqtbTueht8WhZ2uxSAVtW6t0e9wsNQKLjj
 CWOCy+AIMGIe4eAkNQfQb1zm10BYvEAEI4gz938FQsqo7TpANtB8uC2vk
 az9anfaA9aWHNfacwKc+sxFxazHyhKGf+LeZAnBKvEeUmJg4brJYw9ZTC Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10357"; a="255685382"
X-IronPort-AV: E=Sophos;i="5.91,248,1647327600"; d="scan'208";a="255685382"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2022 11:36:48 -0700
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="559249333"
Received: from iucastil-mobl1.amr.corp.intel.com (HELO msatwood-mobl)
 ([10.212.91.173])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2022 11:36:35 -0700
Date: Tue, 24 May 2022 11:36:34 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Message-ID: <Yo0lsqKotaIuTiIU@msatwood-mobl>
References: <20220511060228.1179450-1-matthew.d.roper@intel.com>
 <20220511060228.1179450-3-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220511060228.1179450-3-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 2/5] drm/i915/pvc: Add forcewake support
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 10, 2022 at 11:02:25PM -0700, Matt Roper wrote:
> Add PVC's forcewake ranges.
> 
> v2:
>  - Drop replicated comment completely; move general cleanup of the
>    documentation to a separate patch.
> 
> Bspec: 67609
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Stuart Summers <stuart.summers@intel.com>
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_uncore.c           | 142 +++++++++++++++++-
>  drivers/gpu/drm/i915/selftests/intel_uncore.c |   2 +
>  2 files changed, 143 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index 095e071e4053..fac0ff60bfbf 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -1076,6 +1076,45 @@ static const struct i915_range dg2_shadowed_regs[] = {
>  	{ .start = 0x1F8510, .end = 0x1F8550 },
>  };
>  
> +static const struct i915_range pvc_shadowed_regs[] = {
> +	{ .start =   0x2030, .end =   0x2030 },
> +	{ .start =   0x2510, .end =   0x2550 },
> +	{ .start =   0xA008, .end =   0xA00C },
> +	{ .start =   0xA188, .end =   0xA188 },
> +	{ .start =   0xA278, .end =   0xA278 },
> +	{ .start =   0xA540, .end =   0xA56C },
> +	{ .start =   0xC4C8, .end =   0xC4C8 },
> +	{ .start =   0xC4E0, .end =   0xC4E0 },
> +	{ .start =   0xC600, .end =   0xC600 },
> +	{ .start =   0xC658, .end =   0xC658 },
> +	{ .start =  0x22030, .end =  0x22030 },
> +	{ .start =  0x22510, .end =  0x22550 },
> +	{ .start = 0x1C0030, .end = 0x1C0030 },
> +	{ .start = 0x1C0510, .end = 0x1C0550 },
> +	{ .start = 0x1C4030, .end = 0x1C4030 },
> +	{ .start = 0x1C4510, .end = 0x1C4550 },
> +	{ .start = 0x1C8030, .end = 0x1C8030 },
> +	{ .start = 0x1C8510, .end = 0x1C8550 },
> +	{ .start = 0x1D0030, .end = 0x1D0030 },
> +	{ .start = 0x1D0510, .end = 0x1D0550 },
> +	{ .start = 0x1D4030, .end = 0x1D4030 },
> +	{ .start = 0x1D4510, .end = 0x1D4550 },
> +	{ .start = 0x1D8030, .end = 0x1D8030 },
> +	{ .start = 0x1D8510, .end = 0x1D8550 },
> +	{ .start = 0x1E0030, .end = 0x1E0030 },
> +	{ .start = 0x1E0510, .end = 0x1E0550 },
> +	{ .start = 0x1E4030, .end = 0x1E4030 },
> +	{ .start = 0x1E4510, .end = 0x1E4550 },
> +	{ .start = 0x1E8030, .end = 0x1E8030 },
> +	{ .start = 0x1E8510, .end = 0x1E8550 },
> +	{ .start = 0x1F0030, .end = 0x1F0030 },
> +	{ .start = 0x1F0510, .end = 0x1F0550 },
> +	{ .start = 0x1F4030, .end = 0x1F4030 },
> +	{ .start = 0x1F4510, .end = 0x1F4550 },
> +	{ .start = 0x1F8030, .end = 0x1F8030 },
> +	{ .start = 0x1F8510, .end = 0x1F8550 },
> +};
> +
>  static int mmio_range_cmp(u32 key, const struct i915_range *range)
>  {
>  	if (key < range->start)
> @@ -1525,6 +1564,103 @@ static const struct intel_forcewake_range __dg2_fw_ranges[] = {
>  	XEHP_FWRANGES(FORCEWAKE_RENDER)
>  };
>  
> +static const struct intel_forcewake_range __pvc_fw_ranges[] = {
> +	GEN_FW_RANGE(0x0, 0xaff, 0),
> +	GEN_FW_RANGE(0xb00, 0xbff, FORCEWAKE_GT),
> +	GEN_FW_RANGE(0xc00, 0xfff, 0),
> +	GEN_FW_RANGE(0x1000, 0x1fff, FORCEWAKE_GT),
> +	GEN_FW_RANGE(0x2000, 0x26ff, FORCEWAKE_RENDER),
> +	GEN_FW_RANGE(0x2700, 0x2fff, FORCEWAKE_GT),
> +	GEN_FW_RANGE(0x3000, 0x3fff, FORCEWAKE_RENDER),
> +	GEN_FW_RANGE(0x4000, 0x813f, FORCEWAKE_GT), /*
> +		0x4000 - 0x4aff: gt
> +		0x4b00 - 0x4fff: reserved
> +		0x5000 - 0x51ff: gt
> +		0x5200 - 0x52ff: reserved
> +		0x5300 - 0x53ff: gt
> +		0x5400 - 0x7fff: reserved
> +		0x8000 - 0x813f: gt */
> +	GEN_FW_RANGE(0x8140, 0x817f, FORCEWAKE_RENDER),
> +	GEN_FW_RANGE(0x8180, 0x81ff, 0),
> +	GEN_FW_RANGE(0x8200, 0x94cf, FORCEWAKE_GT), /*
> +		0x8200 - 0x82ff: gt
> +		0x8300 - 0x84ff: reserved
> +		0x8500 - 0x887f: gt
> +		0x8880 - 0x8a7f: reserved
> +		0x8a80 - 0x8aff: gt
> +		0x8b00 - 0x8fff: reserved
> +		0x9000 - 0x947f: gt
> +		0x9480 - 0x94cf: reserved */
> +	GEN_FW_RANGE(0x94d0, 0x955f, FORCEWAKE_RENDER),
> +	GEN_FW_RANGE(0x9560, 0x967f, 0), /*
> +		0x9560 - 0x95ff: always on
> +		0x9600 - 0x967f: reserved */
> +	GEN_FW_RANGE(0x9680, 0x97ff, FORCEWAKE_RENDER), /*
> +		0x9680 - 0x96ff: render
> +		0x9700 - 0x97ff: reserved */
> +	GEN_FW_RANGE(0x9800, 0xcfff, FORCEWAKE_GT), /*
> +		0x9800 - 0xb4ff: gt
> +		0xb500 - 0xbfff: reserved
> +		0xc000 - 0xcfff: gt */
> +	GEN_FW_RANGE(0xd000, 0xd3ff, 0),
> +	GEN_FW_RANGE(0xd400, 0xdbff, FORCEWAKE_GT),
> +	GEN_FW_RANGE(0xdc00, 0xdcff, FORCEWAKE_RENDER),
> +	GEN_FW_RANGE(0xdd00, 0xde7f, FORCEWAKE_GT), /*
> +		0xdd00 - 0xddff: gt
> +		0xde00 - 0xde7f: reserved */
> +	GEN_FW_RANGE(0xde80, 0xe8ff, FORCEWAKE_RENDER), /*
> +		0xde80 - 0xdeff: render
> +		0xdf00 - 0xe1ff: reserved
> +		0xe200 - 0xe7ff: render
> +		0xe800 - 0xe8ff: reserved */
> +	GEN_FW_RANGE(0xe900, 0x11fff, FORCEWAKE_GT), /*
> +		 0xe900 -  0xe9ff: gt
> +		 0xea00 -  0xebff: reserved
> +		 0xec00 -  0xffff: gt
> +		0x10000 - 0x11fff: reserved */
> +	GEN_FW_RANGE(0x12000, 0x12fff, 0), /*
> +		0x12000 - 0x127ff: always on
> +		0x12800 - 0x12fff: reserved */
> +	GEN_FW_RANGE(0x13000, 0x23fff, FORCEWAKE_GT), /*
> +		0x13000 - 0x135ff: gt
> +		0x13600 - 0x147ff: reserved
> +		0x14800 - 0x153ff: gt
> +		0x15400 - 0x19fff: reserved
> +		0x1a000 - 0x1ffff: gt
> +		0x20000 - 0x21fff: reserved
> +		0x22000 - 0x23fff: gt */
> +	GEN_FW_RANGE(0x24000, 0x2417f, 0), /*
> +		24000 - 0x2407f: always on
> +		24080 - 0x2417f: reserved */
> +	GEN_FW_RANGE(0x24180, 0x3ffff, FORCEWAKE_GT), /*
> +		0x24180 - 0x241ff: gt
> +		0x24200 - 0x251ff: reserved
> +		0x25200 - 0x252ff: gt
> +		0x25300 - 0x25fff: reserved
> +		0x26000 - 0x27fff: gt
> +		0x28000 - 0x2ffff: reserved
> +		0x30000 - 0x3ffff: gt */
> +	GEN_FW_RANGE(0x40000, 0x1bffff, 0),
> +	GEN_FW_RANGE(0x1c0000, 0x1c3fff, FORCEWAKE_MEDIA_VDBOX0), /*
> +		0x1c0000 - 0x1c2bff: VD0
> +		0x1c2c00 - 0x1c2cff: reserved
> +		0x1c2d00 - 0x1c2dff: VD0
> +		0x1c2e00 - 0x1c3eff: reserved
> +		0x1c3f00 - 0x1c3fff: VD0 */
> +	GEN_FW_RANGE(0x1c4000, 0x1cffff, FORCEWAKE_MEDIA_VDBOX1), /*
> +		0x1c4000 - 0x1c6aff: VD1
> +		0x1c6b00 - 0x1c7eff: reserved
> +		0x1c7f00 - 0x1c7fff: VD1
> +		0x1c8000 - 0x1cffff: reserved */
> +	GEN_FW_RANGE(0x1d0000, 0x23ffff, FORCEWAKE_MEDIA_VDBOX2), /*
> +		0x1d0000 - 0x1d2aff: VD2
> +		0x1d2b00 - 0x1d3eff: reserved
> +		0x1d3f00 - 0x1d3fff: VD2
> +		0x1d4000 - 0x23ffff: reserved */
> +	GEN_FW_RANGE(0x240000, 0x3dffff, 0),
> +	GEN_FW_RANGE(0x3e0000, 0x3effff, FORCEWAKE_GT),
> +};
> +
>  static void
>  ilk_dummy_write(struct intel_uncore *uncore)
>  {
> @@ -2160,7 +2296,11 @@ static int uncore_forcewake_init(struct intel_uncore *uncore)
>  
>  	ASSIGN_READ_MMIO_VFUNCS(uncore, fwtable);
>  
> -	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 55)) {
> +	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 60)) {
> +		ASSIGN_FW_DOMAINS_TABLE(uncore, __pvc_fw_ranges);
> +		ASSIGN_SHADOW_TABLE(uncore, pvc_shadowed_regs);
> +		ASSIGN_WRITE_MMIO_VFUNCS(uncore, fwtable);
> +	} else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 55)) {
>  		ASSIGN_FW_DOMAINS_TABLE(uncore, __dg2_fw_ranges);
>  		ASSIGN_SHADOW_TABLE(uncore, dg2_shadowed_regs);
>  		ASSIGN_WRITE_MMIO_VFUNCS(uncore, fwtable);
> diff --git a/drivers/gpu/drm/i915/selftests/intel_uncore.c b/drivers/gpu/drm/i915/selftests/intel_uncore.c
> index cdd196783535..fda9bb79c049 100644
> --- a/drivers/gpu/drm/i915/selftests/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/selftests/intel_uncore.c
> @@ -69,6 +69,7 @@ static int intel_shadow_table_check(void)
>  		{ gen11_shadowed_regs, ARRAY_SIZE(gen11_shadowed_regs) },
>  		{ gen12_shadowed_regs, ARRAY_SIZE(gen12_shadowed_regs) },
>  		{ dg2_shadowed_regs, ARRAY_SIZE(dg2_shadowed_regs) },
> +		{ pvc_shadowed_regs, ARRAY_SIZE(pvc_shadowed_regs) },
>  	};
>  	const struct i915_range *range;
>  	unsigned int i, j;
> @@ -115,6 +116,7 @@ int intel_uncore_mock_selftests(void)
>  		{ __gen11_fw_ranges, ARRAY_SIZE(__gen11_fw_ranges), true },
>  		{ __gen12_fw_ranges, ARRAY_SIZE(__gen12_fw_ranges), true },
>  		{ __xehp_fw_ranges, ARRAY_SIZE(__xehp_fw_ranges), true },
> +		{ __pvc_fw_ranges, ARRAY_SIZE(__pvc_fw_ranges), true },
>  	};
>  	int err, i;
>  
> -- 
> 2.35.1
> 
