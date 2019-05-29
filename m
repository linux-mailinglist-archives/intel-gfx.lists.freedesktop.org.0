Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BCABB2E1D0
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 18:02:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC10C6E0F7;
	Wed, 29 May 2019 16:02:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4E686E0F7
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2019 16:02:09 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 09:02:09 -0700
X-ExtLoop1: 1
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga006.jf.intel.com with ESMTP; 29 May 2019 09:02:08 -0700
Received: from fmsmsx163.amr.corp.intel.com (10.18.125.72) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Wed, 29 May 2019 09:02:06 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.141]) by
 fmsmsx163.amr.corp.intel.com ([169.254.6.185]) with mapi id 14.03.0415.000;
 Wed, 29 May 2019 09:02:06 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "Saarinen, Jani" <jani.saarinen@intel.com>, "Ceraolo Spurio, Daniele"
 <daniele.ceraolospurio@intel.com>, "Navare, Manasi D"
 <manasi.d.navare@intel.com>
Thread-Topic: [Intel-gfx] [CI 0/5] Refactor to expand subslice mask
Thread-Index: AQHVEkcMYc4gl/rxUUCD8E3DuYA4aKaBWDkAgAAAJYCAAM1fAIAAfo2AgAAcNIA=
Date: Wed, 29 May 2019 16:02:05 +0000
Message-ID: <10d9f31c7272227bd14cec812c65de924ebd24f6.camel@intel.com>
References: <20190524154022.13575-1-stuart.summers@intel.com>
 <20190528183234.GA10989@intel.com>
 <ef092fee011695c74d03e0ea42701f03e240c9a3.camel@intel.com>
 <43D4F724E12AB6478FC1572B3FBE89D076707E67@IRSMSX106.ger.corp.intel.com>
 <f4363495-f489-58fc-72b0-dbc166a4b42c@intel.com>
In-Reply-To: <f4363495-f489-58fc-72b0-dbc166a4b42c@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.54.134.159]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [CI 0/5] Refactor to expand subslice mask
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
Content-Type: multipart/mixed; boundary="===============1981436804=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1981436804==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-XACDKFx/14gocSgPcnAR"

--=-XACDKFx/14gocSgPcnAR
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2019-05-29 at 07:21 -0700, Daniele Ceraolo Spurio wrote:
>=20
> On 5/28/19 11:48 PM, Saarinen, Jani wrote:
> > Hi,
> >=20
> > > -----Original Message-----
> > > From: Intel-gfx [mailto:intel-gfx-bounces@lists.freedesktop.org]
> > > On Behalf Of
> > > Summers, Stuart
> > > Sent: tiistai 28. toukokuuta 2019 21.33
> > > To: Navare, Manasi D <manasi.d.navare@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org
> > > Subject: Re: [Intel-gfx] [CI 0/5] Refactor to expand subslice
> > > mask
> > >=20
> > > On Tue, 2019-05-28 at 11:32 -0700, Manasi Navare wrote:
> > > > Pushed to dinq, thanks for the patches and the reviews!
> > >=20
> > > Thanks for the push Manasi and the reviews Daniele and others!
> >=20
> > This broke all the ICL systems because CI data was not looked that
> > they did not actually even boot at all.
> > All ICL's in BAT and whole ICL shards.
> >=20
>=20
> Can we change the CI reply for the case where there are extra
> missing=20
> machines compared to the reference run from SUCCESS to WARNING or=20
> something like that, so people have a clearer indication that
> something=20
> might have gone wrong?

I agree here. I'm sure with time and experience these types of things
will get easier to parse, but this was very unobvious to me when
posting. I have no problem reworking, but would really appreciate a
solution to this from the CI side to ensure we don't hit this type of
thing in the future.

Thanks,
Stuart

