Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD28634BA
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 13:06:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB4926E029;
	Tue,  9 Jul 2019 11:06:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69A6D6E029
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 11:06:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17182432-1500050 for multiple; Tue, 09 Jul 2019 12:06:10 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190709093208.20470-1-lionel.g.landwerlin@intel.com>
 <20190709093208.20470-10-lionel.g.landwerlin@intel.com>
 <156266630516.9375.14447795535063304479@skylake-alporthouse-com>
 <e6c65a05-69f4-310c-b17a-dedf92dfed72@intel.com>
In-Reply-To: <e6c65a05-69f4-310c-b17a-dedf92dfed72@intel.com>
Message-ID: <156267036848.9375.15530105811228075516@skylake-alporthouse-com>
Date: Tue, 09 Jul 2019 12:06:08 +0100
Subject: Re: [Intel-gfx] [PATCH v7 09/12] drm/i915: add a new perf
 configuration execbuf parameter
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNy0wOSAxMTo1OTozMSkKPiBPbiAwOS8w
Ny8yMDE5IDEyOjU4LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIExpb25lbCBMYW5k
d2VybGluICgyMDE5LTA3LTA5IDEwOjMyOjA1KQo+ID4+ICtzdGF0aWMgaW50IGViX29hX2NvbmZp
ZyhzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYikKPiA+PiArewo+ID4+ICsgICAgICAgaW50IGVy
cjsKPiA+PiArCj4gPj4gKyAgICAgICBpZiAoIWViLT5vYV9jb25maWcpCj4gPj4gKyAgICAgICAg
ICAgICAgIHJldHVybiAwOwo+ID4+ICsKPiA+PiArICAgICAgIGVyciA9IGk5MTVfYWN0aXZlX3Jl
cXVlc3Rfc2V0KCZlYi0+ZW5naW5lLT5sYXN0X29hX2NvbmZpZywKPiA+PiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGViLT5yZXF1ZXN0KTsKPiA+IFRoaXMgaXMgb3V0c2lk
ZSBvZiB0aGUgZWItPnJlcXVlc3QtPnRpbWVsaW5lLT5tdXRleCBhbmQgbmVlZHMgYSBtdXRleC4K
PiAKPiAKPiBDYW4gSSBkbyB0aGlzIGluc2lkZSBpOTE1X3JlcXVlc3RfYWRkKCkgd2hlbiBycS0+
ZmxhZ3MgJiAKPiBJOTE1X1JFUVVFU1RfRkxBR1NfUEVSRiA/CgpOby4gQmVjYXVzZSBpdCBpcyBz
dGlsbCBiZWluZyBhY2Nlc3NlZCB3aXRob3V0IHRoZSBhcHByb3ByaWF0ZSBsb2Nrcy4KKE11bHRp
cGxlIGNhbGxlcnMgdHJ5aW5nIHRvIG1vZGlmeSBlYi0+ZW5naW5lLT5sYXN0X29hX2NvbmZpZyBh
bGwgdXNpbmcKdGhlaXIgb3duIHRpbWVsaW5lLT5tdXRleC4pIFlvdSBhbHJlYWR5IG5lZWQgYSBs
b2NrIHRvIHNlcmlhbGlzZQpvYV9jb25maWcsIHRoYXQgc2VlbXMgYWRlcXVhdGUgdG8gY292ZXIg
bGFzdF9vYV9jb25maWcgYXMgd2VsbC4KCk9oLCBkb24ndCBjYWxsIHRoZSBmbGFnIF9QRVJGIGJ1
dCBzb21ldGhpbmcgbGlrZSBGTEFHU19OT1BSRUVNUFQgc28KaXQgaW5kaWNhdGVzIHRoZSBtZWNo
YW5pc20uIENvbWUgdG8gdGhpbmsgb2YgdGhpcyBkb24ndCBpbmNsdWRlIF9GTEFHU18KYXMgd2Ug
ZG9uJ3QgbmVlZCB0byBkaXNhbWJpZ3VhdGUgeWV0IDopCi1DaHJpcwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
