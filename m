Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3602D167
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 00:17:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8635E89C94;
	Tue, 28 May 2019 22:17:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E04489C28
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 22:17:08 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 May 2019 15:17:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,524,1549958400"; 
 d="p7s'?scan'208";a="179360701"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga002.fm.intel.com with ESMTP; 28 May 2019 15:17:07 -0700
Received: from fmsmsx161.amr.corp.intel.com (10.18.125.9) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Tue, 28 May 2019 15:17:07 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.141]) by
 FMSMSX161.amr.corp.intel.com ([169.254.12.70]) with mapi id 14.03.0415.000;
 Tue, 28 May 2019 15:17:07 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Thread-Topic: [PATCH] drm/i915: Fix off-by-one in looking up icl sseu slice
Thread-Index: AQHVFZDrVouU+s8EJ0iKozqSmzEe06aBdqeAgAAV3QCAAAB+AIAAA1yA
Date: Tue, 28 May 2019 22:17:06 +0000
Message-ID: <8a4fc73e6fd84db5c43b39718b70f1fa1984e387.camel@intel.com>
References: <20190528200655.11605-1-chris@chris-wilson.co.uk>
 <841d0d2765421947fbbeeefc523fbd3cbb516da2.camel@intel.com>
 <155908099612.1844.1298420303089312150@skylake-alporthouse-com>
 <155908110296.1844.13801598652167240402@skylake-alporthouse-com>
In-Reply-To: <155908110296.1844.13801598652167240402@skylake-alporthouse-com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.54.134.159]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix off-by-one in looking up icl
 sseu slice
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
Content-Type: multipart/mixed; boundary="===============1729430204=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1729430204==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-Ky8x+h5mOD0qIzqxgP3J"

