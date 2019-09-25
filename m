Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40761BDCD8
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 13:17:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBE8389E98;
	Wed, 25 Sep 2019 11:17:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DFE589E98
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 11:17:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18610671-1500050 for multiple; Wed, 25 Sep 2019 12:17:20 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190925100137.17956-1-chris@chris-wilson.co.uk>
 <20190925100137.17956-13-chris@chris-wilson.co.uk>
 <c034c53b-9cb6-0e4b-16c2-4f8239fd3f82@linux.intel.com>
In-Reply-To: <c034c53b-9cb6-0e4b-16c2-4f8239fd3f82@linux.intel.com>
Message-ID: <156941023434.4979.9785714133344007307@skylake-alporthouse-com>
Date: Wed, 25 Sep 2019 12:17:14 +0100
Subject: Re: [Intel-gfx] [PATCH 12/27] drm/i915: Move request runtime
 management onto gt
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOS0yNSAxMTo1Nzo1MykKPiAKPiBPbiAyNS8w
OS8yMDE5IDExOjAxLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBAQCAtNDIzLDYgKzQyNCw3IEBA
IHZvaWQgaTkxNV9nZW1fb2JqZWN0X3JlbGVhc2VfbW1hcChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29i
amVjdCAqb2JqKQo+ID4gICBzdGF0aWMgaW50IGNyZWF0ZV9tbWFwX29mZnNldChzdHJ1Y3QgZHJt
X2k5MTVfZ2VtX29iamVjdCAqb2JqKQo+ID4gICB7Cj4gPiAgICAgICBzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUob2JqLT5iYXNlLmRldik7Cj4gPiArICAgICBzdHJ1Y3Qg
aW50ZWxfZ3QgKmd0ID0gJmk5MTUtPmd0Owo+ID4gICAgICAgaW50IGVycjsKPiA+ICAgCj4gPiAg
ICAgICBlcnIgPSBkcm1fZ2VtX2NyZWF0ZV9tbWFwX29mZnNldCgmb2JqLT5iYXNlKTsKPiA+IEBA
IC00MzEsNyArNDMzLDcgQEAgc3RhdGljIGludCBjcmVhdGVfbW1hcF9vZmZzZXQoc3RydWN0IGRy
bV9pOTE1X2dlbV9vYmplY3QgKm9iaikKPiA+ICAgCj4gPiAgICAgICAvKiBBdHRlbXB0IHRvIHJl
YXAgc29tZSBtbWFwIHNwYWNlIGZyb20gZGVhZCBvYmplY3RzICovCj4gPiAgICAgICBkbyB7Cj4g
PiAtICAgICAgICAgICAgIGVyciA9IGk5MTVfZ2VtX3dhaXRfZm9yX2lkbGUoaTkxNSwgTUFYX1ND
SEVEVUxFX1RJTUVPVVQpOwo+ID4gKyAgICAgICAgICAgICBlcnIgPSBpbnRlbF9ndF93YWl0X2Zv
cl9pZGxlKGd0LCBNQVhfU0NIRURVTEVfVElNRU9VVCk7Cj4gCj4gSXQgbWF5IGJlIHVzZWZ1bCB0
byBrZWVwIHRoZSBpOTE1X2dlbV93YWl0X2Zvcl9pZGxlIGFzIHRyaXZpYWwgd3JhcHBlciAKPiB3
aGljaCBjYW4gdGhlbiBjYWxsIGludGVsX2d0X3dhaXRfZm9yX2lkbGUuIEtlZXBzIHRoZSBzZXBh
cmF0aW9uIG9mIEdFTSAKPiBhbmQgR1QgYmV0dGVyLCBidXQgYWxzby4uCj4gPiAgICAgICAgICAg
ICAgIGlmIChlcnIpCj4gPiAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gPiAgIAo+ID4g
QEAgLTQ0MCw3ICs0NDIsNyBAQCBzdGF0aWMgaW50IGNyZWF0ZV9tbWFwX29mZnNldChzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQo+ID4gICAgICAgICAgICAgICBpZiAoIWVycikKPiA+
ICAgICAgICAgICAgICAgICAgICAgICBicmVhazsKPiA+ICAgCj4gPiAtICAgICB9IHdoaWxlIChm
bHVzaF9kZWxheWVkX3dvcmsoJmk5MTUtPmdlbS5yZXRpcmVfd29yaykpOwo+ID4gKyAgICAgfSB3
aGlsZSAoZmx1c2hfZGVsYXllZF93b3JrKCZndC0+cmVxdWVzdHMucmV0aXJlX3dvcmspKTsKPiAK
PiAuLiBoZXJlIGNvdWxkIGJlIGNvbnNpZGVyZWQgYSBsYXllcmluZyB2aW9sYXRpb24gdGhhdCBH
RU0gaXMgcGVla2luZyAKPiBpbnRvIEdUIGludGVybmFscyBsaWtlIHRoaXMuIFNoYWxsIHdlIGhh
dmUgYW5vdGhlciB3cmFwcGVyIGxpa2UgCj4gaTkxNV9nZW1fcmV0aXJlX3JlcXVlc3RzX3N5bmMg
d2hpY2ggd291bGQgY2FsbCBpbnRlbF9ndF9yZXRpcmVfcmVxdWVzdHMgCj4gYW5kIG5ldyBpbnRl
bF9ndF9mbHVzaF9yZXRpcmUsIG9yIHNvbWV0aGluZz8KClRoaXMgaXMgdGhlIG1vc3QgY29tcGxp
Y2F0ZWQgY2FzZSBiZWNhdXNlIHdlJ3JlIG1hbmFnaW5nIGEgZ2xvYmFsCnJlc291cmNlLiBBY3R1
YWxseSB0aGlzIGxvb3AgY2FuIGJlIGVsaW1pbmF0ZWQsIGFzIGl0IHdhcyBvbmx5IHRyeWluZyB0
bwphdm9pZCB0YWtpbmcgc3RydWN0X211dGV4IGhlcmUgKHVzaW5nIHRoZSB3b3JrZXIgaW5zdGVh
ZCkuIE5vdyB0aGF0CndlIGNhbiBjYWxsIHJldGlyZSBkaXJlY3RseSwgaXQgY2FuIGJlIHJlZHVj
ZWQuCgpBZnRlciB3aGljaCBJIHRoaW5rIHRoZSBwb2ludCBpcyBtb290IGFzIHRoZSBwYXRoIGZv
cndhcmQgaXMgY2xlYXJlci4KCj4gPiBAQCAtMTgwLDggKzE3OCw2IEBAIHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICptb2NrX2dlbV9kZXZpY2Uodm9pZCkKPiA+ICAgCj4gPiAgICAgICBtb2NrX2lu
aXRfY29udGV4dHMoaTkxNSk7Cj4gPiAgIAo+ID4gLSAgICAgSU5JVF9ERUxBWUVEX1dPUksoJmk5
MTUtPmdlbS5yZXRpcmVfd29yaywgbW9ja19yZXRpcmVfd29ya19oYW5kbGVyKTsKPiA+IC0KPiA+
ICAgICAgIGk5MTUtPmd0LmF3YWtlID0gLTE7Cj4gPiAgIAo+ID4gICAgICAgaW50ZWxfdGltZWxp
bmVzX2luaXQoaTkxNSk7Cj4gPiAKPiAKPiBJIGFtIHN0aWxsIHNsaWdodGx5IHVuZWFzeSBhYm91
dCBoYXZpbmcgcmVxdWVzdHMsIHdoaWNoIEkgc2VlIGFzIGEgR0VNIAo+IGNvbmNlcHQsIGJlIHJl
dGlyZWQgZnJvbSBHVCwgYnV0IG9rYXksIGl0J3Mgbm90IHRoZSBtb3N0IGltcG9ydGFudCBpc3N1
ZSAKPiBhdCB0aGUgbW9tZW50LgoKcmVxdWVzdHMgYXJlIG5vdCBhIEdFTSBjb25jZXB0LCB0aGV5
IGJlbG9uZyBpbiBzY2hlZC8gOikKLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
