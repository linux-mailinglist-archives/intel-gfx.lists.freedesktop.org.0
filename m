Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A7DF82F25
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Aug 2019 11:58:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93EF76E354;
	Tue,  6 Aug 2019 09:58:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com
 [IPv6:2607:f8b0:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 300A66E354
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2019 09:58:22 +0000 (UTC)
Received: by mail-ot1-x329.google.com with SMTP id j19so14336244otq.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 06 Aug 2019 02:58:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gBNR9wcc1G5seqDSwogJ8RSxV8p4/Jy3klM7w7p5V6I=;
 b=j0IOFBXU5t6GSuuA5MjPYGpkcKx3mYf+DLV/MHsa1hWt9w09bur0Qyo3JmwUD01FPo
 KhoRQWAWlwWzs3OGj6rJzZ+AfV91aw9BH2CWA2tIk1WbqsDR8txZmcQn+MeL989QTelM
 Tw6ZmhatyOsTv3KYMfGCUBGtNyJRKhVfiEeKqz91k2m6QRqu3ROYL73LO8eLzqMQz3Wx
 r6a7fPwLHNqq327v1usC5rRSsHGVIePoTrwo70Owz9TFOp5mLZmmJ+qywgR2o1Y4W7AP
 WMtEOr4Dd43MzH3bVfOeaqvOpYw2D141l/ubT8DOlf4WhlJ8HKDZH8ezCBnOdwsyiwlf
 86Xg==
X-Gm-Message-State: APjAAAWJTvHTrQWNnvDUYaYll4qpxUWPnBCMu8IccD/d4V4x1M6NHxfN
 7eCLWv0l27qzrVpb/gVBQ22B0FWVX4wuFR14VF+KaD9E/Ug=
X-Google-Smtp-Source: APXvYqxeAbLfsm6tZ22hO1q+yGAm+Dfg3lYoZuJpzxpqLH+aVPsgL3uoN3fD1+0fmgQMxzlBfThUIgekg5mxah0StH8=
X-Received: by 2002:a05:6830:ce:: with SMTP id
 x14mr2582069oto.188.1565085501417; 
 Tue, 06 Aug 2019 02:58:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190803104719.gwb6hmreeaqyye6n@flea>
 <CAPM=9tygocpAnOzJHy3TW2UQc0_6A86e7CpQT1CCMEhWfjzheg@mail.gmail.com>
 <CAKMK7uEHt2KBJoG21F_zqxbfkyVFRAoir__vZt1yheEFxpwUcg@mail.gmail.com>
 <CACvgo51Do4XDY9wRku-0v5B+mRRzV2+SgD=dvFT3J9TMf8RK9Q@mail.gmail.com>
 <CAKMK7uEcoQK+y6y2wW6GJzKDjtPZZ5gads3JY6xL+JiP+2QABQ@mail.gmail.com>
 <CACvgo50z6bGu4=jqEHCSUOd_geadEwuOcOquLiVRsCdRroG2fg@mail.gmail.com>
In-Reply-To: <CACvgo50z6bGu4=jqEHCSUOd_geadEwuOcOquLiVRsCdRroG2fg@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 6 Aug 2019 11:58:10 +0200
Message-ID: <CAKMK7uFpuLhR6eL+C15-kPYiEO1upU0+z9nz2BOhriKtSnqX5Q@mail.gmail.com>
To: Emil Velikov <emil.l.velikov@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=gBNR9wcc1G5seqDSwogJ8RSxV8p4/Jy3klM7w7p5V6I=;
 b=e4Yj0r/LTiKfBkTJ+ZINQK6k7qorKLSURuY/nFevjSIuQAvr5A59bpnwNzYTmZdDNV
 1D0DKSEnSQl09H80ufnZFfEaIme4t+DTGhDRuhUTC6uvoWo5zs6CX50Ain0qP5r9nOTd
 DMowK3noYy9/c4nMIPnyv1su1Y/iheYa05mYE=
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

T24gVHVlLCBBdWcgNiwgMjAxOSBhdCAxMTo1NSBBTSBFbWlsIFZlbGlrb3YgPGVtaWwubC52ZWxp
a292QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBUdWUsIDYgQXVnIDIwMTkgYXQgMTA6NDksIERh
bmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+IHdyb3RlOgo+ID4KPiA+IE9uIFR1
ZSwgQXVnIDYsIDIwMTkgYXQgMTE6NDAgQU0gRW1pbCBWZWxpa292IDxlbWlsLmwudmVsaWtvdkBn
bWFpbC5jb20+IHdyb3RlOgo+ID4gPiBPbiBUdWUsIDYgQXVnIDIwMTkgYXQgMDg6MzQsIERhbmll
bCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4g
T24gVHVlLCBBdWcgNiwgMjAxOSBhdCAyOjM0IEFNIERhdmUgQWlybGllIDxhaXJsaWVkQGdtYWls
LmNvbT4gd3JvdGU6Cj4gPiA+ID4gPgo+ID4gPiA+ID4gT24gU2F0LCAzIEF1ZyAyMDE5IGF0IDIw
OjQ3LCBNYXhpbWUgUmlwYXJkIDxtYXhpbWUucmlwYXJkQGJvb3RsaW4uY29tPiB3cm90ZToKPiA+
ID4gPiA+ID4KPiA+ID4gPiA+ID4gSGkgRGFuaWVsLCBEYXZlLAo+ID4gPiA+ID4gPgo+ID4gPiA+
ID4gPiBIZXJlIGlzIHRoZSBmaXJzdCAoYW5kIHByZXR0eSBsYXRlKSBkcm0tbWlzYy1uZXh0IFBS
Lgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBJdCdzIHByZXR0eSBiaWcgZHVlIHRvIHRoZSBsYXRl
bmVzcywgYnV0IHRoZXJlJ3Mgbm90aGluZyByZWFsbHkgbWFqb3IKPiA+ID4gPiA+ID4gc2hvd2lu
ZyB1cC4gSXQncyBwcmV0dHkgbXVjaCB0aGUgdXN1YWwgYnVuY2ggb2YgcmV3b3JrcywgZml4ZXMs
IGFuZAo+ID4gPiA+ID4gPiBuZXcgaGVscGVycyBiZWluZyBpbnRyb2R1Y2VkLgo+ID4gPiA+ID4g
Pgo+ID4gPiA+ID4KPiA+ID4gPiA+IGRpbTogNDE1ZDJlOWUwNzU3ICgiUmV2ZXJ0ICJkcm0vZ2Vt
OiBSZW5hbWUgZHJtX2dlbV9kdW1iX21hcF9vZmZzZXQoKQo+ID4gPiA+ID4gdG8gZHJtX2dlbV9t
YXBfb2Zmc2V0KCkiIik6IG1hbmRhdG9yeSByZXZpZXcgbWlzc2luZy4KPiA+ID4gPiA+IGRpbTog
YmU4NTUzODJiYWNiICgiUmV2ZXJ0ICJkcm0vcGFuZnJvc3Q6IFVzZSBkcm1fZ2VtX21hcF9vZmZz
ZXQoKSIiKToKPiA+ID4gPiA+IG1hbmRhdG9yeSByZXZpZXcgbWlzc2luZy4KPiA+ID4gPiA+IGRp
bTogZTRlZWU5M2QyNTc3ICgiZHJtL3ZnZW06IGRyb3AgRFJNX0FVVEggdXNhZ2UgZnJvbSB0aGUg
ZHJpdmVyIik6Cj4gPiA+ID4gPiBtYW5kYXRvcnkgcmV2aWV3IG1pc3NpbmcuCj4gPiA+ID4gPiBk
aW06IDg4MjA5ZDJjNTAzNSAoImRybS9tc206IGRyb3AgRFJNX0FVVEggdXNhZ2UgZnJvbSB0aGUg
ZHJpdmVyIik6Cj4gPiA+ID4gPiBtYW5kYXRvcnkgcmV2aWV3IG1pc3NpbmcuCj4gPiA+ID4gPiBk
aW06IGNjZGFlNDI1NzU2OSAoImRybS9ub3V2ZWF1OiByZW1vdmUgb3Blbi1jb2RlZCBkcm1faW52
YWxpZF9vcCgpIik6Cj4gPiA+ID4gPiBtYW5kYXRvcnkgcmV2aWV3IG1pc3NpbmcuCj4gPiA+ID4g
Pgo+ID4gPiA+ID4gUHJldHR5IHN1cmUgcmV2aWV3IGluIGRybS1taXNjLW5leHQgaXMgYSBydWxl
LiBJIGRvbid0IGV2ZW4gc2VlIGFja3MKPiA+ID4gPiA+IG9uIG1vc3Qgb2YgdGhlc2UuCj4gPiA+
ID4KPiA+ID4gPiBZZXMuIEkgZ3Vlc3MgZm9yIHJldmVydHMgaXQncyBub3QgY29vbCwgYnV0IGFs
c28gbm90IHRoZSB3b3JzdC4gU3RpbGwKPiA+ID4gPiBiZXR0ZXIgdG8gZ2V0IHNvbWVvbmUgdG8g
YWNrLCBoZWNrIEkgY2FuIHB1bGwgdGhhdCBvZmYgZm9yIGVtZXJnZW5jeQo+ID4gPiA+IHJldmVy
dHMgd2l0aCBhIGZldyBwaW5ncyBvbiBpcmMsIGFuZCB0aGUgMiByZXZlcnRzIGxhbmRlZCBtdWNo
IGxhdGVyLgo+ID4gPiA+IEJ1dCBmb3Igbm9ybWFsIHBhdGNoZXMgaXQncyBkZWZpbml0ZWx5IG5v
dCBvayBhdCBhbGwuIEFsc28gb25seQo+ID4gPiA+IHBvc3NpYmxlIGlmIHBlb3BsZSBieXBhc3Mg
dGhlIHRvb2xpbmcsIG9yIG92ZXJyaWRlIHRoZSB0b29saW5nIHdpdGgKPiA+ID4gPiB0aGUgLWYg
ZmxhZyB0byBmb3JjZSBhIHB1c2guCj4gPiA+ID4KPiA+ID4gPiBSb2IsIEVtaWwsIHdoYXQncyB1
cCBoZXJlPwo+ID4gPiA+Cj4gPiA+IEkndmUgZ290IHdhcyBhbiAiVGhhbmtzIiBbMV0gZnJvbSBC
ZW4gb24gdGhlIG5vdXZlYXUgcGF0Y2ggLSBzbyBJIG1lcmdlZCBpdC4KPiA+ID4gVGhlIG1zbSBh
bmQgdmdlbSBvbmVzIGFyZSBteSBiYWQgLSBtdXN0IGhhdmUgbWlzc2VkIHRob3NlIG9uZQo+ID4g
PiBpbmJldHdlZW4gdGhlIG90aGVyIHBhdGNoZXMuCj4gPgo+ID4gVGhlIHRoaW5nIGlzLCBkaW0g
cHVzaCBzaG91bGRuJ3QgYWxsb3cgeW91IHRvIGRvIHRoYXQuIEFuZCB0aGUgcGF0Y2hlcwo+ID4g
aGF2ZSBjbGVhcmx5IGJlZW4gYXBwbGllZCB3aXRoIGRpbSBhcHBseSAob3IgYXQgbGVhc3QgeW91
IGFkZGVkIHRoZQo+ID4gTGluayksIHVubGlrZSBSb2Igd2hvIHNlZW1zIHRvIGp1c3QgaGF2ZSBw
dXNoZWQgdGhlIHJldmVydC4KPiA+Cj4gVGhhbmtzLCBkaWQgbm90IGtub3cgYWJvdXQgZGltIHB1
c2guIFdpbGwgbWFrZSBzdXJlIEkgdXNlIGl0LgoKU28gdGhlIGludHJvIGRvYyBpc24ndCBnb29k
IGVub3VnaCwgYW5kIHdlIG5lZWQgdG8gZW5mb3JjZSBpdC4gSSB0aGluawpEYW5pZWwncyBpZGVh
IHdhcyB0byBoYXZlIGEgcHJlLW1lcmdlIGhvb2sgd2hpY2ggY2hlY2tzIGZvciBhIGdpdAp2YXJp
YWJsZSB1c2luZyAtLXB1c2gtb3B0aW9uLiBDYW4geW91IHBscyBsb29rIGludG8gdGhpcz8gSSBn
dWVzcyB3ZSdkCm5lZWQgdGhlIGRpbSBwYXRjaCwgYW5kIGV4YW1wbGUgcHJlbWVyZ2UgaG9vayB0
byBiZSBpbnN0YWxsZWQKc2VydmVyLXNpZGUuIFNob3VsZCBoYXZlIGEgbmljZSBlcnJvciBtZXNz
YWdlIHRvbyBvZmMuCi1EYW5pZWwKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIs
IEludGVsIENvcnBvcmF0aW9uCis0MSAoMCkgNzkgMzY1IDU3IDQ4IC0gaHR0cDovL2Jsb2cuZmZ3
bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
