Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D82F2B3B1
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2019 13:57:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6242189948;
	Mon, 27 May 2019 11:57:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com
 [IPv6:2607:f8b0:4864:20::243])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB12389948
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2019 11:57:01 +0000 (UTC)
Received: by mail-oi1-x243.google.com with SMTP id 203so11678746oid.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2019 04:57:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SqMfg6OHmKKEB+7R/k2mN5jX74nLf2tODcyGqdJKodU=;
 b=lyzGeXpkUzk0PgcLhx/qULaM1MEUb4TognA9JTCJCeDptOlOq9boNdJku7qqv8sXUX
 I5Aze6f8hQEvVwZXyqEwK3OY+o+eJ4F7NUOivJLmqo4K5BVNPSFe03YlPiQGHi0Pd8So
 ne+RT+Oeme/45MfyDXjoJhNgiVBj7L2yvoODOlQPWuiFBWf4NZbwZNuVvCFizrypXMH3
 VWe/7vRVRCqE2WkWbXz820cfRDOlvfLkjPPDUKCGn51KuIbCf2QyO9AOVCT4ucA8PXos
 x1pGkXPSrHN7ynO+2Jye7HgLgyEGCem28FtI/hZPRohhQU69eAcazY1uqmxsoeLx9ZLF
 gFnQ==
X-Gm-Message-State: APjAAAUTRefw8MGHH2XBBsSiSY2ZJDitHfMYpRuFUYzy8k1oA4ouOsth
 AcvoPgvnOskeb2uVmtLLLD2zttJlbXu+hvj7P+uBkw==
X-Google-Smtp-Source: APXvYqyhtBF+UewTKbHphm9QcAI2HxUut96Wu+pGPpBFNdH/WsetPUDvvAeMMnEWk5E4LXy3BEk5tAHzLhjy0nawfVQ=
X-Received: by 2002:aca:31cf:: with SMTP id
 x198mr14016323oix.132.1558958220929; 
 Mon, 27 May 2019 04:57:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
 <20190525171928.GA13526@ravnborg.org>
 <20190527071729.GM21222@phenom.ffwll.local>
In-Reply-To: <20190527071729.GM21222@phenom.ffwll.local>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 27 May 2019 13:56:48 +0200
Message-ID: <CAKMK7uEikzt0VRk-9nAScw1ppoOUs4Ay_L4KqHRD5FJBJAWmMQ@mail.gmail.com>
To: Sam Ravnborg <sam@ravnborg.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=SqMfg6OHmKKEB+7R/k2mN5jX74nLf2tODcyGqdJKodU=;
 b=FpcZQCd+yUainAstvP1yxc+17OcnChNGqTLXsysGDBaXKdGMDd6Htb8Ys97/PVyWWk
 2dDkk0d7ahb5BX+NBxNbMk9dxe2Co6GuXgZlPVZBET28ScnhUF/KeFm5OvidwSI28fTy
 24rT9rCGSqykbg+wbqgIVubVQ9w3Hy97uj/So=
