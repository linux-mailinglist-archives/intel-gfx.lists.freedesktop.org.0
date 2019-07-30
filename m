Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73EFE7A8DB
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 14:42:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5E4C6E4D4;
	Tue, 30 Jul 2019 12:42:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com
 [IPv6:2607:f8b0:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DB9D6E4D4
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 12:42:19 +0000 (UTC)
Received: by mail-ot1-x344.google.com with SMTP id q20so66030039otl.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 05:42:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mirVo5Y7n0BgJws0owSa0bHOlIltJvOn2jnes406WAk=;
 b=l266GkA1N9Au4SaSBDrLbAvNNamdEirlZc6UOj9sAO3NaezmHiutMsBkJn45gxrqoA
 xSQ32JoHOaQHSOOpAyDuJHrhEWQXoiTzY9oZlZXBpWmHLdJbjHlrzhK+GsKZ0Wl6oE74
 dXGzfKfir9d4gkSUlj8JkHI685HG9dsyKeP9OmkX8JP18k+EAp1Fae/9ny2bnEEtLdGw
 uuMTwSolRytNcYp0ab9wLFtjqGC7Pu+ubp1vyTt7s2IsNaNe25IL8Z3kxrkYdaVsJUXT
 QShma5PpQoMBsXxDQDdadh/n2d+BlNyj4sVq72aZsvi/PqvzQasTahbzZ662n+sGa/kA
 2/bQ==
X-Gm-Message-State: APjAAAVEyp8jh+XYfycPkR5G6+eynq0vYW3Y5KfrdL9QyYhoM4oT7cbU
 gz3M5j2l5U/3Z8qM6lXBjyXETc8buHHbt8NI0rI=
X-Google-Smtp-Source: APXvYqwE5L+su1k+VF0Yr37+6HlfrP4BzC3zvB6yc/g++xaYYki2xekkKQTK3mTlHj/xPZkFT+41wzg3yOrRyFVv9ak=
X-Received: by 2002:a05:6830:4b:: with SMTP id
 d11mr47516836otp.106.1564490538666; 
 Tue, 30 Jul 2019 05:42:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190627205633.1143-1-matthew.auld@intel.com>
 <20190627205633.1143-17-matthew.auld@intel.com>
 <20190730085822.GL15868@phenom.ffwll.local>
 <156448833204.6373.14415976450526730937@skylake-alporthouse-com>
In-Reply-To: <156448833204.6373.14415976450526730937@skylake-alporthouse-com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 30 Jul 2019 14:42:07 +0200
Message-ID: <CAKMK7uGkk=xLgJ1sdBz9QCe=P9anBc4Lz6KgvQTmhfS-KB1dtw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=mirVo5Y7n0BgJws0owSa0bHOlIltJvOn2jnes406WAk=;
 b=WhnSDfYG0tCB1WDmsn3UINuhJSgjlWqPyZVKhZYaXtlKgQ5NUBTNCx3InfIouVcoZZ
 EoMFMtVEiy5zdqVJLDT8LO7RZHKzvcxCq4zIOQbv/pdMwpTRizIpJ1jr1OdueuclD4U4
 rhf4Ice5i1LKYCGUXN7zzKHhegH6Gc0LwdwEw=
Subject: Re: [Intel-gfx] [PATCH v2 16/37] drm/i915/lmem: support pread
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdWwgMzAsIDIwMTkgYXQgMjowNSBQTSBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4gd3JvdGU6Cj4gUXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDE5LTA3LTMw
IDA5OjU4OjIyKQo+ID4gT24gVGh1LCBKdW4gMjcsIDIwMTkgYXQgMDk6NTY6MTJQTSArMDEwMCwg
TWF0dGhldyBBdWxkIHdyb3RlOgo+ID4gPiBXZSBuZWVkIHRvIGFkZCBzdXBwb3J0IGZvciBwcmVh
ZCdpbmcgYW4gTE1FTSBvYmplY3QuCj4gPgo+ID4gV2h5PyBVc2FnZSBvdXRzaWRlIGZyb20gaWd0
cyBzZWVtcyBwcmV0dHkgZGVhZCwgYXQgbGVhc3QgbG9va2luZyBhdCBpcmlzCj4gPiBhbmQgYW52
LiBUaGlzIHdhcyBraW5kYSBhIG5lYXQgdGhpbmcgZm9yIHdoZW4gd2UgZGlkbid0IHlldCByZWFs
aXplZCB0aGF0Cj4gPiBkb2luZyBjbGZsdXNoIGluIHVzZXJzcGFjZSBpcyBib3RoIHBvc3NpYmxl
IGFuZCBtb3JlIGVmZmljaWVudC4KPiA+Cj4gPiBTYW1lIGZvciBwd3JpdGUsIGlyaXMganVzdCBk
cm9wcGVkIGl0LCBhbnYgZG9lc24ndCBzZWVtIHRvIHVzZSBpdC4gQW5kIEkKPiA+IHRob3VnaHQg
bWVzYSBwbGFuIGlzIHRvIGRyb3AgdGhlIG9sZCBjbGFzc2ljIGRyaXZlciBmb3Igd2hlbiB3ZSds
bCBuZWVkCj4gPiBsbWVtLiBJdCdzIG5vdCBtdWNoLCBidXQgd291bGQgYWxsb3cgdXMgdG8gZHJv
cCBhIGZldyB0aGluZ3MuCj4KPiBGcm9tIHRoZSBvcHBvc2l0ZSBwZXJzcGVjdGl2ZSwgaXQgc2hv
dWxkIG9ubHkgYmUgYSB3cmFwcGVyIGFyb3VuZCBjb2RlCj4gdGhhdCBpcyBiZWluZyB1c2VkIGlu
dGVybmFsbHkgZm9yIHNpbWlsYXIgdHJhbnNmZXJzLiAoT25lIHNpZGUtZWZmZWN0IGlzCj4gdGhh
dCBpdCBjYW4gYmUgdXNlZCB0byBwb2tlIG1vcmUgZGlyZWN0bHkgYXQgdGhvc2UgaW50ZXJuYWxz
LikgSXQgaXMgYWxzbwo+IG5vdCBjbGVhciB3aGF0IHRoZSBwcmVmZXJyZWQgc3RyYXRlZ3kgd2ls
bCBiZSBpbiBmdXR1cmUsIGVzcGVjaWFsbHkgYXMKPiBwZW9wbGUgc3RhcnQgZGlzY3Vzc2luZyBt
aWdyYXRpb24tb24tcGFnZWZhdWx0LgoKSG0sIHdoZXJlIGRvIHdlIGxvb2sgYXQgbWlncmF0ZS1v
bi1wYWdlZmF1bHQ/CgpJIG1lYW4gYXNpZGUgZnJvbSB0aGUgZW50aXJlIHJlc3VycmVjdGlvbiBv
ZiB0aGUgbWFwcGFibGUgZGVhbW9uCmJlY2F1c2UgYXBwYXJlbnRseSB3ZSBjYW4ndCBkZXNpZ24g
YXBlcnR1cmVzIGZvciBwY2kgYmFycyB3aGljaCBhcmUKYmlnIGVub3VnaCAodW5saWtlIGFtZCwg
d2hpY2ggZml4ZWQgdGhpcyBub3cpLiBCdXQgdGhhdCdzIGp1c3QgYW4KbG1lbS0+bG1lbSBtaWdy
YXRpb24gdG8gc3F1ZWV6ZSBpdCBpbnRvIHRoZSByaWdodCByYW5nZSAoYW5kIGhleSB3ZQprbm93
IGhvdyB0byBkbyB0aGF0LCB3ZSBldmVuIGhhdmUgdGhlIG9sZCBjb2RlIHN0aWxsKS4KCj4gSXQg
Y29tZXMgZG93biB0byB3aGV0aGVyIHRoZSBtYWludGVuYW5jZSBidXJkZW4gb2YgbWFpbnRhaW5p
bmcgYQo+IGNvbnNpc3RlbnQgQVBJIGlzIHdvcnRoIHRoZSBtYWludGVuYW5jZSBidXJkZW4gb2Yg
bm90IQoKWWVhaCBpdCdzIG1pbm9yLCBidXQgdGhlbiBwd3JpdGUgaGFzIHNvbWUgaXJreSBjb3Ju
ZXItY2FzZXMgKEkKc3R1bWJsZWQgb3ZlciB0aGUgdmxjIHd0ZiB0aGF0IG9yaWdpbmFsbHkgbW90
aXZhdGVkIHRoZSBpbnRyb2R1Y3Rpb24Kb2YgdGhlIHB3cml0ZSBob29rLCBhbmQgdGhlIHJlaW50
cm9kdWN0aW9uIG9mIHRoZSBwYWdlLWJ5LXBhZ2UgcHdyaXRlCmZvciBzaG1lbSB0aGF0J3Mgbm90
IHBpbm5lZCkuIFNvIGl0J3Mgbm90IHRoZSBjbGVhbmVzdCB1YXBpIHdlIGhhdmUKc2luY2UgYWxt
b3N0IGEgZGVjYWRlIG9mIGd1bmsgbm93IHNpdHRpbmcgb24gdG9wLiBBbmQgd2hlbiBJIHdlbnQK
bG9va2luZyBhdCBpcmlzL2FudiBpdCBzZWVtcyBsaWtlIHdlJ3ZlIHN1bnNldCBpdCBmb3IgZ29v
ZCBnb2luZwpmb3J3YXJkLiBOb3RlIEknbSBub3QgZ29pbmcgZm9yIGNvbXBsZXRlIHJlbW92YWws
IGp1c3Qgbm90IGFsbG93aW5nIGl0CmlmIHlvdSBzZXQgbG1lbSBhcyBvbmUgb2YgdGhlIHBsYWNl
bWVudHMgb2YgeW91ciBiby4gU28gcHdyaXRlIGludG8gYW4KdXBsb2FkIGJ1ZmZlciBpbiBzbWVt
LCBtYXBwZWQgdGhyb3VnaCB0aGUgVFQgdG8gdGhlIGdwdSwgd291bGQgc3RpbGwKYmUgZmluZS4g
V2hpY2ggSSBndWVzcyBzaG91bGQgY292ZXIgYWxsIHRoZSBpZ3QgcHdyaXRlcyBmb3IKYmF0Y2hi
dWZmZXJzLgotRGFuaWVsCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRl
bCBDb3Jwb3JhdGlvbgorNDEgKDApIDc5IDM2NSA1NyA0OCAtIGh0dHA6Ly9ibG9nLmZmd2xsLmNo
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
