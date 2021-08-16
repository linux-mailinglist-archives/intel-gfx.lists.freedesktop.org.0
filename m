Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6551F3EDFBA
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Aug 2021 00:12:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C332E8981B;
	Mon, 16 Aug 2021 22:12:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A0938981B
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Aug 2021 22:12:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="215678209"
X-IronPort-AV: E=Sophos;i="5.84,327,1620716400"; d="scan'208";a="215678209"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 15:12:18 -0700
X-IronPort-AV: E=Sophos;i="5.84,327,1620716400"; d="scan'208";a="530779730"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 15:12:17 -0700
Date: Mon, 16 Aug 2021 15:12:16 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210816221216.GN1556418@mdroper-desk1.amr.corp.intel.com>
References: <20210816045229.423234-1-ayaz.siddiqui@intel.com>
 <20210816045229.423234-5-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210816045229.423234-5-ayaz.siddiqui@intel.com>
Subject: Re: [Intel-gfx] [PATCH V2 4/5] drm/i915/gt: Initialize unused MOCS
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

On Mon, Aug 16, 2021 at 10:22:28AM +0530, Ayaz A Siddiqui wrote:
> During to creation mocs table,used field of drm_i915_mocs_entry
> is being checked, if used field is 0, then it will check values
> of index 1. All the unspecified indexes of xxx_mocs_table[] will
> contain control value and l3cc value of index I915_MOCS_PTE if
> its initialized.

I think there might be some words missing in the description here; I'm
having a bit of trouble following what it's saying.  Maybe something
like this would be more clear:

        Historically we've initialized all undefined/reserved entries in
        a platform's MOCS table to the contents of table entry #1 (i.e.,
        I915_MOCS_PTE).

> 
> This patch is intended to provide capability to program device
> specific control value and l3cc value index which can be used
> for all the unspecified indexes of MOCS table.

And maybe for this part

        Going forward, we can't assume that table entry #1 will always
        contain suitable values to use for undefined/reserved table
        indices.  We'll allow a platform-specific table index to be
        selected at table initialization time in these cases.

We should also make some mention about using this new mechanism to
select an L3 WB entry for DG1 and all new platforms going forward, but
note that we can't change our production gen12 platforms (TGL and RKL)
since that would be an ABI break.

> 
> Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_mocs.c | 38 +++++++++++++++-------------
>  1 file changed, 20 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
> index df3c5d550c46a..cf00537ba4acc 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> @@ -23,6 +23,7 @@ struct drm_i915_mocs_table {
>  	unsigned int n_entries;
>  	const struct drm_i915_mocs_entry *table;
>  	u8 uc_index;
> +	u8 unused_entries_index;
>  };
>  
>  struct drm_i915_aux_table {
> @@ -99,17 +100,23 @@ struct drm_i915_aux_table {
>   * Entries not part of the following tables are undefined as far as
>   * userspace is concerned and shouldn't be relied upon.  For Gen < 12
>   * they will be initialized to PTE. Gen >= 12 onwards don't have a setting for
> - * PTE and will be initialized to an invalid value.
> + * PTE and will be initialized L3 WB to catch accidental use of reserved and
> + * unused mocs indexes.

This comment doesn't seem to be quite true for all graphics ver >= 12
platforms; TGL/RKL are still using an I915_MOCS_PTE setting (which is L3
uncached) since we can't change it now without breaking ABI.  Same for
the NOTE2 below.


Matt

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
> + * NOTE2: For GEN >= 12, reserved and unspecified MOCS indices have been
> + *        set to L3 WB. These reserved entries should never be used, they
> + *        may be changed to low performant variants with better coherency
> + *        in the future if more entries are needed.
>   */
>  #define GEN9_MOCS_ENTRIES \
>  	MOCS_ENTRY(I915_MOCS_UNCACHED, \
> @@ -292,17 +299,9 @@ static const struct drm_i915_mocs_entry icl_mocs_table[] = {
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
> @@ -450,6 +449,7 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
>  		table->table = dg1_mocs_table;
>  		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
>  		table->uc_index = 1;
> +		table->unused_entries_index = 5;
>  	} else if (GRAPHICS_VER(i915) >= 12) {
>  		table->size  = ARRAY_SIZE(tgl_mocs_table);
>  		table->table = tgl_mocs_table;
> @@ -500,16 +500,17 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
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
> +	index = table->unused_entries_index ? : I915_MOCS_PTE;
> +	return table->table[index].control_value;
>  }
>  
>  #define for_each_mocs(mocs, t, i) \
> @@ -550,16 +551,17 @@ static void init_mocs_table(struct intel_engine_cs *engine,
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
> +	index = table->unused_entries_index ? : I915_MOCS_PTE;
> +	return table->table[index].l3cc_value;
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
