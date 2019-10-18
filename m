Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CDE0DCFCB
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 22:11:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 155A26E145;
	Fri, 18 Oct 2019 20:11:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com
 [IPv6:2607:f8b0:4864:20::b42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06CEE6E118
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 20:11:42 +0000 (UTC)
Received: by mail-yb1-xb42.google.com with SMTP id s7so2200615ybq.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 13:11:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=of94xAh46G4tHpFykOfl5V1ZK7lE9OKv5y7rcTslIKM=;
 b=kZb6j4kDjvhuqkX9zDsognf16A43iMeIvqVMtfsjpaTYIH9mMc5VX7arYUM1gHj0Jb
 nzCwbD/QCHjcjbtus7bqwtb3EMG5rCz8+3LjG2Vf9iT4tizRyf55goglknxnQNhBZXRd
 wKtJrer58ZzlEZyWrPREt/B65E61YfWi+ca0hOgam4SCrmZO8l4c7wEIXYW4Cwt4/It7
 R9Sr7Nj8JDuLnDYGh5qNzqU1gy1CG00Ky+x8fDcy+SfVxbYj2PMmznkGUj2vd77xBuUj
 bkJ6X022yrjCbjup0ziKfU/pELJIZt7d8WEofVHjhLPcYN1t8UvIwKwBxONmPgaAwQAT
 EVWQ==
X-Gm-Message-State: APjAAAWsB0ai8gwPUwP/o5KK8mD1RNvu2AVEVsjVdg7SMAkKzsSgGY+z
 5DiDErFwlyGZZL0+nSYvHnQSjAE8rBK14BVXH9uTgg==
X-Google-Smtp-Source: APXvYqyuvw4KkTyguscwqk48Hmfq2vEbhv/xe8yiWGhcGYXg57ouH6ecqtfEUsF/0fZhpaqYBLczx6+L1vgOjc4IsYs=
X-Received: by 2002:a25:3508:: with SMTP id c8mr6379070yba.256.1571429500917; 
 Fri, 18 Oct 2019 13:11:40 -0700 (PDT)
MIME-Version: 1.0
References: <20191017192601.GA215957@art_vandelay>
 <febda9e7-d62b-128c-819a-71c57d9c001d@ti.com>
In-Reply-To: <febda9e7-d62b-128c-819a-71c57d9c001d@ti.com>
From: Sean Paul <sean@poorly.run>
Date: Fri, 18 Oct 2019 16:11:05 -0400
Message-ID: <CAMavQKKBUk+tXYE3Z4Q7mh+tRqQEZ+vsJaLYEhT95=e3i31AdQ@mail.gmail.com>
To: Tomi Valkeinen <tomi.valkeinen@ti.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=poorly.run; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=of94xAh46G4tHpFykOfl5V1ZK7lE9OKv5y7rcTslIKM=;
 b=RLnracYgVeJA5Muh53y2/LY1QO+RrZvktvAimeMEniXn0u+9v3PqmM4P9n2V/XQuG5
 urVUV0n/t1MDDFyEuocwXod65wsFJUM+LihCmuBJsk+12PCJc7KUUBsnhNYaJJVChwHS
 Lrs9TSXO1oCf2DdRYH27MpeMGtU94OHlGtKc/R5ky2w/0wHgYzhj2EZiamiYWUgu90uP
 vFbGYk03IZf2DZQgDeDVQI+d9oq/7fg5nGGctHtRf2khMu6CMflbtKH7wy+7DhfZQ/4i
 0oqJnkYcw74/ro6wV3/NjW/OHgG9VHrvlJMNdV2Sd+SmAH0TyOij9wSWFKPnIHrdzPV7
 uJ1A==
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 dri-devel <dri-devel@lists.freedesktop.org>, Gerd Hoffmann <kraxel@redhat.com>,
 Sam Ravnborg <sam@ravnborg.org>, "DRM maintainer tools announcements,
 discussion, and development" <dim-tools@lists.freedesktop.org>,
 Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>,
 Steven Price <steven.price@arm.com>, Robert Chiras <robert.chiras@nxp.com>,
 Jean-Jacques Hiblot <jjhiblot@ti.com>, Lowry Li <Lowry.Li@arm.com>,
 Jonas Karlman <jonas@kwiboo.se>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Ezequiel Garcia <ezequiel@collabora.com>,
 Wen He <wen.he_1@nxp.com>, Simon Ser <contact@emersion.fr>,
 Oleg Vasilev <omrigann@gmail.com>, Qiang Yu <yuq825@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBPY3QgMTgsIDIwMTkgYXQgOTo0NiBBTSBUb21pIFZhbGtlaW5lbiA8dG9taS52YWxr
ZWluZW5AdGkuY29tPiB3cm90ZToKPgo+IEhpIFNlYW4sCj4KPiBPbiAxNy8xMC8yMDE5IDIyOjI2
LCBTZWFuIFBhdWwgd3JvdGU6Cj4KPiA+IGNvbmNlcm4gZm9yIHRob3NlLiBUaGUgb21hcCBPTUFQ
X0JPX01FTV8qIGNoYW5nZXMgdGhvdWdoIEkgZG9uJ3QgdGhpbmsgaGF2ZQo+ID4gcmVhbGx5IHJl
YWNoZWQgbm9uLVRJIGV5ZXMuIFRoZXJlJ3Mgbm8gbGluayBpbiB0aGUgY29tbWl0IG1lc3NhZ2Ug
dG8gYSBVQVBJCj4gPiBpbXBsZW1lbnRhdGlvbiBhbmQgdGhlIG9ubHkgcmVmZXJlbmNlIEkgY291
bGQgZmluZCBpcyBsaWJrbXN4eCB3aGljaCBjYW4gc2V0Cj4gPiB0aGVtIHRocm91Z2ggdGhlIHB5
dGhvbiBiaW5kaW5ncy4gU2luY2UgdGhpcyBpcyBUSS1zcGVjaWZpYyBndW5rIGluIFRJLXNwZWNp
ZmljCj4gPiBoZWFkZXJzIEknbSBpbmNsaW5lZCB0byBsZXQgaXQgcGFzcywgYnV0IEkgd291bGQg
aGF2ZSBsaWtlZCB0byBoYXZlIHRoaXMKPiA+IGNvbnZlcnNhdGlvbiB1cGZyb250LiBJIGZpZ3Vy
ZWQgSSdkIGNhbGwgdGhpcyBvdXQgc28geW91IGhhdmUgZmluYWwgc2F5Lgo+Cj4gVGhlcmUgd2Fz
IHNvbWUgZGlzY3Vzc2lvbiBhYm91dCB0aGF0IGEgZmV3IHllYXJzIGJhY2sgd2hlbiBJIGluaXRp
YWxseQo+IHNlbnQgdGhlIHBhdGNoZXMsIGJ1dCBub3cgdGhhdCBJIGxvb2ssIHRoZSBkaXNjdXNz
aW9uIGRpZWQgYmVmb3JlIHJlYWxseQo+IGV2ZW4gc3RhcnRpbmcuCj4KPiBUaGlzIGlzIHdoYXQg
SSBzYWlkIGFib3V0IHVzZXJzcGFjZSBpbXBsZW1lbnRhdGlvbjoKPgo+ID4gWWVzLCB1bmZvcnR1
bmF0ZWx5IHRoYXQgaXMgbm90IGdvaW5nIHRvIGhhcHBlbi4gSSBkb24ndCBzZWUgaG93IHRoaXMK
PiA+IGNvdWxkIGJlIHVzZWQgaW4gYSBnZW5lcmljIHN5c3RlbSBsaWtlIFdlc3RvbiBvciBYLiBJ
dCdzIG1lYW50IGZvciB2ZXJ5Cj4gPiBzcGVjaWZpYyB1c2UgY2FzZXMsIHdoZXJlIHlvdSBrbm93
IGV4YWN0bHkgdGhlIHJlcXVpcmVtZW50cyBvZiB5b3VyCj4gPiBhcHBsaWNhdGlvbiBhbmQgdGhl
IGNhcGFiaWxpdGllcyBvZiB0aGUgd2hvbGUgc3lzdGVtLCBhbmQgb3B0aW1pemUgYmFzZWQKPiA+
IG9uIHRoYXQuCgpUaGFua3MgZm9yIHRoZSBjb250ZXh0LCBUb21pLgoKSW5kZWVkIGl0IGxvb2tz
IGxpa2UgdGhlIGRpc2N1c3Npb24gZGllZCwgYnV0IExhdXJlbnQgc3RpbGwgYnJvdWdodCB1cAp0
aGUgdS9zIHJlcXVpcmVtZW50IGFuZCB0aGUgcGF0Y2ggd2FzIGVmZmVjdGl2ZWx5IGRlYWQgdW50
aWwgRGFuaWVsIG9yCkRhdmUgd2VpZ2hlZCBpbi4gSSdkIGV4cGVjdCBhdCBsZWFzdCBzb21lIG91
dHJlYWNoIGJlZm9yZSBwdXNoaW5nIHRoZQpwYXRjaCBkaXJlY3RseSAyKyB5ZWFycyBsYXRlci4g
SGFzIGFueXRoaW5nIGNoYW5nZWQgc2luY2UgdGhlbj8KCgo+IEkga25vdyB0aGlzIGZlYXR1cmUg
aXMgdXNlZCBieSBjdXN0b21lcnMsIGJ1dCBJIGRvbid0IGhhdmUgYWNjZXNzIHRvCj4gdGhlaXIg
YXBwbGljYXRpb25zLgoKVW5mb3J0dW5hdGVseSwgYW5kIGFzIHlvdSBrbm93LCB0aGF0IGlzIGlu
c3VmZmljaWVudC9pcnJlbGV2YW50IGZvcgppbnRyb2R1Y2luZyBuZXcgVUFQSS4gU28gdGhlIHF1
ZXN0aW9uIGlzIGlmIHRoZSBsaWJrbXN4eCBiaW5kaW5ncwpjb25zdGl0dXRlIG9wZW5zb3VyY2Ug
dXNlcnNwYWNlLCBpdCdzIHJlYWxseSB0aGluIElNTy4KClNlYW4KCgo+Cj4gICBUb21pCj4KPiAt
LQo+IFRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgw
IEhlbHNpbmtpLgo+IFktdHVubnVzL0J1c2luZXNzIElEOiAwNjE1NTIxLTQuIEtvdGlwYWlra2Ev
RG9taWNpbGU6IEhlbHNpbmtpCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
