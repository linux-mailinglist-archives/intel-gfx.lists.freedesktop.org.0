Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 252BFE89B7
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 14:40:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D53D86E392;
	Tue, 29 Oct 2019 13:40:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CF306E392;
 Tue, 29 Oct 2019 13:40:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19007161-1500050 for multiple; Tue, 29 Oct 2019 13:39:40 +0000
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <4130087.Jy6AQzXAmN@jkrzyszt-desk.ger.corp.intel.com>
References: <20191029101751.5848-2-janusz.krzysztofik@linux.intel.com>
 <20191029124926.29409-1-chris@chris-wilson.co.uk>
 <4130087.Jy6AQzXAmN@jkrzyszt-desk.ger.corp.intel.com>
Message-ID: <157235637862.10560.187283582262084531@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 29 Oct 2019 13:39:38 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915_module_load: Use new name
 of fault injection module parameter
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
Cc: intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTktMTAtMjkgMTM6MzU6NDgpCj4gPiBkaWZm
IC0tZ2l0IGEvdGVzdHMvaTkxNS9pOTE1X21vZHVsZV9sb2FkLmMgYi90ZXN0cy9pOTE1L2k5MTVf
bW9kdWxlX2xvYWQuYwo+ID4gaW5kZXggZjQyMDgzZjUzLi43ZDlhNWNmZDIgMTAwNjQ0Cj4gPiAt
LS0gYS90ZXN0cy9pOTE1L2k5MTVfbW9kdWxlX2xvYWQuYwo+ID4gKysrIGIvdGVzdHMvaTkxNS9p
OTE1X21vZHVsZV9sb2FkLmMKPiA+IEBAIC0zNTAsMTEgKzM1MCwxNyBAQCBpZ3RfbWFpbgo+ID4g
ICAgICAgfQo+ID4gIAo+ID4gICAgICAgaWd0X3N1YnRlc3QoInJlbG9hZC13aXRoLWZhdWx0LWlu
amVjdGlvbiIpIHsKPiA+ICsgICAgICAgICAgICAgY29uc3QgY2hhciAqcGFyYW07Cj4gPiAgICAg
ICAgICAgICAgIGludCBpID0gMDsKPiA+ICAKPiA+ICAgICAgICAgICAgICAgaWd0X2k5MTVfZHJp
dmVyX3VubG9hZCgpOwo+ID4gIAo+ID4gLSAgICAgICAgICAgICB3aGlsZSAoaW5qZWN0X2ZhdWx0
KCJpOTE1IiwgImluamVjdF9sb2FkX2ZhaWx1cmUiLCArCj4gK2kpID09IDApCj4gPiArICAgICAg
ICAgICAgIHBhcmFtID0gImluamVjdF9wcm9iZV9mYWlsdXJlIjsKPiA+ICsgICAgICAgICAgICAg
aWYgKCFpZ3Rfa21vZF9oYXNfcGFyYW0oImk5MTUiLCBwYXJhbSkpCj4gPiArICAgICAgICAgICAg
ICAgICAgICAgcGFyYW0gPSAiaW5qZWN0X2xvYWRfZmFpbHVyZSI7Cj4gPiArICAgICAgICAgICAg
IGlndF9yZXF1aXJlKGlndF9rbW9kX2hhc19wYXJhbSgiaTkxNSIsIHBhcmFtKSk7Cj4gPiArCj4g
PiArICAgICAgICAgICAgIHdoaWxlIChpbmplY3RfZmF1bHQoImk5MTUiLCBwYXJhbSwgKytpKSA9
PSAwKQo+ID4gICAgICAgICAgICAgICAgICAgICAgIDsKPiAKPiBNeSBmaXJzdCB0aG91Z2h0IHdh
cyB0byBqdXN0IHJldHJ5IHRoZSBsb29wIHdpdGggdGhlIG9sZCBwYXJhbWV0ZXIgbmFtZSBpZiB0
aGUgCj4gbmV3IG9uZSBmYWlscyBidXQgSSdtIE9LIHdpdGggeW91ciBhcHByb2FjaCAobWF5YmUg
dGhlcmUgd2lsbCBiZSBvdGhlciB1c2VycyAKPiBvZiB0aGUgbmV3IGxpYnJhcnkgaGVscGVyKS4g
IEluIGNhc2UgUi1iIGlzIG5lZWRlZCwgcGxlYXNlIHRlbGwgbWUuCgpJIGZpcnN0IGRpZCB0aGUg
cmVwZWF0ZWQgbG9vcCBhcyB3ZWxsLiBJIHRob3VnaHQgcGVvcGxlIG1pZ2h0IG9iamVjdCB0bwp0
aGF0IGFzIGJlaW5nIGEgbGl0dGxlIHRvbyBoYWNreSA6KQoKVGhlcmUncyBhIGZldyBtb3JlIHBs
YWNlcyB3ZXJlIHdlIG1pZ2h0IHdhbnQgdG8gdXNlIHBhcmFtIHByb2JpbmcgLS0KY3VycmVudGx5
IHdlIHRyeSBhbmQgaWdub3JlIG1vZHBhcmFtcyBhcyBBQkkgYXMgbXVjaCBhcyBwb3NzaWJsZSEK
LUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
