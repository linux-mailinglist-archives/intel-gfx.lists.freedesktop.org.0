Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2A2952D7
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 02:50:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D29236E4AD;
	Tue, 20 Aug 2019 00:50:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF24C6E4AD;
 Tue, 20 Aug 2019 00:50:32 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Aug 2019 17:50:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,406,1559545200"; 
 d="p7s'?scan'208";a="178033038"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga008.fm.intel.com with ESMTP; 19 Aug 2019 17:50:30 -0700
Received: from fmsmsx154.amr.corp.intel.com (10.18.116.70) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 19 Aug 2019 17:50:30 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.251]) by
 FMSMSX154.amr.corp.intel.com ([169.254.6.214]) with mapi id 14.03.0439.000;
 Mon, 19 Aug 2019 17:50:30 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Thread-Topic: [igt-dev] [PATCH i-g-t] i915/gem_concurrent_blit: Do not try
 to idle while submitting in parallel
Thread-Index: AQHVVaovn/+p/h4xXEGFvjOaceQ7cacDrIiA
Date: Tue, 20 Aug 2019 00:50:29 +0000
Message-ID: <7b246c2433d0d34f6def02fcd0c9d686d8b19e4e.camel@intel.com>
References: <20190818094900.8937-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190818094900.8937-1-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.165.21.197]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_concurrent_blit:
 Do not try to idle while submitting in parallel
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============0553829491=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0553829491==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-qpY3VCISqlQzjkbIBqzE"

--=-qpY3VCISqlQzjkbIBqzE
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, 2019-08-18 at 10:49 +0100, Chris Wilson wrote:
> If we try to idle while another thread is submitting, we will be
> forced
> to wait until that other thread is finished -- effectively
> serialising
> the parallel workloads, defeating said purpose.
>=20
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Stuart Summers <stuart.summers@intel.com>

