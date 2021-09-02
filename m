Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D40273FF4C7
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 22:19:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 934F56E80B;
	Thu,  2 Sep 2021 20:19:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E674F6E80B
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 20:19:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="216096107"
X-IronPort-AV: E=Sophos;i="5.85,263,1624345200"; d="scan'208";a="216096107"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 13:19:25 -0700
X-IronPort-AV: E=Sophos;i="5.85,263,1624345200"; d="scan'208";a="447286797"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 13:19:25 -0700
Date: Thu, 2 Sep 2021 13:19:23 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Cc: intel-gfx@lists.freedesktop.org, CQ Tang <cq.tang@intel.com>
Message-ID: <20210902201923.GM461228@mdroper-desk1.amr.corp.intel.com>
References: <20210902185635.290538-1-ayaz.siddiqui@intel.com>
 <20210902185635.290538-2-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210902185635.290538-2-ayaz.siddiqui@intel.com>
Subject: Re: [Intel-gfx] [PATCH V4 1/6] drm/i915/gt: Add support of mocs
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

On Fri, Sep 03, 2021 at 12:26:30AM +0530, Ayaz A Siddiqui wrote:
> Now there are lots of Command and registers that require mocs index
> programming.
> So propagating mocs_index from mocs to gt so that it can be
> used directly without having platform-specific checks.
> 
> Cc: CQ Tang<cq.tang@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt.c       |  2 ++
>  drivers/gpu/drm/i915/gt/intel_gt_types.h |  4 ++++
>  drivers/gpu/drm/i915/gt/intel_mocs.c     | 13 +++++++++++++
>  drivers/gpu/drm/i915/gt/intel_mocs.h     |  1 +
>  4 files changed, 20 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 62d40c9866427..2aeaae036a6f8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -682,6 +682,8 @@ int intel_gt_init(struct intel_gt *gt)
>  		goto err_pm;
>  	}
>  
> +	set_mocs_index(gt);
> +
>  	err = intel_engines_init(gt);
>  	if (err)
>  		goto err_engines;
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

I think I mentioned it on the v3 review too, but you can drop the
'i915_mocs_index_gt' name here since we don't reference it anywhere else
in the code that I can see.  Just using an anonymous structure would be
fine.

Aside from that,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> +		u8 uc_index;
> +	} mocs;
>  };
>  
>  enum intel_gt_scratch_field {
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
> index 582c4423b95d6..7ccac15d9a331 100644
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
> @@ -340,14 +341,18 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
>  {
>  	unsigned int flags;
>  
> +	memset(table, 0, sizeof(struct drm_i915_mocs_table));
> +
>  	if (IS_DG1(i915)) {
>  		table->size = ARRAY_SIZE(dg1_mocs_table);
>  		table->table = dg1_mocs_table;
> +		table->uc_index = 1;
>  		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
>  	} else if (GRAPHICS_VER(i915) >= 12) {
>  		table->size  = ARRAY_SIZE(tgl_mocs_table);
>  		table->table = tgl_mocs_table;
>  		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
> +		table->uc_index = 3;
>  	} else if (GRAPHICS_VER(i915) == 11) {
>  		table->size  = ARRAY_SIZE(icl_mocs_table);
>  		table->table = icl_mocs_table;
> @@ -504,6 +509,14 @@ static u32 global_mocs_offset(void)
>  	return i915_mmio_reg_offset(GEN12_GLOBAL_MOCS(0));
>  }
>  
> +void set_mocs_index(struct intel_gt *gt)
> +{
> +	struct drm_i915_mocs_table table;
> +
> +	get_mocs_settings(gt->i915, &table);
> +	gt->mocs.uc_index = table.uc_index;
> +}
> +
>  void intel_mocs_init(struct intel_gt *gt)
>  {
>  	struct drm_i915_mocs_table table;
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.h b/drivers/gpu/drm/i915/gt/intel_mocs.h
> index d83274f5163bd..8a09d64b115f7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.h
> @@ -36,5 +36,6 @@ struct intel_gt;
>  
>  void intel_mocs_init(struct intel_gt *gt);
>  void intel_mocs_init_engine(struct intel_engine_cs *engine);
> +void set_mocs_index(struct intel_gt *gt);
>  
>  #endif
> -- 
> 2.26.2
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
