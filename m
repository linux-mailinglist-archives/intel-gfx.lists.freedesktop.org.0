Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E013B42AF19
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Oct 2021 23:40:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 828646E9EA;
	Tue, 12 Oct 2021 21:40:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA1326E9F5
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Oct 2021 21:40:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10135"; a="207392943"
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="207392943"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 14:40:36 -0700
X-IronPort-AV: E=Sophos;i="5.85,368,1624345200"; d="scan'208";a="562837560"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2021 14:40:36 -0700
Date: Tue, 12 Oct 2021 14:40:35 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Message-ID: <20211012214035.GY602200@mdroper-desk1.amr.corp.intel.com>
References: <20211008205855.36778-1-jose.souza@intel.com>
 <20211012212051.GX602200@mdroper-desk1.amr.corp.intel.com>
 <3200fd7f9d4b032a100abb311475ef44dd2e0edd.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3200fd7f9d4b032a100abb311475ef44dd2e0edd.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/icl: Fix read of memory frequency
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

On Tue, Oct 12, 2021 at 02:23:27PM -0700, Souza, Jose wrote:
> On Tue, 2021-10-12 at 14:20 -0700, Matt Roper wrote:
> > On Fri, Oct 08, 2021 at 01:58:55PM -0700, José Roberto de Souza wrote:
> > > All display 9 and display 10 platforms has only 4 bits for the memory
> > > frequency but display 11 platforms it changes to 8 bits.
> > > 
> > > Display 9 platforms has another register in bits 7:4 that prevents us
> > > to have a single mask.
> > > Also adding new mask with the current name in CRWebViewer, not
> > > sure why current mask is named like this.
> > > 
> > > Fixes: f8112cb9574b ("drm/i915/gen11+: Only load DRAM information from pcode")
> > > Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/i915_reg.h   | 1 +
> > >  drivers/gpu/drm/i915/intel_dram.c | 7 +++++--
> > >  2 files changed, 6 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > > index a897f4abea0c3..041f7dc9e0d94 100644
> > > --- a/drivers/gpu/drm/i915/i915_reg.h
> > > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > > @@ -11148,6 +11148,7 @@ enum skl_power_gate {
> > >  #define SKL_MEMORY_FREQ_MULTIPLIER_HZ		266666666
> > >  #define SKL_MC_BIOS_DATA_0_0_0_MCHBAR_PCU	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5E04)
> > >  #define  SKL_REQ_DATA_MASK			(0xF << 0)
> > > +#define  ICL_FREQ_MASK				(0xFF << 0)
> > 
> > We might as well take this opportunity to switch over to REG_GENMASK
> > notation while we're here.
> 
> Will do.
> 
> > 
> > >  #define  DG1_GEAR_TYPE				REG_BIT(16)
> > >  
> > >  #define SKL_MAD_INTER_CHANNEL_0_0_0_MCHBAR_MCMAIN _MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5000)
> > > diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/intel_dram.c
> > > index 30a0cab5eff46..558589b1202d6 100644
> > > --- a/drivers/gpu/drm/i915/intel_dram.c
> > > +++ b/drivers/gpu/drm/i915/intel_dram.c
> > > @@ -257,8 +257,11 @@ skl_get_dram_info(struct drm_i915_private *i915)
> > >  
> > >  	val = intel_uncore_read(&i915->uncore,
> > >  				SKL_MC_BIOS_DATA_0_0_0_MCHBAR_PCU);
> > > -	mem_freq_khz = DIV_ROUND_UP((val & SKL_REQ_DATA_MASK) *
> > > -				    SKL_MEMORY_FREQ_MULTIPLIER_HZ, 1000);
> > > +	if (DISPLAY_VER(i915) == 11)
> > > +		val &= ICL_FREQ_MASK;
> > > +	else
> > > +		val &= SKL_REQ_DATA_MASK;
> > > +	mem_freq_khz = DIV_ROUND_UP(val * SKL_MEMORY_FREQ_MULTIPLIER_HZ, 1000);
> > 
> > I'm not sure SKL_MEMORY_FREQ_MULTIPLIER_HZ is correct anymore either.
> > If I'm reading the register description correctly, it appears the value
> > is now given in units of 133.33 MHz instead of the old 266.66.
> 
> Thought about that but as the calculated memory frequency here is not used for anything besides check if is not zero, I left as is.

Hmm, good point.  Although in that case do we really need to read this
register at all?  It seems like after

        commit f0b29707baa9e6f3d7b90090fcce62d2f1023fa1
        Author:     José Roberto de Souza <jose.souza@intel.com>
        AuthorDate: Thu Jan 28 08:43:10 2021 -0800
        Commit:     José Roberto de Souza <jose.souza@intel.com>
        CommitDate: Fri Jan 29 05:50:48 2021 -0800

            drm/i915: Nuke not needed members of dram_info

we're not calculating bandwidth_kbps, so checking if the register is
valid doesn't really gain us anything and could just be removed?  A
simple check for

        if (dram_info->num_channels == 0) {
                ...error...
        }

might be sufficient?


Matt

> 
> > 
> > 
> > Matt
> > 
> > >  
> > >  	if (dram_info->num_channels * mem_freq_khz == 0) {
> > >  		drm_info(&i915->drm,
> > > -- 
> > > 2.33.0
> > > 
> > 
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
