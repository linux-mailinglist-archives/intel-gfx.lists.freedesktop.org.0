Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D69A7BB1E
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 10:05:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D78DD8979F;
	Wed, 31 Jul 2019 08:05:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D21808979F
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 08:05:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17751857-1500050 for multiple; Wed, 31 Jul 2019 09:05:26 +0100
MIME-Version: 1.0
To: Ramalingam C <ramalingam.c@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <2ff5c66a-2257-1594-44bd-d9e5b7c8e9e0@linux.intel.com>
References: <20190730035835.24103-1-ramalingam.c@intel.com>
 <66d3520c-205d-4631-5d35-f963e1d88e2f@linux.intel.com>
 <20190730080427.GA31013@intel.com>
 <37c95ae1-e996-74c1-c08c-08fbcb5fd497@linux.intel.com>
 <156450642872.6373.8533889876738348685@skylake-alporthouse-com>
 <2ff5c66a-2257-1594-44bd-d9e5b7c8e9e0@linux.intel.com>
Message-ID: <156456032572.6373.13078860351376372466@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 31 Jul 2019 09:05:25 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t v5] tests/i915/gem_exec_async: Update
 with engine discovery
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNy0zMSAwNzoxMjozNSkKPiAKPiBPbiAzMC8w
Ny8yMDE5IDE4OjA3LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA3LTMwIDE2OjIwOjA4KQo+ID4+Cj4gPj4gT24gMzAvMDcvMjAxOSAwOTowNCwg
UmFtYWxpbmdhbSBDIHdyb3RlOgo+ID4+PiBPbiAyMDE5LTA3LTMwIGF0IDEzOjA1OjI3ICswMTAw
LCBUdnJ0a28gVXJzdWxpbiB3cm90ZToKPiA+Pj4+Cj4gPj4+PiBPbiAzMC8wNy8yMDE5IDA0OjU4
LCBSYW1hbGluZ2FtIEMgd3JvdGU6Cj4gPj4+Pj4gK2Jvb2wgZ2VtX2ViX2ZsYWdzX2FyZV9kaWZm
ZXJlbnRfZW5naW5lcyh1bnNpZ25lZCBlYl9mbGFnMSwgdW5zaWduZWQgZWJfZmxhZzIpCj4gPj4+
Pgo+ID4+Pj4gSSB0aGluayB3ZSB0cnkgdG8gYXZvaWQgaW1wbGllZCBpbnQgYnV0IG5vdCBzdXJl
IGluIHRoaXMgY2FzZSB3aGV0aGVyIHRvIHN1Z2dlc3QgdW5zaWduZWQgaW50LCBsb25nIG9yIHVp
bnQ2NF90LiBJZiB3ZSBhcmUgc3VnZ2VzdGluZyBpbiB0aGUgZnVuY3Rpb24gbmFtZSB0aGF0IGFu
eSBmbGFncyBjYW4gYmUgcGFzc2VkIGluIHBlcmhhcHMgaXQgc2hvdWxkIGJlIHVpbnQ2NF90IGFu
ZCB0aGVuIHdlIGZpbHRlciBvbiB0aGUgZW5naW5lIGJpdHMgKGZsYWdzLi4gJj0gSTkxNV9FWEVD
X1JJTkdfTUFTSyB8ICgzIDw8IDEzKSkgYmVmb3JlIGNoZWNraW5nLiBZZWFoLCBJIHRoaW5rIHRo
YXQgd291bGQgYmUgbW9yZSByb2J1c3QgZm9yIGEgZ2VuZXJpYyBoZWxwZXIuCj4gPj4+Pgo+ID4+
Pj4gQW5kIGFkZCBhIGRvYyBibHVyYiBmb3IgdGhpcyBoZWxwZXIgc2luY2UgaXQgaXMgbm9uLW9i
dmlvdXMgd2h5IHdlIHdlbnQgZm9yIGRpZmZlcmVudCBhbmQgbm90IHNhbWUuIE15IHRoaW5raW5n
IHdhcyB0aGUgbmFtZSBkaWZmZXJlbnQgd291bGQgYmUgY2xlYXJlciB0byBleHByZXNzIGtpbmQg
b2YgdHJpLXN0YXRlIG5hdHVyZSBvZiB0aGlzIGNoZWNrLiAoRmxhZ3MgbWF5IGJlIGRpZmZlcmVu
dCwgYnV0IGVuZ2luZXMgYXJlIG5vdCBndWFyYW50ZWVkIHRvIGJlIGRpZmZlcmVudC4pIEhhdmUg
SSBvdmVyLWNvbXBsaWNhdGVkIGl0PyBEbyB3ZSBuZWVkIHRvIG1ha2UgaXQgY2xlYXJlciBieSBu
YW1pbmcgaXQgZ2VtX2ViX2ZsYWdzX2FyZV9ndWFyYW50ZWVkX2RpZmZlcmVudF9lbmdpbmVzPyA6
KQo+ID4+PiBGb3IgbWUgY3VycmVudCBzaGFwZSBsb29rcyBnb29kIGVub3VnaCA6KSBJIHdpbGwg
dXNlIHRoZSB1aW50NjRfdCBmb3IKPiA+Pj4gcGFyYW1ldGVyIHR5cGVzLgo+ID4+Cj4gPj4gT2th
eSBidXQgcGxlYXNlIGFkZCBzb21lIGRvY3VtZW50YXRpb24gZm9yIHRoZSBoZWxwZXIgKHdlJ3Zl
IGJlZW4gdmVyeQo+ID4+IGJhZCBpbiB0aGlzIHdvcmsgaW4gdGhpcyByZXNwZWN0IHNvIGZhcikg
YW5kIGFsc28gZmlsdGVyIG91dCBub24tZW5naW5lCj4gPj4gc2VsZWN0aW9uIGJpdHMgZnJvbSB0
aGUgZmxhZ3MgYmVmb3JlIGRvaW5nIHRoZSBjaGVja3MuCj4gPj4KPiA+Pj4+Cj4gPj4+Pj4gK3sK
PiA+Pj4+PiArICAgaWYgKGViX2ZsYWcxID09IGViX2ZsYWcyKQo+ID4+Pj4+ICsgICAgICAgICAg
IHJldHVybiBmYWxzZTsKPiA+Pj4+PiArCj4gPj4+Pj4gKyAgIC8qIERFRkFVTFQgc3RhbmRzIGZv
ciBSRU5ERVIgaW4gbGVnYWN5IHVBUEkqLwo+ID4+Pj4+ICsgICBpZiAoKGViX2ZsYWcxID09IEk5
MTVfRVhFQ19ERUZBVUxUICYmIGViX2ZsYWcyID09IEk5MTVfRVhFQ19SRU5ERVIpIHx8Cj4gPj4+
Pj4gKyAgICAgICAgKGViX2ZsYWcxID09IEk5MTVfRVhFQ19SRU5ERVIgJiYgZWJfZmxhZzIgPT0g
STkxNV9FWEVDX0RFRkFVTFQpKQo+ID4+Pj4+ICsgICAgICAgICAgIHJldHVybiBmYWxzZTsKPiA+
Pj4+PiArCj4gPj4+Pj4gKyAgIC8qCj4gPj4+Pj4gKyAgICAqIEJTRCBjb3VsZCBiZSBleGVjdXRl
ZCBvbiBCU0QxL0JTRDIuIFNvIEJTRCBhbmQgQlNELW4gY291bGQgYmUKPiA+Pj4+PiArICAgICog
c2FtZSBlbmdpbmUuCj4gPj4+Pj4gKyAgICAqLwo+ID4+Pj4+ICsgICBpZiAoKGViX2ZsYWcxID09
IEk5MTVfRVhFQ19CU0QpICYmCj4gPj4+Pj4gKyAgICAgICAoZWJfZmxhZzIgJiB+STkxNV9FWEVD
X0JTRF9NQVNLKSA9PSBJOTE1X0VYRUNfQlNEKQo+ID4+Pj4+ICsgICAgICAgICAgICAgICAgICAg
cmV0dXJuIGZhbHNlOwo+ID4+Pj4+ICsKPiA+Pj4+PiArICAgaWYgKChlYl9mbGFnMiA9PSBJOTE1
X0VYRUNfQlNEKSAmJgo+ID4+Pj4+ICsgICAgICAgKGViX2ZsYWcxICYgfkk5MTVfRVhFQ19CU0Rf
TUFTSykgPT0gSTkxNV9FWEVDX0JTRCkKPiA+Pj4+PiArICAgICAgICAgICAgICAgICAgIHJldHVy
biBmYWxzZTsKPiA+Pj4+Cj4gPj4+PiBJIHRoaW5rIHRoaXMgd29ya3MuCj4gPj4+Pgo+ID4+Pj4g
SSd2ZSBhbHNvIGNvbWUgdXAgd2l0aCBzb21ldGhpbmcgdG8gbWVyZ2UgdGhlIHR3byBjaGVja3Ms
IG5vdCAxMDAlIGl0J3MgY29ycmVjdCBvciBtb3JlIHJlYWRhYmxlOgo+ID4+Pj4KPiA+Pj4+IGlm
ICgoKGZsYWcxIHwgZmxhZzIpICYgSTkxNV9FWEVDX1JJTkdfTUFTSykpID09IEk5MTVfRVhFQ19C
U0QgJiYgLy8gYXQgbGVhc3Qgb25lIGlzIEJTRAo+ID4+Pj4gICAgICAgISgoZmxhZzEgXiBmbGFn
MikgJiBJOTE1X0VYRUNfUklOR19NQVNLKSAmJiAvLyBib3RoIGFyZSBCU0QKPiA+Pj4+ICAgICAg
ICgoKGZsYWcxIHwgZmxhZzIpICYgKDMgPDwgMTMpKSkgIT0gMykgLy8gbm90IGd1YXJhbnRlZWQg
ZGlmZmVyZW50Cj4gPj4+PiAgICAgICByZXR1cm4gZmFsc2U7Cj4gPj4+Pgo+ID4+Pj4gV291bGQg
bmVlZCBmZWVkaW5nIGluIHNvbWUgdmFsdWVzIGFuZCBjaGVja2luZyBpdCB3b3JrcyBhcyBleHBl
Y3RlZC4gUHJvYmFibHkgbm90IHdvcnRoIGl0IHNpbmNlIEkgZG91YnQgaXQgaXMgbW9yZSByZWFk
YWJsZS4KPiA+Pj4gcmVhZGFiaWxpdHkgcGVyc3BlY3RpdmUsIHdlIGNvdWxkIHN0aWNrIHRvIHRo
ZSBvcmlnaW5hbCB2ZXJzaW9uLiBJZiB3ZQo+ID4+PiB3YW50IHRvIGdvIGFoZWFkIHdlIG5lZWQg
dG8gZG8gYmVsb3cgb3BzOgo+ID4+Cj4gPj4gU3RpY2sgd2l0aCB5b3VyIHZlcnNpb24gSSB0aGlu
ay4KPiA+Pgo+ID4+IENocmlzIGlzIGJlaW5nIHF1aWV0IEJUVy4gRWl0aGVyIHdlIGFyZSBiZWxv
dyBoaXMgcmFkYXIgYW5kIGhlJ2xsIHNjcmVhbQo+ID4+IGxhdGVyLCBvciB3ZSBtYW5hZ2VkIHRv
IGFwcHJvYWNoIHNvbWV0aGluZyBoZSBmaW5kcyBwYXNzYWJsZS4gOykKPiA+IAo+ID4gSnVzdCB3
YWl0aW5nIHVudGlsIEkgaGF2ZSB0byB1c2UgaXQgaW4gYW5nZXIgOikKPiA+IAo+ID4gR3V0IGZl
ZWxpbmcgaXMgdGhhdCBJIHdvbid0IGhhdmUgdG8gdXNlIGl0LCBpbiB0aGF0IGlmIEkgaGF2ZSB0
d28KPiA+IGRpZmZlcmVudCB0aW1lbGluZXMgcG9pbnRpbmcgdG8gdGhlIHNhbWUgcGh5c2ljYWwg
ZW5naW5lLCBkbyBJIHJlYWxseQo+ID4gY2FyZT8gVGhlIHNpdHVhdGlvbnMgd2hlcmUgSSB3b3Vs
ZCBoYXZlIGRpc3RpbmN0IGVuZ2luZSBtYXBwaW5ncyBzdHJpa2UKPiA+IG1lIGFzIGJlaW5nIGNh
c2VzIHdoZXJlIEknbSB0ZXN0aW5nIHRpbWVsaW5lczsgb3RoZXJ3aXNlIEkgd291bGQgY3JlYXRl
Cj4gPiBjb250ZXh0cyB3aXRoIHRoZSBzYW1lIGN0eC0+ZW5naW5lc1tdIG1hcC4KPiAKPiBJIGRv
IGRpc2xpa2UgdGhpcyBjb21wbGljYXRpb24gb2YgdGVzdGluZyB1YXBpIGZsYWdzIGJ1dCBmaWd1
cmluZyBvdXQgCj4gdGhlIHBoeXNpY2FsIGVuZ2luZXMgdW5kZXIgdGhlIGNvdmVycy4gRG8geW91
IHRoaW5rIGl0IHdvdWxkIGJlIGNsZWFyZXIgCj4gZG8gZHJvcCB0aGlzIGhlbHBlciBhbmQgaW5z
dGVhZCB1c2UgdHdvIGNvbnRleHRzIGluIHRoaXMgdGVzdD8gSXQgd291bGQgCj4gbWFrZSBpdCBk
ZXBlbmRlbnQgb24gY29udGV4dHMgdGhvdWdoLi4KCkdvaW5nIGJhY2sgdG8gbG9vayBhdCB0aGUg
dXNlIGNhc2UuLi4KCiB0ZXN0cy9pOTE1L2dlbV9leGVjX2FzeW5jLmMgfCA4MSArKysrKysrKysr
KysrKysrKysrKysrKysrKysrLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNjMgaW5zZXJ0aW9u
cygrKSwgMTggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fZXhlY19h
c3luYy5jIGIvdGVzdHMvaTkxNS9nZW1fZXhlY19hc3luYy5jCmluZGV4IDlhMDZhZjdlMi4uZmFm
Y2E5OGFkIDEwMDY0NAotLS0gYS90ZXN0cy9pOTE1L2dlbV9leGVjX2FzeW5jLmMKKysrIGIvdGVz
dHMvaTkxNS9nZW1fZXhlY19hc3luYy5jCkBAIC04MCw3ICs4MCwxMCBAQCBzdGF0aWMgdm9pZCBz
dG9yZV9kd29yZChpbnQgZmQsIHVuc2lnbmVkIHJpbmcsCiAJZ2VtX2Nsb3NlKGZkLCBvYmpbMV0u
aGFuZGxlKTsKIH0KIAotc3RhdGljIHZvaWQgb25lKGludCBmZCwgdW5zaWduZWQgcmluZywgdWlu
dDMyX3QgZmxhZ3MpCitzdGF0aWMgdm9pZCBvbmUoaW50IGZkLAorCQl1bnNpZ25lZCBpbnQgaWR4
LAorCQljb25zdCBzdHJ1Y3QgaW50ZWxfZXhlY3V0aW9uX2VuZ2luZTIgKmVuZ2luZXMsCisJCXVu
c2lnbmVkIGludCBudW1fZW5naW5lcykKIHsKIAljb25zdCBpbnQgZ2VuID0gaW50ZWxfZ2VuKGlu
dGVsX2dldF9kcm1fZGV2aWQoZmQpKTsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNfb2JqZWN0
MiBvYmpbMl07CkBAIC04OCw3ICs5MSw2IEBAIHN0YXRpYyB2b2lkIG9uZShpbnQgZmQsIHVuc2ln
bmVkIHJpbmcsIHVpbnQzMl90IGZsYWdzKQogI2RlZmluZSBCQVRDSCAxCiAJc3RydWN0IGRybV9p
OTE1X2dlbV9yZWxvY2F0aW9uX2VudHJ5IHJlbG9jOwogCXN0cnVjdCBkcm1faTkxNV9nZW1fZXhl
Y2J1ZmZlcjIgZXhlY2J1ZjsKLQl1bnNpZ25lZCBpbnQgb3RoZXI7CiAJdWludDMyX3QgKmJhdGNo
OwogCWludCBpOwogCkBAIC0xMzgsMTkgKzE0MCwxNyBAQCBzdGF0aWMgdm9pZCBvbmUoaW50IGZk
LCB1bnNpZ25lZCByaW5nLCB1aW50MzJfdCBmbGFncykKIAltZW1zZXQoJmV4ZWNidWYsIDAsIHNp
emVvZihleGVjYnVmKSk7CiAJZXhlY2J1Zi5idWZmZXJzX3B0ciA9IHRvX3VzZXJfcG9pbnRlcihv
YmopOwogCWV4ZWNidWYuYnVmZmVyX2NvdW50ID0gMjsKLQlleGVjYnVmLmZsYWdzID0gcmluZyB8
IGZsYWdzOworCWV4ZWNidWYuZmxhZ3MgPSBlbmdpbmVzW2lkeF0uZmxhZ3M7CiAJaWd0X3JlcXVp
cmUoX19nZW1fZXhlY2J1ZihmZCwgJmV4ZWNidWYpID09IDApOwogCWdlbV9jbG9zZShmZCwgb2Jq
W0JBVENIXS5oYW5kbGUpOwogCiAJaSA9IDA7Ci0JZm9yX2VhY2hfcGh5c2ljYWxfZW5naW5lKGZk
LCBvdGhlcikgewotCQlpZiAob3RoZXIgPT0gcmluZykKKwlmb3IgKHVuc2lnbmVkIGludCBvdGhl
ciA9IDA7IG90aGVyIDwgbnVtX2VuZ2luZXM7IG90aGVyKyspIHsKKwkJaWYgKG90aGVyID09IGlk
eCkKIAkJCWNvbnRpbnVlOwogCi0JCWlmICghZ2VtX2Nhbl9zdG9yZV9kd29yZChmZCwgb3RoZXIp
KQotCQkJY29udGludWU7Ci0KLQkJc3RvcmVfZHdvcmQoZmQsIG90aGVyLCBvYmpbU0NSQVRDSF0u
aGFuZGxlLCA0KmksIGkpOworCQlzdG9yZV9kd29yZChmZCwgZW5naW5lc1tvdGhlcl0uZmxhZ3Ms
CisJCQkgICAgb2JqW1NDUkFUQ0hdLmhhbmRsZSwgNCppLCBpKTsKIAkJaSsrOwogCX0KIApAQCAt
MTg1LDcgKzE4NSw2IEBAIHN0YXRpYyBib29sIGhhc19hc3luY19leGVjYnVmKGludCBmZCkKIAog
aWd0X21haW4KIHsKLQljb25zdCBzdHJ1Y3QgaW50ZWxfZXhlY3V0aW9uX2VuZ2luZSAqZTsKIAlp
bnQgZmQgPSAtMTsKIAogCWlndF9za2lwX29uX3NpbXVsYXRpb24oKTsKQEAgLTE5OSwxNSArMTk4
LDYxIEBAIGlndF9tYWluCiAJCWlndF9mb3JrX2hhbmdfZGV0ZWN0b3IoZmQpOwogCX0KIAotCWZv
ciAoZSA9IGludGVsX2V4ZWN1dGlvbl9lbmdpbmVzOyBlLT5uYW1lOyBlKyspIHsKLQkJLyogZGVm
YXVsdCBleGVjLWlkIGlzIHB1cmVseSBzeW1ib2xpYyAqLwotCQlpZiAoZS0+ZXhlY19pZCA9PSAw
KQotCQkJY29udGludWU7CisJLyogRmlyc3QgdXAsIGNoZWNrIHRoZSBsZWdhY3kgZW5naW5lIHNl
bGVjdG9yIEFCSSBmb3IgaW5kZXBlbmRlbmNlICovCisJaWd0X3N1YnRlc3RfZ3JvdXAgeworCQlz
dHJ1Y3QgaW50ZWxfZXhlY3V0aW9uX2VuZ2luZTIgZW5naW5lc1s2NF07CisJCXVuc2lnbmVkIGlu
dCBudW1fZW5naW5lcyA9IDA7CisKKwkJaWd0X2ZpeHR1cmUgeworCQkJY29uc3Qgc3RydWN0IGlu
dGVsX2V4ZWN1dGlvbl9lbmdpbmUgKmU7CisKKwkJCWZvciAoZSA9IGludGVsX2V4ZWN1dGlvbl9l
bmdpbmVzOyBlLT5uYW1lOyBlKyspIHsKKwkJCQlpZiAoIWdlbV9yaW5nX2hhc19waHlzaWNhbF9l
bmdpbmUoZmQsIGUtPmV4ZWNfaWQgfCBlLT5mbGFncykpCisJCQkJCWNvbnRpbnVlOworCisJCQkJ
LyogTXVzdCBiZSB1bmlxdWUsIG5vIHVua25vd2FibGUgQlNEIGFsaWFzZXMhICovCisJCQkJZW5n
aW5lc1tudW1fZW5naW5lc10gPQorCQkJCQlnZW1fZWJfZmxhZ3NfdG9fZW5naW5lKGUtPmV4ZWNf
aWQgfCBlLT5mbGFncyk7CisJCQkJaWYgKGVuZ2luZXNbbnVtX2VuZ2luZXNdLmZsYWdzICE9IC0x
KQorCQkJCQljb250aW51ZTsKKworCQkJCWlmICghZ2VtX2Nhbl9zdG9yZV9kd29yZChmZCwgZW5n
aW5lc1tudW1fZW5naW5lc10uZmxhZ3MpKQorCQkJCQljb250aW51ZTsKKworCQkJCW51bV9lbmdp
bmVzKys7CisJCQkJaWYgKG51bV9lbmdpbmVzID09IEFSUkFZX1NJWkUoZW5naW5lcykpCisJCQkJ
CWJyZWFrOworCQkJfQorCQl9CisKKwkJZm9yICh1bnNpZ25lZCBpbnQgbiA9IDA7IG4gPCBudW1f
ZW5naW5lczsgbisrKSB7CisJCQlpZ3Rfc3VidGVzdF9mKCJsZWdhY3ktY29uY3VycmVudC13cml0
ZXMtJXMiLAorCQkJCSAgICAgIGVuZ2luZXNbbl0ubmFtZSkKKwkJCQlvbmUoZmQsIG4sIGVuZ2lu
ZXMsIG51bV9lbmdpbmVzKTsKKwkJfQorCX0KKworCS8qIFNhbWUgYWdhaW4sIGJ1dCB1c2luZyBh
IGN0eC0+ZW5naW5lW10gbWFwIGFuZCBpbmRpY2VzICovCisJaWd0X3N1YnRlc3RfZ3JvdXAgewor
CQlzdHJ1Y3QgaW50ZWxfZXhlY3V0aW9uX2VuZ2luZTIgZW5naW5lc1s2NF07CisJCXVuc2lnbmVk
IGludCBudW1fZW5naW5lcyA9IDA7CisKKwkJaWd0X2ZpeHR1cmUgeworCQkJY29uc3Qgc3RydWN0
IGludGVsX2V4ZWN1dGlvbl9lbmdpbmUyICplOworCisJCQlfX2Zvcl9lYWNoX3BoeXNpY2FsX2Vu
Z2luZShmZCwgZSkgeworCQkJCWlmICghZ2VtX2NsYXNzX2Nhbl9zdG9yZV9kd29yZChmZCwgZS0+
Y2xhc3MpKQorCQkJCQljb250aW51ZTsKKworCQkJCWVuZ2luZXNbbnVtX2VuZ2luZXMrK10gPSAq
ZTsKKwkJCQlpZiAobnVtX2VuZ2luZXMgPT0gQVJSQVlfU0laRShlbmdpbmVzKSkKKwkJCQkJYnJl
YWs7CisJCQl9CisJCX0KIAotCQlpZ3Rfc3VidGVzdF9mKCJjb25jdXJyZW50LXdyaXRlcy0lcyIs
IGUtPm5hbWUpIHsKLQkJCWlndF9yZXF1aXJlKGdlbV9yaW5nX2hhc19waHlzaWNhbF9lbmdpbmUo
ZmQsIGUtPmV4ZWNfaWQgfCBlLT5mbGFncykpOwotCQkJaWd0X3JlcXVpcmUoZ2VtX2Nhbl9zdG9y
ZV9kd29yZChmZCwgZS0+ZXhlY19pZCB8IGUtPmZsYWdzKSk7Ci0JCQlvbmUoZmQsIGUtPmV4ZWNf
aWQsIGUtPmZsYWdzKTsKKwkJZm9yICh1bnNpZ25lZCBpbnQgbiA9IDA7IG4gPCBudW1fZW5naW5l
czsgbisrKSB7CisJCQlpZ3Rfc3VidGVzdF9mKCJjb25jdXJyZW50LXdyaXRlcy0lcyIsIGVuZ2lu
ZXNbbl0ubmFtZSkKKwkJCQlvbmUoZmQsIG4sIGVuZ2luZXMsIG51bV9lbmdpbmVzKTsKIAkJfQog
CX0KCihGaWxsIGluIHRoZSBnYXBzIGZvciB0aGUgbmV3IHN0cnVjdHMhKQoKSXMgbW9yZSBvZiB3
aGF0IEkgd2FzIGV4cGVjdGluZy4gKEV2ZW50dWFsbHkgbm8gb25lIHdpbGwgbm90aWNlIHRoZSBC
U0QKYWxpYXNpbmcgYml0IHJvdHRpbmcgYW5kIHdlIGNhbiByZW1vdmUgaXQgZnJvbSB0aGUgdUFC
SS4pCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
