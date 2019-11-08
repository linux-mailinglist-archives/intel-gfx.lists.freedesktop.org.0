Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C50D8F445C
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 11:20:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C2386F90D;
	Fri,  8 Nov 2019 10:20:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com
 [IPv6:2607:f8b0:4864:20::244])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3746C6F90D
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 10:20:35 +0000 (UTC)
Received: by mail-oi1-x244.google.com with SMTP id e9so4774108oif.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 08 Nov 2019 02:20:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YxIVlSs5RDB7Kezq+POuPZJVLVtG3aCIadJJv5Y05Tg=;
 b=jymCMxKe4xwm9G0U3E9rVvqVJlLLqOS5jCKEI8kzlZ3thcyXr5KCVEaLR4h0qmS7no
 /AIx8GYyCDVBmTm4holUbNqG8P6phTnP/RHRtsKx5DgYSvdHSW1QP2UziprwUu5E1hQe
 5Hzkb/g5iNPNtfNAaGzDsYN4hQ3C2BX+MX0UmPaJtYEsyS6os61EW9CApUlQnpRgGICN
 9o+q4x2afiOUFHEh1BkaQdQFHUFAdJkFHiBmBp1buUK15z0+s7S0e8y5L5zxSj2c+8cl
 F/ygt+eoxedkz5IbsbZGqFZVjJipQkzK7kF0DGwYdnX4g7eU+sO1cX3sh5tImxShvMzH
 r1FA==
X-Gm-Message-State: APjAAAUbgzdBKDy/rnJs/pz/7a5li6TWolNM1/kmc5CFb4kP9JuNfIL4
 FFHQy/fk1tcZwzBs49gNCHliXn03kVg5aP1NJUVrJw==
X-Google-Smtp-Source: APXvYqxZ7hKwsO8mBk/N3b+4XV9D21ZyHOk6p0g3NeWKqCh35W5FjxnqLEMBHFnoeVb+/X2nkaFai74FVbXOTOcm8Gs=
X-Received: by 2002:aca:ead7:: with SMTP id i206mr9007166oih.128.1573208434421; 
 Fri, 08 Nov 2019 02:20:34 -0800 (PST)
MIME-Version: 1.0
References: <20191106154810.5843-1-chris@chris-wilson.co.uk>
 <20191106154810.5843-2-chris@chris-wilson.co.uk>
 <CAKMK7uFSfEPYgzeLtZXTOH7o77jDu7ULtvexq-=R6jeXwsLGTQ@mail.gmail.com>
 <157320790442.9461.15671764737191591137@skylake-alporthouse-com>
