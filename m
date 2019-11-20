Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2E9104646
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 23:05:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 387986EA4C;
	Wed, 20 Nov 2019 22:05:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3C796EA4C;
 Wed, 20 Nov 2019 22:05:01 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 14:05:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,223,1571727600"; 
 d="p7s'?scan'208";a="357586025"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga004.jf.intel.com with ESMTP; 20 Nov 2019 14:05:01 -0800
Received: from fmsmsx115.amr.corp.intel.com (10.18.116.19) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 20 Nov 2019 14:05:00 -0800
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.77]) by
 fmsmsx115.amr.corp.intel.com ([169.254.4.117]) with mapi id 14.03.0439.000;
 Wed, 20 Nov 2019 14:05:00 -0800
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "daniel@ffwll.ch" <daniel@ffwll.ch>, "joonas.lahtinen@linux.intel.com"
 <joonas.lahtinen@linux.intel.com>, "janusz.krzysztofik@linux.intel.com"
 <janusz.krzysztofik@linux.intel.com>
Thread-Topic: [igt-dev] [Intel-gfx] [PATCH i-g-t v2] tests/prime_vgem: Skip
 basic-read/write subtests if no mappable GGTT
Thread-Index: AQHVn8HmadUL0OvPbUaPrx/xeY9hw6eU0p+AgABRDwA=
Date: Wed, 20 Nov 2019 22:04:59 +0000
Message-ID: <7ddbfeca6efa339009b889df4dc721b0a5da7b45.camel@intel.com>
References: <20191120164429.8441-1-janusz.krzysztofik@linux.intel.com>
 <7a767d5d0cf044fa26759e7d0bd1f1fae4e66a0f.camel@intel.com>
In-Reply-To: <7a767d5d0cf044fa26759e7d0bd1f1fae4e66a0f.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.165.21.197]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v2] tests/prime_vgem: Skip
 basic-read/write subtests if no mappable GGTT
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============1274276988=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1274276988==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-FXmUMjGFhkUvM8qvoR0U"

--=-FXmUMjGFhkUvM8qvoR0U
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2019-11-20 at 17:14 +0000, Summers, Stuart wrote:
> On Wed, 2019-11-20 at 17:44 +0100, Janusz Krzysztofik wrote:
> > As we've agreed that using I915_GEM_PREAD/PWRITE IOCTLs on dma-buf
> > objects doesn't make much sense, we are not going to extend their
> > handlers in the i915 driver with new processing paths required for
> > them
> > to work correctly with dma-buf objects on future hardware with no
> > mappable aperture.  When running on that kind of hardware, just
> > skip
> > subtests which use those IOCTLs.
>=20
> How is this handled for other dma-buf capable devices? Is there no
> opportunity for a working solution in i915 here?
>=20
> Also, is this a permanent limitation? Or just a workaround based on
> our
> current implementation?

Thinking a bit more about this, I think my main concern here is around
the commit message. You are implying there is no chance we can change
these DRM interfaces to work with dma-buf by referencing an I915 IOCTL.

I don't personally have any issue adding the skip below, and honestly
that seems like a good safeguard. But can you update the commit message
to indicate that this is simply that, a safeguard, and not because we
have no option to make this work from the kernel side?

Of course please correct me if I'm mistaken here.

Thanks,
Stuart

