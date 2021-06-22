Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D523B10AD
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 01:37:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 043376E82F;
	Tue, 22 Jun 2021 23:37:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 193D36E82F
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Jun 2021 23:37:27 +0000 (UTC)
IronPort-SDR: ThDXI+yIEq+FJgJVhByNrCx3zjwgGNsnXHdIb8SYfZjjgFDgZ7S/F7oiqI9RH/w+2MzX+vKnBq
 ZuMPo6Nkpkig==
X-IronPort-AV: E=McAfee;i="6200,9189,10023"; a="228720231"
X-IronPort-AV: E=Sophos;i="5.83,292,1616482800"; d="scan'208";a="228720231"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2021 16:37:26 -0700
IronPort-SDR: NuEjYASw3FcO7ldh1EtLxRXwwYf/99PfASNnPGhqxBDwV2kUqhv1MWDfXTZ7u+iXcYYg2kvNjt
 J7n6/uzFfARQ==
X-IronPort-AV: E=Sophos;i="5.83,292,1616482800"; d="scan'208";a="490472454"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2021 16:37:26 -0700
Date: Tue, 22 Jun 2021 16:37:25 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20210622233725.GX951094@mdroper-desk1.amr.corp.intel.com>
References: <20210622212210.3746133-1-lucas.demarchi@intel.com>
 <20210622232812.GV951094@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210622232812.GV951094@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: fix level 0
 adjustement on display ver >= 12
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

On Tue, Jun 22, 2021 at 04:28:14PM -0700, Matt Roper wrote:
> On Tue, Jun 22, 2021 at 02:22:09PM -0700, Lucas De Marchi wrote:
> > We should no longer increment level 0 by 1usec when we have 16Gb DIMMs.
> > Instead spec says to add 3usec (as opposed to 2) to each valid level
> > when punit replies 0 to level 0.
> > 
> > So set wm_lv_0_adjust_needed to false for DISPLAY_VER() >= 12 and set
> > the proper adjustement value when handling WaWmMemoryReadLatency.
> > 
> > Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> 
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Might also be worth adding

Bspec: 49326, 4381

to the commit message while applying.

> 
> > ---
> >  drivers/gpu/drm/i915/intel_dram.c |  3 +--
> >  drivers/gpu/drm/i915/intel_pm.c   | 13 +++++++------
> >  2 files changed, 8 insertions(+), 8 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/intel_dram.c
> > index 50fdea84ba70..879b0f007be3 100644
> > --- a/drivers/gpu/drm/i915/intel_dram.c
> > +++ b/drivers/gpu/drm/i915/intel_dram.c
> > @@ -484,8 +484,7 @@ static int gen11_get_dram_info(struct drm_i915_private *i915)
> >  
> >  static int gen12_get_dram_info(struct drm_i915_private *i915)
> >  {
> > -	/* Always needed for GEN12+ */
> > -	i915->dram_info.wm_lv_0_adjust_needed = true;
> > +	i915->dram_info.wm_lv_0_adjust_needed = false;
> >  
> >  	return icl_pcode_read_mem_global_info(i915);
> >  }
> > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > index ef8d9b2284b3..be2931d54b95 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -2911,18 +2911,20 @@ static void intel_read_wm_latency(struct drm_i915_private *dev_priv,
> >  		}
> >  
> >  		/*
> > -		 * WaWmMemoryReadLatency:skl+,glk
> > +		 * WaWmMemoryReadLatency
> >  		 *
> >  		 * punit doesn't take into account the read latency so we need
> > -		 * to add 2us to the various latency levels we retrieve from the
> > -		 * punit when level 0 response data us 0us.
> > +		 * to add proper adjustement to each valid level we retrieve
> > +		 * from the punit when level 0 response data is 0us.
> >  		 */
> >  		if (wm[0] == 0) {
> > -			wm[0] += 2;
> > +			u8 adjust = DISPLAY_VER(dev_priv) >= 12 ? 3 : 2;
> > +
> > +			wm[0] += adjust;
> >  			for (level = 1; level <= max_level; level++) {
> >  				if (wm[level] == 0)
> >  					break;
> > -				wm[level] += 2;
> > +				wm[level] += adjust;
> >  			}
> >  		}
> >  
> > @@ -2934,7 +2936,6 @@ static void intel_read_wm_latency(struct drm_i915_private *dev_priv,
> >  		 */
> >  		if (dev_priv->dram_info.wm_lv_0_adjust_needed)
> >  			wm[0] += 1;
> > -
> >  	} else if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
> >  		u64 sskpd = intel_uncore_read64(uncore, MCH_SSKPD);
> >  
> > -- 
> > 2.31.1
> > 
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
> (916) 356-2795

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
