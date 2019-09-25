Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0134DBD9BF
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 10:23:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 482A96EB3B;
	Wed, 25 Sep 2019 08:23:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB7AC6EB41
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 08:23:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18608055-1500050 for multiple; Wed, 25 Sep 2019 09:23:20 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190902040303.14195-1-chris@chris-wilson.co.uk>
 <20190902040303.14195-12-chris@chris-wilson.co.uk>
 <ab3d61fb-19a8-eba0-d61b-6900e4e751f9@linux.intel.com>
 <156899734942.1196.15176789965520058157@skylake-alporthouse-com>
 <54bd7e47-bcc0-7e5d-c14f-8f591b4bbbae@linux.intel.com>
In-Reply-To: <54bd7e47-bcc0-7e5d-c14f-8f591b4bbbae@linux.intel.com>
Message-ID: <156939979494.4979.4044550468298995712@skylake-alporthouse-com>
Date: Wed, 25 Sep 2019 09:23:14 +0100
Subject: Re: [Intel-gfx] [PATCH 12/21] drm/i915: Mark up address spaces that
 may need to allocate
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOS0yMyAwOToxMDoyNikKPiAKPiBPbiAyMC8w
OS8yMDE5IDE3OjM1LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA5LTIwIDE3OjIyOjQyKQo+ID4+Cj4gPj4gT24gMDIvMDkvMjAxOSAwNTowMiwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiBTaW5jZSB3ZSBjYW5ub3QgYWxsb2NhdGUgdW5kZXJu
ZWF0aCB0aGUgdm0tPm11dGV4IChpdCBpcyB1c2VkIGluIHRoZQo+ID4+PiBkaXJlY3QtcmVjbGFp
bSBwYXRocyksIHdlIG5lZWQgdG8gc2hpZnQgdGhlIGFsbG9jYXRpb25zIG9mZiBpbnRvIGEKPiA+
Pj4gbXV0ZXhsZXNzIHdvcmtlciB3aXRoIGZlbmNlIHJlY3Vyc2lvbiBwcmV2ZW50aW9uLiBUbyBr
bm93IHdoZW4gd2UgbmVlZAo+ID4+PiB0aGlzIHByb3RlY3Rpb24sIHdlIG1hcmsgdXAgdGhlIGFk
ZHJlc3Mgc3BhY2VzIHRoYXQgZG8gYWxsb2NhdGUgYmVmb3JlCj4gPj4+IGluc2VydGlvbi4KPiA+
Pj4KPiA+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+Cj4gPj4+IC0tLQo+ID4+PiAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9n
dHQuYyB8IDMgKysrCj4gPj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5o
IHwgMiArKwo+ID4+PiAgICAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+ID4+Pgo+
ID4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+ID4+PiBpbmRleCA5MDk1ZjAxNzE2
MmUuLjU2ZDI3Y2YwOWEzZCAxMDA2NDQKPiA+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW1fZ3R0LmMKPiA+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1f
Z3R0LmMKPiA+Pj4gQEAgLTE1MDAsNiArMTUwMCw3IEBAIHN0YXRpYyBzdHJ1Y3QgaTkxNV9wcGd0
dCAqZ2VuOF9wcGd0dF9jcmVhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gPj4+
ICAgICAgICAgICAgICAgICAgICAgICAgZ290byBlcnJfZnJlZV9wZDsKPiA+Pj4gICAgICAgIH0K
PiA+Pj4gICAgCj4gPj4+ICsgICAgIHBwZ3R0LT52bS5iaW5kX2FsbG9jID0gSTkxNV9WTUFfTE9D
QUxfQklORDsKPiA+Pgo+ID4+IFNvIHRoaXMgaXMgcmUtdXNpbmcgSTkxNV9WTUFfTE9DQUxfQklO
RCBhcyBhIHRyaWNrPyBJcyBpdCBjbGVhciBob3cgdGhhdAo+ID4+IHdvcmtzIGZyb20gdGhlc2Ug
Y2FsbCBzaXRlcz8gU2hvdWxkIGl0IGJlIGNhbGxlZCBiaW5kX2FsbG9jKnMqPwo+ID4+IGJpbmRf
YWxsb2NhdGVzPyBPciBiZSBhIGJvb2xlYW4gd2hpY2ggaXMgY29udmVydGVkIHRvIGEgdHJpY2sg
ZmxhZyBpbgo+ID4+IGk5MTVfdm1hX2JpbmQgd2hlcmUgYSBjb21tZW50IGNhbiBiZSBwdXQgZXhw
bGFpbmluZyB0aGUgdHJpY2s/Cj4gPiAKPiA+IElzIGl0IGEgdHJpY2s/IFdlIG5lZWQgdG8gZGlm
ZmVyZW50aWF0ZSBiZXR3ZWVuIHJlcXVlc3RzIGZvciBMT0NBTF9CSU5ELAo+ID4gR0xPQkFMX0JJ
TkQsIExPQ0FMX0JJTkQgfCBHTE9CQUxfQklORCwgZm9yIGRpZmZlcmVudCB0eXBlcyBvZiB2bS4g
VGhlbiBJCj4gPiBoYXZlIGEgcGxhbiBvbiB1c2luZyB0aGUgd29ya2VyIGZvciBHTE9CQUxfQklO
RCBvbiBic3cvYnh0IHRvIGRlZmVyIHRoZQo+ID4gc3RvcF9tYWNoaW5lKCkuCj4gCj4gV2hhdCdz
IHRoZSBjb25uZWN0aW9uIGJldHdlZW4gIm1hcmsgdXAgdGhlIGFkZHJlc3Mgc3BhY2VzIHRoYXQg
ZG8gCj4gYWxsb2NhdGUgYmVmb3JlIGluc2VydGlvbiIgYW5kIEk5MTVfVk1BX0xPQ0FMX0JJTkQ/
CgpGdWxsLXBwZ3R0IGlzIG9ubHkgYWNjZXNzaWJsZSBieSBQSU5fVVNFUi4KCkFsaWFzaW5nLXBw
Z3R0IGlzIGFjY2Vzc2libGUgZnJvbSBnbG9iYWwtZ3R0IGFzIFBJTl9VU0VSLiBPbmx5IGlmIHdl
CmhhdmUgYW4gYWxpYXNpbmctZ3R0IGJlaGluZCBnZ3R0IGRvIHdlIHdhbnQgdG8gYWxsb2NhdGUg
Zm9yIGdndHQgZm9yCmxvY2FsIGJpbmRzLgoKZ2xvYmFsLWd0dCBieSBpdHNlbGYgbmV2ZXIgYWxs
b2NhdGVzIGFuZCBpcyBleHBlY3RlZCB0byBiZSBzeW5jaHJvbm91cy4KSG93ZXZlciwgd2UgZG8g
dXNlIHN0b3BfbWFjaGluZSgpIGZvciBieHQvYnN3IGFuZCB0aGF0IHVuZm9ydHVuYXRlbHkgaXMK
bWFya2VkIGFzIGFuIGFsbG9jYXRpbmcgbXV0ZXggc28gb25lIGlkZWEgSSBoYWQgZm9yIGF2b2lk
aW5nIHRoYXQKbG9ja2RlcCBzcGxhdCB3YXMgdG8gbWFrZSBieHQvYnN3IFBJTl9HTE9CQUwgYXN5
bmMuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
