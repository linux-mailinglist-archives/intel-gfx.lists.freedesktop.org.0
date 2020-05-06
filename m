Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F9F1C7714
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 18:50:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 926296E8B0;
	Wed,  6 May 2020 16:50:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3071E6E8B0
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 16:50:09 +0000 (UTC)
IronPort-SDR: QanqLataj/DPimdcXQwfVyoNioT/YLpHk3oSOfWi3v0mHMYkX5eFJbtcGCeCyh8bkYWOy4EPy3
 mjg8+M9H2Bmg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 09:49:51 -0700
IronPort-SDR: LEhyyaOScSz/wKlP6YeZyBIE1fapCp2CjbcZGoyhpYeEVjBd9khq5ZGKC9bcu34v3HGYft/KYy
 fzuGZlMf8yHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,360,1583222400"; d="scan'208";a="251251251"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga008.fm.intel.com with SMTP; 06 May 2020 09:49:51 -0700
Date: Wed, 6 May 2020 09:49:51 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
Message-ID: <20200506164951.GX188376@mdroper-desk1.amr.corp.intel.com>
References: <20200504225227.464666-1-matthew.d.roper@intel.com>
 <20200504225227.464666-11-matthew.d.roper@intel.com>
 <83F5C7385F545743AD4FB2A62F75B073482C1471@ORSMSX108.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <83F5C7385F545743AD4FB2A62F75B073482C1471@ORSMSX108.amr.corp.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 10/22] drm/i915/rkl: RKL only uses
 PHY_MISC for PHY's A and B
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

On Wed, May 06, 2020 at 06:49:06AM -0700, Srivatsa, Anusha wrote:
> 
> 
> > -----Original Message----- From: Intel-gfx
> > <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Matt Roper
> > Sent: Tuesday, May 5, 2020 4:22 AM To:
> > intel-gfx@lists.freedesktop.org Subject: [Intel-gfx] [PATCH v2
> > 10/22] drm/i915/rkl: RKL only uses PHY_MISC for PHY's A and B
> > 
> > Since the number of platforms with this restriction are growing,
> > let's separate out the platform logic into a has_phy_misc()
> > function.
> > 
> > Bspec: 50107 Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > --- .../gpu/drm/i915/display/intel_combo_phy.c    | 30
> > +++++++++++-------- 1 file changed, 17 insertions(+), 13
> > deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c
> > b/drivers/gpu/drm/i915/display/intel_combo_phy.c index
> > 9ff05ec12115..43d8784f6fa0 100644 ---
> > a/drivers/gpu/drm/i915/display/intel_combo_phy.c +++
> > b/drivers/gpu/drm/i915/display/intel_combo_phy.c @@ -181,11 +181,25
> > @@ static void cnl_combo_phys_uninit(struct drm_i915_private
> > *dev_priv) intel_de_write(dev_priv, CHICKEN_MISC_2, val);  }
> > 
> > +static bool has_phy_misc(struct drm_i915_private *i915, enum phy
> > phy) { +	/* +	 * Some platforms only expect PHY_MISC to be
> > programmed for PHY-A and +	 * PHY-B and may not even have instances
> > of the register for the +	 * other combo PHY's.  +	 */ + if
> > (IS_ELKHARTLAKE(i915) || +	    IS_ROCKETLAKE(i915)) + return phy <
> > PHY_C;
> According BSpec 50107, there is an instance of this for combo PHY C as
> well. 
> 
Yeah, there's technically an instance of the register, but the only
field in it that our driver programs has a RKL programming note that
says "This register field need only be programmed for port A and B."


Matt

> Anusha
> > +
> > +	return true;
> > +}
> > +
> >  static bool icl_combo_phy_enabled(struct drm_i915_private *dev_priv,
> >  				  enum phy phy)
> >  {
> >  	/* The PHY C added by EHL has no PHY_MISC register */
> > -	if (IS_ELKHARTLAKE(dev_priv) && phy == PHY_C)
> > +	if (!has_phy_misc(dev_priv, phy))
> >  		return intel_de_read(dev_priv, ICL_PORT_COMP_DW0(phy))
> > & COMP_INIT;
> >  	else
> >  		return !(intel_de_read(dev_priv, ICL_PHY_MISC(phy)) & @@ -
> > 317,12 +331,7 @@ static void icl_combo_phys_init(struct drm_i915_private
> > *dev_priv)
> >  			continue;
> >  		}
> > 
> > -		/*
> > -		 * Although EHL adds a combo PHY C, there's no PHY_MISC
> > -		 * register for it and no need to program the
> > -		 * DE_IO_COMP_PWR_DOWN setting on PHY C.
> > -		 */
> > -		if (IS_ELKHARTLAKE(dev_priv) && phy == PHY_C)
> > +		if (!has_phy_misc(dev_priv, phy))
> >  			goto skip_phy_misc;
> > 
> >  		/*
> > @@ -376,12 +385,7 @@ static void icl_combo_phys_uninit(struct
> > drm_i915_private *dev_priv)
> >  				 "Combo PHY %c HW state changed
> > unexpectedly\n",
> >  				 phy_name(phy));
> > 
> > -		/*
> > -		 * Although EHL adds a combo PHY C, there's no PHY_MISC
> > -		 * register for it and no need to program the
> > -		 * DE_IO_COMP_PWR_DOWN setting on PHY C.
> > -		 */
> > -		if (IS_ELKHARTLAKE(dev_priv) && phy == PHY_C)
> > +		if (!has_phy_misc(dev_priv, phy))
> >  			goto skip_phy_misc;
> > 
> >  		val = intel_de_read(dev_priv, ICL_PHY_MISC(phy));
> > --
> > 2.24.1
> > 
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx

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
