Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A39B4B715
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 13:31:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F9D56E377;
	Wed, 19 Jun 2019 11:31:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com
 [IPv6:2607:f8b0:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B9076E372
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 11:31:50 +0000 (UTC)
Received: by mail-oi1-x241.google.com with SMTP id v186so10274669oie.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 04:31:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a590KSuKPMz/+0KqNFnVOBURWvKiukLsqi7JKku8bGk=;
 b=nbGFlviE4JeovlSk3ilOLxX92tnM/7YvqgylnpFyUIsE5OU+XVTlbkYDiHT6llv733
 dgIWMNNDW3UTxb/lbzLtFirdOzmxsxwd3Wo4sgLQxZxCm1GPSAa/xRct4EYk5EIUT3Ee
 hMFrK3TFcs+sIklfVJW8moWUYGcxQ28sn6DDEFHkSEJmsCvw+jYm0PrB8Ls47Tc52QG8
 SzFOajf7RwHejJtcBErsl59GSeRTR2aWIW+3Q+FytYWSYZW50FPusJZnj3x3PN9f1S7h
 JMjgdWt72b1oBKW/ZY3vk4+BsmXrmW3JY1Hmp369W/PHVWvKms3w5ErMxjiBpUtYkP0t
 9Fsg==
X-Gm-Message-State: APjAAAXKxezvjIDJY1EtaRYhZq+EyZSl6H1/Ncc2GQ5HVFUyghb6/3h+
 RodwA4YPsTHGzI87dg0J/Q6vZ1Rqira2ycNbJcUWtQ==
X-Google-Smtp-Source: APXvYqwYHdPMsxsyTz9llTeAJtepKqBkzcKu5USkUS0oxtzCjFmrDwpZCEsVuzJwx59cA54J1ffyxoJ71o/hM/nsOYg=
X-Received: by 2002:aca:b104:: with SMTP id a4mr2139266oif.14.1560943909608;
 Wed, 19 Jun 2019 04:31:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190614203615.12639-1-daniel.vetter@ffwll.ch>
 <20190614203615.12639-41-daniel.vetter@ffwll.ch>
 <20190617082438.s5eypq5lf6s33nyz@sirius.home.kraxel.org>
 <20190617135912.GB12905@phenom.ffwll.local>
 <20190618044925.qljngiypdch4wdsw@sirius.home.kraxel.org>
 <CAKMK7uGzO-r5MtU+EPWiqq=J_XuF5mRo8t_br2k++Uwd0+E2Zw@mail.gmail.com>
 <20190619112117.fook3u4at5nvepsk@sirius.home.kraxel.org>
In-Reply-To: <20190619112117.fook3u4at5nvepsk@sirius.home.kraxel.org>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 19 Jun 2019 13:31:36 +0200
Message-ID: <CAKMK7uE-JSc2mMoB8uKk7YiXaSCM0Eyauv+rFbmAJfuEm7F-iA@mail.gmail.com>
To: Gerd Hoffmann <kraxel@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=a590KSuKPMz/+0KqNFnVOBURWvKiukLsqi7JKku8bGk=;
 b=WtAd7zdVvgA9nTHUYR1dFNKRC4N1O6a2aP/UB13ytvS7rvWIQsQI/XBsV5yQkSUG9V
 swzeB+7Xrj+4liP35uAhcvDSjaZnsppIWLoHbTl6S4lsQIxP+XNMzlZeWUpHNdqxrVYN
 Tmswu0ToqgdnAp4Oj7/FhNmpoD1qfbf1Emf3M=
Subject: Re: [Intel-gfx] [PATCH 40/59] drm/vram-helper: Drop
 drm_gem_prime_export/import
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 David Airlie <airlied@linux.ie>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBKdW4gMTksIDIwMTkgYXQgMToyMSBQTSBHZXJkIEhvZmZtYW5uIDxrcmF4ZWxAcmVk
aGF0LmNvbT4gd3JvdGU6Cj4KPiAgIEhpLAo+Cj4gPiA+ID4gU2Vjb25kIG9uZSBpcyBkcm1fZHJp
dmVyLT5mb3BzLT5tbWFwLiBUaGF0IG9uZSB3ZSBuZWVkIHRvIGtlZXAsIGJ1dCB0aGlzCj4gPiA+
ID4gaXNuJ3QgbW1hcCBvbiBhIGJ1ZmZlciwgYnV0IG1tYXAgb24gdGhlIGVudGlyZSBkcm1fZGV2
aWNlLiBUaGUgb25lIHdoaWNoCj4gPiA+ID4gc2hvdWxkIGJlIHJlcGxhY2VkIGJ5IGRybV9nZW1f
b2JqZWN0X2Z1bmNzLnZtX29wcyBpcwo+ID4gPiA+IGRybV9kcml2ZXItPmdlbV92bV9vcHMuCj4g
PiA+Cj4gPiA+IEhtbSwgc2VlbXMgdHRtIGhhc24ndCBzb21ldGhpbmcgSSBjYW4gaG9vayBpbnRv
IGRybV9kcml2ZXItPmdlbV92bV9vcHMgLi4uCj4gPgo+ID4gdHRtX2JvX3ZtX29wcyBzZWVtcyB0
byBiZSB0aGUgdGhpbmcgeW91IHdhbnQuCj4KPiBXb3VsZG4ndCB3b3JrIGFzLWlzLCBidXQgd2hl
biB0dG0gYm8gYXJlIGEgc3ViY2xhc3Mgb2YgZ2VtIGJvcyBzaG91bGQKPiBiZSBwb3NzaWJsZSB0
byBjcmVhdGUgc29tZXRoaW5nIHVzYWJsZSBiYXNlZCBvbiBpdC4KCllvdSdkIG5lZWQgdG8gY3Jl
YXRlIGRyaXZlci1zcGVjaWZpYyB3cmFwcGVycywgYnV0IHRoYXQncyBzb21ld2hhdApkZWZlYXRp
bmcgdGhlIHBvaW50LgoKPiBSZWxhdGVkIHF1ZXN0aW9uOiB3aHkgdGhlcmUgaXMgbm8gZHJtX2dl
bV9vYmplY3RfZnVuY3MubW1hcCgpIGNhbGxiYWNrPwo+IEkgdGhpbmsgaXQgd291bGQgbWFrZSBz
ZW5zZSB0byBoYXZlIGEgY2FsbGJhY2sgd2hlcmUgdGhlIGJvLXNwZWNpZmljCj4gc2V0dXAgY2Fu
IGJlIGRvbmUsIGkuZS4gd2hhdCB0dG1fYm9fbW1hcCgpIG9yIGRybV9nZW1fc2htZW1fbW1hcCgp
IGFyZQo+IGRvaW5nLCBhbmQgaGF2ZSBzb21lIGdlbmVyaWMgZnVuY3Rpb24gd2hpY2ggYmFzaWNh
bGx5IGRvZXMgdGhlIGxvb2t1cCwKPiB0aGVuIGRpc3BhdGNoZXMuCgpNYXliZS4gQXRtIGFsbCB3
ZSBoYXZlIGFyb3VuZCBtbWFwIGlzIGEgc3ByYXdsaW5nIG51bWJlciBvZiBkaWZmZXJlbnQKc29s
dXRpb25zLiBBdG0gSSdtIG5vdCByZWFsbHkgc3VyZSB3aGljaCBkaXJlY3Rpb24gd2UgcmVhbGx5
IHNob3VsZApoZWFkIGludG8gLi4uCi1EYW5pZWwKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUg
RW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCis0MSAoMCkgNzkgMzY1IDU3IDQ4IC0gaHR0cDov
L2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
