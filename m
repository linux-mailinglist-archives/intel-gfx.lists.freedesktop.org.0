Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 206C4BBE41
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 00:05:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55D7089798;
	Mon, 23 Sep 2019 22:05:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 771B889798
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 22:05:01 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id i16so11648657wmd.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 15:05:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=gVJ75s3Ny8UVU2Ywjap1qPORde7fFaZgLGaNodLAYwI=;
 b=TcKeHHuVKh82S2ja42i6VZxEN/kMe8WI9RcBZqVlCrKF9oHjcS3kgCPdWrgKMH4MRr
 yD/KvqdZLsHI4N/yYTG0gWP7SUNuzM5XEahhYDAl44TjzN1jWdbd2nRURU/Wv/O5A3Je
 gRwMILGvSPLpPaRAkyNNVTF98NcFESRfHwsMcCAlBRibwTPaD6NynxfVevKCZ5EHF+kN
 0WwFvlYWafYWrzTTDgwSlRMPvfMnQljzwH5eVvVSYI7yAPj1I6D/KkqEOkWRdKrHU5hY
 BTtffIeq29WptKYhyaUi6xH0+04wUb2Foo3iMCABpo355FcxgZXmJVDOL1KKbD3ZSy0W
 UGxw==
X-Gm-Message-State: APjAAAX4Agq0bYqCh7E0qYXEBBNM6MMz26CX0/H56O8C65GZQUSjCA83
 RoMzXVqq689XgfsgZEq8HZj7scPv1q6e/nPNvkw=
X-Google-Smtp-Source: APXvYqz+21jLi3trVWhJtvEugFk+iZheC68X/XXr3x4rLwym/c1r3O9aAcLc21pJU3ErPOPqq7ZuLw89SUYzkYdLRnc=
X-Received: by 2002:a05:600c:10cc:: with SMTP id
 l12mr1172210wmd.165.1569276299965; 
 Mon, 23 Sep 2019 15:04:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190923195513.207536-1-jose.souza@intel.com>
 <20190923195513.207536-7-jose.souza@intel.com>
In-Reply-To: <20190923195513.207536-7-jose.souza@intel.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Mon, 23 Sep 2019 15:04:47 -0700
Message-ID: <CAKi4VALpiLQowGuGeFv3zBfmwScUB5-bg3L1NjGmCoHsYksiog@mail.gmail.com>
To: =?UTF-8?Q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=gVJ75s3Ny8UVU2Ywjap1qPORde7fFaZgLGaNodLAYwI=;
 b=Ev5eHUVezfEEJwfYjvE9hsTh2O0HnxmzhiVp0q2Hab71ZYHkYudXHEkE39849ls8hR
 VFt7rD5wHiDJKmYrRMfGoyXLMPweuxhOB4ZIHrqENGwRkGXNdskZ0h5EXTd5W8z3cPKR
 YlYOLSW4DbMOX8HLG4/a0d+l2VijNf8qJA5ELr+T1B/SUzg/PyLnx2+PsIxDnUlzc4lM
 C/x2YY1BrSTXnqfx4rdk9IX5E8TWAnXyqZspXc7IZeBGLdvUmjeRP6mBx+gnWieyCpxO
 juI2+ong57TTlmTvYsf1H7HH0nOm+ZcAcJ3OJsGePSYkzZTekRaltJbUChPdGngQq30N
 vgCg==
