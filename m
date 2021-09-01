Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88FF43FE195
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Sep 2021 19:57:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB3746E239;
	Wed,  1 Sep 2021 17:56:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AABD6E239
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Sep 2021 17:56:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="198382270"
X-IronPort-AV: E=Sophos;i="5.84,370,1620716400"; d="scan'208";a="198382270"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 10:56:58 -0700
X-IronPort-AV: E=Sophos;i="5.84,370,1620716400"; d="scan'208";a="601808073"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 10:56:58 -0700
Date: Wed, 1 Sep 2021 10:56:56 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Cc: intel-gfx@lists.freedesktop.org, CQ Tang <cq.tang@intel.com>
Message-ID: <20210901175656.GZ461228@mdroper-desk1.amr.corp.intel.com>
References: <20210830162240.3891502-1-ayaz.siddiqui@intel.com>
 <20210830162240.3891502-2-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210830162240.3891502-2-ayaz.siddiqui@intel.com>
Subject: Re: [Intel-gfx] [PATCH V3 1/8] drm/i915/gt: Add support of mocs
 propagation
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

On Mon, Aug 30, 2021 at 09:52:33PM +0530, Ayaz A Siddiqui wrote:
> Now there are lots of Command and registers that require mocs index
> programming.
> So propagating mocs_index from mocs to gt so that it can be
> used directly without having platform-specific checks.
> 
> Cc: CQ Tang<cq.tang@intel.com>
> Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_types.h |  4 ++++
>  drivers/gpu/drm/i915/gt/intel_mocs.c     | 10 ++++++++++
>  2 files changed, 14 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> index a81e21bf1bd1a..88601a2d2c229 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
> @@ -192,6 +192,10 @@ struct intel_gt {
>  
>  		unsigned long mslice_mask;
>  	} info;
> +
> +	struct i915_mocs_index_gt {

Do we actually plan to use the name 'i915_mocs_index_gt' anywhere else
in the code?  If not, an anonymous struct is probably fine.

> +		u8 uc_index;
> +	} mocs;
>  };
>  
>  enum intel_gt_scratch_field {
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
> index 582c4423b95d6..10cc508c1a4f6 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> @@ -22,6 +22,7 @@ struct drm_i915_mocs_table {
>  	unsigned int size;
>  	unsigned int n_entries;
>  	const struct drm_i915_mocs_entry *table;
> +	u8 uc_index;
>  };
>  
>  /* Defines for the tables (XXX_MOCS_0 - XXX_MOCS_63) */
> @@ -340,6 +341,8 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
>  {
>  	unsigned int flags;
>  
> +	memset(table, 0, sizeof(struct drm_i915_mocs_table));
> +
>  	if (IS_DG1(i915)) {
>  		table->size = ARRAY_SIZE(dg1_mocs_table);
>  		table->table = dg1_mocs_table;
> @@ -504,6 +507,12 @@ static u32 global_mocs_offset(void)
>  	return i915_mmio_reg_offset(GEN12_GLOBAL_MOCS(0));
>  }
>  
> +static void set_mocs_index(struct intel_gt *gt,
> +			   struct drm_i915_mocs_table *table)
> +{
> +	gt->mocs.uc_index = table->uc_index;
> +}
> +
>  void intel_mocs_init(struct intel_gt *gt)
>  {
>  	struct drm_i915_mocs_table table;
> @@ -515,6 +524,7 @@ void intel_mocs_init(struct intel_gt *gt)
>  	flags = get_mocs_settings(gt->i915, &table);
>  	if (flags & HAS_GLOBAL_MOCS)
>  		__init_mocs_table(gt->uncore, &table, global_mocs_offset());
> +	set_mocs_index(gt, &table);

We could probably just inline the 

        gt->mocs.uc_index = table->uc_index;

rather than creating a separate function; it doesn't look like
set_mocs_index() gets used anywhere else.

Aside from the two minor cleanups,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

>  }
>  
>  #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
> -- 
> 2.26.2
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
