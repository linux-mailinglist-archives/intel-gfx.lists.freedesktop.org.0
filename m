Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F861802F0
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Aug 2019 00:46:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 244486E02E;
	Fri,  2 Aug 2019 22:46:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 548C46E02E
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 22:46:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Aug 2019 15:46:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,339,1559545200"; d="scan'208";a="197365076"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by fmsmga004.fm.intel.com with ESMTP; 02 Aug 2019 15:46:08 -0700
Message-ID: <1564786020.4037.1.camel@intel.com>
From: Stuart Summers <stuart.summers@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
Date: Fri, 02 Aug 2019 15:47:00 -0700
In-Reply-To: <156478132733.6598.547320138135011818@skylake-alporthouse-com>
References: <20190802205134.303-1-stuart.summers@intel.com>
 <20190802205134.303-4-stuart.summers@intel.com>
 <156478132733.6598.547320138135011818@skylake-alporthouse-com>
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

T24gRnJpLCAyMDE5LTA4LTAyIGF0IDIyOjI4ICswMTAwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4g
UXVvdGluZyBTdHVhcnQgU3VtbWVycyAoMjAxOS0wOC0wMiAyMTo1MToyNykKPiA+IEluc3RlYWQg
b2YgYXNzdW1pbmcgYSBzaW5nbGUgc2xpY2Ugb24gSFNXIHdoZW4gZGVmaW5pbmcKPiA+IHN1YnNs
aWNlcyBmb3IgdGhlIHBsYXRmb3JtLCB1c2UgYSBsb2NhbCB2YXJpYWJsZSB0byBzZXQKPiA+IHRo
ZSBtYXhpbXVtIHN1YnNsaWNlcyBwZXIgc2xpY2UuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IFN0
dWFydCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+Cj4gPiAtLS0KPiA+IMKgZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyB8IDExICsrKysrKy0tLS0tCj4g
PiDCoDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4gPiAK
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5j
Cj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMKPiA+IGluZGV4
IDlhNzlkOWQ1NDdjNS4uMmI4MWNjNzMxZmEyIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZGV2aWNlX2luZm8uYwo+ID4gQEAgLTU0MSw2ICs1NDEsNyBAQCBzdGF0aWMgdm9p
ZCBoYXN3ZWxsX3NzZXVfaW5mb19pbml0KHN0cnVjdAo+ID4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYpCj4gPiDCoHsKPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3Qgc3NldV9kZXZfaW5mbyAq
c3NldSA9ICZSVU5USU1FX0lORk8oZGV2X3ByaXYpLT5zc2V1Owo+ID4gwqDCoMKgwqDCoMKgwqDC
oHUzMiBmdXNlMTsKPiA+ICvCoMKgwqDCoMKgwqDCoHU4IHN1YnNsaWNlX21hc2s7Cj4gPiDCoMKg
wqDCoMKgwqDCoMKgaW50IHMsIHNzOwo+ID4gwqAKPiA+IMKgwqDCoMKgwqDCoMKgwqAvKgo+ID4g
QEAgLTU1MywxNiArNTU0LDE2IEBAIHN0YXRpYyB2b2lkIGhhc3dlbGxfc3NldV9pbmZvX2luaXQo
c3RydWN0Cj4gPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiA+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgLyogZmFsbCB0aHJvdWdoICovCj4gPiDCoMKgwqDCoMKgwqDCoMKg
Y2FzZSAxOgo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzc2V1LT5zbGljZV9t
YXNrID0gQklUKDApOwo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHNzZXUtPnN1
YnNsaWNlX21hc2tbMF0gPSBCSVQoMCk7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgc3Vic2xpY2VfbWFzayA9IEJJVCgwKTsKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgYnJlYWs7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgY2FzZSAyOgo+ID4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBzc2V1LT5zbGljZV9tYXNrID0gQklUKDApOwo+ID4gLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHNzZXUtPnN1YnNsaWNlX21hc2tbMF0gPSBCSVQoMCkg
fCBCSVQoMSk7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3Vic2xpY2VfbWFz
ayA9IEJJVCgwKSB8IEJJVCgxKTsKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
YnJlYWs7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgY2FzZSAzOgo+ID4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBzc2V1LT5zbGljZV9tYXNrID0gQklUKDApIHwgQklUKDEpOwo+ID4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHNzZXUtPnN1YnNsaWNlX21hc2tbMF0gPSBCSVQo
MCkgfCBCSVQoMSk7Cj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3NldS0+c3Vi
c2xpY2VfbWFza1sxXSA9IEJJVCgwKSB8IEJJVCgxKTsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBzdWJzbGljZV9tYXNrID0gQklUKDApIHwgQklUKDEpOwo+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoHN1YnNsaWNlX21hc2sgPSBCSVQoMCkgfCBCSVQoMSk7Cj4g
Cj4gVGhpcyBpcyBkZWZpbml0ZWx5IG5vdCBhIHNpbmdsZSBzbGljZS4KClRoYW5rcyBmb3IgdGhl
IG5vdGUgQ2hyaXMuIFZlcnkgdHJ1ZSBhbmQgbXkgY29tbWl0IG1lc3NhZ2UgaXMKbWlzbGVhZGlu
Zy4gRG8geW91IGhhdmUgYW55IGlzc3VlIHdpdGggdGhlIGNvZGUgY2hhbmdlcyBJJ20gbWFraW5n
CmhlcmU/IE9yIHNpbXBseSB0aGUgY29tbWl0IG1lc3NhZ2U/IEknbGwgYWRqdXN0IHRoZSBjb21t
aXQgbWVzc2FnZSBpbgp0aGUgbmV4dCByZXZpc2lvbi4KClRoYW5rcywKU3R1YXJ0Cgo+IC1DaHJp
cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
