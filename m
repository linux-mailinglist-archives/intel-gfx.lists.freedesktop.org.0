Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF46C968E0
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 21:06:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41BFA6E84F;
	Tue, 20 Aug 2019 19:06:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com
 [IPv6:2607:f8b0:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CB206E84F
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 19:06:33 +0000 (UTC)
Received: by mail-oi1-x241.google.com with SMTP id o6so4961781oic.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 12:06:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ftyz8003WYyBWj1uFoU3uopZEhi5XeV4hR19CP5J1aQ=;
 b=ZZPgfDQGnhW5Wje1xR66oXKFdXKSI1DhrOW1Wn6QTPPwSzjzjK1F8+W6kpksksKPRk
 zDj365YvqCn88wRHk3Vx2T7uCH06AlPRGGqRimziJQmLKmzRwyM+brDzjaLDhxDXMp0B
 01zGsWsiJVBPBokvRQQCRKFS78mPOc/9jaJlCTB5Gtag7rl/yDtl5Eo8/DdE29CpiLZT
 HmB1xV+lMVrl79FxMltg5+iKpDtcXe0AQkvHddM8SkgnsBJV9sPUateuk5A5euy3fzaz
 1X9q8JE4z5pKE1E3MjcgvXxZcmAJ8qSGirwWicc6RGdSM6h4MEvEwfv2K2dVOQW0rKlt
 qWfA==
X-Gm-Message-State: APjAAAUVymtoSmSonTVYlM3RjZNIgZGmqFbNXOKseZAPr2BzU0KzFhlt
 0miUo/nZi6lo2v1hdbX8liu5LnfaEX2Y5EIk8A8j3Q==
X-Google-Smtp-Source: APXvYqyT0/gKHDUBbWHwNyE0ZIzUl89s1s6Cu7b7ZSzosEYsD+e013yDJ0P32yAb8x2NHJ3KHzc+Hgk2D/eMzVTJJp0=
X-Received: by 2002:aca:4994:: with SMTP id w142mr1094360oia.132.1566327992348; 
 Tue, 20 Aug 2019 12:06:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190820170631.26570-1-daniel.vetter@ffwll.ch>
 <156632730188.1374.698930507357040712@skylake-alporthouse-com>
In-Reply-To: <156632730188.1374.698930507357040712@skylake-alporthouse-com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 20 Aug 2019 21:06:19 +0200
Message-ID: <CAKMK7uGajLkCXqwJLpjgpyZE-CDZMoHfPy=jDwJxo5z6d6KGGQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=Ftyz8003WYyBWj1uFoU3uopZEhi5XeV4hR19CP5J1aQ=;
 b=ejkJE3ibnPNtwSRHGXaoBOtiWBADr2KfzqVo8higI220MCzJijsuUQ07H/QpOIZIGq
 84+j2QZnisyt46V69X8HJv2FpKGEn6fbQFlD9eTQPIQ7a/YOjAn3FNVqwo9LQgIu4161
 5rHq16HByTEJDfbreqfLitnriU6OOZfxVJa2s=
Subject: Re: [Intel-gfx] [PATCH] drm/i915: disable set/get_tiling ioctl on
 gen12+
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Kenneth Graunke <kenneth@whitecape.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBBdWcgMjAsIDIwMTkgYXQgODo1NSBQTSBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4gd3JvdGU6Cj4KPiBRdW90aW5nIERhbmllbCBWZXR0ZXIgKDIwMTktMDgt
MjAgMTg6MDY6MzEpCj4gPiBUaGUgY3B1IChkZSl0aWxlciBodyBpcyBnb25lLCB0aGlzIHN0b3Bw
ZWQgYmVpbmcgdXNlZnVsLiBQbHVzIGl0IG5ldmVyCj4gPiBzdXBwb3J0ZWQgYW55IG9mIHRoZSBm
YW5jeSBuZXcgdGlsaW5nIGZvcm1hdHMsIHdoaWNoIG1lYW5zIHVzZXJzcGFjZQo+ID4gYWxzbyBz
dG9wcGVkIHVzaW5nIHRoZSBtYWdpYyBzaWRlLWNoYW5uZWwgdGhpcyBwcm92aWRlcy4KPiA+Cj4g
PiBUaGlzIHdvdWxkIHRvdGFsbHkgYnJlYWsgYSBsb3Qgb2YgdGhlIGlndHMsIGJ1dCB0aGV5J3Jl
IGFscmVhZHkgYnJva2VuCj4gPiBmb3IgdGhlIHNhbWUgcmVhc29ucyBhcyB1c2Vyc3BhY2Ugb24g
Z2VuMTIgd291bGQgYmUuCj4gPgo+ID4gQ2M6IEtlbm5ldGggR3JhdW5rZSA8a2VubmV0aEB3aGl0
ZWNhcGUub3JnPgo+ID4gQ2M6IEphc29uIEVrc3RyYW5kIDxqYXNvbkBqbGVrc3RyYW5kLm5ldD4K
PiA+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IENjOiBM
dWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPiA+IFNpZ25lZC1vZmYt
Ynk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3RpbGluZy5jIHwgOCArKysrKysrKwo+
ID4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3RpbGluZy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3RpbGluZy5jCj4gPiBpbmRleCBjYTBjMmY0NTE3NDIuLjJl
ZTk2ZjI3YTI5NCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV90aWxpbmcuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X3RpbGluZy5jCj4gPiBAQCAtMzEzLDEwICszMTMsMTUgQEAgaW50Cj4gPiAgaTkxNV9nZW1fc2V0
X3RpbGluZ19pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAo+ID4gICAg
ICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUpCj4gPiAgewo+ID4g
KyAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRldik7
Cj4gPiAgICAgICAgIHN0cnVjdCBkcm1faTkxNV9nZW1fc2V0X3RpbGluZyAqYXJncyA9IGRhdGE7
Cj4gPiAgICAgICAgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7Cj4gPiAgICAgICAg
IGludCBlcnI7Cj4gPgo+ID4gKyAgICAgICAvKiB0aGVyZSBpcyBubyBjcHUgKGRlKXRpbGluZyBp
biB0aGUgaHcgYW55bW9yZSBvbiBnZW4xMisgKi8KPiA+ICsgICAgICAgaWYgKElOVEVMX0dFTihk
ZXZfcHJpdikgPj0gMTIpCj4KPiBUaGlzIHNob3VsZCBiZSBpZiAoIU5VTV9GRU5DRVMoZGV2X3By
aXYpKSBpZiBhbnl0aGluZy4gWW91IHdvdWxkbid0IGV2ZW4KPiBuZWVkIHRoZSBjb21tZW50IHRh
bGtpbmcgYWJvdXQgcmFuZG9tIGZlYXR1cmVzLCBhbmQgaW5zdGVhZCBmb2N1cyBvbiB3aHkKPiBu
b3Qgc3VwcG9ydGluZyB0aGUgYmFjayBjaGFubmVsIGlzIHdvcnRoIHRoZSBtYWludGVuYW5jZSBj
b3N0IG9mCj4gZGl2ZXJnZW5jZS4KClllYWggdGhhdCdzIG11Y2ggYmV0dGVyLgoKPiA+ICsgICAg
ICAgICAgICAgICByZXR1cm4gLUVPUE5PVFNVUFA7Cj4gPiArCj4gPiAgICAgICAgIG9iaiA9IGk5
MTVfZ2VtX29iamVjdF9sb29rdXAoZmlsZSwgYXJncy0+aGFuZGxlKTsKPiA+ICAgICAgICAgaWYg
KCFvYmopCj4gPiAgICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9FTlQ7Cj4gPiBAQCAtNDAyLDYg
KzQwNyw5IEBAIGk5MTVfZ2VtX2dldF90aWxpbmdfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRl
diwgdm9pZCAqZGF0YSwKPiA+ICAgICAgICAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9i
ajsKPiA+ICAgICAgICAgaW50IGVyciA9IC1FTk9FTlQ7Cj4gPgo+ID4gKyAgICAgICBpZiAoSU5U
RUxfR0VOKGRldl9wcml2KSA+PSAxMikKPiA+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVPUE5P
VFNVUFA7Cj4KPiBOb3QgcmVxdWlyZWQuCgpJIGZpZ3VyZWQgc2luY2Ugd2UgaGF2ZSBhIGxvdCBv
ZiBvbGQgbGliZHJtIHRoYXQgbG92ZWQgdG8gZG8KZ2V0X3RpbGluZyB0aGlzIHdvdWxkIGhlbHAg
aW4gY2F0Y2hpbmcgdGhlbS4gVGhhdCdzIHdoeSBJIHB1dCBpdCBpbi4KUGx1cyBqdXN0IHNvbWUg
b2NkLCBpZiB0aGUgc2V0IGlzIGdvbmUsIGtpbGwgdGhlIGdldCBvbmUgdG9vLiBPdG9oIHdlCm1p
Z2h0IHN0aXIgc29tZXRoaW5nIHVwLgotRGFuaWVsCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJl
IEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgorNDEgKDApIDc5IDM2NSA1NyA0OCAtIGh0dHA6
Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
