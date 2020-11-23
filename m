Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4EB62C0E57
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Nov 2020 16:06:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 245796E029;
	Mon, 23 Nov 2020 15:06:20 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 457916E029
 for <Intel-gfx@lists.freedesktop.org>; Mon, 23 Nov 2020 15:06:18 +0000 (UTC)
IronPort-SDR: 1cT/9SxhgSD0xV/hEEvzcDAaTjKpAmTlBED5Apdn0bM2KvwoNgvaYZYCxGhns/MLVeziO9XAJV
 y4ylDfe+uobQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9813"; a="168270989"
X-IronPort-AV: E=Sophos;i="5.78,363,1599548400"; d="scan'208";a="168270989"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2020 07:06:05 -0800
IronPort-SDR: EgWhWn6vXnDbZMUv9D0KnETkrcWnG7JkRoSPGLiUimpymaIwYsi5L4NWCg9BXYaC19aCqRM7L4
 C0q+Lp3wUBkA==
X-IronPort-AV: E=Sophos;i="5.78,363,1599548400"; d="scan'208";a="546447225"
Received: from suygunge-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.40.108])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2020 07:06:02 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Sean Z Huang <sean.z.huang@intel.com>, sean.z.huang@intel.com,
 Intel-gfx@lists.freedesktop.org
In-Reply-To: <20201114003716.4875-7-sean.z.huang@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201114003716.4875-1-sean.z.huang@intel.com>
 <20201114003716.4875-7-sean.z.huang@intel.com>
