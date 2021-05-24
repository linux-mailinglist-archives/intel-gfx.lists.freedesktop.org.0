Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C3538F2D1
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 20:17:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AF006E8E5;
	Mon, 24 May 2021 18:17:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com
 [IPv6:2607:f8b0:4864:20::72c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 371E36E8E4;
 Mon, 24 May 2021 18:17:27 +0000 (UTC)
Received: by mail-qk1-x72c.google.com with SMTP id i67so27890240qkc.4;
 Mon, 24 May 2021 11:17:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Zz2kzbTbqN0tBzO+PKLu6ifHzrufowezQwfak2ww1Ig=;
 b=EefU6263Ep7gXqDnVGC8nInBnPn2z3qkc3LoaRC6G6u1UAVxdxdf0CkUtXs2NFPg3e
 QJ2yKg5IRVjr+DsY9KSi82Svv53h75TrBjhCdmkQx7N+8dje8pYR7ENrG64XuTAxodm8
 NA9oKx8A0+TfCv5UHZUWDE+cWB5ZQazNVvSng+ZL/1jhMnkevbP/t56t9YLy8yy31cAF
 3YIw3qd2ibFb/z16CmGZ67gEyRfTeDrSC/z4T0lAGgKuPS8IW5iEeTf+ryJjuxZoIHXN
 E1wfResmSpLAsRUDGW0ZrvBMGfrbpypZXzldD0J8BBz7CjzCNseHWegyTLlEBA3k737t
 Rt4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Zz2kzbTbqN0tBzO+PKLu6ifHzrufowezQwfak2ww1Ig=;
 b=m98eq8Vrs/IaIQFmOQ6q1LWdUPuFAnDmkUIM7zDXN1u7RfDafUpNWoSPIMYTO9JIGa
 D3Z2Kl6I00F0PZERKPVPxBoEkpxDKVCY7K4C3T/p78IIZO1ReeAIaaInjEMkj/NzKn6F
 nTbgX3mWZSIfXrkxf7lT46VCAybQRvbWZ5AxYCXniCO5UT2CF27FT9+WOraymv11CCCH
 qVRZ56DzePRDhJ8jp5yHEgFHiWy39eiNMZqO0KAtHwc8cIQKDvBFx+nfm9yMupVOoik6
 SE/JD9fDcRU+ZwLrG43DKpJr1lmRivw1WdDNYXeIchuM34f/lYMrfsk0Sw0JBZ4BnKu4
 9D5Q==
X-Gm-Message-State: AOAM5328JELfgwd8Hc2rNvkM1JxrD31U1A+US/ywjFL492Kd8pSxrpoo
 XDWpBf8RZpRzQqVZmZPZvM9O3WzMdpB1blXukmo=
X-Google-Smtp-Source: ABdhPJxmEby7VC5D+jGrC1HjK0Rf6WREu2FbMVwYZG8mYAMpsojLQ+rXGxYU1M5hUfSgIjMYI4hNcta7+mQ2Ud5ldtk=
X-Received: by 2002:a37:ac0d:: with SMTP id e13mr26497329qkm.426.1621880246340; 
 Mon, 24 May 2021 11:17:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210521153253.518037-1-thomas.hellstrom@linux.intel.com>
 <20210521153253.518037-9-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210521153253.518037-9-thomas.hellstrom@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 24 May 2021 19:16:59 +0100
Message-ID: <CAM0jSHNP4NNQknBWLqn8h5kapcxVhAgwjjg3yQ9wDfYb41q92A@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 08/12] drm/ttm: Use
 drm_memcpy_from_wc_dbm for TTM bo moves
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMSBNYXkgMjAyMSBhdCAxNjozMywgVGhvbWFzIEhlbGxzdHLDtm0KPHRob21hcy5o
ZWxsc3Ryb21AbGludXguaW50ZWwuY29tPiB3cm90ZToKPgo+IFVzZSBmYXN0IHdjIG1lbWNweSBm
b3IgcmVhZGluZyBvdXQgb2Ygd2MgbWVtb3J5IGZvciBUVE0gYm8gbW92ZXMuCj4KPiBDYzogRGF2
ZSBBaXJsaWUgPGFpcmxpZWRAZ21haWwuY29tPgo+IENjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJA
ZmZ3bGwuY2g+Cj4gU2lnbmVkLW9mZi1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxs
c3Ryb21AbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9i
b191dGlsLmMgfCA5ICsrKysrKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1f
Ym9fdXRpbC5jIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdXRpbC5jCj4gaW5kZXggOTEy
Y2JlOGU2MGEyLi40YTdkM2Q2NzJmOWEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3R0
bS90dG1fYm9fdXRpbC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdXRpbC5j
Cj4gQEAgLTMxLDYgKzMxLDcgQEAKPgo+ICAjaW5jbHVkZSA8ZHJtL3R0bS90dG1fYm9fZHJpdmVy
Lmg+Cj4gICNpbmNsdWRlIDxkcm0vdHRtL3R0bV9wbGFjZW1lbnQuaD4KPiArI2luY2x1ZGUgPGRy
bS9kcm1fbWVtY3B5Lmg+Cj4gICNpbmNsdWRlIDxkcm0vZHJtX3ZtYV9tYW5hZ2VyLmg+Cj4gICNp
bmNsdWRlIDxsaW51eC9kbWEtYnVmLW1hcC5oPgo+ICAjaW5jbHVkZSA8bGludXgvaW8uaD4KPiBA
QCAtOTEsNiArOTIsNyBAQCB2b2lkIHR0bV9tb3ZlX21lbWNweShzdHJ1Y3QgdHRtX2J1ZmZlcl9v
YmplY3QgKmJvLAo+ICAgICAgICAgY29uc3Qgc3RydWN0IHR0bV9rbWFwX2l0ZXJfb3BzICpzcmNf
b3BzID0gc3JjX2l0ZXItPm9wczsKPiAgICAgICAgIHN0cnVjdCB0dG1fdHQgKnR0bSA9IGJvLT50
dG07Cj4gICAgICAgICBzdHJ1Y3QgZG1hX2J1Zl9tYXAgc3JjX21hcCwgZHN0X21hcDsKPiArICAg
ICAgIGJvb2wgd2NfbWVtY3B5Owo+ICAgICAgICAgcGdvZmZfdCBpOwo+Cj4gICAgICAgICAvKiBT
aW5nbGUgVFRNIG1vdmUuIE5PUCAqLwo+IEBAIC0xMTQsMTEgKzExNiwxNiBAQCB2b2lkIHR0bV9t
b3ZlX21lbWNweShzdHJ1Y3QgdHRtX2J1ZmZlcl9vYmplY3QgKmJvLAo+ICAgICAgICAgICAgICAg
ICByZXR1cm47Cj4gICAgICAgICB9Cj4KPiArICAgICAgIHdjX21lbWNweSA9ICgoIXNyY19vcHMt
Pm1hcHNfdHQgfHwgdHRtLT5jYWNoaW5nICE9IHR0bV9jYWNoZWQpICYmCgpXaHkgZG8gd2Ugb25s
eSBjb25zaWRlciB0aGUgY2FjaGluZyB2YWx1ZSBmb3IgdGhlIG1hcHNfdHQgY2FzZT8gT3IgYW0K
SSBtaXNyZWFkaW5nIHRoaXM/Cgo+ICsgICAgICAgICAgICAgICAgICAgIGRybV9oYXNfbWVtY3B5
X2Zyb21fd2MoKSk7Cj4gKwo+ICAgICAgICAgZm9yIChpID0gMDsgaSA8IGRzdF9tZW0tPm51bV9w
YWdlczsgKytpKSB7Cj4gICAgICAgICAgICAgICAgIGRzdF9vcHMtPm1hcF9sb2NhbChkc3RfaXRl
ciwgJmRzdF9tYXAsIGkpOwo+ICAgICAgICAgICAgICAgICBzcmNfb3BzLT5tYXBfbG9jYWwoc3Jj
X2l0ZXIsICZzcmNfbWFwLCBpKTsKPgo+IC0gICAgICAgICAgICAgICBpZiAoIXNyY19tYXAuaXNf
aW9tZW0gJiYgIWRzdF9tYXAuaXNfaW9tZW0pIHsKPiArICAgICAgICAgICAgICAgaWYgKHdjX21l
bWNweSkgewo+ICsgICAgICAgICAgICAgICAgICAgICAgIGRybV9tZW1jcHlfZnJvbV93Y19kYm0o
JmRzdF9tYXAsICZzcmNfbWFwLCBQQUdFX1NJWkUpOwoKRG8gd2UgbmVlZCB0byBjaGVjayB0aGUg
cmV0dXJuIHZhbHVlIGhlcmU/IG1lbWNweV9mcm9tX3djIGV4cGVjdHMKY2VydGFpbiBhZGRyZXNz
IGFsaWdubWVudCwgb3IgaXMgdGhhdCBhbHdheXMgZ3VhcmFudGVlZCBoZXJlPyBNYXliZQp0aHJv
dyBhIHdhcm5pbmcganVzdCBmb3IgcGFyYW5vaWE/Cgo+ICsgICAgICAgICAgICAgICB9IGVsc2Ug
aWYgKCFzcmNfbWFwLmlzX2lvbWVtICYmICFkc3RfbWFwLmlzX2lvbWVtKSB7Cj4gICAgICAgICAg
ICAgICAgICAgICAgICAgbWVtY3B5KGRzdF9tYXAudmFkZHIsIHNyY19tYXAudmFkZHIsIFBBR0Vf
U0laRSk7Cj4gICAgICAgICAgICAgICAgIH0gZWxzZSBpZiAoIXNyY19tYXAuaXNfaW9tZW0pIHsK
PiAgICAgICAgICAgICAgICAgICAgICAgICBkbWFfYnVmX21hcF9tZW1jcHlfdG8oJmRzdF9tYXAs
IHNyY19tYXAudmFkZHIsCj4gLS0KPiAyLjMxLjEKPgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
