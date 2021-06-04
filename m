Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D532A39B3E5
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 09:31:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47A3A6F5B9;
	Fri,  4 Jun 2021 07:31:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 973366F5B9
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jun 2021 07:31:14 +0000 (UTC)
IronPort-SDR: UJBObY90/g2E00WXGIMi5Im12iA9Xbv2+UgDGm+7QsaOl77h+j35HQMuihvfbJkZjzOMilIt+Q
 RmSPT6vd8XNA==
X-IronPort-AV: E=McAfee;i="6200,9189,10004"; a="191350257"
X-IronPort-AV: E=Sophos;i="5.83,247,1616482800"; d="scan'208";a="191350257"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 00:31:13 -0700
IronPort-SDR: kRcMYL13vyWdWEQ5fNnY4TVVCNxoiKSoaov/xsIMhP9xJRXXI9drYKba8kxdgok09zgA5ojzH5
 aPKFAhSOK40Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,247,1616482800"; d="scan'208";a="483802578"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga002.fm.intel.com with ESMTP; 04 Jun 2021 00:31:13 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 4 Jun 2021 00:31:11 -0700
Received: from bgsmsx602.gar.corp.intel.com (10.109.78.81) by
 BGSMSX602.gar.corp.intel.com (10.109.78.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 4 Jun 2021 13:01:09 +0530
Received: from bgsmsx602.gar.corp.intel.com ([10.109.78.81]) by
 BGSMSX602.gar.corp.intel.com ([10.109.78.81]) with mapi id 15.01.2242.008;
 Fri, 4 Jun 2021 13:01:09 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Navare, Manasi D" <manasi.d.navare@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dsc: Remove redundant checks in DSC
 disable
Thread-Index: AQHXWEerkFFEh6R0kUCekRWWk2uIg6sBidmAgABuaXD//7Q1gIAAcXSQ///VHYCAAGMKkP//7noAACRwYzA=
Date: Fri, 4 Jun 2021 07:31:09 +0000
Message-ID: <c964c8e14b224c8e895742ce98031fb5@intel.com>
References: <20210603065356.15435-1-vandita.kulkarni@intel.com>
 <eedaa66fa17944aeb96aa353c58db2e9@intel.com>
 <1e70025aa4e04a5396721ad4e7609340@intel.com> <87czt3p9oc.fsf@intel.com>
 <86877ca0c9ff4ebab0b269b91b6c3979@intel.com>
 <0935357a1cd94cc7a115eca8e7a5fce9@intel.com>
 <a608d8131b314604bf3714e311ab94b9@intel.com>
 <20210603184537.GA12413@labuser-Z97X-UD5H>
In-Reply-To: <20210603184537.GA12413@labuser-Z97X-UD5H>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsc: Remove redundant checks in
 DSC disable
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Navare, Manasi D <manasi.d.navare@intel.com>
> Sent: Friday, June 4, 2021 12:16 AM
> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> Cc: Manna, Animesh <animesh.manna@intel.com>; Nikula, Jani
> <jani.nikula@intel.com>; Saarinen, Jani <jani.saarinen@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsc: Remove redundant checks in
> DSC disable
> =

> On Thu, Jun 03, 2021 at 08:37:22AM -0700, Kulkarni, Vandita wrote:
> > > -----Original Message-----
> > > From: Manna, Animesh <animesh.manna@intel.com>
> > > Sent: Thursday, June 3, 2021 7:24 PM
> > > To: Kulkarni, Vandita <vandita.kulkarni@intel.com>; Nikula, Jani
> > > <jani.nikula@intel.com>; Saarinen, Jani <jani.saarinen@intel.com>;
> > > intel- gfx@lists.freedesktop.org
> > > Cc: Navare, Manasi D <manasi.d.navare@intel.com>
> > > Subject: RE: [Intel-gfx] [PATCH] drm/i915/dsc: Remove redundant
> > > checks in DSC disable
> > >
> > >
> > >
> > > > -----Original Message-----
> > > > From: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> > > > Sent: Thursday, June 3, 2021 4:55 PM
> > > > To: Nikula, Jani <jani.nikula@intel.com>; Saarinen, Jani
> > > > <jani.saarinen@intel.com>; intel-gfx@lists.freedesktop.org
> > > > Cc: Manna, Animesh <animesh.manna@intel.com>; Navare, Manasi D
> > > > <manasi.d.navare@intel.com>
> > > > Subject: RE: [Intel-gfx] [PATCH] drm/i915/dsc: Remove redundant
> > > > checks in DSC disable
> > > >
> > > > > -----Original Message-----
> > > > > From: Nikula, Jani <jani.nikula@intel.com>
> > > > > Sent: Thursday, June 3, 2021 3:11 PM
> > > > > To: Kulkarni, Vandita <vandita.kulkarni@intel.com>; Saarinen,
> > > > > Jani <jani.saarinen@intel.com>; intel-gfx@lists.freedesktop.org
> > > > > Cc: Manna, Animesh <animesh.manna@intel.com>; Navare, Manasi D
> > > > > <manasi.d.navare@intel.com>
> > > > > Subject: RE: [Intel-gfx] [PATCH] drm/i915/dsc: Remove redundant
> > > > > checks in DSC disable
> > > > >
> > > > > On Thu, 03 Jun 2021, "Kulkarni, Vandita"
> > > > > <vandita.kulkarni@intel.com>
> > > > > wrote:
> > > > > >> -----Original Message-----
> > > > > >> From: Saarinen, Jani <jani.saarinen@intel.com>
> > > > > >> Sent: Thursday, June 3, 2021 1:07 PM
> > > > > >> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>; intel-
> > > > > >> gfx@lists.freedesktop.org
> > > > > >> Cc: Nikula, Jani <jani.nikula@intel.com>
> > > > > >> Subject: RE: [Intel-gfx] [PATCH] drm/i915/dsc: Remove
> > > > > >> redundant checks in DSC disable
> > > > > >>
> > > > > >> Hi,
> > > > > >> > -----Original Message-----
> > > > > >> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org>
> > > > > >> > On Behalf Of Vandita Kulkarni
> > > > > >> > Sent: torstai 3. kes=E4kuuta 2021 9.54
> > > > > >> > To: intel-gfx@lists.freedesktop.org
> > > > > >> > Cc: Nikula, Jani <jani.nikula@intel.com>
> > > > > >> > Subject: [Intel-gfx] [PATCH] drm/i915/dsc: Remove redundant
> > > > > >> > checks in DSC disable
> > > > > >> >
> > > > > >> > There can be a chance that pre os has enabled DSC and
> > > > > >> > driver's compute config would not need dsc to be enabled,
> > > > > >> > in such case if we check on compute config's compression
> > > > > >> > state to disable, we might end up in state
> > > > > >> mismatch.
> > > > > >>
> > > > > >> I assume this fixes real gitlab issue too?
> > > > > > Okay, will add the tag
> > > > > > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3537
> > > > >
> > > > > See https://lore.kernel.org/r/87fsxzp9qx.fsf@intel.com
> > > > >
> > > > > The problem is with ->bigjoiner, not the entire statement.
> > > > Thanks for pointing this out, true that bigjoiner not being
> > > > enabled will stop dsc disabling.
> > > > The bigjoiner check was making the entire condition check
> unnecessary.
> > > >
> > > > Will update and refloat.
> > >
> > > Hi Jani/Vandita,
> > >
> > > For uncompressed bigjoiner case if we want to use the same function
> > > to clear the dsc_ctrl1 register we may need to remove both the
> > > condition check.
> > > As for uncompressed bigjoiner case, compression_enable Will be 0 and
> > > will block in clearing the dss_ctl1_reg.
> >
> > Yes, I was going through and found that bit 20 and 21 of dss_ctl1 are
> > being used for uncompressed joiner.
> > So when dsc is not enabled to avoid writing the register we could add
> > below code .
> >
> > if (dsc)
> > 	clear dss_ctl2
> > if ( bigjoiner | dsc)
> > 	clear dss_ctl1;
> > return;
> >
> > bigjoiner =3D 1 and dsc =3D 0  - uncompressed , I think there is no harm
> > in clearing dsc bits again bigjoiner =3D 1 and dsc =3D 1 - compressed -
> > uncompressed bits are already 0 bigjoiner =3D 0 and dsc=3D 1 - just dsc=
  -
> > clear dsc rest are 0s already bigjoiner =3D 0 and dsc =3D 0  do nothing,
> > return
> >
> > If I have missed any corner case, please let me know.
> >
> > Thanks,
> > Vandita
> =

> I think in the original code the condition was just reversed, instead it =
should
> be  :
> =

> if !(dsc_en || bigjoiner_en) {
> 	write 0 to dss ctl 1
> 	write 0 to dss ctl 2
> }
It should be the other way.
If neither of them are enabled then we have to just return.

Since I see that dss_ctl2 also gets set in case of big joiner I shall move =
that under
the main check of bigjoiner OR dsc and clear both the regs.

Thanks,
Vandita
> =

> So here basically it meets all the conditions you mentioned Vandita:
> =

> - only when both dsc and bigjoiner are 0, it will do nothing
> - In all other cases DSC + Bigjoiner : Clear all bits including uncompres=
sed bits
> which shd be 0 already
> - In dsc =3D 0, bigjoiner =3D 1 (uncompressed), it will clear both again =
which is okay
> since dsc bits are already 0
> =

> Does this make sense?
> =

> Regards
> Manasi
> =

> =

> > >
> > > Regards,
> > > Animesh
> > > >
> > > > Thanks,
> > > > Vandita
> > > > >
> > > > >
> > > > > BR,
> > > > > Jani.
> > > > >
> > > > > >
> > > > > > Thanks,
> > > > > > Vandita
> > > > > >>
> > > > > >> >
> > > > > >> > Signed-off-by: Vandita Kulkarni
> > > > > >> > <vandita.kulkarni@intel.com>
> > > > > >> > ---
> > > > > >> >  drivers/gpu/drm/i915/display/intel_vdsc.c | 4 ----
> > > > > >> >  1 file changed, 4 deletions(-)
> > > > > >> >
> > > > > >> > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > > > > >> > b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > > > > >> > index 19cd9531c115..b05a96011d93 100644
> > > > > >> > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > > > > >> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > > > > >> > @@ -1161,10 +1161,6 @@ void intel_dsc_disable(const struct
> > > > > >> > intel_crtc_state
> > > > > >> > *old_crtc_state)
> > > > > >> >  	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state-
> > > >uapi.crtc);
> > > > > >> >  	struct drm_i915_private *dev_priv =3D to_i915(crtc-
> > > >base.dev);
> > > > > >> >
> > > > > >> > -	if (!(old_crtc_state->dsc.compression_enable &&
> > > > > >> > -	      old_crtc_state->bigjoiner))
> > > > > >> > -		return;
> > > > > >> > -
> > > > > >> >  	intel_de_write(dev_priv, dss_ctl1_reg(old_crtc_state), 0);
> > > > > >> >  	intel_de_write(dev_priv, dss_ctl2_reg(old_crtc_state),
> > > > > >> > 0);  }
> > > > > >> > --
> > > > > >> > 2.21.0.5.gaeb582a
> > > > > >> >
> > > > > >> > _______________________________________________
> > > > > >> > Intel-gfx mailing list
> > > > > >> > Intel-gfx@lists.freedesktop.org
> > > > > >> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> > > > >
> > > > > --
> > > > > Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
