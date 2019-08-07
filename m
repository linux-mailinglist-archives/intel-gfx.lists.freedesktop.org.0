Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9747085581
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 00:01:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BBB76E773;
	Wed,  7 Aug 2019 22:01:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D71CB6E773
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 22:01:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17923792-1500050 for multiple; Wed, 07 Aug 2019 23:01:30 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Stuart Summers <stuart.summers@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190807205556.40435-1-stuart.summers@intel.com>
 <156521337006.17543.2674431519733362990@skylake-alporthouse-com>
 <1565214535.30036.1.camel@intel.com>
In-Reply-To: <1565214535.30036.1.camel@intel.com>
Message-ID: <156521528759.17543.14507396294077122957@skylake-alporthouse-com>
Date: Wed, 07 Aug 2019 23:01:27 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Add MOCS state dump to debugfs
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

UXVvdGluZyBTdHVhcnQgU3VtbWVycyAoMjAxOS0wOC0wNyAyMjo0ODo1NSkKPiBPbiBXZWQsIDIw
MTktMDgtMDcgYXQgMjI6MjkgKzAxMDAsIENocmlzIFdpbHNvbiB3cm90ZToKPiA+IFF1b3Rpbmcg
U3R1YXJ0IFN1bW1lcnMgKDIwMTktMDgtMDcgMjE6NTU6NTUpCj4gPiA+IFVzZXIgYXBwbGljYXRp
b25zIG1pZ2h0IG5lZWQgdG8gdmVyaWZ5IGhhcmR3YXJlIGNvbmZpZ3VyYXRpb24KPiA+ID4gb2Yg
dGhlIE1PQ1MgZW50cmllcy4gVG8gZmFjaWxpdGF0ZSB0aGlzIGRlYnVnLCBhZGQgYSBuZXcgZGVi
dWdmcwo+ID4gPiBlbnRyeSB0byBhbGxvdyBhIGR1bXAgb2YgdGhlIE1PQ1Mgc3RhdGUgdG8gdmVy
aWZ5IGV4cGVjdGVkIHZhbHVlcwo+ID4gPiBhcmUgc2V0IGJ5IGk5MTUuCj4gPiAKPiA+IFVzZXIg
YXBwbGljYXRpb25zICsgZGVidWdmcz8gSXQncyBub3QgYW4gYXZlbnVlIGZvciBBQkkuCj4gPiAK
PiA+IElmIHlvdSByZWFsbHkgd2FudCB0byBwcm92aWRlIHRoZSBzZXR0aW5ncyBiYWNrIHRvIHVz
ZXJzcGFjZSwgbG9vayBhdAo+ID4gc29tZXRoaW5nIGxpa2UgYW4gaTkxNV9xdWVyeSBvciBzeXNm
cy4KPiA+IAo+ID4gT3IgaWYgeW91IGp1c3QgbWVhbiBpZ3QsIHRoZW4gYWRkIGEgVGVzdGNhc2U6
Cj4gPiAKPiA+IElmIHlvdSBqdXN0IG5lZWQgdG8gdmFsaWRhdGUgdGhhdCB3ZSBhcmUgc2V0dGlu
ZyBhbmQgcmVzdG9yaW5nIHRoZW0sCj4gPiBzZWxmdGVzdHMuCj4gPiAKPiA+IElmIHlvdSBuZWVk
IHRoZW0gZm9yIGRlYnVnZ2luZyBlcnJvcnMsIGFkZCB0aGVtIHRvIHRoZSBlcnJvciBzdGF0ZS4K
PiAKPiBUaGlzIHdhcyBwcm9iYWJseSBwb29ybHkgd29yZGVkLCB5b3UncmUgcmlnaHQuIEknbGwg
dXBkYXRlIHRoZSBjb21taXQKPiBtZXNzYWdlIHRvwqBiZSBtb3JlIHNwZWNpZmljLgo+IAo+IEkg
ZG8gd2FudCB0aGlzIGZvciBkZWJ1Z2dpbmcsIGJ1dCBub3Qgc3VyZSBlcnJvciBzdGF0ZSBpcyB0
aGUgcmlnaHQKPiBwbGFjZS4gVGhpcyBpcyBmb3IgZGVidWdnaW5nIHBlcmZvcm1hbmNlIGlzc3Vl
cywgc28gbm8gc3BlY2lmaWMKPiBmYWlsdXJlcy4gSWYgeW91IGZlZWwgc3lzZnMgb3IgaTkxNV9x
dWVyeSBhcmUgbW9yZSBjb3JyZWN0IGhlcmUsIEkgY2FuCj4gbG9vayBhdCBhZGRpbmcgdGhpcyB0
aGVyZSBpbnN0ZWFkLiBJcyB0aGVyZSBhIHJlYXNvbiB3ZSBkb24ndCB3YW50IHRoaXMKPiBpbiBk
ZWJ1Z2ZzIHNwZWNpZmljYWxseT8KCk5vLCBpdCB3YXMganVzdCB0aGUgd29yZGluZyBpbXBsaWVk
IHRvIG1lIHlvdSBoYWQgYSB1c2UgY2FzZSBmb3IKY2xpZW50cywgbm90IGp1c3QgZGVidWdnaW5n
IHRoZSBrZXJuZWwuCgpBZGRpbmcgaXQgdG8gdGhlIGVycm9yIHN0YXRlIChzZWUgaTkxNV9ncHVf
aW5mbykgaXMgbm90IHRvbyBiYWQgYW4gaWRlYQppZiB5b3UgbmVlZCBhIHNsZWRnZWhhbW1lciB0
byBpbnNwZWN0IHRoZSBHUFUgc3RhdGUgd2hpbGUgYSBiYXRjaCBpcwpleGVjdXRpbmcsIGJ1dCBy
ZWFsbHkgaXQganVzdCBzb3VuZHMgbGlrZSB5b3Ugd2FudCB0byBhdXRvbWF0ZSBjaGVja2luZwp0
aGUgbW9jcyByZWdpc3RlcnMgYWdhaW5zdCAiaWRlYWwiIHN0YXRlLiBUaGV5IHNob3VsZCBiZSBz
dGF0aWMsIHNvIG9uY2UKdGhleSBhcmUgc2V0LCBzbyBsb25nIGFzIHdlIGFyZSBjb25maWRlbnQg
YW5kIGNoZWNrIHRoYXQgdGhleSBkbyBub3QKY2hhbmdlIG5vciBjYW4gYmUgc2NyaWJibGVkIG92
ZXIgYnkgdXNlcnNwYWNlLCB5b3Ugb25seSBuZWVkIHRvIHNjYW4gdGhlCnNvdXJjZSA6KQoKSSB3
aWxsIGFkZCB0aGF0IEkgd2lzaCB3ZSB0b29rIGEgbW9yZSBjb21wbGV0ZSBzbmFwc2hvdCBvZiBp
bnRlcmVzdGluZwpyZWdpc3RlcnMgZm9yIHRoZSBlcnJvciBzdGF0ZS4KLUNocmlzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
