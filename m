Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8859107A2
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 13:52:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 212FE8934F;
	Wed,  1 May 2019 11:52:46 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99DB38933C;
 Wed,  1 May 2019 11:52:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16415832-1500050 for multiple; Wed, 01 May 2019 12:52:41 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190501114259.16158-3-tvrtko.ursulin@linux.intel.com>
References: <20190501114259.16158-1-tvrtko.ursulin@linux.intel.com>
 <20190501114259.16158-3-tvrtko.ursulin@linux.intel.com>
Message-ID: <155671156003.1850.8570225810057290177@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 01 May 2019 12:52:40 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/2] tests/i915_query: Engine
 discovery tests
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0wMSAxMjo0Mjo1OSkKPiArICAgICAgICAg
ICAgICAgc3dpdGNoIChlbmdpbmUtPmVuZ2luZS5lbmdpbmVfY2xhc3MpIHsKPiArICAgICAgICAg
ICAgICAgY2FzZSBJOTE1X0VOR0lORV9DTEFTU19SRU5ERVI6Cj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgLyogV2lsbCBiZSB0ZXN0ZWQgbGF0ZXIuICovCj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgYnJlYWs7Cj4gKyAgICAgICAgICAgICAgIGNhc2UgSTkxNV9FTkdJTkVfQ0xBU1NfQ09QWToK
PiArICAgICAgICAgICAgICAgICAgICAgICBpZ3RfYXNzZXJ0KGdlbV9oYXNfYmx0KGZkKSk7Cj4g
KyAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gKyAgICAgICAgICAgICAgIGNhc2UgSTkx
NV9FTkdJTkVfQ0xBU1NfVklERU86Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgc3dpdGNoIChl
bmdpbmUtPmVuZ2luZS5lbmdpbmVfaW5zdGFuY2UpIHsKPiArICAgICAgICAgICAgICAgICAgICAg
ICBjYXNlIDA6Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpZ3RfYXNzZXJ0KGdl
bV9oYXNfYnNkKGZkKSk7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBicmVhazsK
PiArICAgICAgICAgICAgICAgICAgICAgICBjYXNlIDE6Cj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBpZ3RfYXNzZXJ0KGdlbV9oYXNfYnNkMihmZCkpOwo+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgYnJlYWs7CgoKSXMgdGhhdCByZWxhdGlvbnNoaXAgYSBnaXZlbj8K
Ck9uZSBjb3VsZCBhcmd1ZSB0aGF0IGdlbV9oYXNfYmx0KCkgbWVhbnMgdGhhdCBJOTE1X0VYRUNf
QkxUIHdvcmtzLCBidXQKd2l0aG91dCAhZ2VtX2hhc19ibHQoKSB3ZSBjb3VsZCBzdGlsbCBhY2Nl
c3MgQ0xBU1NfQ09QWTowIHZpYQpjdHgtPmVuZ2luZXNbXS4KCj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgfQo+ICsgICAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+ICsgICAgICAgICAgICAg
ICBjYXNlIEk5MTVfRU5HSU5FX0NMQVNTX1ZJREVPX0VOSEFOQ0U6Cj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgaWd0X2Fzc2VydChnZW1faGFzX3ZlYm94KGZkKSk7Cj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgYnJlYWs7Cj4gKyAgICAgICAgICAgICAgIGRlZmF1bHQ6Cj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgaWd0X2Fzc2VydCgwKTsKPiArICAgICAgICAgICAgICAgfQo+ICsgICAgICAg
fQo+ICsKPiArICAgICAgIC8qIFJldmVyc2UgY2hlY2sgdG8gdGhlIGFib3ZlIC0gYWxsIEdFVF9Q
QVJBTSBlbmdpbmVzIGFyZSBwcmVzZW50LiAqLwo+ICsgICAgICAgaWd0X2Fzc2VydChoYXNfZW5n
aW5lKGVuZ2luZXMsIEk5MTVfRU5HSU5FX0NMQVNTX1JFTkRFUiwgMCkpOwo+ICsgICAgICAgaWYg
KGdlbV9oYXNfYmx0KGZkKSkKPiArICAgICAgICAgICAgICAgaWd0X2Fzc2VydChoYXNfZW5naW5l
KGVuZ2luZXMsIEk5MTVfRU5HSU5FX0NMQVNTX0NPUFksIDApKTsKPiArICAgICAgIGlmIChnZW1f
aGFzX2JzZChmZCkpCj4gKyAgICAgICAgICAgICAgIGlndF9hc3NlcnQoaGFzX2VuZ2luZShlbmdp
bmVzLCBJOTE1X0VOR0lORV9DTEFTU19WSURFTywgMCkpOwo+ICsgICAgICAgaWYgKGdlbV9oYXNf
YnNkMihmZCkpCj4gKyAgICAgICAgICAgICAgIGlndF9hc3NlcnQoaGFzX2VuZ2luZShlbmdpbmVz
LCBJOTE1X0VOR0lORV9DTEFTU19WSURFTywgMSkpOwo+ICsgICAgICAgaWYgKGdlbV9oYXNfdmVi
b3goZmQpKQo+ICsgICAgICAgICAgICAgICBpZ3RfYXNzZXJ0KGhhc19lbmdpbmUoZW5naW5lcywg
STkxNV9FTkdJTkVfQ0xBU1NfVklERU9fRU5IQU5DRSwKPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAwKSk7CgpXaGVyZWFzIHRoaXMgc2hvdWxkIGFsd2F5cyBtYWtlIHNl
bnNlLCBnaXZlbiB0aGUgbGVnYWN5IGludGVyZmFjZSBhbmQKdGhlIG1vZGVybiBpbnRlcmZhY2Us
IHRoZSBtb2Rlcm4gaW50ZXJmYWNlIHNob3VsZCBiZSBhIHN1cGVyc2V0IG9mIHRoZQpsZWdhY3ku
CgpKdXN0IHRoaW5raW5nIGFsb3VkLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
