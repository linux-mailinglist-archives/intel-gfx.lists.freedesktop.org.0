Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C21162E1C5
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 17:58:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5A826E0AE;
	Wed, 29 May 2019 15:58:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F88A6E0AE
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2019 15:58:55 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 08:58:55 -0700
X-ExtLoop1: 1
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by orsmga003.jf.intel.com with ESMTP; 29 May 2019 08:58:54 -0700
Received: from fmsmsx112.amr.corp.intel.com (10.18.116.6) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Wed, 29 May 2019 08:58:53 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.141]) by
 FMSMSX112.amr.corp.intel.com ([169.254.5.27]) with mapi id 14.03.0415.000;
 Wed, 29 May 2019 08:58:53 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [CI 5/5] drm/i915: Expand subslice mask
Thread-Index: AQHVEkcNd2J/zhkBWECWxN/0meOzhqaCrtqAgAAQv4A=
Date: Wed, 29 May 2019 15:58:52 +0000
Message-ID: <b09cf59b4035d8e5820533c0c8ac0a91c1eeccb9.camel@intel.com>
References: <20190524154022.13575-1-stuart.summers@intel.com>
 <20190524154022.13575-6-stuart.summers@intel.com>
 <87r28h489e.fsf@intel.com>
In-Reply-To: <87r28h489e.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.54.134.159]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [CI 5/5] drm/i915: Expand subslice mask
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
Content-Type: multipart/mixed; boundary="===============1070661411=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1070661411==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-S7Bwzuuddl50g1HOySRK"

--=-S7Bwzuuddl50g1HOySRK
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2019-05-29 at 17:58 +0300, Jani Nikula wrote:
> On Fri, 24 May 2019, Stuart Summers <stuart.summers@intel.com> wrote:
> > Currently, the subslice_mask runtime parameter is stored as an
> > array of subslices per slice. Expand the subslice mask array to
> > better match what is presented to userspace through the
> > I915_QUERY_TOPOLOGY_INFO ioctl. The index into this array is
> > then calculated:
> >   slice * subslice stride + subslice index / 8
> >=20
> > v2: fix spacing in set_sseu_info args
> >     use set_sseu_info to initialize sseu data when building
> >     device status in debugfs
> >     rename variables in intel_engine_types.h to avoid checkpatch
> >     warnings
> > v3: update headers in intel_sseu.h
> > v4: add const to some sseu_dev_info variables
> >     use sseu->eu_stride for EU stride calculations
> > v5: address review comments from Tvrtko and Daniele
> > v6: remove extra space in intel_sseu_get_subslices
> >     return the correct subslice enable in for_each_instdone
> >     add GEM_BUG_ON to ensure user doesn't pass invalid ss_mask size
> >     use printk formatted string for subslice mask
> > v7: remove string.h header and rebase
> >=20
> > Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> > Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> > Acked-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> > Reviewed-by: Daniele Ceraolo Spurio <
> > daniele.ceraolospurio@intel.com>
> > Signed-off-by: Stuart Summers <stuart.summers@intel.com>
>=20
> As this patch uncovered a latent issue in 1e40d4aea57b
> ("drm/i915/cnl:
> Implement WaProgramMgsrForCorrectSliceSpecificMmioReads") and got
> reverted, I'll take the opportunity to comment. I acknowledge the
> revert
> is shooting the messenger a bit, and this will smell like maintainer
> bikeshedding.

I have no problem reworking regressions my series caused :) I just
wasn't aware there was an issue when merging.

>=20
> Now, the first reaction looking at the commit was, it does not fare
> well
> on the "if a bisect landed on this commit, how happy would I be"
> scale.
>=20
> While it's mostly refactoring, it could be chopped up to several
> logical
> and obvious steps. For example, add intel_sseu_set_info() first with
> no
> other changes. Add ss_stride and eu_stride to struct sseu_dev_info
> separately. Add intel_sseu_get_subslices() but don't expand yet, make
> it
> just sseu->subslice_mask[s] first. And so on, you get the idea, a
> series
> of small non-functional changes followed by patches with functional
> changes that stand out. Indeed patches 1-4 did this fine.

This is good general feedback, thanks. I'll split this up when
reposting.

>=20
> It's easy on the reviewer, it's easy on whoever git blames years down
> the line. Trust me, we will.
>=20
> And it would be the commit adding intel_sseu_get_subslices(), or the
> one
> adding the GEM_BUG_ON()s into it, that would blow up 1e40d4aea57b
> ("drm/i915/cnl: Implement
> WaProgramMgsrForCorrectSliceSpecificMmioReads").
>=20
> One more note below.
>=20
> > @@ -461,7 +461,9 @@ static int i915_getparam_ioctl(struct
> > drm_device *dev, void *data,
> >  			return -ENODEV;
> >  		break;
> >  	case I915_PARAM_SUBSLICE_MASK:
> > -		value =3D sseu->subslice_mask[0];
> > +		/* Only copy bits from the first slice */
> > +		memcpy(&value, sseu->subslice_mask,
> > +		       min(sseu->ss_stride, (u8)sizeof(value)));
>=20
> Frankly I'd rather see this written in self-evident code without the
> comment.

Sure, I'll take a look.

Thanks for the comments!
Stuart

>=20
> BR,
> Jani.
>=20
>=20

--=-S7Bwzuuddl50g1HOySRK
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
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTA1MjkxNTU4NDlaMCMGCSqGSIb3DQEJ
BDEWBBRvMLAgFEoQ6Kwd64fNjMIFiulYQDANBgkqhkiG9w0BAQEFAASCAQAA+xQFt2b772xVJ1BJ
341+otRui5GxTQpQQTF4Kc3M8F3BmkqkKOkwzPUFHp1yQ6+dlBPwPHNyZQ9de0qXlMEo776ouvRG
dmlgGVH4iePTyVYY5OAkwzPntgVs6ilDmmAIN4OIZCcznW2FPe0Z6259PeWb6RXPiqqYCYF39gFl
B96zSs5Qy6JNce2agtKX7bdy75Dte/JJKJ6DVcUSKtrFioCCjRjupkENhMG8ta+OuZAcXJ85mKcw
OCRkkK2dhVJD5GvQOIHBhL1S8zm3HzjwaJNwT3ZR2ixalOVZcCegxsmPUuQXUaSC45h6ZrlfvSvH
eleCaK7q37hUtMaxVgNzAAAAAAAA


--=-S7Bwzuuddl50g1HOySRK--

--===============1070661411==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1070661411==--