>=20
> Thanks,
> Stuart
>=20
> >=20
> > Signed-off-by: Janusz Krzysztofik <
> > janusz.krzysztofik@linux.intel.com
> > >=20
> >=20
> > Cc: Daniel Vetter <daniel@ffwll.ch>
> > Cc: Joonas Lahtinen <joonas.lahtinen@intel.com>
> > ---
> >  lib/ioctl_wrappers.c | 2 +-
> >  lib/ioctl_wrappers.h | 1 +
> >  tests/prime_vgem.c   | 6 ++++++
> >  3 files changed, 8 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/lib/ioctl_wrappers.c b/lib/ioctl_wrappers.c
> > index 628f8b83..78b92bd2 100644
> > --- a/lib/ioctl_wrappers.c
> > +++ b/lib/ioctl_wrappers.c
> > @@ -356,7 +356,7 @@ void gem_write(int fd, uint32_t handle,
> > uint64_t
> > offset, const void *buf, uint64
> >  	igt_assert_eq(__gem_write(fd, handle, offset, buf, length), 0);
> >  }
> > =20
> > -static int __gem_read(int fd, uint32_t handle, uint64_t offset,
> > void
> > *buf, uint64_t length)
> > +int __gem_read(int fd, uint32_t handle, uint64_t offset, void
> > *buf,
> > uint64_t length)
> >  {
> >  	struct drm_i915_gem_pread gem_pread;
> >  	int err;
> > diff --git a/lib/ioctl_wrappers.h b/lib/ioctl_wrappers.h
> > index f2412d78..97f278ed 100644
> > --- a/lib/ioctl_wrappers.h
> > +++ b/lib/ioctl_wrappers.h
> > @@ -69,6 +69,7 @@ uint32_t gem_open(int fd, uint32_t name);
> >  void gem_close(int fd, uint32_t handle);
> >  int __gem_write(int fd, uint32_t handle, uint64_t offset, const
> > void
> > *buf, uint64_t length);
> >  void gem_write(int fd, uint32_t handle, uint64_t offset,  const
> > void
> > *buf, uint64_t length);
> > +int __gem_read(int fd, uint32_t handle, uint64_t offset, void
> > *buf,
> > uint64_t length);
> >  void gem_read(int fd, uint32_t handle, uint64_t offset, void *buf,
> > uint64_t length);
> >  int __gem_set_domain(int fd, uint32_t handle, uint32_t read,
> > uint32_t write);
> >  void gem_set_domain(int fd, uint32_t handle, uint32_t read,
> > uint32_t
> > write);
> > diff --git a/tests/prime_vgem.c b/tests/prime_vgem.c
> > index 04cc913d..6595818c 100644
> > --- a/tests/prime_vgem.c
> > +++ b/tests/prime_vgem.c
> > @@ -46,6 +46,8 @@ static void test_read(int vgem, int i915)
> >  	handle =3D prime_fd_to_handle(i915, dmabuf);
> >  	close(dmabuf);
> > =20
> > +	igt_skip_on(__gem_read(i915, handle, 0, &i, sizeof(i)));
> > +
> >  	ptr =3D vgem_mmap(vgem, &scratch, PROT_WRITE);
> >  	for (i =3D 0; i < 1024; i++)
> >  		ptr[1024*i] =3D i;
> > @@ -81,6 +83,8 @@ static void test_fence_read(int i915, int vgem)
> >  	handle =3D prime_fd_to_handle(i915, dmabuf);
> >  	close(dmabuf);
> > =20
> > +	igt_skip_on(__gem_read(i915, handle, 0, &i, sizeof(i)));
> > +
> >  	igt_fork(child, 1) {
> >  		close(master[0]);
> >  		close(slave[1]);
> > @@ -191,6 +195,8 @@ static void test_write(int vgem, int i915)
> >  	handle =3D prime_fd_to_handle(i915, dmabuf);
> >  	close(dmabuf);
> > =20
> > +	igt_skip_on(__gem_write(i915, handle, 0, &i, sizeof(i)));
> > +
> >  	ptr =3D vgem_mmap(vgem, &scratch, PROT_READ);
> >  	gem_close(vgem, scratch.handle);
> > =20
>=20
> _______________________________________________
> igt-dev mailing list
> igt-dev@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/igt-dev

--=-FXmUMjGFhkUvM8qvoR0U
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
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTExMjAyMjA0NTZaMCMGCSqGSIb3DQEJ
BDEWBBQ+bRhHvKcTEbEqhiY5q4iwg43ADzANBgkqhkiG9w0BAQEFAASCAQBg/AUOK+GwH5/BGyTy
KKZfnkbns8ZiuHsEQSt/BTNV3yXF0WGQ4gfeqHlWZjHtnqo55lQ3E1bE65ucYN3/2ZdLnUelb/wm
6F15ewGdeKYa/wlKQC1tryR6/ChRZaTWgSgCnB85zoxf+QsJXhzyxud5jD4f6yCc+Lr4FTi5IQ7S
RRi9sLwR8rjX11w9/WK4ZgHGPke8Y3F1fEIQygCmtsvw3Shut8njW/wuhCkvWSWSY+JdsU4+vNq0
Ub8om10SCzWf1IKVInTaMJCxthqHLr1yhb+T759F+i1KfqM+a2HxT7R2XI0HZkcNM/Fao8zNi0Cs
UJOw6tE7Ayj5tZ2HTTU4AAAAAAAA


--=-FXmUMjGFhkUvM8qvoR0U--

--===============1274276988==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1274276988==--