Subject: Re: [Intel-gfx] [PATCH v3 6/9] drm/i915/tgl: Add dkl phy pll
 calculations
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBTZXAgMjMsIDIwMTkgYXQgMTI6NTUgUE0gSm9zw6kgUm9iZXJ0byBkZSBTb3V6YQo8
am9zZS5zb3V6YUBpbnRlbC5jb20+IHdyb3RlOgo+Cj4gRXh0ZW5kaW5nIElDTCBtZyBjYWxjdWxh
dGlvbnMgdG8gYWxzbyBzdXBwb3J0IGRrbCBjYWxjdWxhdGlvbnMuCj4KPiB2MzoKPiBGaXhpbmcg
aXJlZl90cmltIGNhbGN1bGF0aW9uIGZvciAzODQwMCByZWZjbG9jawo+Cj4gQlNwZWM6IDQ5MjA0
Cj4KPiBTaWduZWQtb2ZmLWJ5OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGlu
dGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNv
dXphQGludGVsLmNvbT4KClJldmlld2VkLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFy
Y2hpQGludGVsLmNvbT4KCkx1Y2FzIERlIE1hcmNoaQoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgICAgIHwgMjkgKysrKysrKysrLS0tCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyB8IDQ1ICsrKysrKysrKysr
KysrKystLS0KPiAgMiBmaWxlcyBjaGFuZ2VkLCA2MiBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlv
bnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+IGluZGV4
IDFhYjNlMGM0YzBhMS4uOTM4NjM5Njc1NTI5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jCj4gQEAgLTE0NDAsMTEgKzE0NDAsMzAgQEAgc3RhdGljIGludCBp
Y2xfY2FsY19tZ19wbGxfbGluayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4K
PiAgICAgICAgIHJlZl9jbG9jayA9IGRldl9wcml2LT5jZGNsay5ody5yZWY7Cj4KPiAtICAgICAg
IG0xID0gcGxsX3N0YXRlLT5tZ19wbGxfZGl2MSAmIE1HX1BMTF9ESVYxX0ZCUFJFRElWX01BU0s7
Cj4gLSAgICAgICBtMl9pbnQgPSBwbGxfc3RhdGUtPm1nX3BsbF9kaXYwICYgTUdfUExMX0RJVjBf
RkJESVZfSU5UX01BU0s7Cj4gLSAgICAgICBtMl9mcmFjID0gKHBsbF9zdGF0ZS0+bWdfcGxsX2Rp
djAgJiBNR19QTExfRElWMF9GUkFDTkVOX0gpID8KPiAtICAgICAgICAgICAgICAgKHBsbF9zdGF0
ZS0+bWdfcGxsX2RpdjAgJiBNR19QTExfRElWMF9GQkRJVl9GUkFDX01BU0spID4+Cj4gLSAgICAg
ICAgICAgICAgIE1HX1BMTF9ESVYwX0ZCRElWX0ZSQUNfU0hJRlQgOiAwOwo+ICsgICAgICAgaWYg
KElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpIHsKPiArICAgICAgICAgICAgICAgbTEgPSBwbGxf
c3RhdGUtPm1nX3BsbF9kaXYwICYgREtMX1BMTF9ESVYwX0ZCUFJFRElWX01BU0s7Cj4gKyAgICAg
ICAgICAgICAgIG0xID0gbTEgPj4gREtMX1BMTF9ESVYwX0ZCUFJFRElWX1NISUZUOwo+ICsgICAg
ICAgICAgICAgICBtMl9pbnQgPSBwbGxfc3RhdGUtPm1nX3BsbF9kaXYwICYgREtMX1BMTF9ESVYw
X0ZCRElWX0lOVF9NQVNLOwo+ICsKPiArICAgICAgICAgICAgICAgaWYgKHBsbF9zdGF0ZS0+bWdf
cGxsX2JpYXMgJiBES0xfUExMX0JJQVNfRlJBQ19FTl9IKSB7Cj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgbTJfZnJhYyA9IHBsbF9zdGF0ZS0+bWdfcGxsX2JpYXMgJgo+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBES0xfUExMX0JJQVNfRkJESVZfRlJBQ19NQVNLOwo+ICsgICAg
ICAgICAgICAgICAgICAgICAgIG0yX2ZyYWMgPSBtMl9mcmFjID4+IERLTF9QTExfQklBU19GQkRJ
Vl9TSElGVDsKPiArICAgICAgICAgICAgICAgfSBlbHNlIHsKPiArICAgICAgICAgICAgICAgICAg
ICAgICBtMl9mcmFjID0gMDsKPiArICAgICAgICAgICAgICAgfQo+ICsgICAgICAgfSBlbHNlIHsK
PiArICAgICAgICAgICAgICAgbTEgPSBwbGxfc3RhdGUtPm1nX3BsbF9kaXYxICYgTUdfUExMX0RJ
VjFfRkJQUkVESVZfTUFTSzsKPiArICAgICAgICAgICAgICAgbTJfaW50ID0gcGxsX3N0YXRlLT5t
Z19wbGxfZGl2MCAmIE1HX1BMTF9ESVYwX0ZCRElWX0lOVF9NQVNLOwo+ICsKPiArICAgICAgICAg
ICAgICAgaWYgKHBsbF9zdGF0ZS0+bWdfcGxsX2RpdjAgJiBNR19QTExfRElWMF9GUkFDTkVOX0gp
IHsKPiArICAgICAgICAgICAgICAgICAgICAgICBtMl9mcmFjID0gcGxsX3N0YXRlLT5tZ19wbGxf
ZGl2MCAmCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIE1HX1BMTF9ESVYwX0ZC
RElWX0ZSQUNfTUFTSzsKPiArICAgICAgICAgICAgICAgICAgICAgICBtMl9mcmFjID0gbTJfZnJh
YyA+PiBNR19QTExfRElWMF9GQkRJVl9GUkFDX1NISUZUOwo+ICsgICAgICAgICAgICAgICB9IGVs
c2Ugewo+ICsgICAgICAgICAgICAgICAgICAgICAgIG0yX2ZyYWMgPSAwOwo+ICsgICAgICAgICAg
ICAgICB9Cj4gKyAgICAgICB9Cj4KPiAgICAgICAgIHN3aXRjaCAocGxsX3N0YXRlLT5tZ19jbGt0
b3AyX2hzY2xrY3RsICYKPiAgICAgICAgICAgICAgICAgTUdfQ0xLVE9QMl9IU0NMS0NUTF9IU0RJ
Vl9SQVRJT19NQVNLKSB7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBsbF9tZ3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBsbF9tZ3IuYwo+IGluZGV4IDliYWU2ZjJkMGYzNi4uNDk2ZGY0MDk1YTIxIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYwo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYwo+IEBAIC0yNjA3
LDcgKzI2MDcsOCBAQCBlbnVtIGludGVsX2RwbGxfaWQgaWNsX3RjX3BvcnRfdG9fcGxsX2lkKGVu
dW0gdGNfcG9ydCB0Y19wb3J0KQo+Cj4gIHN0YXRpYyBib29sIGljbF9tZ19wbGxfZmluZF9kaXZp
c29ycyhpbnQgY2xvY2tfa2h6LCBib29sIGlzX2RwLCBib29sIHVzZV9zc2MsCj4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHUzMiAqdGFyZ2V0X2Rjb19raHosCj4gLSAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBpbnRlbF9kcGxsX2h3X3N0YXRl
ICpzdGF0ZSkKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGlu
dGVsX2RwbGxfaHdfc3RhdGUgKnN0YXRlLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBib29sIGlzX2RrbCkKPiAgewo+ICAgICAgICAgdTMyIGRjb19taW5fZnJlcSwgZGNv
X21heF9mcmVxOwo+ICAgICAgICAgaW50IGRpdjFfdmFsc1tdID0gezcsIDUsIDMsIDJ9Owo+IEBA
IC0yNjI5LDggKzI2MzAsMTMgQEAgc3RhdGljIGJvb2wgaWNsX21nX3BsbF9maW5kX2Rpdmlzb3Jz
KGludCBjbG9ja19raHosIGJvb2wgaXNfZHAsIGJvb2wgdXNlX3NzYywKPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+Cj4gICAgICAgICAgICAgICAgICAgICAgICAg
aWYgKGRpdjIgPj0gMikgewo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYV9kaXZy
YXRpbyA9IGlzX2RwID8gMTAgOiA1Owo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
dGxpbmVkcnYgPSAyOwo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaWYgKGlzX2Rr
bCkgewo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBhX2RpdnJhdGlv
ID0gNTsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdGxpbmVkcnYg
PSAxOwo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfSBlbHNlIHsKPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYV9kaXZyYXRpbyA9IGlzX2RwID8gMTAg
OiA1Owo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0bGluZWRydiA9
IDI7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB9Cj4gICAgICAgICAgICAgICAg
ICAgICAgICAgfSBlbHNlIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGFfZGl2
cmF0aW8gPSA1Owo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdGxpbmVkcnYgPSAw
Owo+IEBAIC0yNjkzLDExICsyNjk5LDEyIEBAIHN0YXRpYyBib29sIGljbF9jYWxjX21nX3BsbF9z
dGF0ZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiAgICAgICAgIHU2NCB0
bXA7Cj4gICAgICAgICBib29sIHVzZV9zc2MgPSBmYWxzZTsKPiAgICAgICAgIGJvb2wgaXNfZHAg
PSAhaW50ZWxfY3J0Y19oYXNfdHlwZShjcnRjX3N0YXRlLCBJTlRFTF9PVVRQVVRfSERNSSk7Cj4g
KyAgICAgICBib29sIGlzX2RrbCA9IElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTI7Cj4KPiAgICAg
ICAgIG1lbXNldChwbGxfc3RhdGUsIDAsIHNpemVvZigqcGxsX3N0YXRlKSk7Cj4KPiAgICAgICAg
IGlmICghaWNsX21nX3BsbF9maW5kX2Rpdmlzb3JzKGNsb2NrLCBpc19kcCwgdXNlX3NzYywgJmRj
b19raHosCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwbGxfc3RhdGUp
KSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwbGxfc3RhdGUsIGlz
X2RrbCkpIHsKPiAgICAgICAgICAgICAgICAgRFJNX0RFQlVHX0tNUygiRmFpbGVkIHRvIGZpbmQg
ZGl2aXNvcnMgZm9yIGNsb2NrICVkXG4iLCBjbG9jayk7Cj4gICAgICAgICAgICAgICAgIHJldHVy
biBmYWxzZTsKPiAgICAgICAgIH0KPiBAQCAtMjcwNSw4ICsyNzEyLDExIEBAIHN0YXRpYyBib29s
IGljbF9jYWxjX21nX3BsbF9zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSwKPiAgICAgICAgIG0xZGl2ID0gMjsKPiAgICAgICAgIG0yZGl2X2ludCA9IGRjb19raHogLyAo
cmVmY2xrX2toeiAqIG0xZGl2KTsKPiAgICAgICAgIGlmIChtMmRpdl9pbnQgPiAyNTUpIHsKPiAt
ICAgICAgICAgICAgICAgbTFkaXYgPSA0Owo+IC0gICAgICAgICAgICAgICBtMmRpdl9pbnQgPSBk
Y29fa2h6IC8gKHJlZmNsa19raHogKiBtMWRpdik7Cj4gKyAgICAgICAgICAgICAgIGlmICghaXNf
ZGtsKSB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgbTFkaXYgPSA0Owo+ICsgICAgICAgICAg
ICAgICAgICAgICAgIG0yZGl2X2ludCA9IGRjb19raHogLyAocmVmY2xrX2toeiAqIG0xZGl2KTsK
PiArICAgICAgICAgICAgICAgfQo+ICsKPiAgICAgICAgICAgICAgICAgaWYgKG0yZGl2X2ludCA+
IDI1NSkgewo+ICAgICAgICAgICAgICAgICAgICAgICAgIERSTV9ERUJVR19LTVMoIkZhaWxlZCB0
byBmaW5kIG1kaXYgZm9yIGNsb2NrICVkXG4iLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgY2xvY2spOwo+IEBAIC0yNzg3LDcgKzI3OTcsMjggQEAgc3RhdGljIGJvb2wg
aWNsX2NhbGNfbWdfcGxsX3N0YXRlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRl
LAo+ICAgICAgICAgc3NjX3N0ZXBsb2cgPSA0Owo+Cj4gICAgICAgICAvKiB3cml0ZSBwbGxfc3Rh
dGUgY2FsY3VsYXRpb25zICovCj4gLSAgICAgICB7Cj4gKyAgICAgICBpZiAoaXNfZGtsKSB7Cj4g
KyAgICAgICAgICAgICAgIHBsbF9zdGF0ZS0+bWdfcGxsX2RpdjAgPSBES0xfUExMX0RJVjBfSU5U
RUdfQ09FRkYoaW50X2NvZWZmKSB8Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBES0xfUExMX0RJVjBfUFJPUF9DT0VGRihwcm9wX2NvZWZmKSB8Cj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBES0xfUExMX0RJVjBfRkJQUkVESVYobTFk
aXYpIHwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIERLTF9QTExf
RElWMF9GQkRJVl9JTlQobTJkaXZfaW50KTsKPiArCj4gKyAgICAgICAgICAgICAgIHBsbF9zdGF0
ZS0+bWdfcGxsX2RpdjEgPSBES0xfUExMX0RJVjFfSVJFRl9UUklNKGlyZWZfdHJpbSkgfAo+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgREtMX1BMTF9ESVYxX1REQ19U
QVJHRVRfQ05UKHRkY190YXJnZXRjbnQpOwo+ICsKPiArICAgICAgICAgICAgICAgcGxsX3N0YXRl
LT5tZ19wbGxfc3NjID0gREtMX1BMTF9TU0NfSVJFRl9ORElWX1JBVElPKGlyZWZfbmRpdikgfAo+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBES0xfUExMX1NTQ19TVEVQ
X0xFTihzc2Nfc3RlcGxlbikgfAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBES0xfUExMX1NTQ19TVEVQX05VTShzc2Nfc3RlcGxvZykgfAo+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAodXNlX3NzYyA/IERLTF9QTExfU1NDX0VOIDogMCk7
Cj4gKwo+ICsgICAgICAgICAgICAgICBwbGxfc3RhdGUtPm1nX3BsbF9iaWFzID0gKG0yZGl2X2Zy
YWMgPyBES0xfUExMX0JJQVNfRlJBQ19FTl9IIDogMCkgfAo+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIERLTF9QTExfQklBU19GQkRJVl9GUkFDKG0yZGl2X2ZyYWMp
Owo+ICsKPiArICAgICAgICAgICAgICAgcGxsX3N0YXRlLT5tZ19wbGxfdGRjX2NvbGRzdF9iaWFz
ID0KPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIERLTF9QTExfVERDX1NTQ19TVEVQ
X1NJWkUoc3NjX3N0ZXBzaXplKSB8Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBE
S0xfUExMX1REQ19GRUVEX0ZXRF9HQUlOKGZlZWRmd2dhaW4pOwo+ICsKPiArICAgICAgIH0gZWxz
ZSB7Cj4gICAgICAgICAgICAgICAgIHBsbF9zdGF0ZS0+bWdfcGxsX2RpdjAgPQo+ICAgICAgICAg
ICAgICAgICAgICAgICAgIChtMmRpdl9yZW0gPiAwID8gTUdfUExMX0RJVjBfRlJBQ05FTl9IIDog
MCkgfAo+ICAgICAgICAgICAgICAgICAgICAgICAgIE1HX1BMTF9ESVYwX0ZCRElWX0ZSQUMobTJk
aXZfZnJhYykgfAo+IC0tCj4gMi4yMy4wCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngKCgoKLS0gCkx1Y2FzIERlIE1hcmNoaQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
