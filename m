Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59669BE85D
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 00:35:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5F1E6F401;
	Wed, 25 Sep 2019 22:35:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB5EE6F401
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 22:35:30 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 15:35:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,549,1559545200"; 
 d="p7s'?scan'208";a="203701632"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga001.fm.intel.com with ESMTP; 25 Sep 2019 15:35:29 -0700
Received: from fmsmsx103.amr.corp.intel.com ([169.254.2.82]) by
 FMSMSX105.amr.corp.intel.com ([169.254.4.69]) with mapi id 14.03.0439.000;
 Wed, 25 Sep 2019 15:35:28 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "Ausmus, James" <james.ausmus@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/tgl: Add memory type decoding
 for bandwidth checking
Thread-Index: AQHVcydefAxSPGJN/UGYuZR8GXMsUqc863UAgAARSQCAAHVYgA==
Date: Wed, 25 Sep 2019 22:35:28 +0000
Message-ID: <ea5a9907e73060039733f2002bb1cad1d5016b41.camel@intel.com>
References: <20190924222829.13142-1-james.ausmus@intel.com>
 <2ce90a6587d86e75898e27d497ac8bb08e2dadb4.camel@intel.com>
 <20190925153525.GB31032@jausmus-gentoo-dev6.jf.intel.com>
In-Reply-To: <20190925153525.GB31032@jausmus-gentoo-dev6.jf.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.165.21.197]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/tgl: Add memory type decoding
 for bandwidth checking
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============0109920770=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0109920770==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-spEYhohFMbeABQK+lIU4"

