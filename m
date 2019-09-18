Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF29B6D7C
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2019 22:25:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC11E72A7F;
	Wed, 18 Sep 2019 20:25:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9161D72A7F
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2019 20:25:04 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 13:25:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,522,1559545200"; 
 d="p7s'?scan'208";a="194168029"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by FMSMGA003.fm.intel.com with ESMTP; 18 Sep 2019 13:25:02 -0700
Received: from fmsmsx157.amr.corp.intel.com (10.18.116.73) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 18 Sep 2019 13:25:02 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.215]) by
 FMSMSX157.amr.corp.intel.com ([169.254.14.249]) with mapi id 14.03.0439.000;
 Wed, 18 Sep 2019 13:25:01 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>,
 "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 9/9] drm/i915: Expand subslice mask
Thread-Index: AQHVQW5EZwrKGW/60Uu8ZByyqk7QK6baM4eAgD7njQCABpTnAIAFaeIAgAA4BICADV7iAA==
Date: Wed, 18 Sep 2019 20:25:01 +0000
Message-ID: <1d50eb1ee44d2b3803c2bb27ed69642b782ce2d9.camel@intel.com>
References: <20190723154934.26967-1-stuart.summers@intel.com>
 <20190723154934.26967-10-stuart.summers@intel.com>
 <92ddc444-d45e-1ecc-7fc2-2bda4fae13ed@linux.intel.com>
 <b13ab867-0acd-fd87-173f-1cc3a3724a9b@linux.intel.com>
 <156779359430.2967.9072538110573051346@skylake-alporthouse-com>
 <db1adc9d8f84b15434fc92807778718bd48f95f4.camel@intel.com>
 <883c84ad-902c-9c58-1da4-159df65a71a3@linux.intel.com>
In-Reply-To: <883c84ad-902c-9c58-1da4-159df65a71a3@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.165.21.197]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915: Expand subslice mask
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
Content-Type: multipart/mixed; boundary="===============0306704518=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0306704518==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-gqYvABnhuPOXjtHXec4Y"

--=-gqYvABnhuPOXjtHXec4Y
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-09-10 at 09:13 +0100, Tvrtko Ursulin wrote:
> On 10/09/2019 05:53, Summers, Stuart wrote:
> > On Fri, 2019-09-06 at 19:13 +0100, Chris Wilson wrote:
> > > Quoting Tvrtko Ursulin (2019-09-02 14:42:44)
> > > >=20
> > > > On 24/07/2019 14:05, Tvrtko Ursulin wrote:
> > > > >=20
> > > > > On 23/07/2019 16:49, Stuart Summers wrote:
> > > > > > +u32 intel_sseu_get_subslices(const struct sseu_dev_info
> > > > > > *sseu,
> > > > > > u8 slice)
> > > > > > +{
> > > > > > +    int i, offset =3D slice * sseu->ss_stride;
> > > > > > +    u32 mask =3D 0;
> > > > > > +
> > > > > > +    if (slice >=3D sseu->max_slices) {
> > > > > > +        DRM_ERROR("%s: invalid slice %d, max: %d\n",
> > > > > > +              __func__, slice, sseu->max_slices);
> > > > > > +        return 0;
> > > > > > +    }
> > > > > > +
> > > > > > +    if (sseu->ss_stride > sizeof(mask)) {
> > > > > > +        DRM_ERROR("%s: invalid subslice stride %d, max:
> > > > > > %lu\n",
> > > > > > +              __func__, sseu->ss_stride, sizeof(mask));
> > > > > > +        return 0;
> > > > > > +    }
> > > > > > +
> > > > > > +    for (i =3D 0; i < sseu->ss_stride; i++)
> > > > > > +        mask |=3D (u32)sseu->subslice_mask[offset + i] <<
> > > > > > +            i * BITS_PER_BYTE;
> > > > > > +
> > > > > > +    return mask;
> > > > > > +}
> > > > >=20
> > > > > Why do you actually need these complications when the plan
> > > > > from
> > > > > the
> > > > > start was that the driver and user sseu representation
> > > > > structures
> > > > > can be
> > > > > different?
> > > > >=20
> > > > > I only gave it a quick look so I might be wrong, but why not
> > > > > just
> > > > > expand
> > > > > the driver representations of subslice mask up from u8?
> > > > > Userspace
> > > > > API
> > > > > should be able to cope with strides already.
> > > >=20
> > > > I never got an answer to this and the series was merged in the
> > > > meantime.
> >=20
> > Thanks for the note here Tvrtko and sorry for the missed response!
> > For
> > some reason I hadn't caught this comment earlier :(
>=20
> Ok no worries.
>=20
> > > >=20
> > > > Maybe not much harm but I still don't understand why all the
> > > > complications seemingly just to avoid bumping the *internal* ss
> > > > mask up
> > > > from u8. As long as the internal and abi sseu info struct are
> > > > well
> > > > separated and access point few and well controlled (I think
> > > > they
> > > > are)
> > > > then I don't see why the internal side had to be converted to
> > > > u8
> > > > and
> > > > strides. But maybe I am missing something.
> > >=20
> > > I looked at it and thought it was open-coding bitmap.h as well. I
> > > accepted it in good faith that it improved certain use cases and
> > > should
> > > even make tidying up the code without regressing those easier.
> >=20
> > The goal here is to make sure we have an infrastructure in place
> > that
> > always provides a consistent bit layout to userspace regardless of
> > underlying architecture endianness. Perhaps this could have been
> > made
> > more clear in the commit message here.
>=20
> My point was that internal and userspace representation do not have
> to=20
> match and that it probably would have been much simpler code if that=20
> principle remained. We already had a split between internal and ABI
> sseu=20
> structs and whereas the latter understands concept of stride
> already,=20
> the former could have just had it's subslice mask field expended from
> u8=20
> to u16, or whatever. But anyway, at this point I don't even remember
> all=20
> the details your series did, and given it's merged I won't be going=20
> re-reading it.

Thanks Tvrtko, I'll keep this in mind for future changes.

-Stuart

>=20
> Regards,
>=20
> Tvrtko

--=-gqYvABnhuPOXjtHXec4Y
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
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTA5MTgyMDI0NThaMCMGCSqGSIb3DQEJ
BDEWBBTCgdLxK9gyHF8WccP2VHOaYBND8jANBgkqhkiG9w0BAQEFAASCAQCWGcoRdQ0sEBnMf4YR
E188D9MKwCsdcK9qBSfSLJz5Z3FXJY9FUeFNPEUwY9E0sJ4Kd6bsonww7Uh4y3a6L75H+DpiAdkl
Qk5cc0vqwNWHGm1Icm/NRJ9DQx0YDTwTx8LdyPs9ZzEHm8I96T+mHRjupajHgJ8lzvOGCKUOb0QZ
BtnGFUtYwcvfCFHH6lKe96ELWRYrbudHhZnMHbYALO/Hpf4tSZ9dbSe99Ev7J/nBh/ujGeDnZunl
7cpG76rlTDH0A0GcPNEtmYY9BucGLFBU5YQW7Ij2hfSplNFpFw9XTjliuWxWbd4H/9+hg7xq1dKy
2QTda56/v7HAV49KKrJWAAAAAAAA


--=-gqYvABnhuPOXjtHXec4Y--

--===============0306704518==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0306704518==--
