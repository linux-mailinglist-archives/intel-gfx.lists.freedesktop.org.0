Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21FDB1AACFE
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 18:10:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3AE26EA25;
	Wed, 15 Apr 2020 16:10:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8B536EA25
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 16:10:09 +0000 (UTC)
IronPort-SDR: z4Tgs2VlB2eCcPfLoL47SpiYVb8sNuQTOsVgHDyd/yYkXl6isLQr8P2VCogsBMwXDDD06ynxlz
 5I2iE7eg0EmA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 09:10:09 -0700
IronPort-SDR: zXsvbDh+NLNTTnfDjqvx4ApnUhXA7ZClcaVpWZfajkO2Eh90yNxBxr441Vh9RcOPCZEfVVZzvM
 oW51fQ5wrFFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,387,1580803200"; d="scan'208";a="242349693"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by orsmga007.jf.intel.com with ESMTP; 15 Apr 2020 09:10:09 -0700
Received: from orsmsx124.amr.corp.intel.com (10.22.240.120) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 15 Apr 2020 09:10:08 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.204]) by
 ORSMSX124.amr.corp.intel.com ([169.254.2.41]) with mapi id 14.03.0439.000;
 Wed, 15 Apr 2020 09:10:08 -0700
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [PATCH] drm/i915/icl: Update forcewake firmware ranges
Thread-Index: AQHWEXHNkxCs7tUcmEq2+Rf8/+kYsah5aqOAgADO+9CAAIO+gP//oDLA
Date: Wed, 15 Apr 2020 16:10:07 +0000
Message-ID: <8C2593290C2B3E488D763E819AF1F02E160ABC53@ORSMSX101.amr.corp.intel.com>
References: <20200413090003.13451-1-radhakrishna.sripada@intel.com>
 <20200414183955.GA2715344@mdroper-desk1.amr.corp.intel.com>
 <8C2593290C2B3E488D763E819AF1F02E160ABACF@ORSMSX101.amr.corp.intel.com>
 <20200415145215.GB2715344@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20200415145215.GB2715344@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYTJhYzgxMTMtOTVjZi00YTc2LWFkMjgtODIzYTg5YzExODI3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoidkdBQWduWkJha2ZsQ1A0Smk4MUt3YmZHcDg2OEUzWEhKM21PTWMxV2xxVXdhZ0lLd2l4NXFwbm9UdjVJdGVOSiJ9
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/icl: Update forcewake firmware
 ranges
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Wednesday, April 15, 2020 7:52 AM
> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH] drm/i915/icl: Update forcewake firmware ranges
> 
> On Wed, Apr 15, 2020 at 07:28:18AM -0700, Sripada, Radhakrishna wrote:
> > Hi Matt,
> >
> > > -----Original Message-----
> > > From: Roper, Matthew D <matthew.d.roper@intel.com>
> > > Sent: Tuesday, April 14, 2020 11:40 AM
> > > To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org
> > > Subject: Re: [PATCH] drm/i915/icl: Update forcewake firmware ranges
> > >
> > > On Mon, Apr 13, 2020 at 02:00:03AM -0700, Radhakrishna Sripada wrote:
> > > > Some workarounds are not sticking across suspend resume cycles.
> > > > The forcewake ranges table has been updated and would reflect the
> > > > hardware appropriately.
> > > >
> > > > Closes: https://gitlab.freedesktop.org/drm/intel/issues/1222
> > >
> > > It's unfortunate that they still haven't updated the bspec for this yet.
> > > A few comments below based on my understanding of the document we
> > > received from the hardware team.
> > >
> > > >
> > > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > > Signed-off-by: Radhakrishna Sripada
> > > > <radhakrishna.sripada@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/intel_uncore.c | 55
> > > > +++++++++++++++++++++--------
> > > >  1 file changed, 41 insertions(+), 14 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/intel_uncore.c
> > > > b/drivers/gpu/drm/i915/intel_uncore.c
> > > > index fa86b7ab2d99..c0e21697a44c 100644
> > > > --- a/drivers/gpu/drm/i915/intel_uncore.c
> > > > +++ b/drivers/gpu/drm/i915/intel_uncore.c
> > > > @@ -1098,32 +1098,59 @@ static const struct intel_forcewake_range
> > > > __gen11_fw_ranges[] = {
> > >
> > > Looks like the first range in this table (0x0 - 0xaff) needs to be
> > > changed to '0' (or rather combined with the following entry for a
> > > combined 0x0 - 0x1fff range set to '0')
> >
> > Comparing with previous gens, my understanding is the '0' is
> > indicative of uncore range Of registers. The reserved ranges are
> > marked with "Blitter" force wake range. Am I in the right Path making that
> assumption? Hence made all the subsequent changes according to the
> assumption.
> 
> The final parameter of GEN_FW_RANGE() is a bitmask of domains that we need
> to make sure are powered up when we're going to access a register in that
> range.  So a 0 means no domains need to be powered up for registers in that
> range.  That might be because it's a range that contains no registers at all
> (reserved range), or it may be that the registers in that range simply aren't part
> of the blitter, render, media, etc.  power wells and we don't have to worry about
> powering anything up.
> 
> In cases where there are no actual registers (i.e., reserved ranges), it doesn't
> really matter what you put since there shouldn't be any register reads/writes in
> that range.  So for those we'll often combine them with one of the surrounding
> ranges just to keep the overall forcewake table smaller and make lookups faster.
> 

Thank you for the explanation Matt. I will update the patch and send the next version.

- RK
> 
> Matt
> 
> >
> > Thanks,
> > Radhakrishna(RK) Sripada
> > >
> > >
> > > >  	GEN_FW_RANGE(0x2700, 0x2fff, FORCEWAKE_BLITTER),
> > > >  	GEN_FW_RANGE(0x3000, 0x3fff, FORCEWAKE_RENDER),
> > > >  	GEN_FW_RANGE(0x4000, 0x51ff, FORCEWAKE_BLITTER),
> > > > -	GEN_FW_RANGE(0x5200, 0x7fff, FORCEWAKE_RENDER),
> > > > +	GEN_FW_RANGE(0x5200, 0x53ff, FORCEWAKE_RENDER),
> > > > +	GEN_FW_RANGE(0x5400, 0x54ff, FORCEWAKE_BLITTER),
> > >
> > > In the version of the document I'm looking at, the wake target for
> > > this entry is blank, which usually means no wake target is required.
> > > AFAICS, no registers actually fall in this range on gen11, so I'd
> > > either set this to '0' to explicitly match the document, or just
> > > leave it combined with the two surrounding render ranges for simplicity (and
> smaller table size).
> > >
> > > > +	GEN_FW_RANGE(0x5500, 0x7fff, FORCEWAKE_RENDER),
> > > >  	GEN_FW_RANGE(0x8000, 0x813f, FORCEWAKE_BLITTER),
> > > >  	GEN_FW_RANGE(0x8140, 0x815f, FORCEWAKE_RENDER),
> > > >  	GEN_FW_RANGE(0x8160, 0x82ff, FORCEWAKE_BLITTER),
> > > >  	GEN_FW_RANGE(0x8300, 0x84ff, FORCEWAKE_RENDER),
> > > > -	GEN_FW_RANGE(0x8500, 0x8bff, FORCEWAKE_BLITTER),
> > > > +	GEN_FW_RANGE(0x8500, 0x87ff, FORCEWAKE_BLITTER),
> > > > +	GEN_FW_RANGE(0x8800, 0x883f, 0),
> > > > +	GEN_FW_RANGE(0x8840, 0x8bff, FORCEWAKE_BLITTER),
> > >
> > > I see 0x8840 - 0x8bff as a reserved range with no forcewake target
> > > so we should be able to combine it with the range before it.
> > >
> > > >  	GEN_FW_RANGE(0x8c00, 0x8cff, FORCEWAKE_RENDER),
> > > > -	GEN_FW_RANGE(0x8d00, 0x93ff, FORCEWAKE_BLITTER),
> > > > -	GEN_FW_RANGE(0x9400, 0x97ff, FORCEWAKE_ALL),
> > > > -	GEN_FW_RANGE(0x9800, 0xafff, FORCEWAKE_BLITTER),
> > > > +	GEN_FW_RANGE(0x8d00, 0x94cf, FORCEWAKE_BLITTER),
> > > > +	GEN_FW_RANGE(0x94d0, 0x955f, FORCEWAKE_RENDER),
> > > > +	GEN_FW_RANGE(0x9560, 0x95ff, 0),
> > > > +	GEN_FW_RANGE(0x9600, 0xafff, FORCEWAKE_BLITTER),
> > > >  	GEN_FW_RANGE(0xb000, 0xb47f, FORCEWAKE_RENDER),
> > > >  	GEN_FW_RANGE(0xb480, 0xdeff, FORCEWAKE_BLITTER),
> > > >  	GEN_FW_RANGE(0xdf00, 0xe8ff, FORCEWAKE_RENDER),
> > > >  	GEN_FW_RANGE(0xe900, 0x16dff, FORCEWAKE_BLITTER),
> > > >  	GEN_FW_RANGE(0x16e00, 0x19fff, FORCEWAKE_RENDER),
> > > > -	GEN_FW_RANGE(0x1a000, 0x243ff, FORCEWAKE_BLITTER),
> > > > -	GEN_FW_RANGE(0x24400, 0x247ff, FORCEWAKE_RENDER),
> > > > -	GEN_FW_RANGE(0x24800, 0x3ffff, FORCEWAKE_BLITTER),
> > > > +	GEN_FW_RANGE(0x1a000, 0x23fff, FORCEWAKE_BLITTER),
> > > > +	GEN_FW_RANGE(0x24000, 0x2407f, 0),
> > > > +	GEN_FW_RANGE(0x24080, 0x2417f, FORCEWAKE_BLITTER),
> > > > +	GEN_FW_RANGE(0x24180, 0x242ff, FORCEWAKE_RENDER),
> > > > +	GEN_FW_RANGE(0x24300, 0x243ff, FORCEWAKE_BLITTER),
> > > > +	GEN_FW_RANGE(0x24400, 0x245ff, FORCEWAKE_RENDER),
> > > > +	GEN_FW_RANGE(0x24600, 0x2467f, FORCEWAKE_BLITTER),
> > >
> > > This one is a reserved range with no registers, so we can just
> > > squash it into the two render ranges on either side of it.
> > >
> > > > +	GEN_FW_RANGE(0x24680, 0x247ff, FORCEWAKE_RENDER),
> > > > +	GEN_FW_RANGE(0x24800, 0x249ff, FORCEWAKE_BLITTER),
> > >
> > > Also reserved with no registers.
> > >
> > > > +	GEN_FW_RANGE(0x24a00, 0x24a7f, FORCEWAKE_RENDER),
> > > > +	GEN_FW_RANGE(0x24a80, 0x24dff, FORCEWAKE_BLITTER),
> > >
> > > Also reserved with no registers.
> > >
> > > So I think we should be able to have just use one render range that
> > > runs from
> > > 0x24400 - 0x24fff.
> > >
> > > > +	GEN_FW_RANGE(0x24e00, 0x24fff, FORCEWAKE_RENDER),
> > > > +	GEN_FW_RANGE(0x25000, 0x3ffff, FORCEWAKE_BLITTER),
> > > >  	GEN_FW_RANGE(0x40000, 0x1bffff, 0),
> > > > -	GEN_FW_RANGE(0x1c0000, 0x1c3fff, FORCEWAKE_MEDIA_VDBOX0),
> > > > -	GEN_FW_RANGE(0x1c4000, 0x1c7fff, FORCEWAKE_MEDIA_VDBOX1),
> > > > -	GEN_FW_RANGE(0x1c8000, 0x1cbfff, FORCEWAKE_MEDIA_VEBOX0),
> > > > +	GEN_FW_RANGE(0x1c0000, 0x1c2bff, FORCEWAKE_MEDIA_VDBOX0),
> > > > +	GEN_FW_RANGE(0x1c2c00, 0x1c3eff, FORCEWAKE_BLITTER),
> > >
> > > This is another reserved range that can be combined into the ranges
> > > around it
> > > (0x1c0000 - 0x1c3fff).
> > >
> > > > +	GEN_FW_RANGE(0x1c3f00, 0x1c3fff, FORCEWAKE_MEDIA_VDBOX0),
> > > > +	GEN_FW_RANGE(0x1c4000, 0x1c6bff, FORCEWAKE_MEDIA_VDBOX1),
> > > > +	GEN_FW_RANGE(0x1c6c00, 0x1c7eff, FORCEWAKE_BLITTER),
> > > > +	GEN_FW_RANGE(0x1c7f00, 0x1c7fff, FORCEWAKE_MEDIA_VDBOX1),
> > >
> > > 0x1c4000 - 0x1c7fff are reserved for vdbox1, but that doesn't exist
> > > on this platform (we only have vdbox0 and vdbox2 on ICL and only vdbox0
> on EHL/JSL).
> > > So the three entries above should be combined into a single range with
> target '0'
> > > here.
> > >
> > > > +	GEN_FW_RANGE(0x1c8000, 0x1ca0ff, FORCEWAKE_MEDIA_VEBOX0),
> > > > +	GEN_FW_RANGE(0x1ca100, 0x1cbeff, FORCEWAKE_BLITTER),
> > >
> > > Another reserved range; can squash with the two surrounding ranges.
> > >
> > > > +	GEN_FW_RANGE(0x1cbf00, 0x1cbfff, FORCEWAKE_MEDIA_VEBOX0),
> > > >  	GEN_FW_RANGE(0x1cc000, 0x1cffff, FORCEWAKE_BLITTER),
> > >
> > > Another reserved range.  Either set to 0 or combine with one of the
> > > ranges before/after it.
> > >
> > > > -	GEN_FW_RANGE(0x1d0000, 0x1d3fff, FORCEWAKE_MEDIA_VDBOX2),
> > > > -	GEN_FW_RANGE(0x1d4000, 0x1d7fff, FORCEWAKE_MEDIA_VDBOX3),
> > > > -	GEN_FW_RANGE(0x1d8000, 0x1dbfff, FORCEWAKE_MEDIA_VEBOX1)
> > > > +	GEN_FW_RANGE(0x1d0000, 0x1d2bff, FORCEWAKE_MEDIA_VDBOX2),
> > > > +	GEN_FW_RANGE(0x1d2c00, 0x1d3eff, FORCEWAKE_BLITTER),
> > >
> > > Reserved range; can squash with ranges around it.
> > >
> > > > +	GEN_FW_RANGE(0x1d3f00, 0x1d3fff, FORCEWAKE_MEDIA_VDBOX2),
> > > > +	GEN_FW_RANGE(0x1d4000, 0x1d6bff, FORCEWAKE_MEDIA_VDBOX3),
> > > > +	GEN_FW_RANGE(0x1d6c00, 0x1d7eff, FORCEWAKE_BLITTER),
> > > > +	GEN_FW_RANGE(0x1d7f00, 0x1d7fff, FORCEWAKE_MEDIA_VDBOX3),
> > > > +	GEN_FW_RANGE(0x1d8000, 0x1da0ff, FORCEWAKE_MEDIA_VEBOX1),
> > > > +	GEN_FW_RANGE(0x1da100, 0x1dbeff, FORCEWAKE_BLITTER),
> > > > +	GEN_FW_RANGE(0x1dbf00, 0x1dbfff, FORCEWAKE_MEDIA_VEBOX1)
> > >
> > > As noted above, gen11 doesn't have vdbox1 or vdbox3, so these
> > > entries should just be set to '0' (including the reserved ranges
> > > that you have listed as blitter right now).
> > >
> > > >  };
> > > >
> > > >  /* *Must* be sorted by offset ranges! See intel_fw_table_check().
> > > > */
> > > > --
> > > > 2.20.1
> > > >
> > >
> > > --
> > > Matt Roper
> > > Graphics Software Engineer
> > > VTT-OSGC Platform Enablement
> > > Intel Corporation
> > > (916) 356-2795
> 
> --
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
> (916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
