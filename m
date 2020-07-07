Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5AB216AD5
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 12:56:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F6FE8989E;
	Tue,  7 Jul 2020 10:56:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1085C8989E
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 10:56:20 +0000 (UTC)
IronPort-SDR: m6ToRIim7PYtI/ug97l5nPyl3NCIc/TcI1cll0feXk7VB3Nbz8gkz/gqUlCFzlKZ96XY976NrS
 y9iH9+ETPaDA==
X-IronPort-AV: E=McAfee;i="6000,8403,9674"; a="212539894"
X-IronPort-AV: E=Sophos;i="5.75,323,1589266800"; d="scan'208";a="212539894"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2020 03:56:19 -0700
IronPort-SDR: oML7N+tvKY7jFmQanyj/Q+FgdD3Ux9Ar7+AGYeqbjHDIgugF0Eq0RYn41iYgqoEK5GHv/k9POO
 Ij5pV7d9uxjQ==
X-IronPort-AV: E=Sophos;i="5.75,323,1589266800"; d="scan'208";a="305618346"
Received: from acohen2-mobl.ger.corp.intel.com (HELO [10.251.182.15])
 ([10.251.182.15])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2020 03:56:17 -0700
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200703122221.591656-1-maarten.lankhorst@linux.intel.com>
 <20200703122221.591656-19-maarten.lankhorst@linux.intel.com>
 <017ac78c-8cfb-0d30-a686-91e34e5ecd14@linux.intel.com>
 <1ba4f588-fb98-289a-4a1b-edd6f10e0ad1@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c87f02f9-ed7c-34c9-4fcf-06b7e17780e3@linux.intel.com>
