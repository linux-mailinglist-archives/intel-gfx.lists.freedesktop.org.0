Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F707051D
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2019 18:10:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 026B989CF2;
	Mon, 22 Jul 2019 16:10:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 735DA89CF5
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jul 2019 16:10:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jul 2019 09:04:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,295,1559545200"; d="scan'208";a="368559875"
Received: from kraman-mobl.amr.corp.intel.com (HELO [10.251.80.208])
 ([10.251.80.208])
 by fmsmga006.fm.intel.com with ESMTP; 22 Jul 2019 09:04:54 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190718070024.21781-1-chris@chris-wilson.co.uk>
 <20190718070024.21781-10-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <4a0ad40c-d2e9-c507-483e-c9b2ac54153a@linux.intel.com>
Date: Mon, 22 Jul 2019 17:04:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190718070024.21781-10-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 10/20] drm/i915: Isolate
 i915_getparam_ioctl()
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

Rm9yZ290IHRvIHNheS4uLgoKT24gMTgvMDcvMjAxOSAwODowMCwgQ2hyaXMgV2lsc29uIHdyb3Rl
Ogo+IFRoaXMgZ2lhbnQgc3dpdGNoIGhhcyB0ZW5kcmlscyBvdmVyIG90aGVyIHRoZSBzdHJ1Y3Qg
YW5kIGRvZXMgbm90IGZpdAoKLi4uICJvdmVyIHRoZSBzdHJ1Y3QiPyBPdmVyIHNvbWV0aGluZyBl
bHNlIEkgdGhpbmssIGp1c3QgY2FuJ3QgZ3Vlc3MgCndoYXQgeW91IHdhbnRlZCB0byBzYXkuIDop
CgpSZWdhcmRzLAoKVHZydGtvCgo+IGludG8gdGhlIHJlc3Qgb2YgdGhlIGRyaXZlciBicmluZyB1
cCBhbmQgY29udHJvbCBvZiBpOTE1X2Rydi5jLiBQdXNoIGl0Cj4gdG8gb25lIHNpZGUgc28gdGhh
dCBpdCBjYW4gZ3JvdyBpbiBwZWFjZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L01ha2VmaWxlICAgICAgICB8ICAgMSArCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5jICAgICAgfCAxNjkgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgfCAgIDMgKwo+ICAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZXRwYXJhbS5jIHwgMTY4ICsrKysrKysrKysrKysrKysrKysrKysrKysrCj4gICA0
IGZpbGVzIGNoYW5nZWQsIDE3MiBpbnNlcnRpb25zKCspLCAxNjkgZGVsZXRpb25zKC0pCj4gICBj
cmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZXRwYXJhbS5jCj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvTWFrZWZpbGUKPiBpbmRleCBmYWZjMzc2M2RjMmQuLmQyYzFkY2RhMjBhMSAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCj4gQEAgLTQyLDYgKzQyLDcgQEAgc3ViZGlyLWNjZmxh
Z3MteSArPSAtSSQoc3JjdHJlZSkvJChzcmMpCj4gICAjIGNvcmUgZHJpdmVyIGNvZGUKPiAgIGk5
MTUteSArPSBpOTE1X2Rydi5vIFwKPiAgIAkgIGk5MTVfaXJxLm8gXAo+ICsJICBpOTE1X2dldHBh
cmFtLm8gXAo+ICAgCSAgaTkxNV9wYXJhbXMubyBcCj4gICAJICBpOTE1X3BjaS5vIFwKPiAgIAkg
IGk5MTVfc2NhdHRlcmxpc3QubyBcCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gaW5kZXggMzY3
YmRjNDY4OWYxLi5jOTk4YWYxMzg2ODkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiBA
QCAtNjEsMjIgKzYxLDE1IEBACj4gICAKPiAgICNpbmNsdWRlICJnZW0vaTkxNV9nZW1fY29udGV4
dC5oIgo+ICAgI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9pb2N0bHMuaCIKPiAtI2luY2x1ZGUgImd0
L2ludGVsX2VuZ2luZV91c2VyLmgiCj4gICAjaW5jbHVkZSAiZ3QvaW50ZWxfZ3QuaCIKPiAgICNp
bmNsdWRlICJndC9pbnRlbF9ndF9wbS5oIgo+IC0jaW5jbHVkZSAiZ3QvaW50ZWxfcmVzZXQuaCIK
PiAtI2luY2x1ZGUgImd0L2ludGVsX3dvcmthcm91bmRzLmgiCj4gLSNpbmNsdWRlICJndC91Yy9p
bnRlbF91Yy5oIgo+ICAgCj4gICAjaW5jbHVkZSAiaTkxNV9kZWJ1Z2ZzLmgiCj4gICAjaW5jbHVk
ZSAiaTkxNV9kcnYuaCIKPiAgICNpbmNsdWRlICJpOTE1X2lycS5oIgo+IC0jaW5jbHVkZSAiaTkx
NV9wbXUuaCIKPiAgICNpbmNsdWRlICJpOTE1X3F1ZXJ5LmgiCj4gLSNpbmNsdWRlICJpOTE1X3Ry
YWNlLmgiCj4gICAjaW5jbHVkZSAiaTkxNV92Z3B1LmgiCj4gICAjaW5jbHVkZSAiaW50ZWxfY3Ny
LmgiCj4gLSNpbmNsdWRlICJpbnRlbF9kcnYuaCIKPiAgICNpbmNsdWRlICJpbnRlbF9wbS5oIgo+
ICAgCj4gICBzdGF0aWMgc3RydWN0IGRybV9kcml2ZXIgZHJpdmVyOwo+IEBAIC0zNDMsMTY4ICsz
MzYsNiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZXRlY3RfcGNoKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikKPiAgIAlwY2lfZGV2X3B1dChwY2gpOwo+ICAgfQo+ICAgCj4gLXN0YXRp
YyBpbnQgaTkxNV9nZXRwYXJhbV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpk
YXRhLAo+IC0JCQkgICAgICAgc3RydWN0IGRybV9maWxlICpmaWxlX3ByaXYpCj4gLXsKPiAtCXN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsKPiAtCXN0cnVj
dCBwY2lfZGV2ICpwZGV2ID0gZGV2X3ByaXYtPmRybS5wZGV2Owo+IC0JY29uc3Qgc3RydWN0IHNz
ZXVfZGV2X2luZm8gKnNzZXUgPSAmUlVOVElNRV9JTkZPKGRldl9wcml2KS0+c3NldTsKPiAtCWRy
bV9pOTE1X2dldHBhcmFtX3QgKnBhcmFtID0gZGF0YTsKPiAtCWludCB2YWx1ZTsKPiAtCj4gLQlz
d2l0Y2ggKHBhcmFtLT5wYXJhbSkgewo+IC0JY2FzZSBJOTE1X1BBUkFNX0lSUV9BQ1RJVkU6Cj4g
LQljYXNlIEk5MTVfUEFSQU1fQUxMT1dfQkFUQ0hCVUZGRVI6Cj4gLQljYXNlIEk5MTVfUEFSQU1f
TEFTVF9ESVNQQVRDSDoKPiAtCWNhc2UgSTkxNV9QQVJBTV9IQVNfRVhFQ19DT05TVEFOVFM6Cj4g
LQkJLyogUmVqZWN0IGFsbCBvbGQgdW1zL2RyaSBwYXJhbXMuICovCj4gLQkJcmV0dXJuIC1FTk9E
RVY7Cj4gLQljYXNlIEk5MTVfUEFSQU1fQ0hJUFNFVF9JRDoKPiAtCQl2YWx1ZSA9IHBkZXYtPmRl
dmljZTsKPiAtCQlicmVhazsKPiAtCWNhc2UgSTkxNV9QQVJBTV9SRVZJU0lPTjoKPiAtCQl2YWx1
ZSA9IHBkZXYtPnJldmlzaW9uOwo+IC0JCWJyZWFrOwo+IC0JY2FzZSBJOTE1X1BBUkFNX05VTV9G
RU5DRVNfQVZBSUw6Cj4gLQkJdmFsdWUgPSBkZXZfcHJpdi0+Z2d0dC5udW1fZmVuY2VzOwo+IC0J
CWJyZWFrOwo+IC0JY2FzZSBJOTE1X1BBUkFNX0hBU19PVkVSTEFZOgo+IC0JCXZhbHVlID0gZGV2
X3ByaXYtPm92ZXJsYXkgPyAxIDogMDsKPiAtCQlicmVhazsKPiAtCWNhc2UgSTkxNV9QQVJBTV9I
QVNfQlNEOgo+IC0JCXZhbHVlID0gISFpbnRlbF9lbmdpbmVfbG9va3VwX3VzZXIoZGV2X3ByaXYs
Cj4gLQkJCQkJCSAgIEk5MTVfRU5HSU5FX0NMQVNTX1ZJREVPLCAwKTsKPiAtCQlicmVhazsKPiAt
CWNhc2UgSTkxNV9QQVJBTV9IQVNfQkxUOgo+IC0JCXZhbHVlID0gISFpbnRlbF9lbmdpbmVfbG9v
a3VwX3VzZXIoZGV2X3ByaXYsCj4gLQkJCQkJCSAgIEk5MTVfRU5HSU5FX0NMQVNTX0NPUFksIDAp
Owo+IC0JCWJyZWFrOwo+IC0JY2FzZSBJOTE1X1BBUkFNX0hBU19WRUJPWDoKPiAtCQl2YWx1ZSA9
ICEhaW50ZWxfZW5naW5lX2xvb2t1cF91c2VyKGRldl9wcml2LAo+IC0JCQkJCQkgICBJOTE1X0VO
R0lORV9DTEFTU19WSURFT19FTkhBTkNFLCAwKTsKPiAtCQlicmVhazsKPiAtCWNhc2UgSTkxNV9Q
QVJBTV9IQVNfQlNEMjoKPiAtCQl2YWx1ZSA9ICEhaW50ZWxfZW5naW5lX2xvb2t1cF91c2VyKGRl
dl9wcml2LAo+IC0JCQkJCQkgICBJOTE1X0VOR0lORV9DTEFTU19WSURFTywgMSk7Cj4gLQkJYnJl
YWs7Cj4gLQljYXNlIEk5MTVfUEFSQU1fSEFTX0xMQzoKPiAtCQl2YWx1ZSA9IEhBU19MTEMoZGV2
X3ByaXYpOwo+IC0JCWJyZWFrOwo+IC0JY2FzZSBJOTE1X1BBUkFNX0hBU19XVDoKPiAtCQl2YWx1
ZSA9IEhBU19XVChkZXZfcHJpdik7Cj4gLQkJYnJlYWs7Cj4gLQljYXNlIEk5MTVfUEFSQU1fSEFT
X0FMSUFTSU5HX1BQR1RUOgo+IC0JCXZhbHVlID0gSU5URUxfUFBHVFQoZGV2X3ByaXYpOwo+IC0J
CWJyZWFrOwo+IC0JY2FzZSBJOTE1X1BBUkFNX0hBU19TRU1BUEhPUkVTOgo+IC0JCXZhbHVlID0g
ISEoZGV2X3ByaXYtPmNhcHMuc2NoZWR1bGVyICYgSTkxNV9TQ0hFRFVMRVJfQ0FQX1NFTUFQSE9S
RVMpOwo+IC0JCWJyZWFrOwo+IC0JY2FzZSBJOTE1X1BBUkFNX0hBU19TRUNVUkVfQkFUQ0hFUzoK
PiAtCQl2YWx1ZSA9IGNhcGFibGUoQ0FQX1NZU19BRE1JTik7Cj4gLQkJYnJlYWs7Cj4gLQljYXNl
IEk5MTVfUEFSQU1fQ01EX1BBUlNFUl9WRVJTSU9OOgo+IC0JCXZhbHVlID0gaTkxNV9jbWRfcGFy
c2VyX2dldF92ZXJzaW9uKGRldl9wcml2KTsKPiAtCQlicmVhazsKPiAtCWNhc2UgSTkxNV9QQVJB
TV9TVUJTTElDRV9UT1RBTDoKPiAtCQl2YWx1ZSA9IGludGVsX3NzZXVfc3Vic2xpY2VfdG90YWwo
c3NldSk7Cj4gLQkJaWYgKCF2YWx1ZSkKPiAtCQkJcmV0dXJuIC1FTk9ERVY7Cj4gLQkJYnJlYWs7
Cj4gLQljYXNlIEk5MTVfUEFSQU1fRVVfVE9UQUw6Cj4gLQkJdmFsdWUgPSBzc2V1LT5ldV90b3Rh
bDsKPiAtCQlpZiAoIXZhbHVlKQo+IC0JCQlyZXR1cm4gLUVOT0RFVjsKPiAtCQlicmVhazsKPiAt
CWNhc2UgSTkxNV9QQVJBTV9IQVNfR1BVX1JFU0VUOgo+IC0JCXZhbHVlID0gaTkxNV9tb2RwYXJh
bXMuZW5hYmxlX2hhbmdjaGVjayAmJgo+IC0JCQlpbnRlbF9oYXNfZ3B1X3Jlc2V0KGRldl9wcml2
KTsKPiAtCQlpZiAodmFsdWUgJiYgaW50ZWxfaGFzX3Jlc2V0X2VuZ2luZShkZXZfcHJpdikpCj4g
LQkJCXZhbHVlID0gMjsKPiAtCQlicmVhazsKPiAtCWNhc2UgSTkxNV9QQVJBTV9IQVNfUkVTT1VS
Q0VfU1RSRUFNRVI6Cj4gLQkJdmFsdWUgPSAwOwo+IC0JCWJyZWFrOwo+IC0JY2FzZSBJOTE1X1BB
UkFNX0hBU19QT09MRURfRVU6Cj4gLQkJdmFsdWUgPSBIQVNfUE9PTEVEX0VVKGRldl9wcml2KTsK
PiAtCQlicmVhazsKPiAtCWNhc2UgSTkxNV9QQVJBTV9NSU5fRVVfSU5fUE9PTDoKPiAtCQl2YWx1
ZSA9IHNzZXUtPm1pbl9ldV9pbl9wb29sOwo+IC0JCWJyZWFrOwo+IC0JY2FzZSBJOTE1X1BBUkFN
X0hVQ19TVEFUVVM6Cj4gLQkJdmFsdWUgPSBpbnRlbF9odWNfY2hlY2tfc3RhdHVzKCZkZXZfcHJp
di0+Z3QudWMuaHVjKTsKPiAtCQlpZiAodmFsdWUgPCAwKQo+IC0JCQlyZXR1cm4gdmFsdWU7Cj4g
LQkJYnJlYWs7Cj4gLQljYXNlIEk5MTVfUEFSQU1fTU1BUF9HVFRfVkVSU0lPTjoKPiAtCQkvKiBU
aG91Z2ggd2UndmUgc3RhcnRlZCBvdXIgbnVtYmVyaW5nIGZyb20gMSwgYW5kIHNvIGNsYXNzIGFs
bAo+IC0JCSAqIGVhcmxpZXIgdmVyc2lvbnMgYXMgMCwgaW4gZWZmZWN0IHRoZWlyIHZhbHVlIGlz
IHVuZGVmaW5lZCBhcwo+IC0JCSAqIHRoZSBpb2N0bCB3aWxsIHJlcG9ydCBFSU5WQUwgZm9yIHRo
ZSB1bmtub3duIHBhcmFtIQo+IC0JCSAqLwo+IC0JCXZhbHVlID0gaTkxNV9nZW1fbW1hcF9ndHRf
dmVyc2lvbigpOwo+IC0JCWJyZWFrOwo+IC0JY2FzZSBJOTE1X1BBUkFNX0hBU19TQ0hFRFVMRVI6
Cj4gLQkJdmFsdWUgPSBkZXZfcHJpdi0+Y2Fwcy5zY2hlZHVsZXI7Cj4gLQkJYnJlYWs7Cj4gLQo+
IC0JY2FzZSBJOTE1X1BBUkFNX01NQVBfVkVSU0lPTjoKPiAtCQkvKiBSZW1lbWJlciB0byBidW1w
IHRoaXMgaWYgdGhlIHZlcnNpb24gY2hhbmdlcyEgKi8KPiAtCWNhc2UgSTkxNV9QQVJBTV9IQVNf
R0VNOgo+IC0JY2FzZSBJOTE1X1BBUkFNX0hBU19QQUdFRkxJUFBJTkc6Cj4gLQljYXNlIEk5MTVf
UEFSQU1fSEFTX0VYRUNCVUYyOiAvKiBkZXBlbmRzIG9uIEdFTSAqLwo+IC0JY2FzZSBJOTE1X1BB
UkFNX0hBU19SRUxBWEVEX0ZFTkNJTkc6Cj4gLQljYXNlIEk5MTVfUEFSQU1fSEFTX0NPSEVSRU5U
X1JJTkdTOgo+IC0JY2FzZSBJOTE1X1BBUkFNX0hBU19SRUxBWEVEX0RFTFRBOgo+IC0JY2FzZSBJ
OTE1X1BBUkFNX0hBU19HRU43X1NPTF9SRVNFVDoKPiAtCWNhc2UgSTkxNV9QQVJBTV9IQVNfV0FJ
VF9USU1FT1VUOgo+IC0JY2FzZSBJOTE1X1BBUkFNX0hBU19QUklNRV9WTUFQX0ZMVVNIOgo+IC0J
Y2FzZSBJOTE1X1BBUkFNX0hBU19QSU5ORURfQkFUQ0hFUzoKPiAtCWNhc2UgSTkxNV9QQVJBTV9I
QVNfRVhFQ19OT19SRUxPQzoKPiAtCWNhc2UgSTkxNV9QQVJBTV9IQVNfRVhFQ19IQU5ETEVfTFVU
Ogo+IC0JY2FzZSBJOTE1X1BBUkFNX0hBU19DT0hFUkVOVF9QSFlTX0dUVDoKPiAtCWNhc2UgSTkx
NV9QQVJBTV9IQVNfRVhFQ19TT0ZUUElOOgo+IC0JY2FzZSBJOTE1X1BBUkFNX0hBU19FWEVDX0FT
WU5DOgo+IC0JY2FzZSBJOTE1X1BBUkFNX0hBU19FWEVDX0ZFTkNFOgo+IC0JY2FzZSBJOTE1X1BB
UkFNX0hBU19FWEVDX0NBUFRVUkU6Cj4gLQljYXNlIEk5MTVfUEFSQU1fSEFTX0VYRUNfQkFUQ0hf
RklSU1Q6Cj4gLQljYXNlIEk5MTVfUEFSQU1fSEFTX0VYRUNfRkVOQ0VfQVJSQVk6Cj4gLQljYXNl
IEk5MTVfUEFSQU1fSEFTX0VYRUNfU1VCTUlUX0ZFTkNFOgo+IC0JCS8qIEZvciB0aGUgdGltZSBi
ZWluZyBhbGwgb2YgdGhlc2UgYXJlIGFsd2F5cyB0cnVlOwo+IC0JCSAqIGlmIHNvbWUgc3VwcG9y
dGVkIGhhcmR3YXJlIGRvZXMgbm90IGhhdmUgb25lIG9mIHRoZXNlCj4gLQkJICogZmVhdHVyZXMg
dGhpcyB2YWx1ZSBuZWVkcyB0byBiZSBwcm92aWRlZCBmcm9tCj4gLQkJICogSU5URUxfSU5GTygp
LCBhIGZlYXR1cmUgbWFjcm8sIG9yIHNpbWlsYXIuCj4gLQkJICovCj4gLQkJdmFsdWUgPSAxOwo+
IC0JCWJyZWFrOwo+IC0JY2FzZSBJOTE1X1BBUkFNX0hBU19DT05URVhUX0lTT0xBVElPTjoKPiAt
CQl2YWx1ZSA9IGludGVsX2VuZ2luZXNfaGFzX2NvbnRleHRfaXNvbGF0aW9uKGRldl9wcml2KTsK
PiAtCQlicmVhazsKPiAtCWNhc2UgSTkxNV9QQVJBTV9TTElDRV9NQVNLOgo+IC0JCXZhbHVlID0g
c3NldS0+c2xpY2VfbWFzazsKPiAtCQlpZiAoIXZhbHVlKQo+IC0JCQlyZXR1cm4gLUVOT0RFVjsK
PiAtCQlicmVhazsKPiAtCWNhc2UgSTkxNV9QQVJBTV9TVUJTTElDRV9NQVNLOgo+IC0JCXZhbHVl
ID0gc3NldS0+c3Vic2xpY2VfbWFza1swXTsKPiAtCQlpZiAoIXZhbHVlKQo+IC0JCQlyZXR1cm4g
LUVOT0RFVjsKPiAtCQlicmVhazsKPiAtCWNhc2UgSTkxNV9QQVJBTV9DU19USU1FU1RBTVBfRlJF
UVVFTkNZOgo+IC0JCXZhbHVlID0gMTAwMCAqIFJVTlRJTUVfSU5GTyhkZXZfcHJpdiktPmNzX3Rp
bWVzdGFtcF9mcmVxdWVuY3lfa2h6Owo+IC0JCWJyZWFrOwo+IC0JY2FzZSBJOTE1X1BBUkFNX01N
QVBfR1RUX0NPSEVSRU5UOgo+IC0JCXZhbHVlID0gSU5URUxfSU5GTyhkZXZfcHJpdiktPmhhc19j
b2hlcmVudF9nZ3R0Owo+IC0JCWJyZWFrOwo+IC0JZGVmYXVsdDoKPiAtCQlEUk1fREVCVUcoIlVu
a25vd24gcGFyYW1ldGVyICVkXG4iLCBwYXJhbS0+cGFyYW0pOwo+IC0JCXJldHVybiAtRUlOVkFM
Owo+IC0JfQo+IC0KPiAtCWlmIChwdXRfdXNlcih2YWx1ZSwgcGFyYW0tPnZhbHVlKSkKPiAtCQly
ZXR1cm4gLUVGQVVMVDsKPiAtCj4gLQlyZXR1cm4gMDsKPiAtfQo+IC0KPiAgIHN0YXRpYyBpbnQg
aTkxNV9nZXRfYnJpZGdlX2RldihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4g
ICB7Cj4gICAJaW50IGRvbWFpbiA9IHBjaV9kb21haW5fbnIoZGV2X3ByaXYtPmRybS5wZGV2LT5i
dXMpOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+IGluZGV4IDhkMWFkMjdiMTMyZC4uZGZmMjhm
NTA1OGJjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gQEAgLTI0MDcsNiArMjQwNyw5
IEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBpbnRlbF92Z3B1X2FjdGl2ZShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpCj4gICAJcmV0dXJuIGRldl9wcml2LT52Z3B1LmFjdGl2ZTsKPiAg
IH0KPiAgIAo+ICtpbnQgaTkxNV9nZXRwYXJhbV9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
LCB2b2lkICpkYXRhLAo+ICsJCQlzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGVfcHJpdik7Cj4gKwo+ICAg
LyogaTkxNV9nZW0uYyAqLwo+ICAgaW50IGk5MTVfZ2VtX2luaXRfdXNlcnB0cihzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwo+ICAgdm9pZCBpOTE1X2dlbV9jbGVhbnVwX3VzZXJw
dHIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZXRwYXJhbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZXRwYXJhbS5jCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAw
MDAuLjVkOTEwMTM3NmEzZAo+IC0tLSAvZGV2L251bGwKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dldHBhcmFtLmMKPiBAQCAtMCwwICsxLDE2OCBAQAo+ICsvKgo+ICsgKiBTUERY
LUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCj4gKyAqLwo+ICsKPiArI2luY2x1ZGUgImd0L2ludGVs
X2VuZ2luZV91c2VyLmgiCj4gKwo+ICsjaW5jbHVkZSAiaTkxNV9kcnYuaCIKPiArCj4gK2ludCBp
OTE1X2dldHBhcmFtX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCj4g
KwkJCXN0cnVjdCBkcm1fZmlsZSAqZmlsZV9wcml2KQo+ICt7Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZGV2KTsKPiArCWNvbnN0IHN0cnVjdCBzc2V1X2Rldl9p
bmZvICpzc2V1ID0gJlJVTlRJTUVfSU5GTyhpOTE1KS0+c3NldTsKPiArCWRybV9pOTE1X2dldHBh
cmFtX3QgKnBhcmFtID0gZGF0YTsKPiArCWludCB2YWx1ZTsKPiArCj4gKwlzd2l0Y2ggKHBhcmFt
LT5wYXJhbSkgewo+ICsJY2FzZSBJOTE1X1BBUkFNX0lSUV9BQ1RJVkU6Cj4gKwljYXNlIEk5MTVf
UEFSQU1fQUxMT1dfQkFUQ0hCVUZGRVI6Cj4gKwljYXNlIEk5MTVfUEFSQU1fTEFTVF9ESVNQQVRD
SDoKPiArCWNhc2UgSTkxNV9QQVJBTV9IQVNfRVhFQ19DT05TVEFOVFM6Cj4gKwkJLyogUmVqZWN0
IGFsbCBvbGQgdW1zL2RyaSBwYXJhbXMuICovCj4gKwkJcmV0dXJuIC1FTk9ERVY7Cj4gKwljYXNl
IEk5MTVfUEFSQU1fQ0hJUFNFVF9JRDoKPiArCQl2YWx1ZSA9IGk5MTUtPmRybS5wZGV2LT5kZXZp
Y2U7Cj4gKwkJYnJlYWs7Cj4gKwljYXNlIEk5MTVfUEFSQU1fUkVWSVNJT046Cj4gKwkJdmFsdWUg
PSBpOTE1LT5kcm0ucGRldi0+cmV2aXNpb247Cj4gKwkJYnJlYWs7Cj4gKwljYXNlIEk5MTVfUEFS
QU1fTlVNX0ZFTkNFU19BVkFJTDoKPiArCQl2YWx1ZSA9IGk5MTUtPmdndHQubnVtX2ZlbmNlczsK
PiArCQlicmVhazsKPiArCWNhc2UgSTkxNV9QQVJBTV9IQVNfT1ZFUkxBWToKPiArCQl2YWx1ZSA9
ICEhaTkxNS0+b3ZlcmxheTsKPiArCQlicmVhazsKPiArCWNhc2UgSTkxNV9QQVJBTV9IQVNfQlNE
Ogo+ICsJCXZhbHVlID0gISFpbnRlbF9lbmdpbmVfbG9va3VwX3VzZXIoaTkxNSwKPiArCQkJCQkJ
ICAgSTkxNV9FTkdJTkVfQ0xBU1NfVklERU8sIDApOwo+ICsJCWJyZWFrOwo+ICsJY2FzZSBJOTE1
X1BBUkFNX0hBU19CTFQ6Cj4gKwkJdmFsdWUgPSAhIWludGVsX2VuZ2luZV9sb29rdXBfdXNlcihp
OTE1LAo+ICsJCQkJCQkgICBJOTE1X0VOR0lORV9DTEFTU19DT1BZLCAwKTsKPiArCQlicmVhazsK
PiArCWNhc2UgSTkxNV9QQVJBTV9IQVNfVkVCT1g6Cj4gKwkJdmFsdWUgPSAhIWludGVsX2VuZ2lu
ZV9sb29rdXBfdXNlcihpOTE1LAo+ICsJCQkJCQkgICBJOTE1X0VOR0lORV9DTEFTU19WSURFT19F
TkhBTkNFLCAwKTsKPiArCQlicmVhazsKPiArCWNhc2UgSTkxNV9QQVJBTV9IQVNfQlNEMjoKPiAr
CQl2YWx1ZSA9ICEhaW50ZWxfZW5naW5lX2xvb2t1cF91c2VyKGk5MTUsCj4gKwkJCQkJCSAgIEk5
MTVfRU5HSU5FX0NMQVNTX1ZJREVPLCAxKTsKPiArCQlicmVhazsKPiArCWNhc2UgSTkxNV9QQVJB
TV9IQVNfTExDOgo+ICsJCXZhbHVlID0gSEFTX0xMQyhpOTE1KTsKPiArCQlicmVhazsKPiArCWNh
c2UgSTkxNV9QQVJBTV9IQVNfV1Q6Cj4gKwkJdmFsdWUgPSBIQVNfV1QoaTkxNSk7Cj4gKwkJYnJl
YWs7Cj4gKwljYXNlIEk5MTVfUEFSQU1fSEFTX0FMSUFTSU5HX1BQR1RUOgo+ICsJCXZhbHVlID0g
SU5URUxfUFBHVFQoaTkxNSk7Cj4gKwkJYnJlYWs7Cj4gKwljYXNlIEk5MTVfUEFSQU1fSEFTX1NF
TUFQSE9SRVM6Cj4gKwkJdmFsdWUgPSAhIShpOTE1LT5jYXBzLnNjaGVkdWxlciAmIEk5MTVfU0NI
RURVTEVSX0NBUF9TRU1BUEhPUkVTKTsKPiArCQlicmVhazsKPiArCWNhc2UgSTkxNV9QQVJBTV9I
QVNfU0VDVVJFX0JBVENIRVM6Cj4gKwkJdmFsdWUgPSBjYXBhYmxlKENBUF9TWVNfQURNSU4pOwo+
ICsJCWJyZWFrOwo+ICsJY2FzZSBJOTE1X1BBUkFNX0NNRF9QQVJTRVJfVkVSU0lPTjoKPiArCQl2
YWx1ZSA9IGk5MTVfY21kX3BhcnNlcl9nZXRfdmVyc2lvbihpOTE1KTsKPiArCQlicmVhazsKPiAr
CWNhc2UgSTkxNV9QQVJBTV9TVUJTTElDRV9UT1RBTDoKPiArCQl2YWx1ZSA9IGludGVsX3NzZXVf
c3Vic2xpY2VfdG90YWwoc3NldSk7Cj4gKwkJaWYgKCF2YWx1ZSkKPiArCQkJcmV0dXJuIC1FTk9E
RVY7Cj4gKwkJYnJlYWs7Cj4gKwljYXNlIEk5MTVfUEFSQU1fRVVfVE9UQUw6Cj4gKwkJdmFsdWUg
PSBzc2V1LT5ldV90b3RhbDsKPiArCQlpZiAoIXZhbHVlKQo+ICsJCQlyZXR1cm4gLUVOT0RFVjsK
PiArCQlicmVhazsKPiArCWNhc2UgSTkxNV9QQVJBTV9IQVNfR1BVX1JFU0VUOgo+ICsJCXZhbHVl
ID0gaTkxNV9tb2RwYXJhbXMuZW5hYmxlX2hhbmdjaGVjayAmJgo+ICsJCQlpbnRlbF9oYXNfZ3B1
X3Jlc2V0KGk5MTUpOwo+ICsJCWlmICh2YWx1ZSAmJiBpbnRlbF9oYXNfcmVzZXRfZW5naW5lKGk5
MTUpKQo+ICsJCQl2YWx1ZSA9IDI7Cj4gKwkJYnJlYWs7Cj4gKwljYXNlIEk5MTVfUEFSQU1fSEFT
X1JFU09VUkNFX1NUUkVBTUVSOgo+ICsJCXZhbHVlID0gMDsKPiArCQlicmVhazsKPiArCWNhc2Ug
STkxNV9QQVJBTV9IQVNfUE9PTEVEX0VVOgo+ICsJCXZhbHVlID0gSEFTX1BPT0xFRF9FVShpOTE1
KTsKPiArCQlicmVhazsKPiArCWNhc2UgSTkxNV9QQVJBTV9NSU5fRVVfSU5fUE9PTDoKPiArCQl2
YWx1ZSA9IHNzZXUtPm1pbl9ldV9pbl9wb29sOwo+ICsJCWJyZWFrOwo+ICsJY2FzZSBJOTE1X1BB
UkFNX0hVQ19TVEFUVVM6Cj4gKwkJdmFsdWUgPSBpbnRlbF9odWNfY2hlY2tfc3RhdHVzKCZpOTE1
LT5ndC51Yy5odWMpOwo+ICsJCWlmICh2YWx1ZSA8IDApCj4gKwkJCXJldHVybiB2YWx1ZTsKPiAr
CQlicmVhazsKPiArCWNhc2UgSTkxNV9QQVJBTV9NTUFQX0dUVF9WRVJTSU9OOgo+ICsJCS8qIFRo
b3VnaCB3ZSd2ZSBzdGFydGVkIG91ciBudW1iZXJpbmcgZnJvbSAxLCBhbmQgc28gY2xhc3MgYWxs
Cj4gKwkJICogZWFybGllciB2ZXJzaW9ucyBhcyAwLCBpbiBlZmZlY3QgdGhlaXIgdmFsdWUgaXMg
dW5kZWZpbmVkIGFzCj4gKwkJICogdGhlIGlvY3RsIHdpbGwgcmVwb3J0IEVJTlZBTCBmb3IgdGhl
IHVua25vd24gcGFyYW0hCj4gKwkJICovCj4gKwkJdmFsdWUgPSBpOTE1X2dlbV9tbWFwX2d0dF92
ZXJzaW9uKCk7Cj4gKwkJYnJlYWs7Cj4gKwljYXNlIEk5MTVfUEFSQU1fSEFTX1NDSEVEVUxFUjoK
PiArCQl2YWx1ZSA9IGk5MTUtPmNhcHMuc2NoZWR1bGVyOwo+ICsJCWJyZWFrOwo+ICsKPiArCWNh
c2UgSTkxNV9QQVJBTV9NTUFQX1ZFUlNJT046Cj4gKwkJLyogUmVtZW1iZXIgdG8gYnVtcCB0aGlz
IGlmIHRoZSB2ZXJzaW9uIGNoYW5nZXMhICovCj4gKwljYXNlIEk5MTVfUEFSQU1fSEFTX0dFTToK
PiArCWNhc2UgSTkxNV9QQVJBTV9IQVNfUEFHRUZMSVBQSU5HOgo+ICsJY2FzZSBJOTE1X1BBUkFN
X0hBU19FWEVDQlVGMjogLyogZGVwZW5kcyBvbiBHRU0gKi8KPiArCWNhc2UgSTkxNV9QQVJBTV9I
QVNfUkVMQVhFRF9GRU5DSU5HOgo+ICsJY2FzZSBJOTE1X1BBUkFNX0hBU19DT0hFUkVOVF9SSU5H
UzoKPiArCWNhc2UgSTkxNV9QQVJBTV9IQVNfUkVMQVhFRF9ERUxUQToKPiArCWNhc2UgSTkxNV9Q
QVJBTV9IQVNfR0VON19TT0xfUkVTRVQ6Cj4gKwljYXNlIEk5MTVfUEFSQU1fSEFTX1dBSVRfVElN
RU9VVDoKPiArCWNhc2UgSTkxNV9QQVJBTV9IQVNfUFJJTUVfVk1BUF9GTFVTSDoKPiArCWNhc2Ug
STkxNV9QQVJBTV9IQVNfUElOTkVEX0JBVENIRVM6Cj4gKwljYXNlIEk5MTVfUEFSQU1fSEFTX0VY
RUNfTk9fUkVMT0M6Cj4gKwljYXNlIEk5MTVfUEFSQU1fSEFTX0VYRUNfSEFORExFX0xVVDoKPiAr
CWNhc2UgSTkxNV9QQVJBTV9IQVNfQ09IRVJFTlRfUEhZU19HVFQ6Cj4gKwljYXNlIEk5MTVfUEFS
QU1fSEFTX0VYRUNfU09GVFBJTjoKPiArCWNhc2UgSTkxNV9QQVJBTV9IQVNfRVhFQ19BU1lOQzoK
PiArCWNhc2UgSTkxNV9QQVJBTV9IQVNfRVhFQ19GRU5DRToKPiArCWNhc2UgSTkxNV9QQVJBTV9I
QVNfRVhFQ19DQVBUVVJFOgo+ICsJY2FzZSBJOTE1X1BBUkFNX0hBU19FWEVDX0JBVENIX0ZJUlNU
Ogo+ICsJY2FzZSBJOTE1X1BBUkFNX0hBU19FWEVDX0ZFTkNFX0FSUkFZOgo+ICsJY2FzZSBJOTE1
X1BBUkFNX0hBU19FWEVDX1NVQk1JVF9GRU5DRToKPiArCQkvKiBGb3IgdGhlIHRpbWUgYmVpbmcg
YWxsIG9mIHRoZXNlIGFyZSBhbHdheXMgdHJ1ZTsKPiArCQkgKiBpZiBzb21lIHN1cHBvcnRlZCBo
YXJkd2FyZSBkb2VzIG5vdCBoYXZlIG9uZSBvZiB0aGVzZQo+ICsJCSAqIGZlYXR1cmVzIHRoaXMg
dmFsdWUgbmVlZHMgdG8gYmUgcHJvdmlkZWQgZnJvbQo+ICsJCSAqIElOVEVMX0lORk8oKSwgYSBm
ZWF0dXJlIG1hY3JvLCBvciBzaW1pbGFyLgo+ICsJCSAqLwo+ICsJCXZhbHVlID0gMTsKPiArCQli
cmVhazsKPiArCWNhc2UgSTkxNV9QQVJBTV9IQVNfQ09OVEVYVF9JU09MQVRJT046Cj4gKwkJdmFs
dWUgPSBpbnRlbF9lbmdpbmVzX2hhc19jb250ZXh0X2lzb2xhdGlvbihpOTE1KTsKPiArCQlicmVh
azsKPiArCWNhc2UgSTkxNV9QQVJBTV9TTElDRV9NQVNLOgo+ICsJCXZhbHVlID0gc3NldS0+c2xp
Y2VfbWFzazsKPiArCQlpZiAoIXZhbHVlKQo+ICsJCQlyZXR1cm4gLUVOT0RFVjsKPiArCQlicmVh
azsKPiArCWNhc2UgSTkxNV9QQVJBTV9TVUJTTElDRV9NQVNLOgo+ICsJCXZhbHVlID0gc3NldS0+
c3Vic2xpY2VfbWFza1swXTsKPiArCQlpZiAoIXZhbHVlKQo+ICsJCQlyZXR1cm4gLUVOT0RFVjsK
PiArCQlicmVhazsKPiArCWNhc2UgSTkxNV9QQVJBTV9DU19USU1FU1RBTVBfRlJFUVVFTkNZOgo+
ICsJCXZhbHVlID0gMTAwMCAqIFJVTlRJTUVfSU5GTyhpOTE1KS0+Y3NfdGltZXN0YW1wX2ZyZXF1
ZW5jeV9raHo7Cj4gKwkJYnJlYWs7Cj4gKwljYXNlIEk5MTVfUEFSQU1fTU1BUF9HVFRfQ09IRVJF
TlQ6Cj4gKwkJdmFsdWUgPSBJTlRFTF9JTkZPKGk5MTUpLT5oYXNfY29oZXJlbnRfZ2d0dDsKPiAr
CQlicmVhazsKPiArCWRlZmF1bHQ6Cj4gKwkJRFJNX0RFQlVHKCJVbmtub3duIHBhcmFtZXRlciAl
ZFxuIiwgcGFyYW0tPnBhcmFtKTsKPiArCQlyZXR1cm4gLUVJTlZBTDsKPiArCX0KPiArCj4gKwlp
ZiAocHV0X3VzZXIodmFsdWUsIHBhcmFtLT52YWx1ZSkpCj4gKwkJcmV0dXJuIC1FRkFVTFQ7Cj4g
Kwo+ICsJcmV0dXJuIDA7Cj4gK30KPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
