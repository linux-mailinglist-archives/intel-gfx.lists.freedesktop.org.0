Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D7301A32D2
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Apr 2020 12:52:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC3C26E0ED;
	Thu,  9 Apr 2020 10:52:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADD2D6E0ED
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2020 10:52:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20849691-1500050 for multiple; Thu, 09 Apr 2020 11:52:21 +0100
MIME-Version: 1.0
In-Reply-To: <bb2ca1d8-0da8-2e3b-db05-f9c877a00ae1@intel.com>
References: <20200403091300.14734-1-chris@chris-wilson.co.uk>
 <20200403091300.14734-4-chris@chris-wilson.co.uk>
 <bb2ca1d8-0da8-2e3b-db05-f9c877a00ae1@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158642954064.23161.10597558821934207099@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 09 Apr 2020 11:52:20 +0100
Subject: Re: [Intel-gfx] [PATCH 04/10] dma-buf: Report signaled links inside
 dma-fence-chain
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAyMC0wNC0wOCAyMTowMDo1OSkKPiBPbiAwMy8w
NC8yMDIwIDEyOjEyLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBXaGVuZXZlciB3ZSB3YWxrIGFs
b25nIHRoZSBkbWEtZmVuY2UtY2hhaW4sIHdlIHBydW5lIHNpZ25hbGVkIGxpbmtzIHRvCj4gPiBr
ZWVwIHRoZSBjaGFpbiBuaWNlIGFuZCB0aWR5LiBUaGlzIGxlYWRzIHRvIHNpdHVhdGlvbnMgd2hl
cmUgd2UgY2FuCj4gPiBwcnVuZSBhIGxpbmsgYW5kIHJlcG9ydCB0aGUgZWFybGllciBmZW5jZSBh
cyB0aGUgdGFyZ2V0IHNlcW5vIC0tCj4gPiB2aW9sYXRpbmcgb3VyIG93biBjb25zaXN0ZW5jeSBj
aGVja3MgdGhhdCB0aGUgc2Vxbm8gaXMgbm90IG1vcmUgYWR2YW5jZWQKPiA+IHRoYW4gdGhlIGxh
c3QgZWxlbWVudCBpbiBhIGRtYS1mZW5jZS1jaGFpbi4KPiA+Cj4gPiBSZXBvcnQgYSBOVUxMIGZl
bmNlIGFuZCBzdWNjZXNzIGlmIHRoZSBzZXFubyBoYXMgYWxyZWFkeSBiZWVuIHNpZ25hbGVkLgo+
ID4KPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYyB8IDcg
KysrKysrKwo+ID4gICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCj4gPgo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYyBiL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYwo+ID4gaW5kZXggM2QxMjM1MDJmZjEyLi5jNDM1YmJiYTg1
MWMgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLWNoYWluLmMKPiA+
ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtY2hhaW4uYwo+ID4gQEAgLTk5LDYgKzk5
LDEyIEBAIGludCBkbWFfZmVuY2VfY2hhaW5fZmluZF9zZXFubyhzdHJ1Y3QgZG1hX2ZlbmNlICoq
cGZlbmNlLCB1aW50NjRfdCBzZXFubykKPiA+ICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7
Cj4gPiAgIAo+ID4gICAgICAgZG1hX2ZlbmNlX2NoYWluX2Zvcl9lYWNoKCpwZmVuY2UsICZjaGFp
bi0+YmFzZSkgewo+ID4gKyAgICAgICAgICAgICBpZiAoKCpwZmVuY2UpLT5zZXFubyA8IHNlcW5v
KSB7IC8qIGFscmVhZHkgc2lnbmFsZWQgKi8KPiA+ICsgICAgICAgICAgICAgICAgICAgICBkbWFf
ZmVuY2VfcHV0KCpwZmVuY2UpOwo+ID4gKyAgICAgICAgICAgICAgICAgICAgICpwZmVuY2UgPSBO
VUxMOwo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+ID4gKyAgICAgICAgICAgICB9
Cj4gPiArCj4gCj4gCj4gV291bGRuJ3QgdGhpcyBjb25kaXRpb24gYmVlbiBmdWxmaWxsZWQgaW4g
dGhlIHByZXZpb3VzIGNoZWNrPyA6Cj4gCj4gCj4gY2hhaW4gPSB0b19kbWFfZmVuY2VfY2hhaW4o
KnBmZW5jZSk7Cj4gaWYgKCFjaGFpbiB8fCBjaGFpbi0+YmFzZS5zZXFubyA8IHNlcW5vKQo+ICDC
oMKgwqDCoMKgwqDCoCByZXR1cm4gLUVJTlZBTDsKClRoZSBwcm9ibGVtIGlzIGluIHRoZSBjaGFp
biBpdGVyYXRpb24uIEl0IGFzc3VtZXMgdGhhdCBhbiB1bm9yZGVyZWQgc2V0Cm9mIGZlbmNlcyBp
cyBpbiB0aGUgb3JkZXIgb2YgdGhlIHVzZXIncyBzZXFuby4gVGhlcmUgYXJlIG5vIHJlc3RyaWN0
aW9ucwpwbGFjZWQgb24gdGhlIGNoYWluLCBzbyB3ZSBtdXN0IGFwcGx5IHRoZSBvcmRlcmluZyBm
cm9tIHRoZSB0aW1lbGluZSBzZXFubwpkaXJlY3RseS4KLUNocmlzCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
