Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B25C61072CA
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 14:09:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 187A66E0FB;
	Fri, 22 Nov 2019 13:09:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73BDD6E0FB
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2019 13:09:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19301138-1500050 for multiple; Fri, 22 Nov 2019 13:09:03 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191122112152.660743-1-chris@chris-wilson.co.uk>
 <20191122112152.660743-2-chris@chris-wilson.co.uk>
 <70521c9b-0118-4d56-22fd-3fe8bea5424c@linux.intel.com>
In-Reply-To: <70521c9b-0118-4d56-22fd-3fe8bea5424c@linux.intel.com>
Message-ID: <157442814042.2524.14421308033601241707@skylake-alporthouse-com>
Date: Fri, 22 Nov 2019 13:09:00 +0000
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/selftests: Flush the active
 callbacks
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0yMiAxMzowMTo1NikKPiAKPiBPbiAyMi8x
MS8yMDE5IDExOjIxLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBCZWZvcmUgY2hlY2tpbmcgdGhl
IGN1cnJlbnQgaTkxNV9hY3RpdmUgc3RhdGUgZm9yIHRoZSBhc3luY2hyb25vdXMgd29yawo+ID4g
d2Ugc3VibWl0dGVkLCBmbHVzaCBhbnkgb25nb2luZyBjYWxsYmFjay4gVGhpcyBlbnN1cmVzIHRo
YXQgb3VyIHNhbXBsaW5nCj4gPiBpcyByb2J1c3QgYW5kIGRvZXMgbm90IHNwb3JhZGljYWxseSBm
YWlsIGR1ZSB0byBiYWQgdGltaW5nIGFzIHRoZSB3b3JrCj4gPiBpcyBydW5uaW5nIG9uIGFub3Ro
ZXIgY3B1Lgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KPiA+IC0tLQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxm
dGVzdF9jb250ZXh0LmMgfCAxOSArKysrKysrKysrKysrLS0tLS0tCj4gPiAgIDEgZmlsZSBjaGFu
Z2VkLCAxMyBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfY29udGV4dC5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfY29udGV4dC5jCj4gPiBpbmRleCAzNTg2YWY2MzYzMDQu
LjkzOTc5ODMzODI0MiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Nl
bGZ0ZXN0X2NvbnRleHQuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRl
c3RfY29udGV4dC5jCj4gPiBAQCAtNDgsMjAgKzQ4LDI1IEBAIHN0YXRpYyBpbnQgY29udGV4dF9z
eW5jKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKPiA+ICAgCj4gPiAgICAgICBtdXRleF9sb2Nr
KCZ0bC0+bXV0ZXgpOwo+ID4gICAgICAgZG8gewo+ID4gLSAgICAgICAgICAgICBzdHJ1Y3QgZG1h
X2ZlbmNlICpmZW5jZTsKPiA+ICsgICAgICAgICAgICAgc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7
Cj4gPiAgICAgICAgICAgICAgIGxvbmcgdGltZW91dDsKPiA+ICAgCj4gPiAtICAgICAgICAgICAg
IGZlbmNlID0gaTkxNV9hY3RpdmVfZmVuY2VfZ2V0KCZ0bC0+bGFzdF9yZXF1ZXN0KTsKPiA+IC0g
ICAgICAgICAgICAgaWYgKCFmZW5jZSkKPiA+ICsgICAgICAgICAgICAgaWYgKGxpc3RfZW1wdHko
JnRsLT5yZXF1ZXN0cykpCj4gPiAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gPiAgIAo+
ID4gLSAgICAgICAgICAgICB0aW1lb3V0ID0gZG1hX2ZlbmNlX3dhaXRfdGltZW91dChmZW5jZSwg
ZmFsc2UsIEhaIC8gMTApOwo+ID4gKyAgICAgICAgICAgICBycSA9IGxpc3RfbGFzdF9lbnRyeSgm
dGwtPnJlcXVlc3RzLCB0eXBlb2YoKnJxKSwgbGluayk7Cj4gPiArICAgICAgICAgICAgIGk5MTVf
cmVxdWVzdF9nZXQocnEpOwo+ID4gKwo+ID4gKyAgICAgICAgICAgICB0aW1lb3V0ID0gaTkxNV9y
ZXF1ZXN0X3dhaXQocnEsIDAsIEhaIC8gMTApOwo+ID4gICAgICAgICAgICAgICBpZiAodGltZW91
dCA8IDApCj4gPiAgICAgICAgICAgICAgICAgICAgICAgZXJyID0gdGltZW91dDsKPiA+ICAgICAg
ICAgICAgICAgZWxzZQo+ID4gLSAgICAgICAgICAgICAgICAgICAgIGk5MTVfcmVxdWVzdF9yZXRp
cmVfdXB0byh0b19yZXF1ZXN0KGZlbmNlKSk7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgaTkx
NV9yZXF1ZXN0X3JldGlyZV91cHRvKHJxKTsKPiA+ICAgCj4gPiAtICAgICAgICAgICAgIGRtYV9m
ZW5jZV9wdXQoZmVuY2UpOwo+ID4gKyAgICAgICAgICAgICBzcGluX2xvY2tfaXJxKCZycS0+bG9j
ayk7Cj4gPiArICAgICAgICAgICAgIHNwaW5fdW5sb2NrX2lycSgmcnEtPmxvY2spOwo+IAo+IFVn
aC4uIHRoaXMgYXQgbGVhc3QgbmVlZHMgYSBjb21tZW50Lgo+IAo+IFdoYXQgaXMgdGhlIGFjdHVh
bCByYWNlPwoKV2UgY29tcGxldGUgdGhlIHN5bmMgYmVmb3JlIHRoZSBpbnRlcnJ1cHQgaGFuZGxl
cidzIGlycSB3b3JrIGhhcwpmaW5pc2hlZCBleGVjdXRpbmcgdGhlIGNhbGxiYWNrIHRvIG1hcmsg
dGhlIGJhcnJpZXIgYXMgY29tcGxldGVkLgpTbyB3aGVuIHdlIGxvb2sgYXQgd2hldGhlciB0aGUg
ZW5naW5lIGlzIHBhcmtlZCBvciBub3QsIHdlIHNlZSB0aGUgc3RhdGUKYmVmb3JlIHRoZSByZXF1
ZXN0IGhhcyBmaW5pc2hlZCBwcm9jZXNzaW5nIGFuZCBmaW5kIGl0IHN0aWxsIGFjdGl2ZS4KLUNo
cmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
