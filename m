Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE8F3D5CF9
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jul 2021 17:29:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54A426FE70;
	Mon, 26 Jul 2021 15:29:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com
 [IPv6:2607:f8b0:4864:20::72d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F83D6E86E;
 Mon, 26 Jul 2021 15:29:18 +0000 (UTC)
Received: by mail-qk1-x72d.google.com with SMTP id 190so9141726qkk.12;
 Mon, 26 Jul 2021 08:29:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=yHi9iP8VhJKDy5NqamcgKOvxPvjXye75S+SXX23nOBA=;
 b=fmOEe5cV+8QRTEHiOYo4ktj6O2bksYrTNPtjm+ez5wJZx0b/q+Mf7zhOun54o2LWTb
 N5+MZa4b8FHnbz4Y/82STZo5Gfr5JDowkTuCfZETBkv87JdKF1e9B+SEyk5J37c/JlQt
 PkLPGDaJ2e+CuqC6au4beV9Adr2mBpQXELkRg3YxJyxPLGn/aHvEd2nVbKCmEtwKeEcy
 qZl3BXSPWcUkIwkzYOBmZha+Z+yEs1LljHCTDs1vOanA8f98S95B6yTzl+0kTOffEfKh
 8GGfTj5RFfLqvbu1s7KA6AphLQy8h5yXMyZgk2yV2QPq+0oZ4OnVy42HjTOItBwh6r9p
 llMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=yHi9iP8VhJKDy5NqamcgKOvxPvjXye75S+SXX23nOBA=;
 b=f6B6TRFTmArhhCgZ9XiLtMAZ42ghnOrd25G4/++OoWX08dYoXhT0zGixE4JKSXpojG
 ozWn409QKZfuBVwVrC5z8S3MjKEgLc/Td4rByItsu8kBznZCK6OFUx5a3TTB7+nB75r0
 F47HgIDBAN2S/X+5bBSkxzZMaLqeWoeXSfLxG7YTQTF6yUSN/f2VlzqopXeDFgFbQaoI
 8hQry94vWinEXUSsCXHtJgF9Yaa7X0i0X6PC2wIarwDzJBdX45QY9ebtx7mKPQRM66Ii
 dH5mzo/Vj47BIniW4vGWAXXyke3j3TR4dMWmizoiAbn04B0xBae8RFj9gXD9OlKHW2Uw
 TSGw==
X-Gm-Message-State: AOAM530fpOxUCu6SMKW3FgjyZK00n7EmkGhfYryOD7c+CQwMZU50pKrZ
 ZLrXKqCxLvcmYJne8lplB6V72NxC7Kvo0qTn+pkF5kL4UUw=
X-Google-Smtp-Source: ABdhPJyVw4N4+vOc0K74rvcksdNbknBw/hubJu5StKgFL92qWFqxH6LOx+Qg+7J/wO7XuOV0T/6fc7p73g/XHYWhqNw=
X-Received: by 2002:a05:620a:a19:: with SMTP id
 i25mr17610579qka.426.1627313357295; 
 Mon, 26 Jul 2021 08:29:17 -0700 (PDT)
MIME-Version: 1.0
References: <20210723172142.3273510-1-jason@jlekstrand.net>
 <CAM0jSHOgJQni53DJWP0NWJTAR82PNmb6zgt2Gm-faBd1sDaSHA@mail.gmail.com>
 <CAOFGe95CVvM=7UvH3yBBx9Qr4OPrkRUG7QAXgnSLkWgPGef10g@mail.gmail.com>
In-Reply-To: <CAOFGe95CVvM=7UvH3yBBx9Qr4OPrkRUG7QAXgnSLkWgPGef10g@mail.gmail.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 26 Jul 2021 16:28:51 +0100
Message-ID: <CAM0jSHNmO8ZGdvLkJhonReHmNXjBkgvjmki-yLmUUkbLTnqeLQ@mail.gmail.com>
To: Jason Ekstrand <jason@jlekstrand.net>
Subject: Re: [Intel-gfx] [PATCH 0/8] drm/i915: Migrate memory to SMEM when
 imported cross-device (v8)
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyNiBKdWwgMjAyMSBhdCAxNjoxMSwgSmFzb24gRWtzdHJhbmQgPGphc29uQGpsZWtz
dHJhbmQubmV0PiB3cm90ZToKPgo+IE9uIE1vbiwgSnVsIDI2LCAyMDIxIGF0IDM6MTIgQU0gTWF0
dGhldyBBdWxkCj4gPG1hdHRoZXcud2lsbGlhbS5hdWxkQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPgo+
ID4gT24gRnJpLCAyMyBKdWwgMjAyMSBhdCAxODoyMSwgSmFzb24gRWtzdHJhbmQgPGphc29uQGps
ZWtzdHJhbmQubmV0PiB3cm90ZToKPiA+ID4KPiA+ID4gVGhpcyBwYXRjaCBzZXJpZXMgZml4ZXMg
YW4gaXNzdWUgd2l0aCBkaXNjcmV0ZSBncmFwaGljcyBvbiBJbnRlbCB3aGVyZSB3ZQo+ID4gPiBh
bGxvd2VkIGRtYS1idWYgaW1wb3J0IHdoaWxlIGxlYXZpbmcgdGhlIG9iamVjdCBpbiBsb2NhbCBt
ZW1vcnkuICBUaGlzCj4gPiA+IGJyZWFrcyBkb3duIHByZXR0eSBiYWRseSBpZiB0aGUgaW1wb3J0
IGhhcHBlbmVkIG9uIGEgZGlmZmVyZW50IHBoeXNpY2FsCj4gPiA+IGRldmljZS4KPiA+ID4KPiA+
ID4gdjc6Cj4gPiA+ICAtIERyb3AgImRybS9pOTE1L2dlbS90dG06IFBsYWNlIG5ldyBCT3MgaW4g
dGhlIHJlcXVlc3RlZCByZWdpb24iCj4gPiA+ICAtIEFkZCBhIG5ldyAiZHJtL2k5MTUvZ2VtOiBD
YWxsIGk5MTVfZ2VtX2ZsdXNoX2ZyZWVfb2JqZWN0cygpIGluIGk5MTVfZ2VtX2R1bWJfY3JlYXRl
KCkiCj4gPiA+ICAtIE1pc2MuIHJldmlldyBmZWVkYmFjayBmcm9tIE1hdHRoZXcgQXVsZAo+ID4g
PiB2ODoKPiA+ID4gIC0gTWlzYy4gcmV2aWV3IGZlZWRiYWNrIGZyb20gTWF0dGhldyBBdWxkCj4g
PiA+IHY5Ogo+ID4gPiAgLSBSZXBsYWNlIHRoZSBpOTE1L3R0bSBwYXRjaCB3aXRoIHR3byB0aGF0
IGFyZSBob3BlZnVsbHkgbW9yZSBjb3JyZWN0Cj4gPiA+Cj4gPiA+IEphc29uIEVrc3RyYW5kICg2
KToKPiA+ID4gICBkcm0vaTkxNS9nZW06IENoZWNrIG9iamVjdF9jYW5fbWlncmF0ZSBmcm9tIG9i
amVjdF9taWdyYXRlCj4gPiA+ICAgZHJtL2k5MTUvZ2VtOiBSZWZhY3RvciBwbGFjZW1lbnQgc2V0
dXAgZm9yIGk5MTVfZ2VtX29iamVjdF9jcmVhdGUqCj4gPiA+ICAgICAodjIpCj4gPiA+ICAgZHJt
L2k5MTUvZ2VtOiBDYWxsIGk5MTVfZ2VtX2ZsdXNoX2ZyZWVfb2JqZWN0cygpIGluCj4gPiA+ICAg
ICBpOTE1X2dlbV9kdW1iX2NyZWF0ZSgpCj4gPiA+ICAgZHJtL2k5MTUvZ2VtOiBVbmlmeSB1c2Vy
IG9iamVjdCBjcmVhdGlvbiAodjMpCj4gPiA+ICAgZHJtL2k5MTUvZ2VtL3R0bTogT25seSBjYWxs
IF9faTkxNV9nZW1fb2JqZWN0X3NldF9wYWdlcyBpZiBuZWVkZWQKPiA+ID4gICBkcm0vaTkxNS9n
ZW06IEFsd2F5cyBjYWxsIG9iai0+b3BzLT5taWdyYXRlIHVubGVzcyBjYW5fbWlncmF0ZSBmYWls
cwo+ID4gPgo+ID4gPiBUaG9tYXMgSGVsbHN0csO2bSAoMik6Cj4gPiA+ICAgZHJtL2k5MTUvZ2Vt
OiBDb3JyZWN0IHRoZSBsb2NraW5nIGFuZCBwaW4gcGF0dGVybiBmb3IgZG1hLWJ1ZiAodjgpCj4g
PiA+ICAgZHJtL2k5MTUvZ2VtOiBNaWdyYXRlIHRvIHN5c3RlbSBhdCBkbWEtYnVmIGF0dGFjaCB0
aW1lICh2NykKPiA+Cj4gPiBTaG91bGQgSSBwdXNoIHRoZSBzZXJpZXM/Cj4KPiBZZXMsIHBsZWFz
ZS4gIERvIHdlIGhhdmUgYSBzb2xpZCB0ZXN0aW5nIHBsYW4gZm9yIHRoaW5ncyBsaWtlIHRoaXMK
PiB0aGF0IHRvdWNoIGRpc2NyZXRlPyAgSSB0ZXN0ZWQgd2l0aCBtZXNhK2dseGdlYXJzIG9uIG15
IERHMSBidXQKPiBoYXZlbid0IHJ1biBhbnl0aGluZyBtb3JlIHN0cmVzc2Z1bC4KCkkgdGhpbmsg
YWxsIHdlIHJlYWxseSBoYXZlIGFyZSB0aGUgbWlncmF0aW9uIHJlbGF0ZWQgc2VsZnRlc3RzLCBh
bmQgQ0kKaXMgbm90IGV2ZW4gcnVubmluZyB0aGVtIG9uIERHMSBkdWUgdG8gb3RoZXIgYnJlYWth
Z2UuIEFzc3VtaW5nIHlvdQpyYW4gdGhlc2UgbG9jYWxseSwgSSB0aGluayB3ZSBqdXN0IG1lcmdl
IHRoZSBzZXJpZXM/Cgo+Cj4gLS1KYXNvbgo+Cj4KPiA+ID4KPiA+ID4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9jcmVhdGUuYyAgICB8IDE3NyArKysrKysrKy0tLS0tLS0tCj4g
PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMgICAgfCAgNTgg
KysrKy0tCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMg
ICAgfCAgMjAgKy0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmpl
Y3QuaCAgICB8ICAgNCArCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
dHRtLmMgICAgICAgfCAgMTMgKy0KPiA+ID4gIC4uLi9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5
MTVfZ2VtX2RtYWJ1Zi5jICB8IDE5MCArKysrKysrKysrKysrKysrKy0KPiA+ID4gIC4uLi9kcm0v
aTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21pZ3JhdGUuYyB8ICAxNSAtLQo+ID4gPiAgNyBm
aWxlcyBjaGFuZ2VkLCAzNDEgaW5zZXJ0aW9ucygrKSwgMTM2IGRlbGV0aW9ucygtKQo+ID4gPgo+
ID4gPiAtLQo+ID4gPiAyLjMxLjEKPiA+ID4KPiA+ID4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiA+ID4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+ID4g
PiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiA+IGh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