In-Reply-To: <157320790442.9461.15671764737191591137@skylake-alporthouse-com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 8 Nov 2019 11:20:23 +0100
Message-ID: <CAKMK7uE5tCFHALPQbYJkJdC0iVXMeO3ut37MrT02f4e6aveEhQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=YxIVlSs5RDB7Kezq+POuPZJVLVtG3aCIadJJv5Y05Tg=;
 b=iNgxPAxLnwGALSpfrQNezUdX3bggCM2z+NedozeZ6U8m2aP3iVdpRLU5SA7Eoxly/M
 z3pR3VVWVT2LIOwC5AK8WlNRrxLLlwHnUKzfjthQg+AgFgwgqRciRnEf0nrQzzJlD3/9
 qr2kFu+s+Qgscl0SPkGS9lSNP8NhuqjRxlwgE=
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Drop inspection of execbuf
 flags during evict
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBOb3YgOCwgMjAxOSBhdCAxMToxMSBBTSBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4gd3JvdGU6Cj4gUXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDE5LTExLTA4
IDA5OjU0OjQyKQo+ID4gT24gV2VkLCBOb3YgNiwgMjAxOSBhdCA0OjQ5IFBNIENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cm90ZToKPiA+ID4KPiA+ID4gV2l0aCB0aGUg
Z29hbCBvZiByZW1vdmluZyB0aGUgc2VyaWFsaXNhdGlvbiBmcm9tIGFyb3VuZCBleGVjYnVmLCB3
ZSB3aWxsCj4gPiA+IG5vIGxvbmdlciBoYXZlIHRoZSBwcml2aWxlZ2Ugb2YgdGhlcmUgYmVpbmcg
YSBzaW5nbGUgZXhlY2J1ZiBpbiBmbGlnaHQKPiA+ID4gYXQgYW55IHRpbWUgYW5kIHNvIHdpbGwg
b25seSBiZSBhYmxlIHRvIGluc3BlY3QgdGhlIHVzZXIncyBmbGFncyB3aXRoaW4KPiA+ID4gdGhl
IGNhcmVmdWxseSBjb250cm9sbGVkIGV4ZWNidWYgY29udGV4dC4gaTkxNV9nZW1fZXZpY3RfZm9y
X25vZGUoKSBpcwo+ID4gPiB0aGUgb25seSB1c2VyIG91dHNpZGUgb2YgZXhlY2J1ZiB0aGF0IGN1
cnJlbnRseSBwZWVrcyBhdCB0aGUgZmxhZyB0bwo+ID4gPiBjb252ZXJ0IGFuIG92ZXJsYXBwaW5n
IHNvZnRwaW5uZWQgcmVxdWVzdCBmcm9tIEVOT1NQQyB0byBFSU5WQUwuIFJldHJhY3QKPiA+ID4g
dGhpcyBuaWNldHkgYW5kIG9ubHkgcmVwb3J0IEVOT1NQQyBpZiB0aGUgbG9jYXRpb24gaXMgaW4g
Y3VycmVudCB1c2UsCj4gPiA+IGVpdGhlciBkdWUgdG8gdGhpcyBleGVjYnVmIG9yIGFub3RoZXIu
Cj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgo+ID4gPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGlu
dXguaW50ZWwuY29tPgo+ID4gPiBSZXZpZXdlZC1ieTogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMu
bGFodGluZW5AbGludXguaW50ZWwuY29tPgo+ID4KPiA+IFNhbWUgcmVhc29ucyBhcyBmb3IgcGF0
Y2ggMywgSSBkb24ndCB0aGluayB3ZSBoYXZlIHRvIGRvIHRoaXMgYXQgYWxsLgo+Cj4gVGhpcyBp
cyBhbHJlYWR5IHVuZGVmaW5lZCBiZWhhdmlvdXIuIFRoYXQgZmllbGQgaXMgcHJvdGVjdGVkIGJ5
Cj4gc3RydWN0X211dGV4IGFuZCBiZWluZyBldmFsdWF0ZWQgb3V0c2lkZSBvZiB0aGF0IGxvY2su
CgpJZiB0aGlzIGNhbiBiZSBjYWxsZWQgb24gb2JqZWN0cyBpbnZvbHZlZCBpbiBleGVjYnVmLCB3
aXRob3V0CnN0cnVjdF9tdXRleCwgdGhlbiB3ZSBhbHJlYWR5IGhhdmUgYSBjb3JyZWN0bmVzcyBw
cm9ibGVtIG9mIHZtYSBzcGFjZQood2hpY2ggaXMgc3VwZXIgdGlnaHQgb24gb2xkIHBsYXRmb3Jt
cyBhbmQgcmF0aGVyIG11Y2ggcmVxdWlyZWQgdG8gYmUKd2VsbC1tYW5hZ2VkIGJlY2F1c2Ugb2Yg
dGhhdCkgYmVpbmcgbG9zdCBiZWNhdXNlIGNvbmN1cnJlbnQgdGhyZWFkcwp0aHJhc2ggaXQgaW5z
dGVhZCBvZiBmb3JtaW5nIGFuIG9yZGVybHkgcXVldWUuIEFuZCBpZiB0aGF0J3Mgbm90IHRoZQpj
YXNlLCBhbmQgdGhleSBkbyBmb3JtIGFuIG9yZGVybHkgcXVldWUsIHRoZW4gdGhlcmUncyBubyBw
cm9ibGVtIHNpbmNlCmV2ZW4gdGhlIGFzLW5lZWRlZC1vbmx5IG9yZGVybHkgcXVldWUgcHJvdmlk
ZWQgYnkgd3dfbXV0ZXggd2lsbCB0aGVuCmJlIGVub3VnaCBsb2NraW5nIHRvIGtlZXAgdGhpcyB3
b3JraW5nLgoKQXNpZGU6IFllYWggSSB0aGluayB3ZSBuZWVkIHRvIHJlLWFkZCBzdHJ1Y3RfbXV0
ZXggdG8gdGhlIGd0dCBmYXVsdApwYXRoLCB0aGUgdGVtcG9yYXJ5IHBpbm5pbmcgaW4gdGhlcmUg
Y291bGQgZWFzaWx5IHN0YXJ2ZSBleGVjYnVmIG9uCnBsYXRmb3JtcyB3aGVyZSBiYXRjaGVzIHJ1
biBpbiBnZ3R0LiBNYXliZSBhbHNvIHNvbWUgb3RoZXIgYXJlYXMgd2hlcmUKd2UgbG9zdCBzdHJ1
Y3RfbXV0ZXggYXJvdW5kIHRlbXBvcmFyeSB2bWEtPnBpbl9jb3VudCBlbGV2YXRpb25zLgotRGFu
aWVsCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlv
bgorNDEgKDApIDc5IDM2NSA1NyA0OCAtIGh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
