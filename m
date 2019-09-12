Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2E1B09D9
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 10:05:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14E016EC32;
	Thu, 12 Sep 2019 08:05:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E033A6EC32
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 08:04:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18460097-1500050 for multiple; Thu, 12 Sep 2019 09:04:55 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190912070925.11526-1-chris@chris-wilson.co.uk>
 <87pnk6rlyt.fsf@gaia.fi.intel.com>
In-Reply-To: <87pnk6rlyt.fsf@gaia.fi.intel.com>
Message-ID: <156827549301.4926.3480311664455647255@skylake-alporthouse-com>
Date: Thu, 12 Sep 2019 09:04:53 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/execlists: Add a paranoid
 flush of the CSB pointers upon reset
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA5LTEyIDA4OjUxOjM4KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBBZnRlciBhIEdQVSBy
ZXNldCwgd2UgbmVlZCB0byBkcmFpbiBhbGwgdGhlIENTIGV2ZW50cyBzbyB0aGF0IHdlIGhhdmUg
YW4KPiA+IGFjY3VyYXRlIHBpY3R1cmUgb2YgdGhlIGV4ZWNsaXN0cyBzdGF0ZSBhdCB0aGUgdGlt
ZSBvZiB0aGUgcmVzZXQuIEJlCj4gPiBwYXJhbm9pZCBhbmQgZm9yY2UgYSByZWFkIG9mIHRoZSBD
U0Igd3JpdGUgcG9pbnRlciBmcm9tIG1lbW9yeS4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IENjOiBNaWthIEt1b3BwYWxh
IDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIHwgNCArKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDQg
aW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gPiBp
bmRleCAzZDgzYzdlMGQ5ZGUuLjYxYTM4YTRjY2JjYSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMuYwo+ID4gQEAgLTI4MzYsNiArMjgzNiwxMCBAQCBzdGF0aWMgdm9pZCBf
X2V4ZWNsaXN0c19yZXNldChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIGJvb2wgc3Rh
bGxlZCkKPiA+ICAgICAgIHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOwo+ID4gICAgICAgdTMyICpy
ZWdzOwo+ID4gIAo+ID4gKyAgICAgbWIoKTsgLyogcGFyYW5vaWE6IHJlYWQgdGhlIENTQiBwb2lu
dGVycyBmcm9tIGFmdGVyIHRoZSByZXNldCAqLwo+ID4gKyAgICAgY2xmbHVzaChleGVjbGlzdHMt
PmNzYl93cml0ZSk7Cj4gPiArICAgICBtYigpOwo+ID4gKwo+IAo+IFdlIGtub3cgdGhlcmUgaXMg
YWx3YXlzIGEgY29zdC4gV2UgZG8gaW52YWxpZGF0ZSB0aGUgY3NiCj4gb24gZWFjaCBwYXNzIG9u
IHByb2Nlc3NfY3NiLgo+IAo+IEFkZCBjc2Jfd3JpdGUgaW4gdG8gaW52YWxpZGF0ZV9jc2IgZW50
cmllcyBhbG9uZwo+IHdpdGggbWJzLiBSZW5hbWUgaXQgdG8gaW52YWxpZGF0ZV9jc2IgYW5kIHVz
ZSBpdAo+IGFsd2F5cz8KPiAKPiBCeSBkb2luZyBzbywgd2UgY291bGQgcHJvbGx5IHRocm93IG91
dCB0aGUgcm1iKCkgYXQKPiB0aGUgc3RhcnQgb2YgdGhlIHByb2Nlc3NfY3NiIGFzIHdlIHdvdWxk
IGhhdmUgaW52YWxpZGF0ZWQKPiB0aGUgd3JpdGUgcG9pbnRlciBhbG9uZyB3aXRoIHRoZSBlbnRy
aWVzIHdlIHJlYWQsCj4gb24gcHJldmlvdXMgcGFzcy4KCk5vLiBUaGF0IHJtYiBpcyBlc3NlbnRp
YWwgZm9yIHRoZSByZWFkIG9yZGVyaW5nIGF0IHRoYXQgbW9tZW50IGluIHRpbWUuCgpBbGwgSSBo
YXZlIGluIG1pbmQgaGVyZSBpcyBhIGRlbGF5LCBub3QgcmVhbGx5IGEgYmFycmllciBwZXIgc2Us
IGp1c3QKdGhpcyBpcyBhIG5pY2Ugd2F5IG9mIHNheWluZyBubyBzcGVjdWxhdGlvbiBlaXRoZXIu
Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
