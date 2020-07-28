Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3D1F2312D8
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jul 2020 21:39:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5880D6E127;
	Tue, 28 Jul 2020 19:39:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5427A6E127
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jul 2020 19:38:59 +0000 (UTC)
IronPort-SDR: EWWkViQL+ZXx4Wqj2DtFfbx0cZDja+/9ChZxNHicrCTSe+M5TuAej73evq+IIlNi6gRZimGluj
 cCcOWe1BwsQg==
X-IronPort-AV: E=McAfee;i="6000,8403,9696"; a="139323186"
X-IronPort-AV: E=Sophos;i="5.75,407,1589266800"; d="scan'208";a="139323186"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2020 12:38:58 -0700
IronPort-SDR: 8OLsfn4UsReTYEgyEOKJoMIBgI5zxk9f6LkyrlH1hH9nUaVJCVPkaNw35RdhxozSS/utl7Po0V
 LpvEjZOXy4AA==
X-IronPort-AV: E=Sophos;i="5.75,407,1589266800"; d="scan'208";a="330164235"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2020 12:38:58 -0700
Date: Tue, 28 Jul 2020 12:38:57 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20200728193857.GC35208@mdroper-desk1.amr.corp.intel.com>
References: <20200724213918.27424-1-lucas.demarchi@intel.com>
 <20200724213918.27424-3-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200724213918.27424-3-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 02/22] drm/i915/dg1: Define MOCS table
 for DG1
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 24, 2020 at 02:38:58PM -0700, Lucas De Marchi wrote:
> DG1 has a new MOCS table. We still use the old definition of the table,
> but as for any dgfx card it doesn't contain the control_value values
> (these values don't matter as we won't program them).
> 
> Bspec: 45101
> 
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Matches the bspec

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

I do notice that the general comment farther up the file says "The last
two entries are reserved by the hardware." --- I wonder if we should
change that to "the last few" since DG1 technically has four reserved
entries instead of just two.


Matt

> ---
>  drivers/gpu/drm/i915/gt/intel_mocs.c | 39 +++++++++++++++++++++++++++-
>  1 file changed, 38 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
> index 632e08a4592b..7217c6e2087c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> @@ -280,6 +280,39 @@ static const struct drm_i915_mocs_entry icl_mocs_table[] = {
>  	GEN11_MOCS_ENTRIES
>  };
>  
> +static const struct drm_i915_mocs_entry dg1_mocs_table[] = {
> +	/* Error */
> +	MOCS_ENTRY(0, 0, L3_0_DIRECT),
> +
> +	/* UC */
> +	MOCS_ENTRY(1, 0, L3_1_UC),
> +
> +	/* Reserved */
> +	MOCS_ENTRY(2, 0, L3_0_DIRECT),
> +	MOCS_ENTRY(3, 0, L3_0_DIRECT),
> +	MOCS_ENTRY(4, 0, L3_0_DIRECT),
> +
> +	/* WB - L3 */
> +	MOCS_ENTRY(5, 0, L3_3_WB),
> +	/* WB - L3 50% */
> +	MOCS_ENTRY(6, 0, L3_ESC(1) | L3_SCC(1) | L3_3_WB),
> +	/* WB - L3 25% */
> +	MOCS_ENTRY(7, 0, L3_ESC(1) | L3_SCC(3) | L3_3_WB),
> +	/* WB - L3 12.5% */
> +	MOCS_ENTRY(8, 0, L3_ESC(1) | L3_SCC(7) | L3_3_WB),
> +
> +	/* HDC:L1 + L3 */
> +	MOCS_ENTRY(48, 0, L3_3_WB),
> +	/* HDC:L1 */
> +	MOCS_ENTRY(49, 0, L3_1_UC),
> +
> +	/* HW Reserved */
> +	MOCS_ENTRY(60, 0, L3_1_UC),
> +	MOCS_ENTRY(61, 0, L3_1_UC),
> +	MOCS_ENTRY(62, 0, L3_1_UC),
> +	MOCS_ENTRY(63, 0, L3_1_UC),
> +};
> +
>  enum {
>  	HAS_GLOBAL_MOCS = BIT(0),
>  	HAS_ENGINE_MOCS = BIT(1),
> @@ -306,7 +339,11 @@ static unsigned int get_mocs_settings(const struct drm_i915_private *i915,
>  {
>  	unsigned int flags;
>  
> -	if (INTEL_GEN(i915) >= 12) {
> +	if (IS_DG1(i915)) {
> +		table->size = ARRAY_SIZE(dg1_mocs_table);
> +		table->table = dg1_mocs_table;
> +		table->n_entries = GEN11_NUM_MOCS_ENTRIES;
> +	} else if (INTEL_GEN(i915) >= 12) {
>  		table->size  = ARRAY_SIZE(tgl_mocs_table);
>  		table->table = tgl_mocs_table;
>  		table->n_entries = GEN11_NUM_MOCS_ENTRIES;
> -- 
> 2.26.2
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
