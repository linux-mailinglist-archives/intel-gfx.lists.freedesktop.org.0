Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E37F2581C
	for <lists+intel-gfx@lfdr.de>; Tue, 21 May 2019 21:18:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 586CA895F5;
	Tue, 21 May 2019 19:18:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12849895F5
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 May 2019 19:18:00 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 May 2019 12:17:59 -0700
X-ExtLoop1: 1
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga005.jf.intel.com with ESMTP; 21 May 2019 12:17:58 -0700
Received: from FMSMSX110.amr.corp.intel.com (10.18.116.10) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Tue, 21 May 2019 12:17:58 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.141]) by
 FMSMSX110.amr.corp.intel.com ([169.254.14.250]) with mapi id 14.03.0415.000;
 Tue, 21 May 2019 12:17:57 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915: Re-add enable_rc6 modparam
Thread-Index: AQHVCnS9ms3MYqGphkS+Vsw+YSLUYaZrS6qAgAAbZQCAAF1ZAIACOBCAgABGRYCAABmNAIAAAfuAgAGaQoCABnuvAA==
Date: Tue, 21 May 2019 19:17:57 +0000
Message-ID: <89c68007f7cc7568a98e73d090f1e35b908bee35.camel@intel.com>
References: <20190514164653.935-1-stuart.summers@intel.com>
 <155785283553.21839.2059003338244451933@skylake-alporthouse-com>
 <4387e52b0895d400d4e0f5c71e4c8e0a164add7c.camel@intel.com>
 <20190515000604.GC18687@intel.com> <87ftpeaff0.fsf@intel.com>
 <a13bccb377efbfe2f4ee9e414e4053610d315e3b.camel@intel.com>
 <87mujm76ej.fsf@intel.com>
 <66758be0515771b27172bcf0e1e6138ff2932bce.camel@intel.com>
 <20190517161739.GC6984@intel.com>
In-Reply-To: <20190517161739.GC6984@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.54.134.159]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Re-add enable_rc6 modparam
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
Content-Type: multipart/mixed; boundary="===============0538451242=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0538451242==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-jyKijYPsd3KgW+YbmL+T"

--=-jyKijYPsd3KgW+YbmL+T
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2019-05-17 at 09:17 -0700, Rodrigo Vivi wrote:
> On Thu, May 16, 2019 at 03:49:19PM +0000, Summers, Stuart wrote:
> > On Thu, 2019-05-16 at 18:42 +0300, Jani Nikula wrote:
> > > On Thu, 16 May 2019, "Summers, Stuart" <stuart.summers@intel.com>
> > > wrote:
> > > > On Thu, 2019-05-16 at 12:59 +0300, Jani Nikula wrote:
> > > > > On Tue, 14 May 2019, Rodrigo Vivi <rodrigo.vivi@intel.com>
> > > > > wrote:
> > > > > > One possibility that just came to my mind now is, what if
> > > > > > we
> > > > > > make
> > > > > > this only for platforms that are still protected by
> > > > > > is_alpha_support=3D1
> > > > > > (soon becoming require_force_probe=3D1)
> > > > >=20
> > > > > Please don't conflate alpha_support or force_probe with
> > > > > *anything*
> > > > > else.
> > > > >=20
> > > > > > But this is just one side of the coin... when product is
> > > > > > out
> > > > > > there
> > > > > > and we want the user to debug the issue to see if it is a
> > > > > > RC6
> > > > > > bug
> > > > > > we have no way to verify that. :/
> > > > >=20
> > > > > The problem is, if it works with rc6 disabled, it doesn't
> > > > > prove
> > > > > it's
> > > > > an
> > > > > rc6 bug either.
>=20
> Well, RC6 is the main GT power gating. The issue could be on may
> other
> individual power gating, but if by disabling RC6 the issue is gone
> it is a very good indication that it is a GT-PM bug somewhere.
>=20
> > > >=20
> > > > Good point. I'm not saying we should enforce a process of
> > > > disabling
> > > > RC6
> > > > for the platform if enable_rc6=3D0 results in success. I'm just
> > > > saying
> > > > having the option is useful from a debug perspective. We will
> > > > still
> > > > need to do the appropriate full analysis, including the normal
> > > > code
> > > > review process on a pre-case basis when debug involves this
> > > > parameter.
> > > > But the parameter itself is still useful.
> > >=20
> > > The trouble starts when users figure out that enable_rc6=3D0 works
> > > around
> > > a particular problem they have (likely by way of disabling
> > > runtime
> > > pm,
> > > not directly related to rc6). You could argue this is a good
> > > thing,
> > > but
> > > unfortunately we generally never hear from them again, and the
> > > root
> > > cause remains unsolved, with degraded user experience wrt power
> > > management.
>=20
> This is indeed bad. We should probably be clear that by disabling
> that
> they are draining their power and probably killing battery life.

