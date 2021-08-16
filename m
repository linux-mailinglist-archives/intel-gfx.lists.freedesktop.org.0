Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 008FB3EDFD1
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Aug 2021 00:20:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74EA86E07B;
	Mon, 16 Aug 2021 22:20:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3128F6E07B
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Aug 2021 22:20:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="215985803"
X-IronPort-AV: E=Sophos;i="5.84,327,1620716400"; d="scan'208";a="215985803"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 15:20:10 -0700
X-IronPort-AV: E=Sophos;i="5.84,327,1620716400"; d="scan'208";a="487679160"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2021 15:20:10 -0700
Date: Mon, 16 Aug 2021 15:20:09 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Chris P Wilson <chris.p.wilson@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20210816222009.GO1556418@mdroper-desk1.amr.corp.intel.com>
References: <20210816045229.423234-1-ayaz.siddiqui@intel.com>
 <20210816045229.423234-6-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210816045229.423234-6-ayaz.siddiqui@intel.com>
Subject: Re: [Intel-gfx] [PATCH V2 5/5] drm/i95/adl: Define MOCS table for
 Alderlake
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

On Mon, Aug 16, 2021 at 10:22:29AM +0530, Ayaz A Siddiqui wrote:
> In order to program unused and reserved mocs entries to L3_WB,
> we need to create a separate mocs table for alderlake.
> 
> This patch will also covers wa_1608975824.
> 
> Cc: Chris P Wilson <chris.p.wilson@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> 
> Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_mocs.c | 41 +++++++++++++++++++++++++++-
>  1 file changed, 40 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
> index cf00537ba4acc..f76e2a2b3ea82 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> @@ -323,6 +323,39 @@ static const struct drm_i915_mocs_entry dg1_mocs_table[] = {
>  	MOCS_ENTRY(63, 0, L3_1_UC),
>  };
>  
> +static const struct drm_i915_mocs_entry adl_mocs_table[] = {
> +	/* wa_1608975824 */
> +	MOCS_ENTRY(0,
> +		   LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +
> +	GEN11_MOCS_ENTRIES,
> +	/* Implicitly enable L1 - HDC:L1 + L3 + LLC */
> +	MOCS_ENTRY(48,
> +		   LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_3_WB),
> +	/* Implicitly enable L1 - HDC:L1 + L3 */
> +	MOCS_ENTRY(49,
> +		   LE_1_UC | LE_TC_1_LLC,
> +		   L3_3_WB),
> +	/* Implicitly enable L1 - HDC:L1 + LLC */
> +	MOCS_ENTRY(50,
> +		   LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_1_UC),
> +	/* Implicitly enable L1 - HDC:L1 */
> +	MOCS_ENTRY(51,
> +		   LE_1_UC | LE_TC_1_LLC,
> +		   L3_1_UC),
> +	/* HW Special Case (CCS) */
> +	MOCS_ENTRY(60,
> +		   LE_3_WB | LE_TC_1_LLC | LE_LRUM(3),
> +		   L3_1_UC),
> +	/* HW Special Case (Displayable) */
> +	MOCS_ENTRY(61,
> +		   LE_1_UC | LE_TC_1_LLC,
> +		   L3_3_WB),
> +};
> +
>  enum {
>  	HAS_GLOBAL_MOCS = BIT(0),
>  	HAS_ENGINE_MOCS = BIT(1),
> @@ -444,7 +477,13 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
>  
>  	memset(table, 0, sizeof(struct drm_i915_mocs_table));
>  
> -	if (IS_DG1(i915)) {
> +	if (IS_ALDERLAKE_S(i915) || IS_ALDERLAKE_P(i915)) {
> +		table->size = ARRAY_SIZE(adl_mocs_table);
> +		table->table = adl_mocs_table;
> +		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
> +		table->uc_index = 3;
> +		table->unused_entries_index = 2;
> +	} else if (IS_DG1(i915)) {
>  		table->size = ARRAY_SIZE(dg1_mocs_table);
>  		table->table = dg1_mocs_table;
>  		table->n_entries = GEN9_NUM_MOCS_ENTRIES;
> -- 
> 2.26.2
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
