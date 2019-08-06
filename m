Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9059A82F1E
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 11:56:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A5DC6E351;
	Tue,  6 Aug 2019 09:55:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com
 [IPv6:2607:f8b0:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FC896E34E
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 09:55:56 +0000 (UTC)
Received: by mail-ot1-x343.google.com with SMTP id n5so91065486otk.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 06 Aug 2019 02:55:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zUu8A5KWrfyfDX5wVGN3u1GTXLiVjWKKZPb/Abrxojg=;
 b=BSEv16VGAG65drKakVI8HbTwz8aMiv9wrWS/yIcKKLiiLl6Q8eJVA27rf+MuS5P1Gd
 WlXmkVfDCOcWRf+hG4UHjBgwmq3lMwXNAWNVm7Qy6iPHsU5Ly/SXWBaqcyX6TI+ujgp0
 hI5USdndm7GbC5Ki363ui6hb1go6uJfZdhiLINh9zxVi45fz2JSAW5fFsXQuVgPJknpM
 91DZPAsRhYUFbtpyN1veyhAAXd9imOI9X9xCV8JOeYo4buer4FvMrYnmfTSA6cBIRkFE
 2brB+sSvUSloW6CDAJfTXNur4XA7XzTtQniCD/M8FM1fWKMOB+4MeWcVmI79UT/V0oEg
 9T7w==
X-Gm-Message-State: APjAAAWDPTidUrldIV+tanVTjzi4t9lAhjHqCwAgw+tOaC9b7o8Q81ip
 VtUZusnN9F2cEmOMpjTA/g1+CxJRVDXWvxCrROM+tg==
X-Google-Smtp-Source: APXvYqxKBYclbuWIcx42gYVHEOERXWdd/tmd1HryNUf130fnmC1xUmxAdTKRcnYMDMQ8HFWc1GIWMH6xB0anuhJYi5A=
X-Received: by 2002:a9d:7451:: with SMTP id p17mr2555197otk.204.1565085355400; 
 Tue, 06 Aug 2019 02:55:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190803104719.gwb6hmreeaqyye6n@flea>
 <CAPM=9tygocpAnOzJHy3TW2UQc0_6A86e7CpQT1CCMEhWfjzheg@mail.gmail.com>
 <CAKMK7uEHt2KBJoG21F_zqxbfkyVFRAoir__vZt1yheEFxpwUcg@mail.gmail.com>
 <CACvgo51Do4XDY9wRku-0v5B+mRRzV2+SgD=dvFT3J9TMf8RK9Q@mail.gmail.com>
 <CAKMK7uEcoQK+y6y2wW6GJzKDjtPZZ5gads3JY6xL+JiP+2QABQ@mail.gmail.com>
In-Reply-To: <CAKMK7uEcoQK+y6y2wW6GJzKDjtPZZ5gads3JY6xL+JiP+2QABQ@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 6 Aug 2019 11:55:44 +0200
Message-ID: <CAKMK7uEpLbi78r1apUPKc_V_MRmSyXSW9s8674y-WRb11NFyyw@mail.gmail.com>
To: Emil Velikov <emil.l.velikov@gmail.com>,
 Daniel Stone <daniel@fooishbar.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=zUu8A5KWrfyfDX5wVGN3u1GTXLiVjWKKZPb/Abrxojg=;
 b=Zdlj9KYlRxWiB+NQ7bhKZ+Q7aT1aHukbjI4EBnDhSRwkdZU7sXK+hJnENtXSea0kUB
 gmdll0+kzwuIef1mi4ATx0SwzgONHJC09BCWCuvDVDh69yzU4cpCxBnxErKfcUdApqwM
 PHZiKJcU1B0SynnU3cB41zYqImCLTuAPYF0G0=
Subject: Re: [Intel-gfx] [PULL] drm-misc-next
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
Cc: Rob Herring <robh@kernel.org>, "DRM maintainer tools announcements,
 discussion, and development" <dim-tools@lists.freedesktop.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBBdWcgNiwgMjAxOSBhdCAxMTo0OSBBTSBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0
dGVyQGZmd2xsLmNoPiB3cm90ZToKPgo+IE9uIFR1ZSwgQXVnIDYsIDIwMTkgYXQgMTE6NDAgQU0g
RW1pbCBWZWxpa292IDxlbWlsLmwudmVsaWtvdkBnbWFpbC5jb20+IHdyb3RlOgo+ID4gT24gVHVl
LCA2IEF1ZyAyMDE5IGF0IDA4OjM0LCBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xs
LmNoPiB3cm90ZToKPiA+ID4KPiA+ID4gT24gVHVlLCBBdWcgNiwgMjAxOSBhdCAyOjM0IEFNIERh
dmUgQWlybGllIDxhaXJsaWVkQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+ID4KPiA+ID4gPiBPbiBT
YXQsIDMgQXVnIDIwMTkgYXQgMjA6NDcsIE1heGltZSBSaXBhcmQgPG1heGltZS5yaXBhcmRAYm9v
dGxpbi5jb20+IHdyb3RlOgo+ID4gPiA+ID4KPiA+ID4gPiA+IEhpIERhbmllbCwgRGF2ZSwKPiA+
ID4gPiA+Cj4gPiA+ID4gPiBIZXJlIGlzIHRoZSBmaXJzdCAoYW5kIHByZXR0eSBsYXRlKSBkcm0t
bWlzYy1uZXh0IFBSLgo+ID4gPiA+ID4KPiA+ID4gPiA+IEl0J3MgcHJldHR5IGJpZyBkdWUgdG8g
dGhlIGxhdGVuZXNzLCBidXQgdGhlcmUncyBub3RoaW5nIHJlYWxseSBtYWpvcgo+ID4gPiA+ID4g
c2hvd2luZyB1cC4gSXQncyBwcmV0dHkgbXVjaCB0aGUgdXN1YWwgYnVuY2ggb2YgcmV3b3Jrcywg
Zml4ZXMsIGFuZAo+ID4gPiA+ID4gbmV3IGhlbHBlcnMgYmVpbmcgaW50cm9kdWNlZC4KPiA+ID4g
PiA+Cj4gPiA+ID4KPiA+ID4gPiBkaW06IDQxNWQyZTllMDc1NyAoIlJldmVydCAiZHJtL2dlbTog
UmVuYW1lIGRybV9nZW1fZHVtYl9tYXBfb2Zmc2V0KCkKPiA+ID4gPiB0byBkcm1fZ2VtX21hcF9v
ZmZzZXQoKSIiKTogbWFuZGF0b3J5IHJldmlldyBtaXNzaW5nLgo+ID4gPiA+IGRpbTogYmU4NTUz
ODJiYWNiICgiUmV2ZXJ0ICJkcm0vcGFuZnJvc3Q6IFVzZSBkcm1fZ2VtX21hcF9vZmZzZXQoKSIi
KToKPiA+ID4gPiBtYW5kYXRvcnkgcmV2aWV3IG1pc3NpbmcuCj4gPiA+ID4gZGltOiBlNGVlZTkz
ZDI1NzcgKCJkcm0vdmdlbTogZHJvcCBEUk1fQVVUSCB1c2FnZSBmcm9tIHRoZSBkcml2ZXIiKToK
PiA+ID4gPiBtYW5kYXRvcnkgcmV2aWV3IG1pc3NpbmcuCj4gPiA+ID4gZGltOiA4ODIwOWQyYzUw
MzUgKCJkcm0vbXNtOiBkcm9wIERSTV9BVVRIIHVzYWdlIGZyb20gdGhlIGRyaXZlciIpOgo+ID4g
PiA+IG1hbmRhdG9yeSByZXZpZXcgbWlzc2luZy4KPiA+ID4gPiBkaW06IGNjZGFlNDI1NzU2OSAo
ImRybS9ub3V2ZWF1OiByZW1vdmUgb3Blbi1jb2RlZCBkcm1faW52YWxpZF9vcCgpIik6Cj4gPiA+
ID4gbWFuZGF0b3J5IHJldmlldyBtaXNzaW5nLgo+ID4gPiA+Cj4gPiA+ID4gUHJldHR5IHN1cmUg
cmV2aWV3IGluIGRybS1taXNjLW5leHQgaXMgYSBydWxlLiBJIGRvbid0IGV2ZW4gc2VlIGFja3MK
PiA+ID4gPiBvbiBtb3N0IG9mIHRoZXNlLgo+ID4gPgo+ID4gPiBZZXMuIEkgZ3Vlc3MgZm9yIHJl
dmVydHMgaXQncyBub3QgY29vbCwgYnV0IGFsc28gbm90IHRoZSB3b3JzdC4gU3RpbGwKPiA+ID4g
YmV0dGVyIHRvIGdldCBzb21lb25lIHRvIGFjaywgaGVjayBJIGNhbiBwdWxsIHRoYXQgb2ZmIGZv
ciBlbWVyZ2VuY3kKPiA+ID4gcmV2ZXJ0cyB3aXRoIGEgZmV3IHBpbmdzIG9uIGlyYywgYW5kIHRo
ZSAyIHJldmVydHMgbGFuZGVkIG11Y2ggbGF0ZXIuCj4gPiA+IEJ1dCBmb3Igbm9ybWFsIHBhdGNo
ZXMgaXQncyBkZWZpbml0ZWx5IG5vdCBvayBhdCBhbGwuIEFsc28gb25seQo+ID4gPiBwb3NzaWJs
ZSBpZiBwZW9wbGUgYnlwYXNzIHRoZSB0b29saW5nLCBvciBvdmVycmlkZSB0aGUgdG9vbGluZyB3
aXRoCj4gPiA+IHRoZSAtZiBmbGFnIHRvIGZvcmNlIGEgcHVzaC4KPiA+ID4KPiA+ID4gUm9iLCBF
bWlsLCB3aGF0J3MgdXAgaGVyZT8KPiA+ID4KPiA+IEkndmUgZ290IHdhcyBhbiAiVGhhbmtzIiBb
MV0gZnJvbSBCZW4gb24gdGhlIG5vdXZlYXUgcGF0Y2ggLSBzbyBJIG1lcmdlZCBpdC4KPiA+IFRo
ZSBtc20gYW5kIHZnZW0gb25lcyBhcmUgbXkgYmFkIC0gbXVzdCBoYXZlIG1pc3NlZCB0aG9zZSBv
bmUKPiA+IGluYmV0d2VlbiB0aGUgb3RoZXIgcGF0Y2hlcy4KPgo+IFRoZSB0aGluZyBpcywgZGlt
IHB1c2ggc2hvdWxkbid0IGFsbG93IHlvdSB0byBkbyB0aGF0LiBBbmQgdGhlIHBhdGNoZXMKPiBo
YXZlIGNsZWFybHkgYmVlbiBhcHBsaWVkIHdpdGggZGltIGFwcGx5IChvciBhdCBsZWFzdCB5b3Ug
YWRkZWQgdGhlCj4gTGluayksIHVubGlrZSBSb2Igd2hvIHNlZW1zIHRvIGp1c3QgaGF2ZSBwdXNo
ZWQgdGhlIHJldmVydC4KPgo+IElmIHlvdSB1c2VkIGdpdCBwdXNoIGRpcmVjdGx5LCB0aGVuIEkg
Z3Vlc3MgeW91IGp1c3Qgdm9sdW50ZWVyZWQgdG8KPiBpbXBsZW1lbnQgRGFuaWVsIFN0b25lJ3Mg
aWRlYSB0byBlbmZvcmNlIGRpbSB0b29saW5nLiBBZGRpbmcgRGFuaWVsLAo+IHNpbmNlIEkgZ3Vl
c3MgdGhhdCB3YXMganVzdCBhbiBpcmMgY2hhdC4KCkhlbHBzIGlmIEkgYWN0dWFsbHkgYWRkIERh
bmllbC4KLURhbmllbAotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwg
Q29ycG9yYXRpb24KKzQxICgwKSA3OSAzNjUgNTcgNDggLSBodHRwOi8vYmxvZy5mZndsbC5jaApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