Date: Mon, 23 Nov 2020 17:05:59 +0200
Message-ID: <877dqcnmeg.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PXP CLEAN PATCH v06 07/27] drm/i915/pxp: Add
 PXP-related registers into allowlist
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 13 Nov 2020, Sean Z Huang <sean.z.huang@intel.com> wrote:
> From: "Huang, Sean Z" <sean.z.huang@intel.com>
>
> Add several PXP-related reg into allowlist to allow
> ring3 driver to read the those register values.
>
> Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h     |  8 ++++
>  drivers/gpu/drm/i915/intel_uncore.c | 57 +++++++++++++++++++++--------
>  2 files changed, 50 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index faf6b06145fa..5c51c9df8b28 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -12419,4 +12419,12 @@ enum skl_power_gate {
>  #define TGL_ROOT_DEVICE_SKU_ULX		0x2
>  #define TGL_ROOT_DEVICE_SKU_ULT		0x4
>  
> +/* Registers for passlist check */

allowlist

> +#define PXP_REG_01_LOWERBOUND		_MMIO(0x32260)
> +#define PXP_REG_01_UPPERBOUND		_MMIO(0x32268)
> +#define PXP_REG_02_LOWERBOUND		_MMIO(0x32670)
> +#define PXP_REG_02_UPPERBOUND		_MMIO(0x32678)
> +#define PXP_REG_03_LOWERBOUND		_MMIO(0x32860)
> +#define PXP_REG_03_UPPERBOUND		_MMIO(0x32c7c)
> +
>  #endif /* _I915_REG_H_ */
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index c9ef0025c60e..670856e095c4 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -1990,16 +1990,41 @@ void intel_uncore_fini_mmio(struct intel_uncore *uncore)
>  }
>  
>  static const struct reg_allowlist {
> -	i915_reg_t offset_ldw;
> +	i915_reg_t offset_ldw_lowerbound;
> +	i915_reg_t offset_ldw_upperbound;
>  	i915_reg_t offset_udw;
>  	u16 gen_mask;
>  	u8 size;
> -} reg_read_allowlist[] = { {
> -	.offset_ldw = RING_TIMESTAMP(RENDER_RING_BASE),
> +} reg_read_allowlist[] = {
> +	{
> +	.offset_ldw_lowerbound = RING_TIMESTAMP(RENDER_RING_BASE),
> +	.offset_ldw_upperbound = RING_TIMESTAMP(RENDER_RING_BASE),
>  	.offset_udw = RING_TIMESTAMP_UDW(RENDER_RING_BASE),
>  	.gen_mask = INTEL_GEN_MASK(4, 12),
>  	.size = 8
> -} };
> +	},
> +	{
> +	.offset_ldw_lowerbound = PXP_REG_01_LOWERBOUND,
> +	.offset_ldw_upperbound = PXP_REG_01_UPPERBOUND,
> +	.offset_udw = {0},
> +	.gen_mask = INTEL_GEN_MASK(4, 12),
> +	.size = 4
> +	},
> +	{
> +	.offset_ldw_lowerbound = PXP_REG_02_LOWERBOUND,
> +	.offset_ldw_upperbound = PXP_REG_02_UPPERBOUND,
> +	.offset_udw = {0},
> +	.gen_mask = INTEL_GEN_MASK(4, 12),
> +	.size = 4
> +	},
> +	{
> +	.offset_ldw_lowerbound = PXP_REG_03_LOWERBOUND,
> +	.offset_ldw_upperbound = PXP_REG_03_UPPERBOUND,
> +	.offset_udw = {0},
> +	.gen_mask = INTEL_GEN_MASK(4, 12),
> +	.size = 4
> +	}
> +};
>  
>  int i915_reg_read_ioctl(struct drm_device *dev,
>  			void *data, struct drm_file *file)
> @@ -2012,18 +2037,22 @@ int i915_reg_read_ioctl(struct drm_device *dev,
>  	unsigned int flags;
>  	int remain;
>  	int ret = 0;
> +	i915_reg_t offset_ldw;
>  
>  	entry = reg_read_allowlist;
>  	remain = ARRAY_SIZE(reg_read_allowlist);
>  	while (remain) {
> -		u32 entry_offset = i915_mmio_reg_offset(entry->offset_ldw);
> +		u32 entry_offset_lb = i915_mmio_reg_offset(entry->offset_ldw_lowerbound);
> +		u32 entry_offset_ub = i915_mmio_reg_offset(entry->offset_ldw_upperbound);
>  
>  		GEM_BUG_ON(!is_power_of_2(entry->size));
>  		GEM_BUG_ON(entry->size > 8);
> -		GEM_BUG_ON(entry_offset & (entry->size - 1));
> +		GEM_BUG_ON(entry_offset_lb & (entry->size - 1));
> +		GEM_BUG_ON(entry_offset_ub & (entry->size - 1));
>  
>  		if (INTEL_INFO(i915)->gen_mask & entry->gen_mask &&
> -		    entry_offset == (reg->offset & -entry->size))
> +		    entry_offset_lb <= (reg->offset & -entry->size) &&
> +		    (reg->offset & -entry->size) <= entry_offset_ub)
>  			break;
>  		entry++;
>  		remain--;
> @@ -2033,23 +2062,21 @@ int i915_reg_read_ioctl(struct drm_device *dev,
>  		return -EINVAL;
>  
>  	flags = reg->offset & (entry->size - 1);
> +	offset_ldw = _MMIO(reg->offset - flags);
>  
>  	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
>  		if (entry->size == 8 && flags == I915_REG_READ_8B_WA)
>  			reg->val = intel_uncore_read64_2x32(uncore,
> -							    entry->offset_ldw,
> +							    offset_ldw,
>  							    entry->offset_udw);
>  		else if (entry->size == 8 && flags == 0)
> -			reg->val = intel_uncore_read64(uncore,
> -						       entry->offset_ldw);
> +			reg->val = intel_uncore_read64(uncore, offset_ldw);
>  		else if (entry->size == 4 && flags == 0)
> -			reg->val = intel_uncore_read(uncore, entry->offset_ldw);
> +			reg->val = intel_uncore_read(uncore, offset_ldw);
>  		else if (entry->size == 2 && flags == 0)
> -			reg->val = intel_uncore_read16(uncore,
> -						       entry->offset_ldw);
> +			reg->val = intel_uncore_read16(uncore, offset_ldw);
>  		else if (entry->size == 1 && flags == 0)
> -			reg->val = intel_uncore_read8(uncore,
> -						      entry->offset_ldw);
> +			reg->val = intel_uncore_read8(uncore, offset_ldw);
>  		else
>  			ret = -EINVAL;
>  	}

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
