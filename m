Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84FEC956A3
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 07:23:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E94DA6E5D3;
	Tue, 20 Aug 2019 05:23:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 233BF6E5D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 05:23:41 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Aug 2019 22:23:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,407,1559545200"; 
 d="p7s'?scan'208";a="179633581"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga007.fm.intel.com with ESMTP; 19 Aug 2019 22:23:40 -0700
Received: from fmsmsx115.amr.corp.intel.com (10.18.116.19) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 19 Aug 2019 22:23:36 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.251]) by
 fmsmsx115.amr.corp.intel.com ([169.254.4.219]) with mapi id 14.03.0439.000;
 Mon, 19 Aug 2019 22:23:36 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/uc: define GuC and HuC FWs for EHL
Thread-Index: AQHVVvXrZasaIGuyA0GS/4GyoEAilKcD5eaAgAAJhQCAAAbTgA==
Date: Tue, 20 Aug 2019 05:23:36 +0000
Message-ID: <edd7d9e9ab36f66a85127791b9e2a75e65c4148c.camel@intel.com>
References: <20190820012327.36443-1-daniele.ceraolospurio@intel.com>
 <ed03c2b4d93dd932589509e18871a8e7e28dd9ba.camel@intel.com>
 <42d0044b-50a6-4127-5355-3b9be732b3c0@intel.com>
In-Reply-To: <42d0044b-50a6-4127-5355-3b9be732b3c0@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.165.21.197]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uc: define GuC and HuC FWs for EHL
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
Content-Type: multipart/mixed; boundary="===============0792529279=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0792529279==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-N76hSepFeyymVokWrKMR"

--=-N76hSepFeyymVokWrKMR
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2019-08-19 at 21:59 -0700, Daniele Ceraolo Spurio wrote:
>=20
> On 8/19/2019 9:25 PM, Summers, Stuart wrote:
> > On Mon, 2019-08-19 at 18:23 -0700, Daniele Ceraolo Spurio wrote:
> > > First uc firmware release for EHL.
> > >=20
> > > Signed-off-by: Daniele Ceraolo Spurio <
> > > daniele.ceraolospurio@intel.com>
> > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > > Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> > > ---
> > >   drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 13 +++++++------
> > >   1 file changed, 7 insertions(+), 6 deletions(-)
> > >=20
> > > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> > > b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> > > index bd22bf11adad..296a82603be0 100644
> > > --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> > > +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> > > @@ -39,12 +39,13 @@ void intel_uc_fw_change_status(struct
> > > intel_uc_fw
> > > *uc_fw,
> > >    * Must be ordered based on platform + revid, from newer to
> > > older.
> > >    */
> > >   #define INTEL_UC_FIRMWARE_DEFS(fw_def, guc_def, huc_def) \
> > > -	fw_def(ICELAKE,    0, guc_def(icl, 33, 0, 0),
> > > huc_def(icl,  8,  4, 3238)) \
> > > -	fw_def(COFFEELAKE, 0, guc_def(kbl, 33, 0, 0), huc_def(kbl, 02,
> > > 00, 1810)) \
> > > -	fw_def(GEMINILAKE, 0, guc_def(glk, 33, 0, 0), huc_def(glk, 03,
> > > 01, 2893)) \
> > > -	fw_def(KABYLAKE,   0, guc_def(kbl, 33, 0, 0), huc_def(kbl, 02,
> > > 00, 1810)) \
> > > -	fw_def(BROXTON,    0, guc_def(bxt, 33, 0, 0), huc_def(bxt,
> > > 01,  8, 2893)) \
> > > -	fw_def(SKYLAKE,    0, guc_def(skl, 33, 0, 0), huc_def(skl, 01,
> > > 07, 1398))
> > > +	fw_def(ELKHARTLAKE, 0, guc_def(ehl, 33, 0, 4),
> > > huc_def(ehl,  9,  0,    0)) \
> >=20
> > Is there a reason you are bumping straight to 33.0.4 for EHL rather
> > than sticking with the existing firmware version? Or worded
> > differently, why don't we bump everything to 33.0.4 if we're adding
> > EHL
> > here to stay in sync between the platforms?
>=20
> 33.0.4 is the first release to include an EHL build, so I didn't
> have=20
> the choice to stick with 33.0.0 for it, otherwise I would have. As
> for=20
> why I didn't update all the other blobs, it was because AFAICS from
> the=20
> release notes there are no changes that we need at the moment,
> mostly=20
> because the only thing we do with GuC is authenticating HuC and that=20
> flow is pretty static. All the 33.0.* releases are compatible at the=20
> interface level so I opted to avoid pushing several more binaries
> just=20
> to keep the numbers the same with no real benefit.
>=20
> As a general point, I think we should expect that the patch number
> might=20
> vary across platforms as we get platform-specific features/fixes,
> but=20
> major and minor, which indicate the interface version, will be in
> sync.

Ok, makes sense and I agree with your reasoning here. You might want
another review from someone with more experience on EHL. Otherwise the
changes look good:
Reviewed-by: Stuart Summers <stuart.summers@intel.com>

>=20
> Daniele
>=20
> > Thanks,
> > Stuart
> >=20
> > > +	fw_def(ICELAKE,     0, guc_def(icl, 33, 0, 0),
> > > huc_def(icl,  8,  4, 3238)) \
> > > +	fw_def(COFFEELAKE,  0, guc_def(kbl, 33, 0, 0), huc_def(kbl, 02,
> > > 00, 1810)) \
> > > +	fw_def(GEMINILAKE,  0, guc_def(glk, 33, 0, 0), huc_def(glk, 03,
> > > 01, 2893)) \
> > > +	fw_def(KABYLAKE,    0, guc_def(kbl, 33, 0, 0), huc_def(kbl, 02,
> > > 00, 1810)) \
> > > +	fw_def(BROXTON,     0, guc_def(bxt, 33, 0, 0), huc_def(bxt,
> > > 01,  8, 2893)) \
> > > +	fw_def(SKYLAKE,     0, guc_def(skl, 33, 0, 0), huc_def(skl, 01,
> > > 07, 1398))
> > >  =20
> > >   #define __MAKE_UC_FW_PATH(prefix_, name_, separator_, major_,
> > > minor_, patch_) \
> > >   	"i915/" \
>=20
>=20

--=-N76hSepFeyymVokWrKMR
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
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTA4MjAwNTIzMzNaMCMGCSqGSIb3DQEJ
BDEWBBSUJ0Ce0y4mFzfXzYEgSsVhEe550TANBgkqhkiG9w0BAQEFAASCAQA4hWPemM5hL1Oqrjn/
eKTa3PbfQi7o2xnc2hqbA1o5R8b85SMVFrAHxTsxdZ+z9i1QoSU1UzR3YkPvZFyAr8uAnW4I/SKj
eGBdvl3AsabetLjI14o8gC0q8flH2+uQwBaf5sRl1s8OSpPQZZUn4782vesZHJ6o1xSGTOBkGRZt
WywxPl7+yISS22ATTH/wLexkdOvXmF8J35u+fQCfsHFauCj1wkv3d+ubG2pfIAyY8gnEa/5RjfYv
jruizDTI714lJtessMqZ98bJgpqVb030m5iYBmlCTC9RO6L3THGXgV2HGiyKJfEgG4UodkQAJUof
+1r2BQwsFmZbcYhUA+TmAAAAAAAA


--=-N76hSepFeyymVokWrKMR--

--===============0792529279==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0792529279==--
