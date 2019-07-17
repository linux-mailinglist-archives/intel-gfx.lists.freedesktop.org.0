Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D796C24F
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 22:49:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 380C76E2A8;
	Wed, 17 Jul 2019 20:49:14 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00DBE6E2A8
 for <Intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 20:49:12 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 13:49:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,275,1559545200"; 
 d="p7s'?scan'208";a="319427074"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by orsmga004.jf.intel.com with ESMTP; 17 Jul 2019 13:49:12 -0700
Received: from fmsmsx155.amr.corp.intel.com (10.18.116.71) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 17 Jul 2019 13:49:02 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.248]) by
 FMSMSX155.amr.corp.intel.com ([169.254.5.80]) with mapi id 14.03.0439.000;
 Wed, 17 Jul 2019 13:49:01 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>,
 "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/6] drm/i915: Trust programmed MCR in
 read_subslice_reg
Thread-Index: AQHVPMpjRnHzqiVK50Cc4oqauVHXGabPvYUAgAAAWAA=
Date: Wed, 17 Jul 2019 20:49:00 +0000
Message-ID: <b20690a776d168804d2ab50a09beaa1d3313c7d0.camel@intel.com>
References: <20190717180624.20354-1-tvrtko.ursulin@linux.intel.com>
 <20190717180624.20354-3-tvrtko.ursulin@linux.intel.com>
 <8e76b8d172f91a475ead0dd98f5a2899251daac7.camel@intel.com>
In-Reply-To: <8e76b8d172f91a475ead0dd98f5a2899251daac7.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.54.134.159]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Trust programmed MCR in
 read_subslice_reg
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Content-Type: multipart/mixed; boundary="===============1289202876=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1289202876==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-1rpINQqrFaiHe560B/UF"

