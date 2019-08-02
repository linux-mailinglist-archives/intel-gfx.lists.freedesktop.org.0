Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B88577FBA6
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 15:59:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3A126EE71;
	Fri,  2 Aug 2019 13:59:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A9CD6EE74;
 Fri,  2 Aug 2019 13:59:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17818578-1500050 for multiple; Fri, 02 Aug 2019 14:59:46 +0100
MIME-Version: 1.0
To: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190802134955.GA23032@tigerII.localdomain>
References: <20190802123956.2450-1-sergey.senozhatsky@gmail.com>
 <20190802123956.2450-2-sergey.senozhatsky@gmail.com>
 <156475071634.6598.8668583907388398632@skylake-alporthouse-com>
 <156475141863.6598.6809215010139776043@skylake-alporthouse-com>
 <20190802131523.GB466@tigerII.localdomain>
 <20190802133503.GA18318@tigerII.localdomain>
 <156475327511.6598.417403815598052974@skylake-alporthouse-com>
 <20190802134955.GA23032@tigerII.localdomain>
Message-ID: <156475438424.6598.9088236553657284521@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 02 Aug 2019 14:59:44 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] i915: do not leak module ref counter
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBTZXJnZXkgU2Vub3poYXRza3kgKDIwMTktMDgtMDIgMTQ6NDk6NTUpCj4gT24gKDA4
LzAyLzE5IDE0OjQxKSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFsuLl0KPiA+IHN0cnVjdCB2ZnNt
b3VudCAqa2Vybl9tb3VudChzdHJ1Y3QgZmlsZV9zeXN0ZW1fdHlwZSAqdHlwZSkKPiA+IHsKPiA+
ICAgICAgICAgc3RydWN0IHZmc21vdW50ICptbnQ7Cj4gPiAgICAgICAgIG1udCA9IHZmc19rZXJu
X21vdW50KHR5cGUsIFNCX0tFUk5NT1VOVCwgdHlwZS0+bmFtZSwgTlVMTCk7Cj4gPiAgICAgICAg
IGlmICghSVNfRVJSKG1udCkpIHsKPiA+ICAgICAgICAgICAgICAgICAvKgo+ID4gICAgICAgICAg
ICAgICAgICAqIGl0IGlzIGEgbG9uZ3Rlcm0gbW91bnQsIGRvbid0IHJlbGVhc2UgbW50IHVudGls
Cj4gPiAgICAgICAgICAgICAgICAgICogd2UgdW5tb3VudCBiZWZvcmUgZmlsZSBzeXMgaXMgdW5y
ZWdpc3RlcmVkCj4gPiAgICAgICAgICAgICAgICAgKi8KPiA+ICAgICAgICAgICAgICAgICByZWFs
X21vdW50KG1udCktPm1udF9ucyA9IE1OVF9OU19JTlRFUk5BTDsKPiA+ICAgICAgICAgfQo+ID4g
ICAgICAgICByZXR1cm4gbW50Owo+ID4gfQo+ID4gCj4gPiBXaXRoIHRoZSBleGNlcHRpb24gb2Yg
ZmlkZGxpbmcgd2l0aCBNTlRfTlNfSU5URVJOQUwsIGl0IHNlZW1zCj4gPiBhbWVuYWJsZSBmb3Ig
b3VyIG5lZWRzLgo+IAo+IFNvcnJ5LCBub3Qgc3VyZSBJIHVuZGVyc3RhbmQuIGk5MTUgdXNlIGtl
cm5fbW91bnQoKSBhdCB0aGUgbW9tZW50Lgo+IAo+IFNpbmNlIHdlIHN0aWxsIG5lZWQgdG8gcHV0
X2ZpbGVzeXN0ZW0oKSwgSSdkIHByb2JhYmx5IGFkZCBvbmUgbW9yZQo+IHBhdGNoCj4gICAgICAg
ICAtIGV4cG9ydCBwdXRfZmlsZXN5c3RlbSgpCj4gCj4gc28gdGhlbiB3ZSBjYW4gcHV0X2ZpbGVz
eXN0ZW0oKSBpbiBpOTE1LiBXb25kZXIgd2hhdCB3b3VsZCBoYXBwZW4KPiBpZiBzb21lb25lIHdv
dWxkIGRvCj4gICAgICAgICAgICAgICAgIG1vZHByb2JlIGk5MTUKPiAgICAgICAgICAgICAgICAg
cm1tb2QgaTkxNgo+IEluIGEgbG9vcC4KPiAKPiBTbyBzb21ldGhpbmcgbGlrZSB0aGlzICh0aGlz
IGlzIGFnYWluc3QgY3VycmVudCBwYXRjaCBzZXQpLgoKWWVzLCB0aGF0J3Mgd2hhdCBJIGluIG1p
bmQuIEkgd2FzIHRoaW5raW5nIG9mIHdoZXRoZXIgd2UgY2FuIHJlcGxhY2Ugb3VyCmtlcm5fbW91
bnQgKyBmYy0+b3BzLT5yZWNvbmZpZ3VyZSgpIGludG8gYSBzaW5nbGUgdmZzX2tlcm5fbW91bnQo
KSwgYW5kCndoZXRoZXIgb3Igbm90IHRoYXQgd29ya3Mgd2l0aCBnZXRfZnNfdHlwZSgidG1wZnMi
KS4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
