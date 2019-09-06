Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94CB2ABF32
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2019 20:13:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F9C16E0D9;
	Fri,  6 Sep 2019 18:13:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BA816E0D9
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2019 18:13:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18402376-1500050 for multiple; Fri, 06 Sep 2019 19:13:17 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Stuart Summers <stuart.summers@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190723154934.26967-1-stuart.summers@intel.com>
 <20190723154934.26967-10-stuart.summers@intel.com>
 <92ddc444-d45e-1ecc-7fc2-2bda4fae13ed@linux.intel.com>
 <b13ab867-0acd-fd87-173f-1cc3a3724a9b@linux.intel.com>
In-Reply-To: <b13ab867-0acd-fd87-173f-1cc3a3724a9b@linux.intel.com>
Message-ID: <156779359430.2967.9072538110573051346@skylake-alporthouse-com>
Date: Fri, 06 Sep 2019 19:13:14 +0100
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915: Expand subslice mask
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOS0wMiAxNDo0Mjo0NCkKPiAKPiBPbiAyNC8w
Ny8yMDE5IDE0OjA1LCBUdnJ0a28gVXJzdWxpbiB3cm90ZToKPiA+IAo+ID4gT24gMjMvMDcvMjAx
OSAxNjo0OSwgU3R1YXJ0IFN1bW1lcnMgd3JvdGU6Cj4gPj4gK3UzMiBpbnRlbF9zc2V1X2dldF9z
dWJzbGljZXMoY29uc3Qgc3RydWN0IHNzZXVfZGV2X2luZm8gKnNzZXUsIHU4IHNsaWNlKQo+ID4+
ICt7Cj4gPj4gK8KgwqDCoCBpbnQgaSwgb2Zmc2V0ID0gc2xpY2UgKiBzc2V1LT5zc19zdHJpZGU7
Cj4gPj4gK8KgwqDCoCB1MzIgbWFzayA9IDA7Cj4gPj4gKwo+ID4+ICvCoMKgwqAgaWYgKHNsaWNl
ID49IHNzZXUtPm1heF9zbGljZXMpIHsKPiA+PiArwqDCoMKgwqDCoMKgwqAgRFJNX0VSUk9SKCIl
czogaW52YWxpZCBzbGljZSAlZCwgbWF4OiAlZFxuIiwKPiA+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgX19mdW5jX18sIHNsaWNlLCBzc2V1LT5tYXhfc2xpY2VzKTsKPiA+PiArwqDCoMKg
wqDCoMKgwqAgcmV0dXJuIDA7Cj4gPj4gK8KgwqDCoCB9Cj4gPj4gKwo+ID4+ICvCoMKgwqAgaWYg
KHNzZXUtPnNzX3N0cmlkZSA+IHNpemVvZihtYXNrKSkgewo+ID4+ICvCoMKgwqDCoMKgwqDCoCBE
Uk1fRVJST1IoIiVzOiBpbnZhbGlkIHN1YnNsaWNlIHN0cmlkZSAlZCwgbWF4OiAlbHVcbiIsCj4g
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIF9fZnVuY19fLCBzc2V1LT5zc19zdHJpZGUs
IHNpemVvZihtYXNrKSk7Cj4gPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiAwOwo+ID4+ICvCoMKg
wqAgfQo+ID4+ICsKPiA+PiArwqDCoMKgIGZvciAoaSA9IDA7IGkgPCBzc2V1LT5zc19zdHJpZGU7
IGkrKykKPiA+PiArwqDCoMKgwqDCoMKgwqAgbWFzayB8PSAodTMyKXNzZXUtPnN1YnNsaWNlX21h
c2tbb2Zmc2V0ICsgaV0gPDwKPiA+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpICogQklUU19Q
RVJfQllURTsKPiA+PiArCj4gPj4gK8KgwqDCoCByZXR1cm4gbWFzazsKPiA+PiArfQo+ID4gCj4g
PiBXaHkgZG8geW91IGFjdHVhbGx5IG5lZWQgdGhlc2UgY29tcGxpY2F0aW9ucyB3aGVuIHRoZSBw
bGFuIGZyb20gdGhlIAo+ID4gc3RhcnQgd2FzIHRoYXQgdGhlIGRyaXZlciBhbmQgdXNlciBzc2V1
IHJlcHJlc2VudGF0aW9uIHN0cnVjdHVyZXMgY2FuIGJlIAo+ID4gZGlmZmVyZW50Pwo+ID4gCj4g
PiBJIG9ubHkgZ2F2ZSBpdCBhIHF1aWNrIGxvb2sgc28gSSBtaWdodCBiZSB3cm9uZywgYnV0IHdo
eSBub3QganVzdCBleHBhbmQgCj4gPiB0aGUgZHJpdmVyIHJlcHJlc2VudGF0aW9ucyBvZiBzdWJz
bGljZSBtYXNrIHVwIGZyb20gdTg/IFVzZXJzcGFjZSBBUEkgCj4gPiBzaG91bGQgYmUgYWJsZSB0
byBjb3BlIHdpdGggc3RyaWRlcyBhbHJlYWR5Lgo+IAo+IEkgbmV2ZXIgZ290IGFuIGFuc3dlciB0
byB0aGlzIGFuZCB0aGUgc2VyaWVzIHdhcyBtZXJnZWQgaW4gdGhlIG1lYW50aW1lLgo+IAo+IE1h
eWJlIG5vdCBtdWNoIGhhcm0gYnV0IEkgc3RpbGwgZG9uJ3QgdW5kZXJzdGFuZCB3aHkgYWxsIHRo
ZSAKPiBjb21wbGljYXRpb25zIHNlZW1pbmdseSBqdXN0IHRvIGF2b2lkIGJ1bXBpbmcgdGhlICpp
bnRlcm5hbCogc3MgbWFzayB1cCAKPiBmcm9tIHU4LiBBcyBsb25nIGFzIHRoZSBpbnRlcm5hbCBh
bmQgYWJpIHNzZXUgaW5mbyBzdHJ1Y3QgYXJlIHdlbGwgCj4gc2VwYXJhdGVkIGFuZCBhY2Nlc3Mg
cG9pbnQgZmV3IGFuZCB3ZWxsIGNvbnRyb2xsZWQgKEkgdGhpbmsgdGhleSBhcmUpIAo+IHRoZW4g
SSBkb24ndCBzZWUgd2h5IHRoZSBpbnRlcm5hbCBzaWRlIGhhZCB0byBiZSBjb252ZXJ0ZWQgdG8g
dTggYW5kIAo+IHN0cmlkZXMuIEJ1dCBtYXliZSBJIGFtIG1pc3Npbmcgc29tZXRoaW5nLgoKSSBs
b29rZWQgYXQgaXQgYW5kIHRob3VnaHQgaXQgd2FzIG9wZW4tY29kaW5nIGJpdG1hcC5oIGFzIHdl
bGwuIEkKYWNjZXB0ZWQgaXQgaW4gZ29vZCBmYWl0aCB0aGF0IGl0IGltcHJvdmVkIGNlcnRhaW4g
dXNlIGNhc2VzIGFuZCBzaG91bGQKZXZlbiBtYWtlIHRpZHlpbmcgdXAgdGhlIGNvZGUgd2l0aG91
dCByZWdyZXNzaW5nIHRob3NlIGVhc2llci4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
