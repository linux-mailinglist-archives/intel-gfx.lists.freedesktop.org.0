Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FF8886F5
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Aug 2019 01:35:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C8A76EF22;
	Fri,  9 Aug 2019 23:35:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BC116EF22
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 23:35:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17948647-1500050 for multiple; Sat, 10 Aug 2019 00:35:01 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190806134725.25321-5-chris@chris-wilson.co.uk>
References: <20190806134725.25321-1-chris@chris-wilson.co.uk>
 <20190806134725.25321-5-chris@chris-wilson.co.uk>
Message-ID: <156539369892.3161.13486569463851107198@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 10 Aug 2019 00:34:58 +0100
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Cancel non-persistent
 contexts on close
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMDYgMTQ6NDc6MjUpCj4gTm9ybWFsbHksIHdl
IHJlbHkgb24gb3VyIGhhbmdjaGVjayB0byBwcmV2ZW50IHBlcnNpc3RlbnQgYmF0Y2hlcyBmcm9t
Cj4gaG9nZ2luZyB0aGUgR1BVLiBIb3dldmVyLCBpZiB0aGUgdXNlciBkaXNhYmxlcyBoYW5nY2hl
Y2ssIHRoaXMgbWVjaGFuaXNtCj4gYnJlYWtzIGRvd24uIERlc3BpdGUgb3VyIGluc2lzdGVuY2Ug
dGhhdCB0aGlzIGlzIHVuc2FmZSwgdGhlIHVzZXJzIGFyZQo+IGVxdWFsbHkgaW5zaXN0ZW50IHRo
YXQgdGhleSB3YW50IHRvIHVzZSBlbmRsZXNzIGJhdGNoZXMgYW5kIHdpbGwgZGlzYWJsZQo+IHRo
ZSBoYW5nY2hlY2sgbWVjaGFuaXNtLiBXZSBhcmUgbG9va2luZyBhcmUgcGVyaGFwcyByZXBsYWNp
bmcgaGFuZ2NoZWNrCj4gd2l0aCBhIHNvZnRlciBtZWNoYW5pc20sIHRoYXQgc2VuZHMgYSBwdWxz
ZSBkb3duIHRoZSBlbmdpbmUgdG8gY2hlY2sgaWYKPiBpdCBpcyB3ZWxsLiBXZSBjYW4gdXNlIHRo
ZSBzYW1lIHByZWVtcHRpdmUgcHVsc2UgdG8gZmx1c2ggYW4gYWN0aXZlCj4gcGVyc2lzdGVudCBj
b250ZXh0IG9mZiB0aGUgR1BVIHVwb24gY29udGV4dCBjbG9zZSwgcHJldmVudGluZyByZXNvdXJj
ZXMKPiBiZWluZyBsb3N0IGFuZCB1bmtpbGxhYmxlIHJlcXVlc3RzIHJlbWFpbmluZyBvbiB0aGUg
R1BVLCBhZnRlciBwcm9jZXNzCj4gdGVybWluYXRpb24uIFRvIGF2b2lkIGNoYW5naW5nIHRoZSBB
QkkgYW5kIGFjY2lkZW50YWxseSBicmVha2luZwo+IGV4aXN0aW5nIHVzZXJzcGFjZSwgd2UgbWFr
ZSB0aGUgcGVyc2lzdGVuY2Ugb2YgYSBjb250ZXh0IGV4cGxpY2l0IGFuZAo+IGVuYWJsZSBpdCBi
eSBkZWZhdWx0LiBVc2Vyc3BhY2UgY2FuIG9wdCBvdXQgb2YgcGVyc2lzdGVudCBtb2RlIChmb3Jj
aW5nCj4gcmVxdWVzdHMgdG8gYmUgY2FuY2VsbGVkIHdoZW4gdGhlIGNvbnRleHQgaXMgY2xvc2Vk
IGJ5IHByb2Nlc3MKPiB0ZXJtaW5hdGlvbiBvciBleHBsaWNpdGx5KSBieSBhIGNvbnRleHQgcGFy
YW1ldGVyLCBvciB0byBmYWNpbGl0YXRlCj4gZXhpc3RpbmcgdXNlLWNhc2VzIGJ5IGRpc2FibGlu
ZyBoYW5nY2hlY2sgKGk5MTUuZW5hYmxlX2hhbmdjaGVjaz0wKS4KPiAoTm90ZSwgb25lIG9mIHRo
ZSBvdXRjb21lcyBmb3Igc3VwcG9ydGluZyBlbmRsZXNzIG1vZGUgd2lsbCBiZSB0aGUKPiByZW1v
dmFsIG9mIGhhbmdjaGVja2luZywgYXQgd2hpY2ggcG9pbnQgb3B0aW5nIGludG8gcGVyc2lzdGVu
dCBtb2RlIHdpbGwKPiBiZSBtYW5kYXRvcnksIG9yIG1heWJlIHRoZSBkZWZhdWx0LikKCkZvciB0
aGUgcmVjb3JkLCBJJ3ZlIGZpbmFsbHkgcnVuIGludG8gZXhhbXBsZXMgb2YgZGVza3RvcCBjbGll
bnRzCmV4aXRpbmcgYmVmb3JlIHRoZWlyIHJlbmRlcmluZyBpcyBzaG93bi4gTm8gbG9uZ2VyIGh5
cG90aGV0aWNhbC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
