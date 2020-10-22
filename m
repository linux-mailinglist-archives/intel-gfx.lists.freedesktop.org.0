Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DED52967A4
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 01:29:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA9116E434;
	Thu, 22 Oct 2020 23:29:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C8A16E434
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Oct 2020 23:29:29 +0000 (UTC)
IronPort-SDR: lHqql8iAY1xJZ0ZMCLN4rfZNGC3BSFcrww7uaEbKjuQxIAcHKkW5r0qC/hj5hLBcm6lol+9TPW
 /gmKI3oSV0SQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9782"; a="165015816"
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="165015816"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 16:29:28 -0700
IronPort-SDR: nOBcMoTnNrlngJNv5SFmpIG+SCMHGxsvXaQvBBxEHGTUoJAvMZywv0gWouDd4sFscI+d4Y+z7C
 KLdx3xoa1Y4Q==
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="466863664"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 16:29:28 -0700
Date: Thu, 22 Oct 2020 16:29:26 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20201022232926.GR627052@mdroper-desk1.amr.corp.intel.com>
References: <20201021082034.3170478-1-lucas.demarchi@intel.com>
 <20201021082034.3170478-6-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201021082034.3170478-6-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/dg1: make Wa_22010271021
 permanent
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

On Wed, Oct 21, 2020 at 01:20:33AM -0700, Lucas De Marchi wrote:
> Just like for rkl and tgl, this should be permanent as well for dg1
> instead just for A0. The commit making it permanent for those platforms
> ended up "racing" with the commit adding the DG1 WAs, so now fix that up.
> 
> Cc: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index fed9503a7c4e..8d24ea769fe6 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1768,6 +1768,14 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  		 */
>  		wa_write_or(wal, GEN7_FF_THREAD_MODE,
>  			    GEN12_FF_TESSELATION_DOP_GATE_DISABLE);
> +
> +		/*
> +		 * Wa_1606700617

Not sure if you meant to drop the ":tgl" suffix here when you moved it?
This alternate number also shows up in the DG1 database now (but not
RKL) so we could make this "tgl,dg1" to match the spec.

Either way,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> +		 * Wa_22010271021:tgl,rkl,dg1
> +		 */
> +		wa_masked_en(wal,
> +			     GEN9_CS_DEBUG_MODE1,
> +			     FF_DOP_CLOCK_GATE_DISABLE);
>  	}
>  
>  	if (IS_DG1_REVID(i915, DG1_REVID_A0, DG1_REVID_A0) ||
> @@ -1796,14 +1804,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  			     GEN6_RC_SLEEP_PSMI_CONTROL,
>  			     GEN12_WAIT_FOR_EVENT_POWER_DOWN_DISABLE |
>  			     GEN8_RC_SEMA_IDLE_MSG_DISABLE);
> -
> -		/*
> -		 * Wa_1606700617:tgl
> -		 * Wa_22010271021:tgl,rkl
> -		 */
> -		wa_masked_en(wal,
> -			     GEN9_CS_DEBUG_MODE1,
> -			     FF_DOP_CLOCK_GATE_DISABLE);
>  	}
>  
>  	if (IS_GEN(i915, 12)) {
> -- 
> 2.28.0
> 

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
