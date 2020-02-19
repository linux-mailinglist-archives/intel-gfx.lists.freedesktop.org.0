Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1DA8164FF2
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 21:33:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0918C6EC9A;
	Wed, 19 Feb 2020 20:33:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E3806EC9A
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 20:33:49 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Feb 2020 12:33:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,461,1574150400"; d="scan'208";a="349014571"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga001.fm.intel.com with SMTP; 19 Feb 2020 12:33:48 -0800
Date: Wed, 19 Feb 2020 12:33:48 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <20200219203348.GE2733348@mdroper-desk1.amr.corp.intel.com>
References: <20200219035902.26679-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219035902.26679-1-anusha.srivatsa@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Extend Wa_1606931601 for all
 steppings.
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

On Tue, Feb 18, 2020 at 07:59:02PM -0800, Anusha Srivatsa wrote:
> Previously known by the WA number - Wa_1607090982, extend
> the WA (Disable Early Read and Src Swap (bit 14) by
> setting the chicken register.) to all steppings.

This description is a bit hard to follow; maybe something like this
would be more clear?

        """
        drm/i915: Extend Wa_1606931601 for all steppings

        According to the bspec, Wa_1606931601 applies to all TGL
        steppings so we need to move it out of the the A0-only block
        of rcs_engine_wa_init().

        Note that this workaround has also been referred to by an
        alternate name Wa_1607090982 in some previous patches.
        """

> 
> The WA is implemented in -
> 3873fd1a43c7 ("drm/i915: Use engine wa list for Wa_1607090982")

This sentence can be dropped in favor of the formal "Fixes:" line below.

> 
> Bspec: 46045,52890
> 

Please add a

Fixes: 3873fd1a43c7 ("drm/i915: Use engine wa list for Wa_1607090982")

line here to make sure that maintainer tools will properly
apply/backport this fix to all the appropriate trees.

> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

Aside from the above this looks good, so

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

with an updated commit message.


Matt

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 887e0dc701f7..7cc8a7fc53c7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1329,6 +1329,13 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  {
>  	struct drm_i915_private *i915 = engine->i915;
>  
> +	if (IS_TIGERLAKE(i915)) {
> +		/* Wa_1606931601:tgl */
> +		wa_masked_en(wal,
> +			     GEN7_ROW_CHICKEN2,
> +			     GEN12_DISABLE_EARLY_READ);
> +	}
> +
>  	if (IS_TGL_REVID(i915, TGL_REVID_A0, TGL_REVID_A0)) {
>  		/* Wa_1606700617:tgl */
>  		wa_masked_en(wal,
> @@ -1360,11 +1367,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  		wa_write_or(wal,
>  			    GEN7_FF_THREAD_MODE,
>  			    GEN12_FF_TESSELATION_DOP_GATE_DISABLE);
> -
> -		/* Wa_1606931601:tgl */
> -		wa_masked_en(wal,
> -			     GEN7_ROW_CHICKEN2,
> -			     GEN12_DISABLE_EARLY_READ);
>  	}
>  
>  	if (IS_GEN(i915, 11)) {
> -- 
> 2.25.0
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
