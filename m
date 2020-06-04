Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D741EDA50
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 03:18:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A09689A14;
	Thu,  4 Jun 2020 01:18:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43F1E89A14
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 01:18:03 +0000 (UTC)
IronPort-SDR: KzT84SAPd79ywEyxLjxrBbow5UehF4Qb+ANFx8gKamSTddvnm0aIIqnLjiLsrCpLgHkGzxW237
 59m9ARBJ4G6g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2020 18:18:02 -0700
IronPort-SDR: acWvMuHdGEFMGnMCKCi8Z8h2dq5Db4oZkYYexGR/ZbaNpfzo46ZJWMCv0SOMKMNENPgOfZQw5C
 P4ecESZkBC0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,470,1583222400"; d="scan'208";a="294162435"
Received: from swasik-mobl1.amr.corp.intel.com (HELO aswarup-mobl)
 ([10.254.68.104])
 by fmsmga004.fm.intel.com with ESMTP; 03 Jun 2020 18:18:02 -0700
Date: Wed, 3 Jun 2020 18:18:02 -0700
From: Aditya Swarup <aditya.swarup@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20200604011802.GB23488@aswarup-mobl>
References: <20200603211529.3005059-1-matthew.d.roper@intel.com>
 <20200603211529.3005059-3-matthew.d.roper@intel.com>
 <20200603223432.GA23488@aswarup-mobl>
 <20200603231259.GC2992531@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200603231259.GC2992531@mdroper-desk1.amr.corp.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v3 02/15] drm/i915/rkl: Program BW_BUDDY0
 registers instead of BW_BUDDY1/2
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

