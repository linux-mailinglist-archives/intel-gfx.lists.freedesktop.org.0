Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E7490AE1
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Aug 2019 00:24:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D6E46E9B6;
	Fri, 16 Aug 2019 22:24:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 323D06E9B6
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 22:24:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Aug 2019 15:24:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,394,1559545200"; d="scan'208";a="261235332"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga001.jf.intel.com with ESMTP; 16 Aug 2019 15:24:02 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190816175801.8215-1-chris@chris-wilson.co.uk>
 <20190816191703.31519-1-chris@chris-wilson.co.uk>
 <4c45099c-ea32-e0d3-19c5-24b03f7a53ca@intel.com>
 <156599358976.22053.12945461371965121062@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <1ce77c55-9313-beb3-a3db-facca5981914@intel.com>
Date: Fri, 16 Aug 2019 15:24:02 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156599358976.22053.12945461371965121062@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/selftests: Check the context
 size
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA4LzE2LzE5IDM6MTMgUE0sIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIERhbmll
bGUgQ2VyYW9sbyBTcHVyaW8gKDIwMTktMDgtMTYgMjI6NTA6NDMpCj4+Cj4+Cj4+IE9uIDgvMTYv
MTkgMTI6MTcgUE0sIENocmlzIFdpbHNvbiB3cm90ZToKPj4+ICtzdGF0aWMgaW50IGxpdmVfY29u
dGV4dF9zaXplKHZvaWQgKmFyZykKPj4+ICt7Cj4+PiArICAgICAgICAgICAgIC8qCj4+PiArICAg
ICAgICAgICAgICAqIEhpZGUgdGhlIG9sZCBkZWZhdWx0IHN0YXRlIC0tIHdlIGxpZSBhYm91dCB0
aGUgY29udGV4dCBzaXplCj4+PiArICAgICAgICAgICAgICAqIGFuZCBnZXQgY29uZnVzZWQgd2hl
biB0aGUgZGVmYXVsdCBzdGF0ZSBpcyBzbWFsbGVyIHRoYW4KPj4+ICsgICAgICAgICAgICAgICog
ZXhwZWN0ZWQuIEZvciBvdXIgZG8gbm90aGluZyByZXF1ZXN0LCBpbmhlcml0aW5nIHRoZQo+Pj4g
KyAgICAgICAgICAgICAgKiBhY3RpdmUgc3RhdGUgaXMgc3VmZmljaWVudCwgd2UgYXJlIG9ubHkg
Y2hlY2tpbmcgdGhhdCB3ZQo+Pj4gKyAgICAgICAgICAgICAgKiBkb24ndCB1c2UgbW9yZSB0aGFu
IHdlIHBsYW5uZWQuCj4+PiArICAgICAgICAgICAgICAqLwo+Pj4gKyAgICAgICAgICAgICBzYXZl
ZC5zdGF0ZSA9IGZldGNoX2FuZF96ZXJvKCZlbmdpbmUtPmRlZmF1bHRfc3RhdGUpOwo+Pj4gKyAg
ICAgICAgICAgICBzYXZlZC5waW5uZWQgPSBmZXRjaF9hbmRfemVybygmZW5naW5lLT5waW5uZWRf
ZGVmYXVsdF9zdGF0ZSk7Cj4+PiArCj4+PiArICAgICAgICAgICAgIGVuZ2luZS0+Y29udGV4dF9z
aXplICs9IEk5MTVfR1RUX1BBR0VfU0laRTsKPj4KPj4gaWYgQ09ORklHX0RSTV9JOTE1X0RFQlVH
X0dFTSBpcyBzZXQgd2UgYWxyZWFkeSBidW1wIHRoZSBzaXplIGluc2lkZSB0aGUKPj4gY29udGV4
dF9hbGxvYygpLCBkbyB3ZSBuZWVkIHRvIGJ1bXAgaXQgYWdhaW4gaGVyZT8KPiAKPiBObywgaXQg
Y29tZXMgb3V0IGluIHRoZSB3YXNoIGFzIHdlIGFwcGx5IHRoZSBzYW1lIHJlZHpvbmUgdHdpY2Uu
IEF0IGxlYXN0LAo+IGFkZGluZyBhbmQgY2hlY2tpbmcgYSBzZWNvbmQgcGFnZSBhZnRlciB3aGF0
IHdlIGJlbGlldmUgdG8gYmUgdGhlIGVuZCBvZgo+IHRoZSBjb250ZXh0IGltYWdlIGRvZXMgbm90
IGhlbHAgc2Vuc2l0aXZpdHkgKHNvIG1ha2VzIGEgd29yc2UgdGVzdCBpbW8pLgo+IAo+IFRoZSBi
ZW5lZml0IG9mIHRoaXMgc2VsZnRlc3QgaXMgdGhhdCB3ZSBjaGVjayBhbGwgc3VibWlzc2lvbiBt
b2RlcywgYW5kCj4gY2FuIHNldCB1cCBhbnkgZXhlY3V0aW9uIHBhdHRlcm4gd2UgdGhpbmsgbWln
aHQgYmUgcmVxdWlyZWQgKHdpdGhpbgo+IHJlYXNvbikuIFNvLCBJIHRoaW5rIGl0IHN0aWxsIGhh
cyBhIHVzZSBldmVuIGlmIHdlIG5lZWQgdG8gcmVtaW5kCj4gb3Vyc2VsdmVzIG9mIHRoZSBvdmVy
bGFwLgo+IC1DaHJpcwo+IAoKRmFpciBlbm91Z2guIFdpdGggdGhlIGFib3ZlIHdyaXR0ZW4gZG93
biBhcyBhIGNvbW1lbnQgaW4gdGhlIGNvZGU6CgpSZXZpZXdlZC1ieTogRGFuaWVsZSBDZXJhb2xv
IFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KCkRhbmllbGUKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