>=20
> Daniele
>=20
> >=20
> > >=20
> > > -Stuart
> > >=20
> > > >=20
> > > > Regards
> > > > Manasi
> > > >=20
> > > > On Fri, May 24, 2019 at 08:40:17AM -0700, Stuart Summers wrote:
> > > > > This patch series contains a few code clean-up patches,
> > > > > followed by
> > > > > a patch which changes the storage of the subslice mask to
> > > > > better
> > > > > match the userspace access through the
> > > > > I915_QUERY_TOPOLOGY_INFO
> > > > > ioctl. The index into the subslice_mask array is then
> > > > > calculated:
> > > > >    slice * subslice stride + subslice index / 8
> > > > >=20
> > > > > v2: fix i915_pm_sseu test failure
> > > > > v3: no changes to patches in the series, just resending to
> > > > > pick up
> > > > >      in CI correctly
> > > > > v4: rebase
> > > > > v5: fix header test
> > > > > v6: address review comments from Jari
> > > > >      address minor checkpatch warning in existing code
> > > > >      use eu_stride for EU div-by-8
> > > > > v7: another rebase
> > > > > v8: address review comments from Tvrtko and Daniele
> > > > > v9: address review comments from Daniele
> > > > > v10: add reviewed-by on last patch with minor suggested
> > > > > change,
> > > > >       rebase, and repost for CI
> > > > >=20
> > > > > Stuart Summers (5):
> > > > >    drm/i915: Use local variable for SSEU info in GETPARAM
> > > > > ioctl
> > > > >    drm/i915: Add macro for SSEU stride calculation
> > > > >    drm/i915: Move calculation of subslices per slice to new
> > > > > function
> > > > >    drm/i915: Refactor sseu helper functions
> > > > >    drm/i915: Expand subslice mask
> > > > >=20
> > > > >   drivers/gpu/drm/i915/gt/intel_engine_cs.c    |  24 ++-
> > > > >   drivers/gpu/drm/i915/gt/intel_engine_types.h |  30 ++--
> > > > >   drivers/gpu/drm/i915/gt/intel_hangcheck.c    |   3 +-
> > > > >   drivers/gpu/drm/i915/gt/intel_sseu.c         |  62 +++++++
> > > > >   drivers/gpu/drm/i915/gt/intel_sseu.h         |  35 +++-
> > > > >   drivers/gpu/drm/i915/gt/intel_workarounds.c  |   2 +-
> > > > >   drivers/gpu/drm/i915/i915_debugfs.c          |  46 ++---
> > > > >   drivers/gpu/drm/i915/i915_drv.c              |  15 +-
> > > > >   drivers/gpu/drm/i915/i915_gpu_error.c        |   5 +-
> > > > >   drivers/gpu/drm/i915/i915_query.c            |  15 +-
> > > > >   drivers/gpu/drm/i915/intel_device_info.c     | 176
> > > > > +++++++++++--
> > > > > ------
> > > > >   drivers/gpu/drm/i915/intel_device_info.h     |  47 -----
> > > > >   12 files changed, 280 insertions(+), 180 deletions(-)
> > > > >=20
> > > > > --
> > > > > 2.21.0.5.gaeb582a983
> > > > >=20
> > > > > _______________________________________________
> > > > > Intel-gfx mailing list
> > > > > Intel-gfx@lists.freedesktop.org
> > > > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> >=20
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> >=20

--=-XACDKFx/14gocSgPcnAR
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
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTA1MjkxNjAyMDFaMCMGCSqGSIb3DQEJ
BDEWBBTUAw18EcwyMEfuJolVxLM9kAZJizANBgkqhkiG9w0BAQEFAASCAQBqfeJyi6oz5jp35iDM
XAHu72CgmXMOxrWZceVaXUJjAHXAe7gyB0e+BoQzIwDB8dwrvW6w4JLrROY9DntArjpTps7egHAy
20rmRyq8bIXELWpjKGIDdOJkOSdv1zI/P9YDsPfQE4w9x5IEBkH5atW7qRo0IdzY+Gbn5lIikjY5
/1UGtdZzB/RkIXVrjq4I1dlkTgqc60PG1DCA+59hRU+eKS6V8oKYCETgTsob996d6NaMrRbOS2XL
eQqioq+UvgJjkpnBW2L24KqFnuw/n8NHaVIzQHguj2W7sjZMrt1qqzpEiZDKM0vRksRHaNeq1UXL
SpQ0Dkpm3RgO5/3WFlumAAAAAAAA


--=-XACDKFx/14gocSgPcnAR--

--===============1981436804==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1981436804==--
