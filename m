Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B3F1FA52
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2019 21:09:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89E8189155;
	Wed, 15 May 2019 19:09:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50B5489155;
 Wed, 15 May 2019 19:09:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16568906-1500050 for multiple; Wed, 15 May 2019 20:09:25 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <155794720594.32666.12286317145397799125@skylake-alporthouse-com>
References: <20190508100958.32637-1-chris@chris-wilson.co.uk>
 <20190508100958.32637-5-chris@chris-wilson.co.uk>
 <4793727f-54f1-9d2d-f971-83b2dc391847@linux.intel.com>
 <155794720594.32666.12286317145397799125@skylake-alporthouse-com>
Message-ID: <155794736576.12244.10898025630597740136@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 15 May 2019 20:09:25 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t 05/16] i915/gem_ctx_create: Basic
 checks for constructor properties
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDUtMTUgMjA6MDY6NDUpCj4gUXVvdGluZyBUdnJ0
a28gVXJzdWxpbiAoMjAxOS0wNS0xNCAxMzoyNzozOCkKPiA+IAo+ID4gT24gMDgvMDUvMjAxOSAx
MTowOSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gPiBDaGVjayB0aGF0IHRoZSBleHRlbmRlZCBj
cmVhdGUgaW50ZXJmYWNlIGFjY2VwdHMgc2V0cGFyYW0uCj4gPiA+IAo+ID4gPiBTaWduZWQtb2Zm
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+ID4gLS0tCj4g
PiA+ICAgdGVzdHMvaTkxNS9nZW1fY3R4X2NyZWF0ZS5jIHwgMjI1ICsrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKystLQo+ID4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAyMTMgaW5zZXJ0aW9u
cygrKSwgMTIgZGVsZXRpb25zKC0pCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvdGVzdHMvaTkx
NS9nZW1fY3R4X2NyZWF0ZS5jIGIvdGVzdHMvaTkxNS9nZW1fY3R4X2NyZWF0ZS5jCj4gPiA+IGlu
ZGV4IGE2NjQwNzBkYi4uOWI0ZmRkYmU3IDEwMDY0NAo+ID4gPiAtLS0gYS90ZXN0cy9pOTE1L2dl
bV9jdHhfY3JlYXRlLmMKPiA+ID4gKysrIGIvdGVzdHMvaTkxNS9nZW1fY3R4X2NyZWF0ZS5jCj4g
PiA+IEBAIC0zMyw2ICszMyw3IEBACj4gPiA+ICAgI2luY2x1ZGUgPHRpbWUuaD4KPiA+ID4gICAK
PiA+ID4gICAjaW5jbHVkZSAiaWd0X3JhbmQuaCIKPiA+ID4gKyNpbmNsdWRlICJzd19zeW5jLmgi
Cj4gPiA+ICAgCj4gPiA+ICAgI2RlZmluZSBMT0NBTF9JOTE1X0VYRUNfQlNEX1NISUZUICAgICAg
KDEzKQo+ID4gPiAgICNkZWZpbmUgTE9DQUxfSTkxNV9FWEVDX0JTRF9NQVNLICAgICAgICgzIDw8
IExPQ0FMX0k5MTVfRVhFQ19CU0RfU0hJRlQpCj4gPiA+IEBAIC00NSwxMiArNDYsMzMgQEAgc3Rh
dGljIHVuc2lnbmVkIGFsbF9uZW5naW5lOwo+ID4gPiAgIHN0YXRpYyB1bnNpZ25lZCBwcGd0dF9l
bmdpbmVzWzE2XTsKPiA+ID4gICBzdGF0aWMgdW5zaWduZWQgcHBndHRfbmVuZ2luZTsKPiA+ID4g
ICAKPiA+ID4gLXN0YXRpYyBpbnQgX19nZW1fY29udGV4dF9jcmVhdGVfbG9jYWwoaW50IGZkLCBz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX2NvbnRleHRfY3JlYXRlICphcmcpCj4gPiA+ICtzdGF0aWMgaW50
IGNyZWF0ZV9pb2N0bChpbnQgZmQsIHN0cnVjdCBkcm1faTkxNV9nZW1fY29udGV4dF9jcmVhdGUg
KmFyZykKPiA+ID4gICB7Cj4gPiA+IC0gICAgIGludCByZXQgPSAwOwo+ID4gPiAtICAgICBpZiAo
ZHJtSW9jdGwoZmQsIERSTV9JT0NUTF9JOTE1X0dFTV9DT05URVhUX0NSRUFURSwgYXJnKSkKPiA+
ID4gLSAgICAgICAgICAgICByZXQgPSAtZXJybm87Cj4gPiA+IC0gICAgIHJldHVybiByZXQ7Cj4g
PiA+ICsgICAgIGludCBlcnI7Cj4gPiA+ICsKPiA+ID4gKyAgICAgZXJyID0gMDsKPiA+ID4gKyAg
ICAgaWYgKGlndF9pb2N0bChmZCwgRFJNX0lPQ1RMX0k5MTVfR0VNX0NPTlRFWFRfQ1JFQVRFLCBh
cmcpKSB7Cj4gPiA+ICsgICAgICAgICAgICAgZXJyID0gLWVycm5vOwo+ID4gPiArICAgICAgICAg
ICAgIGlndF9hc3NlcnQoZXJyKTsKPiA+ID4gKyAgICAgfQo+ID4gPiArCj4gPiA+ICsgICAgIGVy
cm5vID0gMDsKPiA+ID4gKyAgICAgcmV0dXJuIGVycjsKPiA+ID4gK30KPiA+ID4gKwo+ID4gPiAr
c3RhdGljIGludCBjcmVhdGVfZXh0X2lvY3RsKGludCBpOTE1LAo+ID4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAgIHN0cnVjdCBkcm1faTkxNV9nZW1fY29udGV4dF9jcmVhdGVfZXh0ICphcmcp
Cj4gPiA+ICt7Cj4gPiA+ICsgICAgIGludCBlcnI7Cj4gPiA+ICsKPiA+ID4gKyAgICAgZXJyID0g
MDsKPiA+ID4gKyAgICAgaWYgKGlndF9pb2N0bChpOTE1LCBEUk1fSU9DVExfSTkxNV9HRU1fQ09O
VEVYVF9DUkVBVEVfRVhULCBhcmcpKSB7Cj4gPiA+ICsgICAgICAgICAgICAgZXJyID0gLWVycm5v
Owo+ID4gPiArICAgICAgICAgICAgIGlndF9hc3N1bWUoZXJyKTsKPiA+ID4gKyAgICAgfQo+ID4g
PiArCj4gPiA+ICsgICAgIGVycm5vID0gMDsKPiA+ID4gKyAgICAgcmV0dXJuIGVycjsKPiA+ID4g
ICB9Cj4gPiA+ICAgCj4gPiA+ICAgc3RhdGljIGRvdWJsZSBlbGFwc2VkKGNvbnN0IHN0cnVjdCB0
aW1lc3BlYyAqc3RhcnQsCj4gPiA+IEBAIC0zMDgsNiArMzMwLDE4NyBAQCBzdGF0aWMgdm9pZCBt
YXhpbXVtKGludCBmZCwgaW50IG5jcHVzLCB1bnNpZ25lZCBtb2RlKQo+ID4gPiAgICAgICBmcmVl
KGNvbnRleHRzKTsKPiA+ID4gICB9Cj4gPiA+ICAgCj4gPiA+ICtzdGF0aWMgdm9pZCBiYXNpY19l
eHRfcGFyYW0oaW50IGk5MTUpCj4gPiA+ICt7Cj4gPiA+ICsgICAgIHN0cnVjdCBkcm1faTkxNV9n
ZW1fY29udGV4dF9jcmVhdGVfZXh0X3NldHBhcmFtIGV4dCA9IHsKPiA+ID4gKyAgICAgICAgICAg
ICB7IC5uYW1lID0gSTkxNV9DT05URVhUX0NSRUFURV9FWFRfU0VUUEFSQU0gfSwKPiA+ID4gKyAg
ICAgfTsKPiA+ID4gKyAgICAgc3RydWN0IGRybV9pOTE1X2dlbV9jb250ZXh0X2NyZWF0ZV9leHQg
Y3JlYXRlID0gewo+ID4gPiArICAgICAgICAgICAgIC5mbGFncyA9IEk5MTVfQ09OVEVYVF9DUkVB
VEVfRkxBR1NfVVNFX0VYVEVOU0lPTlMKPiA+ID4gKyAgICAgfTsKPiA+ID4gKyAgICAgc3RydWN0
IGRybV9pOTE1X2dlbV9jb250ZXh0X3BhcmFtIGdldDsKPiA+ID4gKwo+ID4gPiArICAgICBpZ3Rf
cmVxdWlyZShjcmVhdGVfZXh0X2lvY3RsKGk5MTUsICZjcmVhdGUpID09IDApOwo+ID4gPiArICAg
ICBnZW1fY29udGV4dF9kZXN0cm95KGk5MTUsIGNyZWF0ZS5jdHhfaWQpOwo+ID4gPiArCj4gPiA+
ICsgICAgIGNyZWF0ZS5leHRlbnNpb25zID0gLTF1bGw7Cj4gPiA+ICsgICAgIGlndF9hc3NlcnRf
ZXEoY3JlYXRlX2V4dF9pb2N0bChpOTE1LCAmY3JlYXRlKSwgLUVGQVVMVCk7Cj4gPiA+ICsKPiA+
ID4gKyAgICAgY3JlYXRlLmV4dGVuc2lvbnMgPSB0b191c2VyX3BvaW50ZXIoJmV4dCk7Cj4gPiA+
ICsgICAgIGlndF9hc3NlcnRfZXEoY3JlYXRlX2V4dF9pb2N0bChpOTE1LCAmY3JlYXRlKSwgLUVJ
TlZBTCk7Cj4gPiAKPiA+IEkgdGhpbmsgdGhpcyBpcyB0aGUgdW5rbm93biBwYXJhbSwgcmlnaHQ/
Cj4gPiAKPiA+IE5lZWQgYW5vdGhlciAtRUlOVkFMIHRlc3QgZm9yIG5vbi16ZXJvIGV4dC5jdHhf
aWQuCj4gCj4gTm8sIHRoaXMgaXMgbm9uLXplcm8gY3R4X2lkLgoKTm8sIEkgcmVhZCB0aGUgd3Jv
bmcgY3R4X2lkLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