--=-Ky8x+h5mOD0qIzqxgP3J
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-05-28 at 23:05 +0100, Chris Wilson wrote:
> Quoting Chris Wilson (2019-05-28 23:03:16)
> > Quoting Summers, Stuart (2019-05-28 21:45:05)
> > > On Tue, 2019-05-28 at 21:06 +0100, Chris Wilson wrote:
> > > > We want the index corresponding to the set bit but fls()
> > > > returns the
> > > > 1-index value.
> > > >=20
> > > > Otherwise, we trigger the sanitycheck
> > > >       intel_sseu_get_subslices:46 GEM_BUG_ON(slice >=3D sseu-
> > > > > max_slices)
> > > >=20
> > > > when we look up the invalid slice.
> > > >=20
> > > > The only remaining question then is just how reliable the rest
> > > > of
> > > > intel_calculate_mcr_s_ss_select() is -- how many more of those
> > > > fls()
> > > > are
> > > > also off-by-one.
> > > >=20
> > > > Fixes: 1ac159e23c2c ("drm/i915: Expand subslice mask")
> > > > Fixes: 1e40d4aea57b ("drm/i915/cnl: Implement
> > > > WaProgramMgsrForCorrectSliceSpecificMmioReads")
> > > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > > Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> > > > Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> > > > Cc: Stuart Summers <stuart.summers@intel.com>
> > > > Cc: Manasi Navare <manasi.d.navare@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >=20
> > > > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > index fbc853085809..485cd1c8ecc4 100644
> > > > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c(enabled_mask
> > > > & disabled_mask) !=3D enabled_mask
> > > > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > @@ -781,7 +781,7 @@ wa_init_mcr(struct drm_i915_private *i915,
> > > > struct
> > > > i915_wa_list *wal)
> > > >                * read FUSE3 for enabled L3 Bank IDs, if L3 Bank
> > > > matches
> > > >                * enabled subslice, no need to redirect MCR
> > > > packet
> > > >                */
> > > > -             u32 slice =3D fls(sseu->slice_mask);
> > > > +             u32 slice =3D __fls(sseu->slice_mask);
> > >=20
> > > The condition around this (is_power_of_2) makes sure we meet the
> > > case
> > > where the slice_mask is uninitialized. This is going to work
> > > here, but
> > > might not work in all other places. If we propagate this change
> > > to the
> > > other places we call fls(slice_mask), which I'd recommend, we'll
> > > want
> > > to make sure we check for that.
> > >=20
> > > Once we show results in CI:
> > > Reviewed-by: Stuart Summers <stuart.summers@intel.com>
> >=20
> > This brought icl back from the dead. The other fls can be fixed up
> > at
> > leisure! Ta,
>=20
> Only for it to die at
> <4>[   12.083315] WARN_ON((enabled_mask & disabled_mask) !=3D
> enabled_mask)
> <4>[   12.083370] WARNING: CPU: 7 PID: 387 at
> drivers/gpu/drm/i915/gt/intel_workarounds.c:797
> wa_init_mcr+0xfa/0x110 [i915]

I'll also take a closer look here. I see the warning in the CI logs
too. I'm not sure why this didn't come up in my local testing.

-Stuart

>=20
> Onwards,
> -Chris

--=-Ky8x+h5mOD0qIzqxgP3J
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIKcTCCBOsw
ggPToAMCAQICEDabxALowUBS+21KC0JI8fcwDQYJKoZIhvcNAQEFBQAwbzELMAkGA1UEBhMCU0Ux
FDASBgNVBAoTC0FkZFRydXN0IEFCMSYwJAYDVQQLEx1BZGRUcnVzdCBFeHRlcm5hbCBUVFAgTmV0
d29yazEiMCAGA1UEAxMZQWRkVHJ1c3QgRXh0ZXJuYWwgQ0EgUm9vdDAeFw0xMzEyMTEwMDAwMDBa
Fw0yMDA1MzAxMDQ4MzhaMHkxCzAJBgNVBAYTAlVTMQswCQYDVQQIEwJDQTEUMBIGA1UEBxMLU2Fu
dGEgQ2xhcmExGjAYBgNVBAoTEUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRl
cm5hbCBCYXNpYyBJc3N1aW5nIENBIDRCMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA
yzuW/y/g0bznz8BD48M94luFzqHaqY9yGN9H/W0J7hOVBpl0rTQJ6kZ7z7hyDb9kf2UW4ZU25alC
i+q5m6NwHg+z9pcN7bQ84SSBueaYF7cXlAg7z3XyZbzSEYP7raeuWRf5fYvYzq8/uI7VNR8o/43w
PtDP10YDdO/0J5xrHxnC/9/aU+wTFSVsPqxsd7C58mnu7G4VRJ0n9PG4SfmYNC0h/5fLWuOWhxAv
6MuiK7MmvTPHLMclULgJqVSqG1MbBs0FbzoRHne4Cx0w6rtzPTrzo+bTRqhruaU18lQkzBk6OnyJ
UthtaDQIlfyGy2IlZ5F6QEyjItbdKcHHdjBX8wIDAQABo4IBdzCCAXMwHwYDVR0jBBgwFoAUrb2Y
ejS0Jvf6xCZU7wO94CTLVBowHQYDVR0OBBYEFNpBI5xaj3GvV4M+INPjZdsMywvbMA4GA1UdDwEB
/wQEAwIBhjASBgNVHRMBAf8ECDAGAQH/AgEAMDYGA1UdJQQvMC0GCCsGAQUFBwMEBgorBgEEAYI3
CgMEBgorBgEEAYI3CgMMBgkrBgEEAYI3FQUwFwYDVR0gBBAwDjAMBgoqhkiG+E0BBQFpMEkGA1Ud
HwRCMEAwPqA8oDqGOGh0dHA6Ly9jcmwudHJ1c3QtcHJvdmlkZXIuY29tL0FkZFRydXN0RXh0ZXJu
YWxDQVJvb3QuY3JsMDoGCCsGAQUFBwEBBC4wLDAqBggrBgEFBQcwAYYeaHR0cDovL29jc3AudHJ1
c3QtcHJvdmlkZXIuY29tMDUGA1UdHgQuMCygKjALgQlpbnRlbC5jb20wG6AZBgorBgEEAYI3FAID
oAsMCWludGVsLmNvbTANBgkqhkiG9w0BAQUFAAOCAQEAp9XGgH85hk/3IuN8F4nrFd24MAoau7Uq
M/of09XtyYg2dV0TIPqtxPZw4813r78WwsGIbvtO8VQ18dNktIxaq6+ym2zebqDh0z6Bvo63jKE/
HMj8oNV3ovnuo+7rGpCppcda4iVBG2CetB3WXbUVr82EzECN+wxmC4H9Rup+gn+t+qeBTaXulQfV
TYOvZ0eZPO+DyC2pVv5q5+xHljyUsVqpzsw89utuO8ZYaMsQGBRuFGOncRLEOhCtehy5B5aCI571
i4dDAv9LPODrEzm3PBfrNhlp8C0skak15VXWFzNuHd00AsxXxWSUT4TG8RiAH61Ua5GXsP1BIZwl
4WjK8DCCBX4wggRmoAMCAQICEzMAAHThOHejBjRRsRQAAAAAdOEwDQYJKoZIhvcNAQEFBQAweTEL
MAkGA1UEBhMCVVMxCzAJBgNVBAgTAkNBMRQwEgYDVQQHEwtTYW50YSBDbGFyYTEaMBgGA1UEChMR
SW50ZWwgQ29ycG9yYXRpb24xKzApBgNVBAMTIkludGVsIEV4dGVybmFsIEJhc2ljIElzc3Vpbmcg
Q0EgNEIwHhcNMTkwMTIzMTcxMTA0WhcNMjAwMTE4MTcxMTA0WjBDMRgwFgYDVQQDEw9TdW1tZXJz
LCBTdHVhcnQxJzAlBgkqhkiG9w0BCQEWGHN0dWFydC5zdW1tZXJzQGludGVsLmNvbTCCASIwDQYJ
KoZIhvcNAQEBBQADggEPADCCAQoCggEBAL7LpY79h4eyLdxekwAblnyPAHSCaXvVTUmnPKxWXs9g
VCcf7gjGg8qg/HLCwvgGKGqtVkn2EaCKd85rqklaTp07JciV6a77qodO0yOgyz96hRVuSFAIP0UQ
TXP+PuVIfYuqNSSgh2x2HzJy2DzpG12ZMldy6r2zAa6ypWevjFp5+3/mscAVNAmSHnyj838uukd/
YwrFtEG2j5l/EoijzGMRFUD0tS5eD2y0WmRfmc4xkv1Qjr8AN3ogZr4arGr+rF2F4aakLmoDUCZk
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
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTA1MjgyMjE3MDNaMCMGCSqGSIb3DQEJ
BDEWBBRR0j1swq7ge23SVg4C4Oj0oQ4MSDANBgkqhkiG9w0BAQEFAASCAQAy29iuXeIXCY2rGagQ
RAkATXP4IEBeVUdPqVQJopfUSXuLzG3+ObdYrKEI0vGcx704BksAjfi2rD3j+yPnNmgklULZ9R1t
RpsgIEYQkZHV6HoO/aoLCq+uASXN+cflaWx2ZPyeefmXKbsRSBjGtUO3nSwYL3KnLJ6HsJjWW7Aj
OFOTz6EpyQ2nQk5yQAB0ZQ+Jywyu9sCQyGgFHgp+wwFvsuslKJmouaYFSfmPDdQSt5SkVmjynI4j
cv3noPvszKO1Hl1+4TYJ0kZ29g8p1Z0eXpDsZ733fiG6ET6bev+ycUFqmkNc0MOE5ro8O6cRJ+UA
leVNe7usw4rSCqA4P0q0AAAAAAAA


--=-Ky8x+h5mOD0qIzqxgP3J--

--===============1729430204==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1729430204==--