On Wed, Jun 03, 2020 at 04:12:59PM -0700, Matt Roper wrote:
> On Wed, Jun 03, 2020 at 03:34:32PM -0700, Aditya Swarup wrote:
> > On Wed, Jun 03, 2020 at 02:15:16PM -0700, Matt Roper wrote:
> > > RKL uses the same BW_BUDDY programming table as TGL, but programs the
> > > values into a single set BUDDY0 set of registers rather than the
> > > BUDDY1/BUDDY2 sets used by TGL.
> > > 
> > > Bspec: 49218
> > > Cc: Aditya Swarup <aditya.swarup@intel.com>
> > > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > > ---
> > >  .../drm/i915/display/intel_display_power.c    | 44 +++++++++++--------
> > >  drivers/gpu/drm/i915/i915_reg.h               | 14 ++++--
> > >  2 files changed, 35 insertions(+), 23 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > index 72312b67b57a..2c1ce50b572b 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > @@ -5254,7 +5254,7 @@ static void tgl_bw_buddy_init(struct drm_i915_private *dev_priv)
> > >  	enum intel_dram_type type = dev_priv->dram_info.type;
> > >  	u8 num_channels = dev_priv->dram_info.num_channels;
> > >  	const struct buddy_page_mask *table;
> > > -	int i;
> > > +	int config, min_buddy, max_buddy, i;
> > >  
> > >  	if (IS_TGL_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_B0))
> > >  		/* Wa_1409767108: tgl */
> > > @@ -5262,29 +5262,35 @@ static void tgl_bw_buddy_init(struct drm_i915_private *dev_priv)
> > >  	else
> > >  		table = tgl_buddy_page_masks;
> > >  
> > > -	for (i = 0; table[i].page_mask != 0; i++)
> > > -		if (table[i].num_channels == num_channels &&
> > > -		    table[i].type == type)
> > > +	if (IS_ROCKETLAKE(dev_priv)) {
> > > +		min_buddy = max_buddy = 0;
> > > +	} else {
> > > +		min_buddy = 1;
> > > +		max_buddy = 2;
> > > +	}
> > > +
> > > +	for (config = 0; table[config].page_mask != 0; config++)
> > > +		if (table[config].num_channels == num_channels &&
> > > +		    table[config].type == type)
> > >  			break;
> > >  
> > > -	if (table[i].page_mask == 0) {
> > > +	if (table[config].page_mask == 0) {
> > >  		drm_dbg(&dev_priv->drm,
> > >  			"Unknown memory configuration; disabling address buddy logic.\n");
> > > -		intel_de_write(dev_priv, BW_BUDDY1_CTL, BW_BUDDY_DISABLE);
> > > -		intel_de_write(dev_priv, BW_BUDDY2_CTL, BW_BUDDY_DISABLE);
> > > +		for (i = min_buddy; i <= max_buddy; i++)
> > > +			intel_de_write(dev_priv, BW_BUDDY_CTL(i),
> > > +				       BW_BUDDY_DISABLE);
> > >  	} else {
> > > -		intel_de_write(dev_priv, BW_BUDDY1_PAGE_MASK,
> > > -			       table[i].page_mask);
> > > -		intel_de_write(dev_priv, BW_BUDDY2_PAGE_MASK,
> > > -			       table[i].page_mask);
> > > -
> > > -		/* Wa_22010178259:tgl */
> > > -		intel_de_rmw(dev_priv, BW_BUDDY1_CTL,
> > > -			     BW_BUDDY_TLB_REQ_TIMER_MASK,
> > > -			     REG_FIELD_PREP(BW_BUDDY_TLB_REQ_TIMER_MASK, 0x8));
> > > -		intel_de_rmw(dev_priv, BW_BUDDY2_CTL,
> > > -			     BW_BUDDY_TLB_REQ_TIMER_MASK,
> > > -			     REG_FIELD_PREP(BW_BUDDY_TLB_REQ_TIMER_MASK, 0x8));
> > > +		for (i = min_buddy; i <= max_buddy; i++) {
> > > +			intel_de_write(dev_priv, BW_BUDDY_PAGE_MASK(i),
> > > +				       table[config].page_mask);
> > > +
> > > +			/* Wa_22010178259:tgl,rkl */
> > > +			intel_de_rmw(dev_priv, BW_BUDDY_CTL(i),
> > > +				     BW_BUDDY_TLB_REQ_TIMER_MASK,
> > > +				     REG_FIELD_PREP(BW_BUDDY_TLB_REQ_TIMER_MASK,
> > > +						    0x8));
> > We should be using REG_FIELD_PREP() in i915_reg.h to declare
> > TLB_REQ_TIMER value and then use the value here.
> 
> Any specific reason why?  The value "8" doesn't have any specific
> hardware meaning that would be meaningful to define in the general
> register definitions.  It's just a value that this specific hardware
> workaround asked for in this case.  I'm not sure if we want to spread
> the definition of the workaround into the register file if the value
> isn't going to be meaningful to other driver programming or workarounds.
> 
> 
> Matt
The value 8 is constant and as such should be defined in a header file
for that bitmask. If there was variable used to prepare the value on the
fly, I would have understood this usage.

If you are concerned about 8 being a random value and not spreading to
i915_reg.h, I would prefer a macro in i915_reg.h like:
#define TLB_REQ_TIMER(x)    REG_FIELD_PREP(BW_BUDDY_TLB_REQ_TIMER_MASK,(x))       

Then the value doesn't filter to i915_reg.h and according to me looks
cleaner.

Most of the usage of REG_FIELD_PREP in *.c files is based on creating
bitfields using variable. Here we are using a constant which can easily
be moved to i915_reg.h. It shouldn't matter if it is a WA or not. 

Adi
> 
> > > +		}
> > >  	}
> > >  }
> > >  
> > > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > > index 578cfe11cbb9..3e79cefc510a 100644
> > > --- a/drivers/gpu/drm/i915/i915_reg.h
> > > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > > @@ -7837,13 +7837,19 @@ enum {
> > >  #define  WAIT_FOR_PCH_RESET_ACK		(1 << 1)
> > >  #define  WAIT_FOR_PCH_FLR_ACK		(1 << 0)
> > >  
> > > -#define BW_BUDDY1_CTL			_MMIO(0x45140)
> > > -#define BW_BUDDY2_CTL			_MMIO(0x45150)
> > > +#define _BW_BUDDY0_CTL			0x45130
> > > +#define _BW_BUDDY1_CTL			0x45140
> > > +#define BW_BUDDY_CTL(x)			_MMIO(_PICK_EVEN(x, \
> > > +							 _BW_BUDDY0_CTL, \
> > > +							 _BW_BUDDY1_CTL))
> > >  #define   BW_BUDDY_DISABLE		REG_BIT(31)
> > >  #define   BW_BUDDY_TLB_REQ_TIMER_MASK	REG_GENMASK(21, 16)
> > >  
> > > -#define BW_BUDDY1_PAGE_MASK		_MMIO(0x45144)
> > > -#define BW_BUDDY2_PAGE_MASK		_MMIO(0x45154)
> > > +#define _BW_BUDDY0_PAGE_MASK		0x45134
> > > +#define _BW_BUDDY1_PAGE_MASK		0x45144
> > > +#define BW_BUDDY_PAGE_MASK(x)		_MMIO(_PICK_EVEN(x, \
> > > +							 _BW_BUDDY0_PAGE_MASK, \
> > > +							 _BW_BUDDY1_PAGE_MASK))
> > >  
> > >  #define HSW_NDE_RSTWRN_OPT	_MMIO(0x46408)
> > >  #define  RESET_PCH_HANDSHAKE_ENABLE	(1 << 4)
> > > -- 
> > > 2.24.1
> > > 
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
