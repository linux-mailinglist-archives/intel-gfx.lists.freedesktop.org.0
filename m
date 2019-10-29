Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA02E8850
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 13:38:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF02D6E287;
	Tue, 29 Oct 2019 12:38:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7F3D6E287;
 Tue, 29 Oct 2019 12:38:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19006495-1500050 for multiple; Tue, 29 Oct 2019 12:38:24 +0000
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191029101751.5848-2-janusz.krzysztofik@linux.intel.com>
References: <20191029101751.5848-1-janusz.krzysztofik@linux.intel.com>
 <20191029101751.5848-2-janusz.krzysztofik@linux.intel.com>
Message-ID: <157235270197.10560.1391108953152193308@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 29 Oct 2019 12:38:22 +0000
Subject: Re: [Intel-gfx] [RESEND PATCH i-g-t v2 1/1] tests/i915_module_load:
 Use new name of fault injection module parameter
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
Cc: Jani Nikula <jani.nikula@intel.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTktMTAtMjkgMTA6MTc6NTEpCj4gTmFtZSBv
ZiB0aGUgaTkxNSBtb2R1bGUgcGFyYW1ldGVyIHByb3ZpZGluZyBmYXVsdCBpbmplY3Rpb24gZnVu
Y3Rpb24gaXMKPiBjaGFuZ2luZyBmb3IgY29uc2lzdGVuY3kgd2l0aCBhIG5ldyBjb252ZW50aW9u
IG9mIG5hbWluZyBpOTE1IGRyaXZlcgo+IGludGVybmFsIGZ1bmN0aW9ucyBjYWxsZWQgZnJvbSB0
aGUgZHJpdmVyIFBDSSAucHJvYmUgZW50cnkgcG9pbnQuICBBZGp1c3QKPiB0aGUgdGVzdCB0byB1
c2UgdGhlIG5ldyBuYW1lLgo+IAo+IFN1Z2dlc3RlZC1ieTogSm9vbmFzIExhaHRpbmVuIDxqb29u
YXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEphbnVzeiBLcnp5
c3p0b2ZpayA8amFudXN6LmtyenlzenRvZmlrQGxpbnV4LmludGVsLmNvbT4KPiBDYzogTWljaGHF
giBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+IENjOiBNaWNoYcWCIFdp
bmlhcnNraSA8bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+Cj4gQ2M6IFBpb3RyIFBpw7Nya293
c2tpIDxwaW90ci5waW9ya293c2tpQGludGVsLmNvbT4KPiBDYzogVG9tYXN6IExpcyA8dG9tYXN6
Lmxpc0BpbnRlbC5jb20+Cj4gQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxp
bnV4LmludGVsLmNvbT4KPiBSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Cj4gLS0tCj4gIHRlc3RzL2k5MTUvaTkxNV9tb2R1bGVfbG9hZC5jIHwgMiAr
LQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9pOTE1X21vZHVsZV9sb2FkLmMgYi90ZXN0cy9pOTE1L2k5
MTVfbW9kdWxlX2xvYWQuYwo+IGluZGV4IDdmZTgzNTIwLi5hNjIwYWI0MSAxMDA2NDQKPiAtLS0g
YS90ZXN0cy9pOTE1L2k5MTVfbW9kdWxlX2xvYWQuYwo+ICsrKyBiL3Rlc3RzL2k5MTUvaTkxNV9t
b2R1bGVfbG9hZC5jCj4gQEAgLTM1Niw3ICszNTYsNyBAQCBpZ3RfbWFpbgo+ICAKPiAgICAgICAg
ICAgICAgICAgaWd0X2k5MTVfZHJpdmVyX3VubG9hZCgpOwo+ICAKPiAtICAgICAgICAgICAgICAg
d2hpbGUgKGluamVjdF9mYXVsdCgiaTkxNSIsICJpbmplY3RfbG9hZF9mYWlsdXJlIiwgKytpKSA9
PSAwKQo+ICsgICAgICAgICAgICAgICB3aGlsZSAoaW5qZWN0X2ZhdWx0KCJpOTE1IiwgImluamVj
dF9wcm9iZV9mYWlsdXJlIiwgKytpKSA9PSAwKQoKSG1tLCBJIGNvdWxkIGRvIHdpdGggYSB0cmFu
c2l0aW9uIHBlcmlvZCBzbyB0aGF0IHdlIGRvbid0IGxvc2UgcmVsb2FkCnRlc3RzIG9uIGxpbnVz
L3N0YWJsZS4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