Date: Tue, 7 Jul 2020 11:56:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <1ba4f588-fb98-289a-4a1b-edd6f10e0ad1@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 18/23] drm/i915: Dirty hack to fix selftests
 locking inversion
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDA3LzA3LzIwMjAgMTE6MTksIE1hYXJ0ZW4gTGFua2hvcnN0IHdyb3RlOgo+IE9wIDAzLTA3
LTIwMjAgb20gMTU6NDggc2NocmVlZiBUdnJ0a28gVXJzdWxpbjoKPj4KPj4gT24gMDMvMDcvMjAy
MCAxMzoyMiwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4+PiBTb21lIGk5MTUgc2VsZnRlc3Rz
IHN0aWxsIHVzZSBpOTE1X3ZtYV9sb2NrKCkgYXMgaW5uZXIgbG9jaywgYW5kCj4+PiBpbnRlbF9j
b250ZXh0X2NyZWF0ZV9yZXF1ZXN0KCkgaW50ZWxfdGltZWxpbmUtPm11dGV4IGFzIG91dGVyIGxv
Y2suCj4+PiBGb3J0dW5hdGVseSBmb3Igc2VsZnRlc3RzIHRoaXMgaXMgbm90IGFuIGlzc3VlLCB0
aGV5IHNob3VsZCBiZSBmaXhlZAo+Pj4gYnV0IHdlIGNhbiBtb3ZlIGFoZWFkIGFuZCBjbGVhbmlm
eSBsb2NrZGVwIG5vdy4KPj4KPj4gTWVudGlvbnMgYW5kIGV4aXN0ZW5jZSBvZiAiZGlydHkgaGFj
a3MiIHdpbGwgaG9wZWZ1bGx5IGJlIHJlbW92ZWQgZnJvbSB0aGUgc2VyaWVzIGJlZm9yZSBpdCBj
YW4gYmUgY29uc2lkZXJlZCBtZXJnZSByZWFkeT8KPj4KPj4gUmVnYXJkcywKPj4KPj4gVHZydGtv
Cj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9y
c3RAbGludXguaW50ZWwuY29tPgo+Pj4gLS0tCj4+PiAgwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfY29udGV4dC5jIHwgMTIgKysrKysrKysrKysrCj4+PiAgwqAgMSBmaWxlIGNoYW5n
ZWQsIDEyIGluc2VydGlvbnMoKykKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Y29udGV4dC5jCj4+PiBpbmRleCA2NDk0ODM4NjYzMGYuLmZlOWZmZjVhNjNiMSAxMDA2NDQKPj4+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2NvbnRleHQuYwo+Pj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5jCj4+PiBAQCAtNDU5LDYgKzQ1
OSwxOCBAQCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICppbnRlbF9jb250ZXh0X2NyZWF0ZV9yZXF1ZXN0
KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKPj4+ICDCoMKgwqDCoMKgIHJxID0gaTkxNV9yZXF1
ZXN0X2NyZWF0ZShjZSk7Cj4+PiAgwqDCoMKgwqDCoCBpbnRlbF9jb250ZXh0X3VucGluKGNlKTsK
Pj4+ICDCoCArwqDCoMKgIGlmIChJU19FUlIocnEpKQo+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVy
biBycTsKPj4+ICsKPj4+ICvCoMKgwqAgLyoKPj4+ICvCoMKgwqDCoCAqIHRpbWVsaW5lLT5tdXRl
eCBzaG91bGQgYmUgdGhlIGlubmVyIGxvY2ssIGJ1dCBpcyB1c2VkIGFzIG91dGVyIGxvY2suCj4+
PiArwqDCoMKgwqAgKiBIYWNrIGFyb3VuZCB0aGlzIHRvIHNodXQgdXAgbG9ja2RlcCBpbiBzZWxm
dGVzdHMuLgo+Pj4gK8KgwqDCoMKgICovCj4+PiArwqDCoMKgIGxvY2tkZXBfdW5waW5fbG9jaygm
Y2UtPnRpbWVsaW5lLT5tdXRleCwgcnEtPmNvb2tpZSk7Cj4+PiArwqDCoMKgIG11dGV4X3JlbGVh
c2UoJmNlLT50aW1lbGluZS0+bXV0ZXguZGVwX21hcCwgX1JFVF9JUF8pOwo+Pj4gK8KgwqDCoCBt
dXRleF9hY3F1aXJlKCZjZS0+dGltZWxpbmUtPm11dGV4LmRlcF9tYXAsIFNJTkdMRV9ERVBUSF9O
RVNUSU5HLCAwLCBfUkVUX0lQXyk7Cj4+PiArwqDCoMKgIHJxLT5jb29raWUgPSBsb2NrZGVwX3Bp
bl9sb2NrKCZjZS0+dGltZWxpbmUtPm11dGV4KTsKPj4+ICsKPj4+ICDCoMKgwqDCoMKgIHJldHVy
biBycTsKPj4+ICDCoCB9Cj4+PiAgIAo+IAo+IEhleSwKPiAKPiBXZSdyZSB0cnlpbmcgdG8gaW52
ZXJ0IHRoZSBsb2NraW5nIG9yZGVyIHdpdGggdm1hIGxvY2sgdnMgcmVxdWVzdCBsb2NrLCB3aGls
ZSB0aGlzIGlzIGEgaGFjaywKPiBpdCB3aWxsIG5vdCBhZmZlY3Qgbm9ybWFsIHJ1bm5pbmcgY29k
ZSwgaXQncyBvbmx5IG1lYW50IHRvIHNodXQgdXAgbG9ja2RlcCBpbiB0aGUgc2VsZnRlc3RzLgo+
IAo+IFRoaXMgaXMgbWFpbmx5IHNvIHdlIGNhbiBmaXggdGhlIHNlbGZ0ZXN0cyBvbmUgYnkgb25l
LCB3aXRob3V0IGJyZWFraW5nIHRoZSB3b3JsZC4gSWRlYWxseQo+IHdoZW4gbW0ub2JqIGxhbmRz
LCB3ZSBhbHJlYWR5IGNvcnJlY3RlZCB0aGUgbG9jayBvcmRlcmluZy4gV2UgbWF5IGtlZXAgdGhp
cyBtYWNybyBmb3Igc2VsZnRlc3RzLAo+IGJ1dCB1bnRpbCBsb2NrIHJlb3JkZXJpbmcgaW4gc2Vs
ZnRlc3RzIGlzIGNvbXBsZXRlIHdlIHdpbGwgbmVlZCB0aGlzIHRlbXBvcmFyaWx5LgoKSXMgdGhl
cmUgYSByZWxhdGlvbnNoaXAgYmV0d2VlbiBvYmotPm1tLmxvY2sgYW5kIHRoaXMgcGFydGljdWxh
ciBsb2NrIAppbnZlcnNpb24/IEkgZG9uJ3Qgc2VlIGl0LiBJdCB3aWxsIGJlY29tZSBjcml0aWNh
bCB0byBoYXZlIHNlbGZ0ZXN0cyAKYWRqdXN0ZWQgdG8gcHJvcGVyIGxvY2tpbmcgb3JkZXIgZm9y
IGV2ZXJ5IHdoaWNoIHdpbGwvY2FuIHRyaWdnZXIgCmV2aWN0aW9uLiBCdXQgb2theSxpZiB5b3Ug
d2FudCB0byBzdGFnZSB0aGUgcGllY2VzIHBlcmhhcHMgaXQgaXMgYWNjZXB0YWJsZS4KCkFzIHBy
ZXZpb3VzIHBhdGNoIGluIHRoZSBzZXJpZXMgcmVtb3ZlcyBpbnRlbF9jb250ZXh0X2NyZWF0ZV9y
ZXF1ZXN0IAp1c2FnZXMgb3V0c2lkZSBzZWxmdGVzdHMgSSBzdWdnZXN0IHlvdSBtZW50aW9uIHRo
aXMgaW4gdGhpcyBjb21taXQgCm1lc3NhZ2UsIGFzIHBhcnQgb2YganVzdGlmaWNhdGlvbiB3aHkg
aXQgaXMgc2FmZS4KCkFsc28gaXQgd291bGQgYmUgZ29vZCB0byB3cmFwIGludGVsX2NvbnRleHRf
Y3JlYXRlX3JlcXVlc3QgaW4gYSBzZWxmdGVzdCAKI2lmZGVmIHNvIHRoYXQgYWNjaWRlbnRhbCB1
c2FnZSBpcyBwcmV2ZW50ZWQgaW4gdGhlIGludGVyLXJpbSBzdGFnZXMgb2YgCnJlZmFjdG9yaW5n
LgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