> ---
>  tests/i915/gem_concurrent_all.c | 17 -----------------
>  1 file changed, 17 deletions(-)
>=20
> diff --git a/tests/i915/gem_concurrent_all.c
> b/tests/i915/gem_concurrent_all.c
> index 3ddaab820..266995d14 100644
> --- a/tests/i915/gem_concurrent_all.c
> +++ b/tests/i915/gem_concurrent_all.c
> @@ -968,8 +968,6 @@ static void do_basic0(struct buffers *buffers,
>  		      do_copy do_copy_func,
>  		      do_hang do_hang_func)
>  {
> -	gem_quiescent_gpu(fd);
> -
>  	buffers->mode->set_bo(buffers, buffers->src[0], 0xdeadbeef);
>  	for (int i =3D 0; i < buffers->count; i++) {
>  		igt_hang_t hang =3D do_hang_func();
> @@ -985,8 +983,6 @@ static void do_basic1(struct buffers *buffers,
>  		      do_copy do_copy_func,
>  		      do_hang do_hang_func)
>  {
> -	gem_quiescent_gpu(fd);
> -
>  	for (int i =3D 0; i < buffers->count; i++) {
>  		igt_hang_t hang =3D do_hang_func();
> =20
> @@ -1007,8 +1003,6 @@ static void do_basicN(struct buffers *buffers,
>  {
>  	igt_hang_t hang;
> =20
> -	gem_quiescent_gpu(fd);
> -
>  	for (int i =3D 0; i < buffers->count; i++) {
>  		buffers->mode->set_bo(buffers, buffers->src[i], i);
>  		buffers->mode->set_bo(buffers, buffers->dst[i], ~i);
> @@ -1034,7 +1028,6 @@ static void do_overwrite_source(struct buffers
> *buffers,
>  	igt_hang_t hang;
>  	int i;
> =20
> -	gem_quiescent_gpu(fd);
>  	for (i =3D 0; i < buffers->count; i++) {
>  		buffers->mode->set_bo(buffers, buffers->src[i], i);
>  		buffers->mode->set_bo(buffers, buffers->dst[i], ~i);
> @@ -1058,7 +1051,6 @@ static void do_overwrite_source_read(struct
> buffers *buffers,
>  	igt_hang_t hang;
>  	int i;
> =20
> -	gem_quiescent_gpu(fd);
>  	for (i =3D 0; i < half; i++) {
>  		buffers->mode->set_bo(buffers, buffers->src[i], i);
>  		buffers->mode->set_bo(buffers, buffers->dst[i], ~i);
> @@ -1102,7 +1094,6 @@ static void do_overwrite_source__rev(struct
> buffers *buffers,
>  	igt_hang_t hang;
>  	int i;
> =20
> -	gem_quiescent_gpu(fd);
>  	for (i =3D 0; i < buffers->count; i++) {
>  		buffers->mode->set_bo(buffers, buffers->src[i], i);
>  		buffers->mode->set_bo(buffers, buffers->dst[i], ~i);
> @@ -1123,7 +1114,6 @@ static void do_overwrite_source__one(struct
> buffers *buffers,
>  {
>  	igt_hang_t hang;
> =20
> -	gem_quiescent_gpu(fd);
>  	buffers->mode->set_bo(buffers, buffers->src[0], 0);
>  	buffers->mode->set_bo(buffers, buffers->dst[0], ~0);
>  	do_copy_func(buffers, buffers->dst[0], buffers->src[0]);
> @@ -1142,7 +1132,6 @@ static void do_intermix(struct buffers
> *buffers,
>  	igt_hang_t hang;
>  	int i;
> =20
> -	gem_quiescent_gpu(fd);
>  	for (i =3D 0; i < buffers->count; i++) {
>  		buffers->mode->set_bo(buffers, buffers->src[i],
> 0xdeadbeef^~i);
>  		buffers->mode->set_bo(buffers, buffers->dst[i], i);
> @@ -1196,7 +1185,6 @@ static void do_early_read(struct buffers
> *buffers,
>  	igt_hang_t hang;
>  	int i;
> =20
> -	gem_quiescent_gpu(fd);
>  	for (i =3D buffers->count; i--; )
>  		buffers->mode->set_bo(buffers, buffers->src[i],
> 0xdeadbeef);
>  	for (i =3D 0; i < buffers->count; i++)
> @@ -1214,7 +1202,6 @@ static void do_read_read_bcs(struct buffers
> *buffers,
>  	igt_hang_t hang;
>  	int i;
> =20
> -	gem_quiescent_gpu(fd);
>  	for (i =3D buffers->count; i--; )
>  		buffers->mode->set_bo(buffers, buffers->src[i],
> 0xdeadbeef ^ i);
>  	for (i =3D 0; i < buffers->count; i++) {
> @@ -1235,7 +1222,6 @@ static void do_write_read_bcs(struct buffers
> *buffers,
>  	igt_hang_t hang;
>  	int i;
> =20
> -	gem_quiescent_gpu(fd);
>  	for (i =3D buffers->count; i--; )
>  		buffers->mode->set_bo(buffers, buffers->src[i],
> 0xdeadbeef ^ i);
>  	for (i =3D 0; i < buffers->count; i++) {
> @@ -1255,7 +1241,6 @@ static void do_read_read_rcs(struct buffers
> *buffers,
>  	igt_hang_t hang;
>  	int i;
> =20
> -	gem_quiescent_gpu(fd);
>  	for (i =3D buffers->count; i--; )
>  		buffers->mode->set_bo(buffers, buffers->src[i],
> 0xdeadbeef ^ i);
>  	for (i =3D 0; i < buffers->count; i++) {
> @@ -1276,7 +1261,6 @@ static void do_write_read_rcs(struct buffers
> *buffers,
>  	igt_hang_t hang;
>  	int i;
> =20
> -	gem_quiescent_gpu(fd);
>  	for (i =3D buffers->count; i--; )
>  		buffers->mode->set_bo(buffers, buffers->src[i],
> 0xdeadbeef ^ i);
>  	for (i =3D 0; i < buffers->count; i++) {
> @@ -1296,7 +1280,6 @@ static void do_gpu_read_after_write(struct
> buffers *buffers,
>  	igt_hang_t hang;
>  	int i;
> =20
> -	gem_quiescent_gpu(fd);
>  	for (i =3D buffers->count; i--; )
>  		buffers->mode->set_bo(buffers, buffers->src[i],
> 0xabcdabcd);
>  	for (i =3D 0; i < buffers->count; i++)

--=-qpY3VCISqlQzjkbIBqzE
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
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTA4MjAwMDUwMjdaMCMGCSqGSIb3DQEJ
BDEWBBQhHteM9rtKnZ0hfDgTz42daASiyzANBgkqhkiG9w0BAQEFAASCAQBgUILMotAZxZI9TdBz
MT6OtgI4BcVPczAtHNlbejNkfUfnsqIu2bBLcvg7JW+vw92sMXuKkj4kOUsBN8m94dudYHTrBgrP
GNFENAmG2S+1Y8zc7vbgefSZmiwsJbByw/MI4ByYfgPtQ0RYa551bZhdujD40/Nf6kQ0bSHyAA3f
GXBhhilCiQTUWp8fj44uc5zOUdQ64f+ikIh8curGfxO2OfWLtXzOoPvb9EF98DXpzgb0OYJ8DYv2
Ymovn7IqackWxg6gD0HhpW2S1UgvNI0plZZID0PhUcg6pBPtF+9L6snDHCGQn5+XXRhLa/TK/VAV
R12wAQ2aunFBBJrw1uE6AAAAAAAA


--=-qpY3VCISqlQzjkbIBqzE--

--===============0553829491==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0553829491==--
