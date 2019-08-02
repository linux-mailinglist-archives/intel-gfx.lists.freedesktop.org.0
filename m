Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7138B80345
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Aug 2019 01:51:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2825D6E0A2;
	Fri,  2 Aug 2019 23:51:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E06286E0A2
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 23:51:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Aug 2019 16:51:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,340,1559545200"; d="scan'208";a="324725224"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by orsmga004.jf.intel.com with ESMTP; 02 Aug 2019 16:51:45 -0700
Message-ID: <1564789958.4037.3.camel@intel.com>
From: Stuart Summers <stuart.summers@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
Date: Fri, 02 Aug 2019 16:52:38 -0700
In-Reply-To: <156478649348.12110.10159115356763914574@skylake-alporthouse-com>
References: <20190802205134.303-1-stuart.summers@intel.com>
 <20190802205134.303-4-stuart.summers@intel.com>
 <156478132733.6598.547320138135011818@skylake-alporthouse-com>
 <1564786020.4037.1.camel@intel.com>
 <156478649348.12110.10159115356763914574@skylake-alporthouse-com>
X-Mailer: Evolution 3.22.6 (3.22.6-14.el7) 
Mime-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 03/10] drm/i915: Use local variable for
 subslice_mask on HSW
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

T24gRnJpLCAyMDE5LTA4LTAyIGF0IDIzOjU0ICswMTAwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4g
UXVvdGluZyBTdHVhcnQgU3VtbWVycyAoMjAxOS0wOC0wMiAyMzo0NzowMCkKPiA+IE9uIEZyaSwg
MjAxOS0wOC0wMiBhdCAyMjoyOCArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gPiBRdW90
aW5nIFN0dWFydCBTdW1tZXJzICgyMDE5LTA4LTAyIDIxOjUxOjI3KQo+ID4gPiA+IEluc3RlYWQg
b2YgYXNzdW1pbmcgYSBzaW5nbGUgc2xpY2Ugb24gSFNXIHdoZW4gZGVmaW5pbmcKPiA+ID4gPiBz
dWJzbGljZXMgZm9yIHRoZSBwbGF0Zm9ybSwgdXNlIGEgbG9jYWwgdmFyaWFibGUgdG8gc2V0Cj4g
PiA+ID4gdGhlIG1heGltdW0gc3Vic2xpY2VzIHBlciBzbGljZS4KPiA+ID4gPiAKPiA+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBTdHVhcnQgU3VtbWVycyA8c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29tPgo+
ID4gPiA+IC0tLQo+ID4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2lu
Zm8uYyB8IDExICsrKysrKy0tLS0tCj4gPiA+ID4gwqAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRp
b25zKCspLCA1IGRlbGV0aW9ucygtKQo+ID4gPiA+IAo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCj4gPiA+ID4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCj4gPiA+ID4gaW5kZXggOWE3OWQ5ZDU0N2M1
Li4yYjgxY2M3MzFmYTIgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZGV2aWNlX2luZm8uYwo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2RldmljZV9pbmZvLmMKPiA+ID4gPiBAQCAtNTQxLDYgKzU0MSw3IEBAIHN0YXRpYyB2b2lk
IGhhc3dlbGxfc3NldV9pbmZvX2luaXQoc3RydWN0Cj4gPiA+ID4gZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYpCj4gPiA+ID4gwqB7Cj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBzc2V1
X2Rldl9pbmZvICpzc2V1ID0gJlJVTlRJTUVfSU5GTyhkZXZfcHJpdiktCj4gPiA+ID4gPnNzZXU7
Cj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoHUzMiBmdXNlMTsKPiA+ID4gPiArwqDCoMKgwqDCoMKg
wqB1OCBzdWJzbGljZV9tYXNrOwo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqBpbnQgcywgc3M7Cj4g
PiA+ID4gwqAKPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgLyoKPiA+ID4gPiBAQCAtNTUzLDE2ICs1
NTQsMTYgQEAgc3RhdGljIHZvaWQgaGFzd2VsbF9zc2V1X2luZm9faW5pdChzdHJ1Y3QKPiA+ID4g
PiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoC8qIGZhbGwgdGhyb3VnaCAqLwo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqBj
YXNlIDE6Cj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzc2V1LT5zbGlj
ZV9tYXNrID0gQklUKDApOwo+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBz
c2V1LT5zdWJzbGljZV9tYXNrWzBdID0gQklUKDApOwo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBzdWJzbGljZV9tYXNrID0gQklUKDApOwo+ID4gPiA+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgYnJlYWs7Cj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGNhc2Ug
MjoKPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHNzZXUtPnNsaWNlX21h
c2sgPSBCSVQoMCk7Cj4gPiA+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHNzZXUt
PnN1YnNsaWNlX21hc2tbMF0gPSBCSVQoMCkgfCBCSVQoMSk7Cj4gPiA+ID4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHN1YnNsaWNlX21hc2sgPSBCSVQoMCkgfCBCSVQoMSk7Cj4gPiA+
ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBicmVhazsKPiA+ID4gPiDCoMKgwqDC
oMKgwqDCoMKgY2FzZSAzOgo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
c3NldS0+c2xpY2VfbWFzayA9IEJJVCgwKSB8IEJJVCgxKTsKPiA+ID4gPiAtwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgc3NldS0+c3Vic2xpY2VfbWFza1swXSA9IEJJVCgwKSB8IEJJVCgx
KTsKPiA+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3NldS0+c3Vic2xpY2Vf
bWFza1sxXSA9IEJJVCgwKSB8IEJJVCgxKTsKPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgc3Vic2xpY2VfbWFzayA9IEJJVCgwKSB8IEJJVCgxKTsKPiA+ID4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3Vic2xpY2VfbWFzayA9IEJJVCgwKSB8IEJJVCgxKTsK
PiA+ID4gCj4gPiA+IFRoaXMgaXMgZGVmaW5pdGVseSBub3QgYSBzaW5nbGUgc2xpY2UuCj4gPiAK
PiA+IFRoYW5rcyBmb3IgdGhlIG5vdGUgQ2hyaXMuIFZlcnkgdHJ1ZSBhbmQgbXkgY29tbWl0IG1l
c3NhZ2UgaXMKPiA+IG1pc2xlYWRpbmcuIERvIHlvdSBoYXZlIGFueSBpc3N1ZSB3aXRoIHRoZSBj
b2RlIGNoYW5nZXMgSSdtIG1ha2luZwo+ID4gaGVyZT8gT3Igc2ltcGx5IHRoZSBjb21taXQgbWVz
c2FnZT8gSSdsbCBhZGp1c3QgdGhlIGNvbW1pdCBtZXNzYWdlCj4gPiBpbgo+ID4gdGhlIG5leHQg
cmV2aXNpb24uCj4gCj4gVGhlIGR1cGxpY2F0aW9uIGxvb2tzIHZlcnkgd3JvbmcsIGp1c3QgcmVt
b3ZlIG9uZSBvZiB0aGVtIGFuZCB0aGUKPiByZWFkZXIKPiBpc24ndCBsZWZ0IHdvbmRlcmluZyB3
aHk/Pz8gQXQgdGhlIG1vbWVudCwgaXQgbWFrZXMgbWUgcXVlc3Rpb24KPiB3aGV0aGVyCj4gdGhl
cmUgaXMgbG9zcyBvZiBpbmZvcm1hdGlvbiB3aXRoIGFuIGluY29tcGxldGUgc3Vic2xpY2VfbWFz
a1tdLgoKQmFoLCBvYnZpb3VzIG1pc3Rha2Ugb24gbXkgcGFydCBoZXJlLiBUaGFua3MgZm9yIHBv
aW50aW5nIHRoaXMgb3V0LgpJJ2xsIGNsZWFuIHRoaXMgdXAgaW4gdGhlIG5leHQgcmV2aXNpb24u
CgpUaGFua3MsClN0dWFydAoKPiAtQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
