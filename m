Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E9B7800B4
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 21:13:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B3A56EF52;
	Fri,  2 Aug 2019 19:13:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com
 [IPv6:2607:f8b0:4864:20::243])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C48A6EF52
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 19:13:07 +0000 (UTC)
Received: by mail-oi1-x243.google.com with SMTP id e189so57475883oib.11
 for <intel-gfx@lists.freedesktop.org>; Fri, 02 Aug 2019 12:13:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uLzIMOVKZWwpoJc+be3GV5NcOLGBb8UzuCproWpszlI=;
 b=G9eu4rTIfhigwKvFCpea4F8HRxJHiSNoR6oi92VImc2wKrFnOof3FRnnqO12pOFxeu
 cSYbiffSGXaFmGiwEV79TaN1TE05XYC/fC6w1IrIk91B/iZ/c5ssgO9DJlxoL0Iy5LX1
 PPB6ZT7hGQsPhaMiT81X71LjmRtntg503gGk0+D/Ocnj24aYij+1/I64xWtX4dPYMqdg
 7ht8oRhTIpR3XOCEAsxPX26og1qRGMx4Q3XSKiUGZE9ZOGmK6Ugrjsehjt0B2Bgv+WdC
 9E77jXC8bIbGJUyNYMP4R2HN1ZGc9lfIDYqXzzjVmIftvW2XlmnUmdzQL93pL2c+KRfV
 FHTA==
X-Gm-Message-State: APjAAAX29VdqNYmqAGBG4hs6HquUNmW10wWfmrcxzE6RNrjAnja4E93e
 ew4Mrs2d7ucLxw0tkO0G+jH+t3WVwPMS/VjJixQ=
X-Google-Smtp-Source: APXvYqwqkxStdXP4iGDeTWsOaETJVF8Vt8tLdTA1Vm2gLH5ygucOBIByOiOHR5/M/g/ykxDPVrRkx1+VibDwhMlHg+Y=
X-Received: by 2002:aca:5403:: with SMTP id i3mr3752822oib.132.1564773186527; 
 Fri, 02 Aug 2019 12:13:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190730205805.3733-1-chris@chris-wilson.co.uk>
 <CAM0jSHOZVBrPNh2s8LmNOXcfSQG1U1DnjoJd0rr8ZfdfUNPetQ@mail.gmail.com>
 <156475835946.6598.281229222100210466@skylake-alporthouse-com>
In-Reply-To: <156475835946.6598.281229222100210466@skylake-alporthouse-com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 2 Aug 2019 21:12:54 +0200
Message-ID: <CAKMK7uHuZbWjnit6U0EAJBJXK2SjBamqSoJcLub5=LJSOG=Epg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=uLzIMOVKZWwpoJc+be3GV5NcOLGBb8UzuCproWpszlI=;
 b=CAp3DVaNAdnHuLTT4h4yTxRtNmQkbqzohM5LTPLvm0n9XbayEQj12eUw8vZWATqeVl
 v+lKU8m0Vfdix0/YtFKyh/6WIcszC9LqJdFO8goPzpkNYU6NwxovImCmJ3bKDtBAAC/C
 f8k32CzT7jmkiTcUyHK/VbRLYh+Sk8dI/a+v8=
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Report resv_obj allocation failure
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBBdWcgMiwgMjAxOSBhdCA1OjA2IFBNIENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPiB3cm90ZToKPgo+IFF1b3RpbmcgTWF0dGhldyBBdWxkICgyMDE5LTA4LTAy
IDE2OjAwOjE4KQo+ID4gT24gVHVlLCAzMCBKdWwgMjAxOSBhdCAyMTo1OCwgQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyb3RlOgo+ID4gPgo+ID4gPiBTaW5jZSBjb21t
aXQgNjRkNmM1MDBhMzg0ICgiZHJtL2k5MTU6IEdlbmVyYWxpc2UgR1BVIGFjdGl2aXR5Cj4gPiA+
IHRyYWNraW5nIiksIHdlIGhhdmUgYmVlbiBwcmVwYXJlZCBmb3IgaTkxNV92bWFfbW92ZV90b19h
Y3RpdmUoKSB0byBmYWlsLgo+ID4gPiBXZSBjYW4gdGFrZSBhZHZhbnRhZ2Ugb2YgdGhpcyB0byBy
ZXBvcnQgdGhlIGZhaWx1cmUgZm9yIGFsbG9jYXRpbmcgdGhlCj4gPiA+IHNoYXJlZC1mZW5jZSBz
bG90IGluIHRoZSByZXNlcnZhdGlvbl9vYmplY3QuCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gUmV2aWV3ZWQtYnk6
IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPgo+IFRoYW5rcy4gT25lIGRh
eSwgd2Ugc2hvdWxkIGxpZnQgZXZlbiB0aGUgcmVzZXJ2YXRpb24gYWxsb2NhdGlvbiBvdXQgb2YK
PiB0aGUgcmVzZXJ2YXRpb24gbG9jay4gKFRoYXQgd2lsbCBtYWtlIGl0IG1vdmUgY29udmVuaWVu
dCB0byB1c2UgdGhhdAo+IGxvY2sgZnJvbSBpbnNpZGUgZnMtcmVjbGFpbSBwYXRocy4pCgpCZWlu
ZyBhYmxlIHRvIGFsbG9jYXRlIG1lbW9yeSB3aGlsZSBob2xkaW5nIHRoZSByZXNlcnZhdGlvbl9v
YmogbG9jawppcyBmYWlybHkgZnVuZGFtZW50YWwgYXNzdW1wdGlvbiBpbiBhbGwgdHRtIGJhc2Vk
IGRyaXZlcnMuIFNvIEkgZG9udAp0aGluayB0aGF0J2xsIHdvcmsgb3V0LCBzaW5jZSBldmVuIGZv
ciBvdXIgb3duIG9iamVjdHMgZG1hLWJ1ZiBjYW4Kc2hhcmUgdGhlbSB3aWRlbHkuCi1EYW5pZWwK
LS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0aW9uCis0
MSAoMCkgNzkgMzY1IDU3IDQ4IC0gaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
