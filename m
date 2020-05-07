Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E217F1C87EF
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 13:22:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 168376E0DF;
	Thu,  7 May 2020 11:22:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 974826E0DF
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 11:22:08 +0000 (UTC)
IronPort-SDR: Qj4Qgmnz/UiVW05ek4wOTPV5wl2nRjdCzz3QBNCZRupQT3HHsovxeTipOVRmN5TVLz++8NN5ur
 zQMgCd8H9zbg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 04:22:06 -0700
IronPort-SDR: 55vm2Bt2SimGlcfbYdeRPbOXvHmib/MWdxL8zVzm33ThXKodb2zkSiWDYUwNMVMfjJJMaqV2zz
 UvQc9o3U59CA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,363,1583222400"; d="scan'208";a="407603174"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by orsmga004.jf.intel.com with ESMTP; 07 May 2020 04:22:06 -0700
Received: from orsmsx157.amr.corp.intel.com (10.22.240.23) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 7 May 2020 04:22:06 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.68]) by
 ORSMSX157.amr.corp.intel.com ([169.254.9.116]) with mapi id 14.03.0439.000;
 Thu, 7 May 2020 04:22:05 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 10/22] drm/i915/rkl: RKL only uses
 PHY_MISC for PHY's A and B
Thread-Index: AQHWImbK9azIzebuokKkEAQMoT9x2qibFL0ggACohoCAAMEU0A==
Date: Thu, 7 May 2020 11:22:05 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B073482C20BB@ORSMSX108.amr.corp.intel.com>
References: <20200504225227.464666-1-matthew.d.roper@intel.com>
 <20200504225227.464666-11-matthew.d.roper@intel.com>
 <83F5C7385F545743AD4FB2A62F75B073482C1471@ORSMSX108.amr.corp.intel.com>
 <20200506164951.GX188376@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20200506164951.GX188376@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYTZlODE0NjYtMDYzNi00Y2Y5LWJhODktNThjOTllNTFkNzg1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoidm1CdjQ1emdHeGNaZTh4aTZ6MXd1ZCtNN2lONDJCME1tMVBhc0ZLV2dyVFpQcVloOHFPUnlqKzlmb2xXWGNKVSJ9
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
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



> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Wednesday, May 6, 2020 10:20 PM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH v2 10/22] drm/i915/rkl: RKL only uses PHY_MISC
> for PHY's A and B
> 
> On Wed, May 06, 2020 at 06:49:06AM -0700, Srivatsa, Anusha wrote:
> >
> >
> > > -----Original Message----- From: Intel-gfx
> > > <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Matt Roper
> > > Sent: Tuesday, May 5, 2020 4:22 AM To:
> > > intel-gfx@lists.freedesktop.org Subject: [Intel-gfx] [PATCH v2
> > > 10/22] drm/i915/rkl: RKL only uses PHY_MISC for PHY's A and B
> > >
> > > Since the number of platforms with this restriction are growing,
> > > let's separate out the platform logic into a has_phy_misc()
> > > function.
> > >
> > > Bspec: 50107 Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > > --- .../gpu/drm/i915/display/intel_combo_phy.c    | 30
> > > +++++++++++-------- 1 file changed, 17 insertions(+), 13
> > > deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c
> > > b/drivers/gpu/drm/i915/display/intel_combo_phy.c index
> > > 9ff05ec12115..43d8784f6fa0 100644 ---
> > > a/drivers/gpu/drm/i915/display/intel_combo_phy.c +++
> > > b/drivers/gpu/drm/i915/display/intel_combo_phy.c @@ -181,11 +181,25
> > > @@ static void cnl_combo_phys_uninit(struct drm_i915_private
> > > *dev_priv) intel_de_write(dev_priv, CHICKEN_MISC_2, val);  }
> > >
> > > +static bool has_phy_misc(struct drm_i915_private *i915, enum phy
> > > phy) { +	/* +	 * Some platforms only expect PHY_MISC to be
> > > programmed for PHY-A and +	 * PHY-B and may not even have
> instances
> > > of the register for the +	 * other combo PHY's.  +	 */ + if
> > > (IS_ELKHARTLAKE(i915) || +	    IS_ROCKETLAKE(i915)) + return phy <
> > > PHY_C;
> > According BSpec 50107, there is an instance of this for combo PHY C as
> > well.
> >
> Yeah, there's technically an instance of the register, but the only field in it that
> our driver programs has a RKL programming note that says "This register field
> need only be programmed for port A and B."

Ok. Thanks for pointing it out.

Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> 
> Matt
> 
> > Anusha
> > > +
> > > +	return true;
> > > +}
> > > +
> > >  static bool icl_combo_phy_enabled(struct drm_i915_private *dev_priv,
> > >  				  enum phy phy)
> > >  {
> > >  	/* The PHY C added by EHL has no PHY_MISC register */
> > > -	if (IS_ELKHARTLAKE(dev_priv) && phy == PHY_C)
> > > +	if (!has_phy_misc(dev_priv, phy))
> > >  		return intel_de_read(dev_priv, ICL_PORT_COMP_DW0(phy))
> &
> > > COMP_INIT;
> > >  	else
> > >  		return !(intel_de_read(dev_priv, ICL_PHY_MISC(phy)) & @@ -
> > > 317,12 +331,7 @@ static void icl_combo_phys_init(struct
> > > drm_i915_private
> > > *dev_priv)
> > >  			continue;
> > >  		}
> > >
> > > -		/*
> > > -		 * Although EHL adds a combo PHY C, there's no PHY_MISC
> > > -		 * register for it and no need to program the
> > > -		 * DE_IO_COMP_PWR_DOWN setting on PHY C.
> > > -		 */
> > > -		if (IS_ELKHARTLAKE(dev_priv) && phy == PHY_C)
> > > +		if (!has_phy_misc(dev_priv, phy))
> > >  			goto skip_phy_misc;
> > >
> > >  		/*
> > > @@ -376,12 +385,7 @@ static void icl_combo_phys_uninit(struct
> > > drm_i915_private *dev_priv)
> > >  				 "Combo PHY %c HW state changed
> unexpectedly\n",
> > >  				 phy_name(phy));
> > >
> > > -		/*
> > > -		 * Although EHL adds a combo PHY C, there's no PHY_MISC
> > > -		 * register for it and no need to program the
> > > -		 * DE_IO_COMP_PWR_DOWN setting on PHY C.
> > > -		 */
> > > -		if (IS_ELKHARTLAKE(dev_priv) && phy == PHY_C)
> > > +		if (!has_phy_misc(dev_priv, phy))
> > >  			goto skip_phy_misc;
> > >
> > >  		val = intel_de_read(dev_priv, ICL_PHY_MISC(phy));
> > > --
> > > 2.24.1
> > >
> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
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