--=-1rpINQqrFaiHe560B/UF
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2019-07-17 at 20:47 +0000, Summers, Stuart wrote:
> On Wed, 2019-07-17 at 19:06 +0100, Tvrtko Ursulin wrote:
> > From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >=20
> > Instead of re-calculating the MCR selector in read_subslice_reg do
> > the
> > rwm on its existing value and restore it when done.
> >=20
> > This consolidates MCR programming to one place for cnl+, and avoids
> > re-calculating its default value on older platforms during
> > hangcheck.
> >=20
> > Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_engine_cs.c | 37 ++++++++-----------
> > --
> > --
> >  1 file changed, 12 insertions(+), 25 deletions(-)
> >=20
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > index 6f93caf7a5a1..cc4d1826173d 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > @@ -989,27 +989,17 @@ read_subslice_reg(struct intel_engine_cs
> > *engine, int slice, int subslice,
> >  {
> >  	struct drm_i915_private *i915 =3D engine->i915;
> >  	struct intel_uncore *uncore =3D engine->uncore;
> > -	u32 mcr_slice_subslice_mask;
> > -	u32 mcr_slice_subslice_select;
> > -	u32 default_mcr_s_ss_select;
> > -	u32 mcr;
> > -	u32 ret;
> > +	u32 mcr_mask, mcr_ss, mcr, old_mcr, val;
> >  	enum forcewake_domains fw_domains;
> > =20
> >  	if (INTEL_GEN(i915) >=3D 11) {
> > -		mcr_slice_subslice_mask =3D GEN11_MCR_SLICE_MASK |
> > -					  GEN11_MCR_SUBSLICE_MASK;
> > -		mcr_slice_subslice_select =3D GEN11_MCR_SLICE(slice) |
> > -					    GEN11_MCR_SUBSLICE(subslice
> > );
> > +		mcr_mask =3D GEN11_MCR_SLICE_MASK |
> > GEN11_MCR_SUBSLICE_MASK;
> > +		mcr_ss =3D GEN11_MCR_SLICE(slice) |
> > GEN11_MCR_SUBSLICE(subslice);
> >  	} else {
> > -		mcr_slice_subslice_mask =3D GEN8_MCR_SLICE_MASK |
> > -					  GEN8_MCR_SUBSLICE_MASK;
> > -		mcr_slice_subslice_select =3D GEN8_MCR_SLICE(slice) |
> > -					    GEN8_MCR_SUBSLICE(subslice)
> > ;
> > +		mcr_mask =3D GEN8_MCR_SLICE_MASK |
> > GEN8_MCR_SUBSLICE_MASK;
> > +		mcr_ss =3D GEN8_MCR_SLICE(slice) |
> > GEN8_MCR_SUBSLICE(subslice);
> >  	}
> > =20
> > -	default_mcr_s_ss_select =3D
> > intel_calculate_mcr_s_ss_select(i915);
>=20
> I'm only now reading one user of this function after this change.
> Does
> it make sense to move it to gt/intel_workarounds.c as a static
> function
> instead? Not critical here.

I see you already did this, what I get for reading these one at a
time... Please ignore the above comment.

Thanks,
Stuart

>=20
> Reviewed-by: Stuart Summers <stuart.summers@intel.com>
>=20
> > -
> >  	fw_domains =3D intel_uncore_forcewake_for_reg(uncore, reg,
> >  						    FW_REG_READ);
> >  	fw_domains |=3D intel_uncore_forcewake_for_reg(uncore,
> > @@ -1019,26 +1009,23 @@ read_subslice_reg(struct intel_engine_cs
> > *engine, int slice, int subslice,
> >  	spin_lock_irq(&uncore->lock);
> >  	intel_uncore_forcewake_get__locked(uncore, fw_domains);
> > =20
> > -	mcr =3D intel_uncore_read_fw(uncore, GEN8_MCR_SELECTOR);
> > -
> > -	WARN_ON_ONCE((mcr & mcr_slice_subslice_mask) !=3D
> > -		     default_mcr_s_ss_select);
> > +	old_mcr =3D mcr =3D intel_uncore_read_fw(uncore,
> > GEN8_MCR_SELECTOR);
> > =20
> > -	mcr &=3D ~mcr_slice_subslice_mask;
> > -	mcr |=3D mcr_slice_subslice_select;
> > +	mcr &=3D ~mcr_mask;
> > +	mcr |=3D mcr_ss;
> >  	intel_uncore_write_fw(uncore, GEN8_MCR_SELECTOR, mcr);
> > =20
> > -	ret =3D intel_uncore_read_fw(uncore, reg);
> > +	val =3D intel_uncore_read_fw(uncore, reg);
> > =20
> > -	mcr &=3D ~mcr_slice_subslice_mask;
> > -	mcr |=3D default_mcr_s_ss_select;
> > +	mcr &=3D ~mcr_mask;
> > +	mcr |=3D old_mcr & mcr_mask;
> > =20
> >  	intel_uncore_write_fw(uncore, GEN8_MCR_SELECTOR, mcr);
> > =20
> >  	intel_uncore_forcewake_put__locked(uncore, fw_domains);
> >  	spin_unlock_irq(&uncore->lock);
> > =20
> > -	return ret;
> > +	return val;
> >  }
> > =20
> >  /* NB: please notice the memset */
>=20
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--=-1rpINQqrFaiHe560B/UF
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

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
PwuHX1mRETAlwqXCZa6ba8eraUCltlCb/ZiEk9UFRVLjbLNPh9IYOi+sWkS6n5CovLKAqhMCAwEA
AaOCAjMwggIvMB0GA1UdDgQWBBSgeYqvLV4nBaCUzAXLr0TeMJYR5zAfBgNVHSMEGDAWgBTaQSOc
Wo9xr1eDPiDT42XbDMsL2zBlBgNVHR8EXjBcMFqgWKBWhlRodHRwOi8vd3d3LmludGVsLmNvbS9y
ZXBvc2l0b3J5L0NSTC9JbnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjA0
Qi5jcmwwgZ8GCCsGAQUFBwEBBIGSMIGPMCIGCCsGAQUFBzABhhZodHRwOi8vb2NzcC5pbnRlbC5j
b20vMGkGCCsGAQUFBzAChl1odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L2NlcnRpZmlj
YXRlcy9JbnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjA0Qi5jcnQwCwYD
VR0PBAQDAgeAMDwGCSsGAQQBgjcVBwQvMC0GJSsGAQQBgjcVCIbDjHWEmeVRg/2BKIWOn1OCkcAJ
Z4HevTmV8EMCAWQCAQkwHwYDVR0lBBgwFgYIKwYBBQUHAwQGCisGAQQBgjcKAwwwKQYJKwYBBAGC
NxUKBBwwGjAKBggrBgEFBQcDBDAMBgorBgEEAYI3CgMMME0GA1UdEQRGMESgKAYKKwYBBAGCNxQC
A6AaDBhzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb22BGHN0dWFydC5zdW1tZXJzQGludGVsLmNvbTAN
BgkqhkiG9w0BAQUFAAOCAQEAfyIC7rzSi6S8O+sdH384K8zyeMRJnl6vR7whl9PuEat+BkKpoxHn
jQ0SFyF/cyI4lH/n938Pm3/Ctq0Z5GTldX6hhxxcLAR0qbk6AQU0Cq2nYMlZfX4FUz3FRsazbjTW
1qObcvPRUAVScaa7SRGdensvbNV++pN1XqEdc++szxo58UzPaEgDlHIe2sEIVXnFkHnJv0ikRHG3
urcA1bdj7Rac7dJBeQOQMdZEGmrWWmmbJzvk3OmoK9tKN7wcErQSdlqyYOMLesPfa7YNyLFYEJQd
CC/N7V8U9yFZx8akWREb8lJYDl9KypirEsufleiew26CWrwcbmdlldDCFS6/HDGCAhcwggITAgEB
MIGQMHkxCzAJBgNVBAYTAlVTMQswCQYDVQQIEwJDQTEUMBIGA1UEBxMLU2FudGEgQ2xhcmExGjAY
BgNVBAoTEUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBCYXNpYyBJ
c3N1aW5nIENBIDRCAhMzAAB04Th3owY0UbEUAAAAAHThMAkGBSsOAwIaBQCgXTAYBgkqhkiG9w0B
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTA3MTcyMDQ4NTZaMCMGCSqGSIb3DQEJ
BDEWBBTcurCf3hQ98xTHhy35xSamXZYhJTANBgkqhkiG9w0BAQEFAASCAQC1AfSXpeYBngydZv3y
UN9Okf4HEOVZLHA6tG3owGXR7qOFZ+E4l6nSQtDpOpV0FL/69tp2gfAUYpH+LWJ0X/lEV7DMMzfh
qeKc36FBX1ye7sy482c0HfdeF1YIKa+xNES6SbHJR3BqAZizoWS7nt5mD+M9pVoI6fg0TtZ7R1rT
RQnFTeZfbliSQsc2VdJPe1gDWl/PLPsXtAGikzo9d9/l+H+ockhIa3S1bkps8iL2ilUi81vb2TgU
JHBoD3hNkNpjfbUYBvIvKDtj7yU0r3uNqoZ6W8FCzNjR30Tv4rskch2S5vk28C3VoTwr3b8S2xCo
Y7WT0eR9RrAqBB7MpSuIAAAAAAAA


--=-1rpINQqrFaiHe560B/UF--

--===============1289202876==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1289202876==--