Subject: Re: [Intel-gfx] [PATCH 00/33] fbcon notifier begone!
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBNYXkgMjcsIDIwMTkgYXQgOToxNyBBTSBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3
bGwuY2g+IHdyb3RlOgo+Cj4gT24gU2F0LCBNYXkgMjUsIDIwMTkgYXQgMDc6MTk6MjhQTSArMDIw
MCwgU2FtIFJhdm5ib3JnIHdyb3RlOgo+ID4gSGkgRGFuaWVsLgo+ID4KPiA+IEdvb2Qgd29yaywg
bmljZSBjbGVhbnVwIGFsbCBvdmVyLgo+ID4KPiA+IEEgZmV3IGNvbW1lbnRzIHRvIGEgZmV3IHBh
dGNoZXMgLSBub3Qgc29tZXRoaW5nIHRoYXQgd2FycmFudCBhCj4gPiBuZXcgc2VyaWVzIHRvIGJl
IHBvc3RlZCBhcyBsb25nIGFzIGl0IGlzIGZpeGVkIGJlZm9yZSB0aGUgcGF0Y2hlcyBhcmUKPiA+
IGFwcGxpZWQuCj4KPiBIbSB5ZWFoIGdvb2QgaWRlYSwgSSdsbCBhZGQgdGhhdCB0byB0aGUgbmV4
dCB2ZXJzaW9uLgoKQWN0dWFsbHkgSSB0aG91Z2h0IGEgYml0IG1vcmUgYWJvdXQgdGhlIGxvY2tp
bmcgc3RvcnksIGFuZCBpdCdzIGEgYml0CndvcnNlIHRoYW4gbXkgc2ltcGxlIHBsYW4gaGVyZS4g
SSB0aGluayBiZXR0ZXIgdG8ganVzdCBoYXZlIHRoYXQKZmxvYXRpbmcgYXJvdW5kLCBhbmQgbm90
IG1ha2UgaXQgbG9vayBsaWtlIGl0J3MgYW4gZWFzeSBzaW1wbGUKY2xlYW51cC4KClRoZSBjYXNl
IEkgZm9yZ290IGFib3V0IGlzIHRoYXQgYW55IHBsYWNlcyB0aGF0IGhhcyBhIHByaW50ayBjYW4K
cmVjdXJzZSB0aHJvdWdoIHRoZSBjb25zb2xlX2xvY2ssIHdoaWNoIG1lYW5zIHdlIG5lZWQgYSBs
b3QgbW9yZQp0cnlfbG9jayB0aGFuIEkgb3JpZ2luYWxseSB0aG91Z2h0IHdlJ2QgbmVlZC4KLURh
bmllbAoKPgo+ID4gPiBidHcgZm9yIGZ1dHVyZSBwbGFuczogSSB0aGluayB0aGlzIGlzIHRyaWNr
eSBlbm91Z2ggKGl0J3Mgb2xkIGNvZGUgYW5kIGFsbAo+ID4gPiB0aGF0KSB0aGF0IHdlIHNob3Vs
ZCBsZXQgdGhpcyBzb2FrIGZvciAyLTMga2VybmVsIHJlbGVhc2VzLiBJIHRoaW5rIHRoZQo+ID4g
PiBmb2xsb3dpbmcgd291bGQgYmUgbmljZSBzdWJzZXF1ZW50IGNsZWFudXAvZml4ZXM6Cj4gPiA+
Cj4gPiA+IC0gcHVzaCB0aGUgY29uc29sZSBsb2NrIGNvbXBsZXRlbHkgZnJvbSBmYm1lbS5jIHRv
IGZiY29uLmMuIEkgdGhpbmsgd2UncmUKPiA+ID4gICBtb3N0bHkgdGhlcmUgd2l0aCBwcmVwLCBi
dXQgbmVlZHMgdG8gcG9uZGVyaW5nIG9mIGNvcm5lciBjYXNlcy4KPiA+IEkgd29uZGVyIC0gc2hv
dWxkIHRoaXMgY29kZSBjb25zaXN0ZW50bHkgdXNlIF9fYWNxdWlyZSgpIGV0YyBzbyB3ZSBjb3Vs
ZAo+ID4gZ2V0IGEgbGl0dGxlIHN0YXRpYyBhbmFseXNpcyBoZWxwIGZvciB0aGUgbG9ja2luZz8K
PiA+Cj4gPiBJIGhhdmUgbm90IHBsYXllZCB3aXRoIHRoaXMgZm9yIHNldmVyYWwgeWVhcnMgYW5k
IEkgZG8gbm90IGtub3cgdGhlCj4gPiBtYXR1cml0eSBvZiB0aGlzIHRvZGF5Lgo+Cj4gSW1lIHRo
ZXNlIHNwYXJzZSBhbm5vdGF0aW9ucyBhcmUgcHJldHR5IHVzZWxlc3MgYmVjYXVzZSB0b28gaW5m
bGV4aWJsZS4gSQo+IHRlbmQgdG8gdXNlIHJ1bnRpbWUgbG9ja2luZyBjaGVja3MgYmFzZWQgb24g
bG9ja2RlcC4gVGhvc2UgYXJlIG1vcmUKPiBhY2N1cmF0ZSwgYW5kIHdvcmsgZXZlbiB3aGVuIHRo
ZSBwbGFjZSB0aGUgbG9jayBpcyB0YWtlbiBpcyB2ZXJ5IGZhciBhd2F5Cj4gZnJvbSB3aGVyZSB5
b3UncmUgY2hlY2tpbmcsIHdpdGhvdXQgaGF2aW5nIHRvIGFubm9hdGUgYWxsIGZ1bmN0aW9ucyBp
bgo+IGJldHdlZW4uIFdlIG5lZWQgdGhhdCBmb3Igc29tZXRoaW5nIGxpa2UgY29uc29sZV9sb2Nr
IHdoaWNoIGlzIGEgdmVyeSBiaWcKPiBsb2NrLiBPbmx5IGRvd25zaWRlIGlzIHRoYXQgb25seSBw
YXRocyB5b3UgaGl0IGF0IHJ1bnRpbWUgYXJlIGNoZWNrZWQuCj4KPiA+ID4gLSBtb3ZlIGZiY29u
LmMgZnJvbSB1c2luZyBpbmRpY2VzIGZvciB0cmFja2luZyBmYl9pbmZvIChhbmQgYWNjZXNzaW5n
Cj4gPiA+ICAgcmVnaXN0ZXJlZF9mYnMgd2l0aG91dCBwcm9wZXIgbG9ja2luZyBhbGwgdGhlIHRp
bWUpIHRvIHJlYWwgZmJfaW5mbwo+ID4gPiAgIHBvaW50ZXJzIHdpdGggdGhlIHJpZ2h0IGFtb3Vu
dCBvZiByZWZjb3VudGluZy4gTW9zdGx5IG1vdGl2YXRlZCBieSB0aGUKPiA+ID4gICBmdW4gSSBo
YWQgdHJ5aW5nIHRvIHNpbXBsaWZ5IGZiY29uX2V4aXQoKS4KPiA+ID4KPiA+ID4gLSBtYWtlIHN1
cmUgdGhhdCBmYmNvbiBjYWxsIGxvY2svdW5sb2NrX2ZiIHdoZW4gaXQgY2FsbHMgZmJtZW0uYwo+
ID4gPiAgIGZ1bmN0aW9ucywgYW5kIHNwcmlua2xlIGFzc2VydF9sb2NrZGVwX2hlbGQgYXJvdW5k
IGluIGZibWVtLmMuIFRoaXMKPiA+ID4gICBuZWVkcyB0aGUgY29uc29sZV9sb2NrIGNsZWFudXBz
IGZpcnN0Lgo+ID4gPgo+ID4gPiBCdXQgSSB0aGluayB0aGF0J3MgbWF0ZXJpYWwgZm9yIG1heWJl
IG5leHQgeWVhciBvciBzby4KPiA+IE9yIG1heWJlIGFmdGVyIG5leHQga2VybmVsIHJlbGVhc2Uu
Cj4gPiBDb3VsZCB3ZSBwdXQgdGhpcyBuaWNlIHBsYW4gaW50byB0b2RvLnJzdCBvciBzaW1pbGFy
IHNvIHdlIGRvIG5vdCBoYXZlCj4gPiB0byBodW50IGl0IGRvd24gYnkgYXNraW5nIGdvb2dsZT8K
PiA+Cj4gPiBGb3IgdGhlIHdob2xlIHNlcmllcyB5b3UgY2FuIGFkZCBteToKPiA+IFJldmlld2Vk
LWJ5OiBTYW0gUmF2bmJvcmcgPHNhbUByYXZuYm9yZy5vcmc+Cj4gPgo+ID4gU29tZSBwYXJ0cyBh
cmUgcmV2aWV3ZWQgYXMgInRoaXMgbG9va3MgZW50aXJlbHkgY29ycmVjdCIsIG90aGVyIHBhcnRz
Cj4gPiBJIHdvdWxkIGNsYWltIHRoYXQgSSBhY3R1YWxseSB1bmRlcnN0b29kLgo+ID4gQW5kIGFm
dGVyIGhhdmluZyBzcGVuZCBzb21lIGhvdXJzIG9uIHRoaXMgYSByLWIgc2VlbXMgaW4gb3JkZXIu
Cj4KPiBUaGFua3MsIERhbmllbAo+IC0tCj4gRGFuaWVsIFZldHRlcgo+IFNvZnR3YXJlIEVuZ2lu
ZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgo+IGh0dHA6Ly9ibG9nLmZmd2xsLmNoCgoKCi0tIApEYW5p
ZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgorNDEgKDApIDc5
IDM2NSA1NyA0OCAtIGh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
