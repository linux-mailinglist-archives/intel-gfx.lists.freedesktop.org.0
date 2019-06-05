Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6532035F29
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2019 16:26:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8C4D89B01;
	Wed,  5 Jun 2019 14:26:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F27A89BA3
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2019 14:26:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jun 2019 07:26:10 -0700
X-ExtLoop1: 1
Received: from francela-mobl.amr.corp.intel.com (HELO [10.249.32.70])
 ([10.249.32.70])
 by orsmga003.jf.intel.com with ESMTP; 05 Jun 2019 07:26:08 -0700
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190604200933.29417-1-ville.syrjala@linux.intel.com>
 <20190604200933.29417-5-ville.syrjala@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <aaeb316d-a1b9-2738-af99-1d9eefb58288@linux.intel.com>
Date: Wed, 5 Jun 2019 16:26:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190604200933.29417-5-ville.syrjala@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Improve WRPLL reference clock
 readout on HSW/BDW
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

T3AgMDQtMDYtMjAxOSBvbSAyMjowOSBzY2hyZWVmIFZpbGxlIFN5cmphbGE6Cj4gRnJvbTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPgo+IE9uIG5vbi1V
TFQgSFNXIHRoZSAic3BlY2lhbCIgV1JQTEwgcmVmZXJlbmNlIGNsb2NrIHNlbGVjdAo+IGFjdHVh
bGx5IG1lYW5zIG5vbi1TU0MuIFRha2UgdGhhdCBpbnRvIGFjY291bnQgd2hlbiByZWFkaW5nCj4g
b3V0IHRoZSBXUlBMTCBzdGF0ZS4KPgo+IEFsc28gdGhlIG5vbi1TU0MgcmVmZXJlbmNlIG1heSBi
ZSBlaXRoZXIgMjRNSHogb3IgMTM1TUh6LAo+IHdoaWNoIHdlIGNhbiByZWFkIG91dCBmcm9tIEZV
U0VfU1RSQVAzLiBUaGUgQkRXIGRvY3MgYWN0dWFsbHkKPiBzYXk6ICJhbHNvIGluZGljYXRlcyB3
aGV0aGVyIHRoZSBDUFUgYW5kIFBDSCBhcmUgaW4gYSBzaW5nbGUKPiBwYWNrYWdlIG9yIHNlcGFy
YXRlIHBhY2thZ2VzIiwgc28gaXQgbWF5IGJlIHRoYXQgdGhpcyBpcyBub3QKPiBhY3R1YWxseSBy
ZXF1aXJlZCBhbmQgd2UgY291bGQganVzdCBhc3N1bWUgMTM1IE1IeiAoanVzdCBsaWtlCj4gdGhl
IGNvZGUgYWxyZWFkeSBkaWQpLiBCdXQgaXQgZG9lc24ndCByZWFsbHkgaHVydCB0byByZWFkIHRo
aXMKPiBvdXQgYXMgdGhlIEhTVyBkb2NzIGFyZW4ndCBxdWl0ZSBzbyBjbGVhci4KPgo+IFNpZ25l
ZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggIHwgIDMgKysrCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RkaS5jIHwgMTUgKysrKysrKysrKysrKystCj4gIDIg
ZmlsZXMgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oCj4gaW5kZXggYjdkZDQyYmZmZmFhLi41MzNiMWQ4ZDIzY2IgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiBAQCAtNzUxMyw2ICs3NTEzLDkgQEAgZW51bSB7Cj4g
ICNkZWZpbmUgIElMS19ERVNLVE9QCQkJKDEgPDwgMjMpCj4gICNkZWZpbmUgIEhTV19DUFVfU1ND
X0VOQUJMRQkJKDEgPDwgMjEpCj4gIAo+ICsjZGVmaW5lIEZVU0VfU1RSQVAzCQkJX01NSU8oMHg0
MjAyMCkKPiArI2RlZmluZSAgSFNXX1JFRl9DTEtfU0VMRUNUCQkoMSA8PCAxKQo+ICsKPiAgI2Rl
ZmluZSBJTEtfRFNQQ0xLX0dBVEVfRAkJCV9NTUlPKDB4NDIwMjApCj4gICNkZWZpbmUgICBJTEtf
VlJIVU5JVF9DTE9DS19HQVRFX0RJU0FCTEUJKDEgPDwgMjgpCj4gICNkZWZpbmUgICBJTEtfRFBG
Q1VOSVRfQ0xPQ0tfR0FURV9ESVNBQkxFCSgxIDw8IDkpCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGRp
LmMKPiBpbmRleCBmYzliY2JkNzVjM2EuLjQ5ZGFiM2U3MjAxOSAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZGkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2RkaS5jCj4gQEAgLTEyMzEsNiArMTIzMSwxOSBAQCBzdGF0aWMgaW50IGhzd19kZGlf
Y2FsY193cnBsbF9saW5rKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAgCXdy
cGxsID0gSTkxNV9SRUFEKHJlZyk7Cj4gIAlzd2l0Y2ggKHdycGxsICYgV1JQTExfUkVGX01BU0sp
IHsKPiAgCWNhc2UgV1JQTExfUkVGX1NQRUNJQUxfSFNXOgo+ICsJCS8qCj4gKwkJICogbXV4ZWQt
U1NDIGZvciBCRFcuCj4gKwkJICogbm9uLVNTQyBmb3Igbm9uLVVMVCBIU1cuIENoZWNrIEZVU0Vf
U1RSQVAzCj4gKwkJICogZm9yIHRoZSBub24tU1NDIHJlZmVyZW5jZSBmcmVxdWVuY3kuCj4gKwkJ
ICovCj4gKwkJaWYgKElTX0hBU1dFTEwoZGV2X3ByaXYpICYmICFJU19IU1dfVUxUKGRldl9wcml2
KSkgewo+ICsJCQlpZiAoSTkxNV9SRUFEKEZVU0VfU1RSQVAzKSAmIEhTV19SRUZfQ0xLX1NFTEVD
VCkKPiArCQkJCXJlZmNsayA9IDI0Owo+ICsJCQllbHNlCj4gKwkJCQlyZWZjbGsgPSAxMzU7Cj4g
KwkJCWJyZWFrOwo+ICsJCX0KPiArCQkvKiBmYWxsIHRocm91Z2ggKi8KPiAgCWNhc2UgV1JQTExf
UkVGX1BDSF9TU0M6Cj4gIAkJLyoKPiAgCQkgKiBXZSBjb3VsZCBjYWxjdWxhdGUgc3ByZWFkIGhl
cmUsIGJ1dCBvdXIgY2hlY2tpbmcKPiBAQCAtMTI0Myw3ICsxMjU2LDcgQEAgc3RhdGljIGludCBo
c3dfZGRpX2NhbGNfd3JwbGxfbGluayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
Cj4gIAkJcmVmY2xrID0gMjcwMDsKPiAgCQlicmVhazsKPiAgCWRlZmF1bHQ6Cj4gLQkJV0FSTigx
LCAiYmFkIHdycGxsIHJlZmNsa1xuIik7Cj4gKwkJTUlTU0lOR19DQVNFKHdycGxsKTsKPiAgCQly
ZXR1cm4gMDsKPiAgCX0KPiAgCgpPdGhlciBwYXRjaGVzIGxvb2sgc2FuZS4KClJldmlld2VkLWJ5
OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