--=-spEYhohFMbeABQK+lIU4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2019-09-25 at 08:35 -0700, James Ausmus wrote:
> On Wed, Sep 25, 2019 at 07:33:38AM -0700, Summers, Stuart wrote:
> > On Tue, 2019-09-24 at 15:28 -0700, James Ausmus wrote:
> > > The memory type values have changed in TGL, so we need to
> > > translate
> > > them
> > > differently than ICL. While we're moving it, fix up the ICL
> > > translation
> > > for LPDDR4.
> > >=20
> > > BSpec: 53998
> > >=20
> > > v2: Fix up ICL LPDDR4 entry (Ville); Drop unused values from TGL
> > > (Ville)
> > >=20
> > > Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> > > Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > Signed-off-by: James Ausmus <james.ausmus@intel.com>
> > > Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_bw.c | 55 ++++++++++++++++++-
> > > ----
> > > --
> > >  1 file changed, 39 insertions(+), 16 deletions(-)
> > >=20
> > > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c
> > > b/drivers/gpu/drm/i915/display/intel_bw.c
> > > index cd58e47ab7b2..22e83f857de8 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_bw.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> > > @@ -35,22 +35,45 @@ static int
> > > icl_pcode_read_mem_global_info(struct
> > > drm_i915_private *dev_priv,
> > >  	if (ret)
> > >  		return ret;
> > > =20
> > > -	switch (val & 0xf) {
> > > -	case 0:
> > > -		qi->dram_type =3D INTEL_DRAM_DDR4;
> > > -		break;
> > > -	case 1:
> > > -		qi->dram_type =3D INTEL_DRAM_DDR3;
> > > -		break;
> > > -	case 2:
> > > -		qi->dram_type =3D INTEL_DRAM_LPDDR3;
> > > -		break;
> > > -	case 3:
> > > -		qi->dram_type =3D INTEL_DRAM_LPDDR3;
> > > -		break;
> > > -	default:
> > > -		MISSING_CASE(val & 0xf);
> > > -		break;
> > > +	if (IS_GEN(dev_priv, 12)) {
> > > +		switch (val & 0xf) {
> > > +		case 0:
> > > +			qi->dram_type =3D INTEL_DRAM_DDR4;
> > > +			break;
> > > +		case 3:
> > > +			qi->dram_type =3D INTEL_DRAM_LPDDR4;
> > > +			break;
> > > +		case 4:
> > > +			qi->dram_type =3D INTEL_DRAM_DDR3;
> > > +			break;
> > > +		case 5:
> > > +			qi->dram_type =3D INTEL_DRAM_LPDDR3;
> > > +			break;
> > > +		default:
> > > +			MISSING_CASE(val & 0xf);
> > > +			break;
> > > +		}
> > > +	} else if (IS_GEN(dev_priv, 11)) {
> > > +		switch (val & 0xf) {
> > > +		case 0:
> > > +			qi->dram_type =3D INTEL_DRAM_DDR4;
> > > +			break;
> > > +		case 1:
> > > +			qi->dram_type =3D INTEL_DRAM_DDR3;
> > > +			break;
> > > +		case 2:
> > > +			qi->dram_type =3D INTEL_DRAM_LPDDR3;
> > > +			break;
> > > +		case 3:
> > > +			qi->dram_type =3D INTEL_DRAM_LPDDR4;
> > > +			break;
> > > +		default:
> > > +			MISSING_CASE(val & 0xf);
> > > +			break;
> >=20
> > James, is there a reason we can't just combine these two conditions
> > into one switch statement? At initial glance it looks like the
> > cases
> > are the same for the common ones and the only real difference is
> > the
> > supported bits.
>=20
> The info I got from the HW guys indicates that the same values are
> very
> likely to have different meanings for different gens, and likely to
> even
> have different values for variants of a single gen, so as more
> platforms
> are added in the future, a single switch would get very messy. Even
> now,
> I think it would be fairly ugly, as it would look something like:
>=20
> switch (val) {
> 	case 0:
> 		DDR4;
> 	case 1:
> 		if (GEN =3D=3D 11)
> 			DDR3;
> 		else
> 			MISSING_CASE(val);
> 	case 2:
> 		if (GEN =3D=3D 11)
> 			LPDDR3;
> 		else
> 			MISSING_CASE(val);
> 	case 3:
> 		LPDDR4;
> 	case 4:
> 		if (GEN =3D=3D 12)
> 			DDR3;
> 		else
> 			MISSING_CASE(val);
> 	case 5:
> 		if (GEN =3D=3D 12)
> 			LPDDR3;
> 		else
> 			MISSING_CASE(val);
> }
>=20
> And then start adding special cases for variants within a gen, as
> well
> as additional gen checks, and I think it starts looking fairly
> spaghetti. :)

I understand and thanks for the explanation. Your reasoning makes sense
to me.

I checked bspec and confirmed the TGL entries look right. We also spoke
in IRC and I agree with the changes you're making for ICL. With that:

Reviewed-by: Stuart Summers <stuart.summers@intel.com>

>=20
> -James
>=20
> >=20
> > Thanks,
> > Stuart
> >=20
> > > +		}
> > > +	} else {
> > > +		MISSING_CASE(INTEL_GEN(dev_priv));
> > > +		qi->dram_type =3D INTEL_DRAM_LPDDR3; /* Conservative
> > > default */
> > >  	}
> > > =20
> > >  	qi->num_channels =3D (val & 0xf0) >> 4;
>=20
>=20

--=-spEYhohFMbeABQK+lIU4
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
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTA5MjUyMjM1MjVaMCMGCSqGSIb3DQEJ
BDEWBBTmXVQ7sUP+u9+amyZ1SnFXobDQFjANBgkqhkiG9w0BAQEFAASCAQBB/1MCzdBDKKdmwLw5
lVQXRPmI6BMpOG5ExOtEypvmwUwVSpiQp/KPEdrr2HVorckwfrNpAOqEwPL9P2S2S0XXf3sq4Pqz
4GDSzIMNbipgKjvqA9eSc6fsPXnopqriK1jyDE8CjYmSRUQl/UlKHuo6oUaSJzwwJlWpuu77ZOjE
BqzT9PvDSM1RGbDYuBKHpn/SnGC3/DQpYkGYgCXAKcKwYxRjTXowquMFDGezbzirSHCajlgY2utz
CeeXN2x9FliZOCqj64/k9aYkiWG6BaWuVXcFgV/3AJ/P3ItJM/czIoxoprPPGg8gfCTlzR/Ro2B9
but9kO58alvQyxrtXyOsAAAAAAAA


--=-spEYhohFMbeABQK+lIU4--

--===============0109920770==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0109920770==--