I could add a DRM_ERROR or even a GEM_WARN_ON if this is set with a
description similar to what you have if that's interesting.

>=20
> >=20
> > So I understand the reasoning here, and agree that isn't an ideal
> > situation. I'd also like a way to debug more efficiently. What did
> > you
> > think about the suggestion from Tvrtko to only apply on
> > CONFIG_DRM_I915_DEBUG?
>=20
> if debug is on and parameter is set, right? Might be a good thing to
> avoid the abuse on the parameter.
>=20
> >=20
> > Or we could even wrap this entirely with a CONFIG_I915_DEBUG_PM -
> > although I'd like to suggest we still use the module parameter, we
> > could just use the config option to hide the modparam under normal
> > operation.
>=20
> I think this looks more like you are enabling more logs and
> not that you are disabling... unless the plan is to go with
> this flag plus logs and traces around PM. Than I think it is
> a good idea.

I'm not precluding people from adding more logs here - and there will
at least be some additional logs indicating we are bypassing the PM
flows. But at least for this patch, the intention would be to add new
"debug capability", which in this case, means the addition of the new
module parameter, enable_rc6.

Really this is just an extra deterent for users, since they'll need to
custom build the kernel to get this - not something enabled by default
in one of the distros, for instance.

Thanks,
Stuart

>=20
> Same rules needs to apply to  RC6, RPM, DC states,
> display power well management, psr, etc.
>=20
> Thanks,
> Rodrigo.
>=20
> >=20
> > Thanks,
> > Stuart
> >=20
> > >=20
> > > BR,
> > > Jani.
> > >=20
> > >=20
>=20
>=20
>=20
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>=20
>=20

--=-jyKijYPsd3KgW+YbmL+T
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
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTA1MjExOTE3NTRaMCMGCSqGSIb3DQEJ
BDEWBBQxa73IEaqrok6okTxsaOnvmkeYszANBgkqhkiG9w0BAQEFAASCAQAnJB5oJtd8oUYEoKPO
Fti4tJ5rFM4OwIpH9Mm/Pu6jshae1HIIhMj5HV//oNU9gEstRgGXg3zhkuIHMiVlPKMXzbb1mA0V
KHgsS89XOH3mwBEejpwykNFARYp18qc/y7HTcQKDmkDs83gkalNbPiE/ObtuMwrvILU21xWlkVFz
U51Gw6i/ujzAR/xntJIFh4y3Ja4leN/3AQfcGQdkTyQbTO8HgTZeXbrFv7nrT9yFbbT+6M7LXKWf
31Q73WJn2KjIvIysqkVHz1IjfE44cas2j3XLdCqczyGtQ9w9IATxkjgmOdjMt70pnLq6uQjivNLh
fbMp11ZTBux0tJDqGTfAAAAAAAAA


--=-jyKijYPsd3KgW+YbmL+T--

--===============0538451242==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0538451242==--
