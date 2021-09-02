Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A343FF526
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 22:51:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AB466E083;
	Thu,  2 Sep 2021 20:51:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA8836E083
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 20:51:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="199471796"
X-IronPort-AV: E=Sophos;i="5.85,263,1624345200"; d="scan'208";a="199471796"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 13:51:21 -0700
X-IronPort-AV: E=Sophos;i="5.85,263,1624345200"; d="scan'208";a="447295536"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 13:51:20 -0700
Date: Thu, 2 Sep 2021 13:51:19 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210902205119.GP461228@mdroper-desk1.amr.corp.intel.com>
References: <20210902185635.290538-1-ayaz.siddiqui@intel.com>
 <20210902185635.290538-5-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210902185635.290538-5-ayaz.siddiqui@intel.com>
Subject: Re: [Intel-gfx] [PATCH V4 4/6] drm/i915/gt: Initialize unused MOCS
 entries with device specific values
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

On Fri, Sep 03, 2021 at 12:26:33AM +0530, Ayaz A Siddiqui wrote:
> Historically we've initialized all undefined/reserved entries in
> a platform's MOCS table to the contents of table entry #1 (i.e.,
> I915_MOCS_PTE).
> Going forward, we can't assume that table entry #1 will always
> contain suitable values to use for undefined/reserved table
> indices. We'll allow a platform-specific table index to be
> selected at table initialization time in these cases.
> 
> This new mechanism to select L3 WB entry will be applicable for
> all the Gen12+ platforms except TGL and RKL.
> 
> Since TGL and RLK are already in production so their mocs settings
> are intact to avoid ABI break.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_mocs.c | 46 ++++++++++++++++------------
>  1 file changed, 27 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
> index 7ccac15d9a331..0fdadefdabc29 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> @@ -23,6 +23,7 @@ struct drm_i915_mocs_table {
>  	unsigned int n_entries;
>  	const struct drm_i915_mocs_entry *table;
>  	u8 uc_index;
> +	u8 unused_entries_index;
>  };
>  
>  /* Defines for the tables (XXX_MOCS_0 - XXX_MOCS_63) */
> @@ -89,18 +90,25 @@ struct drm_i915_mocs_table {
>   *
>   * Entries not part of the following tables are undefined as far as
>   * userspace is concerned and shouldn't be relied upon.  For Gen < 12
> - * they will be initialized to PTE. Gen >= 12 onwards don't have a setting for
> - * PTE and will be initialized to an invalid value.
> + * they will be initialized to PTE. Gen >= 12 don't have a setting for
> + * PTE and those platforms except TGL/RKL will be initialized L3 WB to
> + * catch accidental use of reserved and unused mocs indexes.
>   *
>   * The last few entries are reserved by the hardware. For ICL+ they
>   * should be initialized according to bspec and never used, for older
>   * platforms they should never be written to.
>   *
> - * NOTE: These tables are part of bspec and defined as part of hardware
> + * NOTE1: These tables are part of bspec and defined as part of hardware
>   *       interface for ICL+. For older platforms, they are part of kernel
>   *       ABI. It is expected that, for specific hardware platform, existing
>   *       entries will remain constant and the table will only be updated by
>   *       adding new entries, filling unused positions.
> + *
> + * NOTE2: For GEN >= 12 except TGL and RKL, reserved and unspecified MOCS
> + *       indices have been set to L3 WB. These reserved entries should never
> + *       be used, they may be changed to low performant variants with better
> + *       coherency in the future if more entries are needed.
> + *       For TGL/RKL, all the unspecified MOCS indexes are mapped to L3 UC.
>   */
>  #define GEN9_MOCS_ENTRIES \
>  	MOCS_ENTRY(I915_MOCS_UNCACHED, \
> @@ -283,17 +291,9 @@ static const struct drm_i915_mocs_entry icl_mocs_table[] = {
>  };
>  
>  static const struct drm_i915_mocs_entry dg1_mocs_table[] = {
> -	/* Error */
> -	MOCS_ENTRY(0, 0, L3_0_DIRECT),
>  
>  	/* UC */
>  	MOCS_ENTRY(1, 0, L3_1_UC),
> -
> -	/* Reserved */
> -	MOCS_ENTRY(2, 0, L3_0_DIRECT),
> -	MOCS_ENTRY(3, 0, L3_0_DIRECT),
> -	MOCS_ENTRY(4, 0, L3_0_DIRECT),
> -
>  	/* WB - L3 */
>  	MOCS_ENTRY(5, 0, L3_3_WB),
>  	/* WB - L3 50% */
> @@ -343,16 +343,22 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
>  
>  	memset(table, 0, sizeof(struct drm_i915_mocs_table));
>  
> +	table->unused_entries_index = I915_MOCS_PTE;
>  	if (IS_DG1(i915)) {
>  		table->size = ARRAY_SIZE(dg1_mocs_table);
>  		table->table = dg1_mocs_table;
>  		table->uc_index = 1;
>  		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
> +		table->uc_index = 1;
> +		table->unused_entries_index = 5;
>  	} else if (GRAPHICS_VER(i915) >= 12) {
>  		table->size  = ARRAY_SIZE(tgl_mocs_table);
>  		table->table = tgl_mocs_table;
>  		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
>  		table->uc_index = 3;
> +		/* For TGL/RKL, Can't be changed now for ABI reasons */
> +		if (!IS_TIGERLAKE(i915) || !IS_ROCKETLAKE(i915))

I think you meant '&&' here rather than '||' (otherwise this statement
will always evaluate to true).

With that fixed,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


> +			table->unused_entries_index = 2;
>  	} else if (GRAPHICS_VER(i915) == 11) {
>  		table->size  = ARRAY_SIZE(icl_mocs_table);
>  		table->table = icl_mocs_table;
> @@ -398,16 +404,16 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
>  }
>  
>  /*
> - * Get control_value from MOCS entry taking into account when it's not used:
> - * I915_MOCS_PTE's value is returned in this case.
> + * Get control_value from MOCS entry taking into account when it's not used
> + * then if unused_entries_index is non-zero then its value will be returned
> + * otherwise I915_MOCS_PTE's value is returned in this case.
>   */
>  static u32 get_entry_control(const struct drm_i915_mocs_table *table,
>  			     unsigned int index)
>  {
>  	if (index < table->size && table->table[index].used)
>  		return table->table[index].control_value;
> -
> -	return table->table[I915_MOCS_PTE].control_value;
> +	return table->table[table->unused_entries_index].control_value;
>  }
>  
>  #define for_each_mocs(mocs, t, i) \
> @@ -422,6 +428,8 @@ static void __init_mocs_table(struct intel_uncore *uncore,
>  	unsigned int i;
>  	u32 mocs;
>  
> +	drm_WARN_ONCE(&uncore->i915->drm, !table->unused_entries_index,
> +		      "Unused entries index should have been defined\n");
>  	for_each_mocs(mocs, table, i)
>  		intel_uncore_write_fw(uncore, _MMIO(addr + i * 4), mocs);
>  }
> @@ -448,16 +456,16 @@ static void init_mocs_table(struct intel_engine_cs *engine,
>  }
>  
>  /*
> - * Get l3cc_value from MOCS entry taking into account when it's not used:
> - * I915_MOCS_PTE's value is returned in this case.
> + * Get l3cc_value from MOCS entry taking into account when it's not used
> + * then if unused_entries_index is not zero then its value will be returned
> + * otherwise I915_MOCS_PTE's value is returned in this case.
>   */
>  static u16 get_entry_l3cc(const struct drm_i915_mocs_table *table,
>  			  unsigned int index)
>  {
>  	if (index < table->size && table->table[index].used)
>  		return table->table[index].l3cc_value;
> -
> -	return table->table[I915_MOCS_PTE].l3cc_value;
> +	return table->table[table->unused_entries_index].l3cc_value;
>  }
>  
>  static u32 l3cc_combine(u16 low, u16 high)
> -- 
> 2.26.2
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
