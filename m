Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C05F45519
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 08:54:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F92388F06;
	Fri, 14 Jun 2019 06:54:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01B0588F06
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 06:54:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 23:54:50 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by orsmga003.jf.intel.com with ESMTP; 13 Jun 2019 23:54:49 -0700
To: "Robert M. Fosha" <robert.m.fosha@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190614002838.3072-1-robert.m.fosha@intel.com>
 <20190614002838.3072-4-robert.m.fosha@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <9988d388-9b53-eb75-ffb5-890baf5c8c3b@linux.intel.com>
Date: Fri, 14 Jun 2019 07:54:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190614002838.3072-4-robert.m.fosha@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Add whitelist workarounds for
 CFL
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE0LzA2LzIwMTkgMDE6MjgsIFJvYmVydCBNLiBGb3NoYSB3cm90ZToKPiBGcm9tOiBKb2hu
IEhhcnJpc29uIDxKb2huLkMuSGFycmlzb25ASW50ZWwuY29tPgo+IAo+IFVwZGF0ZWQgd2hpdGVs
aXN0IHRhYmxlIGZvciBDRkwuCj4gCj4gU2lnbmVkLW9mZi1ieTogSm9obiBIYXJyaXNvbiA8Sm9o
bi5DLkhhcnJpc29uQEludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBSb2JlcnQgTS4gRm9zaGEg
PHJvYmVydC5tLmZvc2hhQGludGVsLmNvbT4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51
cnN1bGluQGludGVsLmNvbT4KPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5k
cy5jIHwgMzUgKysrKysrKysrKysrKysrKysrKystCj4gICAxIGZpbGUgY2hhbmdlZCwgMzQgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfd29ya2Fyb3VuZHMuYwo+IGluZGV4IDUzMDhhMDg2NGU3OC4uNjBiZDUxNWVkYWYxIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gQEAg
LTEwOTIsMTAgKzEwOTIsNDMgQEAgc3RhdGljIHZvaWQgZ2xrX3doaXRlbGlzdF9idWlsZChzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gICAKPiAgIHN0YXRpYyB2b2lkIGNmbF93aGl0
ZWxpc3RfYnVpbGQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICAgewo+ICsJc3Ry
dWN0IGk5MTVfd2FfbGlzdCAqdyA9ICZlbmdpbmUtPndoaXRlbGlzdDsKPiArCj4gICAJaWYgKGVu
Z2luZS0+Y2xhc3MgIT0gUkVOREVSX0NMQVNTKQo+ICAgCQlyZXR1cm47Cj4gICAKPiAtCWdlbjlf
d2hpdGVsaXN0X2J1aWxkKCZlbmdpbmUtPndoaXRlbGlzdCk7Cj4gKwkvKiBXaGl0ZWxpc3QgZW50
cmllcyBmcm9tIEJTcGVjIHBhZ2UgNTM2ODg6ICovCj4gKwlnZW45X3doaXRlbGlzdF9idWlsZCh3
KTsKPiArCj4gKwkvKiBXYVNlbmRQdXNoQ29uc3RhbnRzRnJvbU1NSU86Y2ZsICovCj4gKwl3aGl0
ZWxpc3RfcmVnX2V4dCh3LCBDT01NT05fU0xJQ0VfQ0hJQ0tFTjIsCj4gKwkJCSAgUklOR19GT1JD
RV9UT19OT05QUklWX1JXKTsKPiArCj4gKwkvKiBHRU45X0NTX0RFQlVHX01PREUxICovCj4gKwl3
aGl0ZWxpc3RfcmVnX2V4dCh3LCBHRU45X0NTX0RFQlVHX01PREUxLAo+ICsJCQkJICBSSU5HX0ZP
UkNFX1RPX05PTlBSSVZfUlcpOwo+ICsKPiArCS8qIFdhQWxsb3dVbWRXcml0ZVRSVFRSb290VGFi
bGU6Y2ZsICovCj4gKwl3aGl0ZWxpc3RfcmVnX2V4dCh3LCBfTU1JTygweDRERTApLCBSSU5HX0ZP
UkNFX1RPX05PTlBSSVZfUlcpOwo+ICsJd2hpdGVsaXN0X3JlZ19leHQodywgX01NSU8oMHg0REU0
KSwgUklOR19GT1JDRV9UT19OT05QUklWX1JXKTsKPiArCj4gKwkvKiBXYUFsbG93VU1EVG9EaXNh
YmxlVkZBdXRvU3RyaXA6Y2ZsICovCj4gKwl3aGl0ZWxpc3RfcmVnX2V4dCh3LCBfTU1JTygweDgz
QTgpLCBSSU5HX0ZPUkNFX1RPX05PTlBSSVZfUlcpOwo+ICsKPiArCS8qIFdhQWxsb3dQTURlcHRo
QW5kSW52b2NhdGlvbkNvdW50QWNjZXNzRnJvbVVNRDpjZmwKPiArCSAqIE5COiB0aGlzIGFsc28g
cHVsbHMgaW4gQ0xfUFJJTUlUSVZFU19DT1VOVCBpbiBzYW1lIGJsb2NrCj4gKwkgKiBhcyBQU19J
TlZPQ0FUSU9OU19DT1VOVC4gTGlrZXdpc2UsIFRJTUVTVEFNUCBpbiB0aGUKPiArCSAqIFBTX0RF
UFRIX0NPVU5UIGJsb2NrLgo+ICsJICovCgpOaXRwaWNrIGJ1dCBwbGVhc2UgdXNlIG11bHRpLWxp
bmUgY29tbWVudHMgaW4gc3R5bGU6CgovKgogICoKICAqLwoKV2UgYXJlIHRyeWluZyBub3QgdG8g
YWRkIG1vcmUgb2YgdGhlIHVucG9wdWxhciBzdHlsZS4KCj4gKwl3aGl0ZWxpc3RfcmVnX2V4dCh3
LCBDTF9QUklNSVRJVkVTX0NPVU5ULAo+ICsJCQkgIFJJTkdfRk9SQ0VfVE9fTk9OUFJJVl9SVyB8
Cj4gKwkJCSAgUklOR19GT1JDRV9UT19OT05QUklWX1JBTkdFXzQpOwo+ICsJd2hpdGVsaXN0X3Jl
Z19leHQodywgUFNfREVQVEhfQ09VTlQsIFJJTkdfRk9SQ0VfVE9fTk9OUFJJVl9SVyB8Cj4gKwkJ
CSAgUklOR19GT1JDRV9UT19OT05QUklWX1JBTkdFXzQpOwo+ICsKPiArCS8qIFdhQWxsb3dVTURB
Y2Nlc3N0b09BUmVnaXN0ZXJzOmNmbCAqLwo+ICsJd2hpdGVsaXN0X3JlZ19leHQodywgX01NSU8o
MHgyOEEwKSwgUklOR19GT1JDRV9UT19OT05QUklWX1JXKTsKPiArCXdoaXRlbGlzdF9yZWdfZXh0
KHcsIE9BUkVQT1JUVFJJRzYsIFJJTkdfRk9SQ0VfVE9fTk9OUFJJVl9SVyk7CgpBRkFJQ1MgbWFq
b3JpdHkgb2YgdGhlIHJlZ2lzdGVyIGhlcmUgc2hvdWxkbid0IHVzZSB0aGUgd2hpdGVsaXN0X3Jl
Z19leHQgCmJ1dCBub3JtYWwgd2hpdGVsaXN0X3JlZy4gSXQgd2lsbCBoZWxwIHdpdGggcmVhZGFi
aWxpdHkgYSBiaXQgYW5kIHRoZSAKc3BlY2lhbCBvbmVzIHdvdWxkIHN0aWNrIG91dCBtb3JlLgoK
PiAgIH0KPiAgIAo+ICAgc3RhdGljIHZvaWQgY25sX3doaXRlbGlzdF9idWlsZChzdHJ1Y3QgaW50
ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gCgpXaXRoIHRoZSB0d28gdHdlYWtzOgoKUmV2aWV3ZWQt
Ynk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZWdhcmRzLAoK
VHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
