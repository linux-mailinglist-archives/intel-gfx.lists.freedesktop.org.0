Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCAD16F267
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 23:02:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8729E6EBB4;
	Tue, 25 Feb 2020 22:02:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 379A66EBB4
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Feb 2020 22:02:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Feb 2020 14:02:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,485,1574150400"; d="scan'208";a="241463982"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga006.jf.intel.com with ESMTP; 25 Feb 2020 14:02:35 -0800
Received: from [10.249.153.136] (mwajdecz-mobl.ger.corp.intel.com
 [10.249.153.136])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 01PM2YER017531; Tue, 25 Feb 2020 22:02:34 GMT
To: "Ye, Tony" <tony.ye@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200221153209.268712-1-michal.wajdeczko@intel.com>
 <c71b8087-9159-20ce-51c7-a862fb26b386@intel.com>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <6515f56a-3cd0-589e-54f8-0351b1dd18cc@intel.com>
Date: Tue, 25 Feb 2020 23:02:34 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <c71b8087-9159-20ce-51c7-a862fb26b386@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/huc: Fix error reported by
 I915_PARAM_HUC_STATUS
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAyNS4wMi4yMDIwIDA4OjQ5LCBZZSwgVG9ueSB3cm90ZToKPiAKPiAKPiBPbiAyLzIxLzIw
MjAgMTE6MzIgUE0sIE1pY2hhbCBXYWpkZWN6a28gd3JvdGU6Cj4+IMKgRnJvbSBjb21taXQgODRi
MWNhMmYwZTY4ICgiZHJtL2k5MTUvdWM6IHByZWZlciBpbnRlbF9ndCBvdmVyIGk5MTUKPj4gaW4g
R3VDL0h1QyBwYXRocyIpIHdlIHN0b3BwZWQgdXNpbmcgSFVDX1NUQVRVUyBlcnJvciAtRU5PREVW
IG9ubHkKPj4gdG8gaW5kaWNhdGUgbGFjayBvZiBIdUMgaGFyZHdhcmUgYW5kIHdlIHN0YXJ0ZWQg
dG8gdXNlIHRoaXMgZXJyb3IKPj4gYWxzbyBmb3IgYWxsIG90aGVyIGNhc2VzIHdoZW4gSHVDIHdh
cyBub3QgaW4gdXNlIG9yIHN1cHBvcnRlZC4KPj4KPj4gRml4IHRoYXQgYnkgcmVseWluZyBhZ2Fp
biBvbiBIQVNfR1RfVUMgbWFjcm8sIHNpbmNlIGN1cnJlbnRseQo+PiB1c2VkIGZ1bmN0aW9uIGlu
dGVsX2h1Y19pc19zdXBwb3J0ZWQoKSBpcyBiYXNlZCBvbiBIdUMgZmlybXdhcmUKPj4gc3VwcG9y
dCB3aGljaCBjb3VsZCBiZSB1bnN1cHBvcnRlZCBhbHNvIGR1ZSB0byBmb3JjZSBkaXNhYmxlZAo+
PiBHdUMgZmlybXdhcmUuCj4+Cj4+IHYyOiB1c2UgMCBvbmx5IGZvciBkaXNhYmxlZCwgYWRkIG1v
cmUgZXJyb3IgY29kZXMgZm9yIG90aGVyIGZhaWx1cmVzCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IE1p
Y2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+PiBDYzogRGFuaWVs
ZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPj4gQ2M6
IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+PiBDYzogVG9u
eSBZZSA8dG9ueS55ZUBpbnRlbC5jb20+Cj4+IENjOiBSb2JlcnQgTS4gRm9zaGEgPHJvYmVydC5t
LmZvc2hhQGludGVsLmNvbT4KPj4gUmV2aWV3ZWQtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8g
PGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+ICN2MQo+PiAtLS0KPj4gwqAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjLmMgfCAyOSArKysrKysrKysrKysrKysrKysr
KystLS0tLQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlv
bnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X2h1Yy5jCj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjLmMKPj4gaW5k
ZXggYTc0YjY1Njk0NTEyLi4zMDFiYjVkNWU1OWEgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Yy5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX2h1Yy5jCj4+IEBAIC0yMDAsOSArMjAwLDEzIEBAIGludCBpbnRlbF9odWNf
YXV0aChzdHJ1Y3QgaW50ZWxfaHVjICpodWMpCj4+IMKgwqAgKiBUaGlzIGZ1bmN0aW9uIHJlYWRz
IHN0YXR1cyByZWdpc3RlciB0byB2ZXJpZnkgaWYgSHVDCj4+IMKgwqAgKiBmaXJtd2FyZSB3YXMg
c3VjY2Vzc2Z1bGx5IGxvYWRlZC4KPj4gwqDCoCAqCj4+IC0gKiBSZXR1cm5zOiAxIGlmIEh1QyBm
aXJtd2FyZSBpcyBsb2FkZWQgYW5kIHZlcmlmaWVkLAo+PiAtICogMCBpZiBIdUMgZmlybXdhcmUg
aXMgbm90IGxvYWRlZCBhbmQgLUVOT0RFViBpZiBIdUMKPj4gLSAqIGlzIG5vdCBwcmVzZW50IG9u
IHRoaXMgcGxhdGZvcm0uCj4+ICsgKiBSZXR1cm5zOgo+PiArICrCoCAqIDEgaWYgSHVDIGZpcm13
YXJlIGlzIGxvYWRlZCBhbmQgdmVyaWZpZWQsCj4+ICsgKsKgICogMCBpZiBIdUMgZmlybXdhcmUg
d2FzIGRpc2FibGVkLAo+PiArICrCoCAqIC1FTk9ERVYgaWYgSHVDIGlzIG5vdCBwcmVzZW50IG9u
IHRoaXMgcGxhdGZvcm0sCj4+ICsgKsKgICogLUVOT1BLRyBpZiBIdUMgZmlybXdhcmUgd2FzIG5v
dCBpbnN0YWxsZWQsCj4+ICsgKsKgICogLUVOT0VYRUMgaWYgSHVDIGZpcm13YXJlIGlzIGludmFs
aWQsCj4+ICsgKsKgICogLUVBQ0NFUyBpZiBIdUMgZmlybXdhcmUgd2FzIG5vdCBhdXRoZW50aWNh
dGVkLgo+PiDCoMKgICovCj4+IMKgIGludCBpbnRlbF9odWNfY2hlY2tfc3RhdHVzKHN0cnVjdCBp
bnRlbF9odWMgKmh1YykKPj4gwqAgewo+PiBAQCAtMjEwLDExICsyMTQsMjYgQEAgaW50IGludGVs
X2h1Y19jaGVja19zdGF0dXMoc3RydWN0IGludGVsX2h1YyAqaHVjKQo+PiDCoMKgwqDCoMKgIGlu
dGVsX3dha2VyZWZfdCB3YWtlcmVmOwo+PiDCoMKgwqDCoMKgIHUzMiBzdGF0dXMgPSAwOwo+PiDC
oCAtwqDCoMKgIGlmICghaW50ZWxfaHVjX2lzX3N1cHBvcnRlZChodWMpKQo+PiArwqDCoMKgIGlm
ICghSEFTX0dUX1VDKGd0LT5pOTE1KSkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRU5P
REVWOwo+PiDCoCArwqDCoMKgIHN3aXRjaCAoX19pbnRlbF91Y19md19zdGF0dXMoJmh1Yy0+Zncp
KSB7Cj4+ICvCoMKgwqAgY2FzZSBJTlRFTF9VQ19GSVJNV0FSRV9OT1RfU1VQUE9SVEVEOgo+PiAr
wqDCoMKgIGNhc2UgSU5URUxfVUNfRklSTVdBUkVfRElTQUJMRUQ6Cj4+ICvCoMKgwqDCoMKgwqDC
oCByZXR1cm4gMDsKPj4gK8KgwqDCoCBjYXNlIElOVEVMX1VDX0ZJUk1XQVJFX01JU1NJTkc6Cj4+
ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVOT1BLRzsKPj4gK8KgwqDCoCBjYXNlIElOVEVMX1VD
X0ZJUk1XQVJFX0VSUk9SOgo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FTk9FWEVDOwo+IAo+
IFdoYXQgYWJvdXQgSU5URUxfVUNfRklSTVdBUkVfRkFJTD8KCkkgYXNzdW1lZCB0aGF0IHdlIGRv
bid0IG5lZWQgdG8gaGFuZGxlIHRoYXQgY2FzZSBoZXJlLCBzaW5jZSB3ZSBhcmUKc3RpbGwgY2hl
Y2tpbmcgSHVDIHN0YXR1cyByZWdpc3RlciBiZWxvdy4KCkJ1dCBpZiB5b3Ugd2FudCB3ZSBjYW4g
aW1wcm92ZToKMSkgcmV0dXJuIGVhcmx5IGlmIEZBSUwsIHRoZW4gY2hlY2sgcmVnaXN0ZXIgYW55
d2F5CjIpIHJldHVybiBlYXJseSBpZiBGQUlMLCB0cnVzdCBmdyBzdGF0ZSBhbmQgcmV0dXJuIDEg
d2l0aG91dCBjaGVja2luZwpyZWdpc3RlciAoYXMgc2FtZSByZWdpc3RlciB3YXMgYWxyZWFkeSBj
aGVja2VkIHdoZW4gd2UgbWFyayBmdyBzdGF0ZSBhcwpSVU5OSU5HKQoKPiAKPiBSZWdhcmRzLAo+
IFRvbnkKPiAKPj4gK8KgwqDCoCBkZWZhdWx0Ogo+PiArwqDCoMKgwqDCoMKgwqAgYnJlYWs7Cj4+
ICvCoMKgwqAgfQo+PiArCj4+IMKgwqDCoMKgwqAgd2l0aF9pbnRlbF9ydW50aW1lX3BtKGd0LT51
bmNvcmUtPnJwbSwgd2FrZXJlZikKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHN0YXR1cyA9IGludGVs
X3VuY29yZV9yZWFkKGd0LT51bmNvcmUsIGh1Yy0+c3RhdHVzLnJlZyk7Cj4+IMKgIC3CoMKgwqAg
cmV0dXJuIChzdGF0dXMgJiBodWMtPnN0YXR1cy5tYXNrKSA9PSBodWMtPnN0YXR1cy52YWx1ZTsK
Pj4gK8KgwqDCoCBpZiAoKHN0YXR1cyAmIGh1Yy0+c3RhdHVzLm1hc2spICE9IGh1Yy0+c3RhdHVz
LnZhbHVlKQo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FQUNDRVM7Cj4+ICsKPj4gK8KgwqDC
oCByZXR1cm4gMTsKPj4gwqAgfQo+PgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
