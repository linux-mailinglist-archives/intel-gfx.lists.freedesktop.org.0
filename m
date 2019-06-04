Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F38351DC
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 23:29:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7584989C3B;
	Tue,  4 Jun 2019 21:29:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 926FB89C3B
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 21:29:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 14:29:27 -0700
X-ExtLoop1: 1
Received: from cataylo2-ubuntu18-10.jf.intel.com (HELO [10.7.199.54])
 ([10.7.199.54])
 by orsmga008.jf.intel.com with ESMTP; 04 Jun 2019 14:29:27 -0700
To: matthew.s.atwood@intel.com, intel-gfx@lists.freedesktop.org
References: <20190603214940.11996-1-matthew.s.atwood@intel.com>
From: Clinton Taylor <Clinton.A.Taylor@intel.com>
Message-ID: <2117633e-4684-c8d1-674d-a0d0fcb326d9@intel.com>
Date: Tue, 4 Jun 2019 13:31:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190603214940.11996-1-matthew.s.atwood@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Correctly advertise HBR3 for
 GEN11+
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
Cc: dhinakaran.pandiyan@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGVzdGVkLWJ5OiBDbGludCBUYXlsb3IgPENsaW50b24uQS5UYXlsb3JAaW50ZWwuY29tPgoKLUNs
aW50CgoKT24gNi8zLzE5IDI6NDkgUE0sIG1hdHRoZXcucy5hdHdvb2RAaW50ZWwuY29tIHdyb3Rl
Ogo+IEZyb206IE1hdHQgQXR3b29kIDxtYXR0aGV3LnMuYXR3b29kQGludGVsLmNvbT4KPgo+IGlu
dGVsX2RwX3NldF9zb3VyY2VfcmF0ZXMoKSBjYWxscyBpbnRlbF9kcF9pc19lZHAoKSwgd2hpY2gg
aXMgdW5zYWZlIHRvCj4gdXNlIGJlZm9yZSBlbmNvZGVyX3R5cGUgaXMgc2V0LiBUaGlzIGNhdXNl
ZCBHRU4xMSsgdG8gaW5jb3JyZWN0bHkgc3RyaXAKPiBIQlIzIGZyb20gc291cmNlIHJhdGVzLiBN
b3ZlIGludGVsX2RwX3NldF9zb3VyY2VfcmF0ZXMoKSB0byBhZnRlcgo+IGVuY29kZXJfdHlwZSBp
cyBzZXQuIEFkZCBjb21tZW50IHRvIGludGVsX2RwX2lzX2VkcCgpIGRlc2NyaWJpbmcgdW5zYWZl
Cj4gdXNhZ2VzLgo+Cj4gRml4ZXM6IGIyNjVhMmE2MjU1ZjUgKCJkcm0vaTkxNS9pY2w6IGNvbWJv
IHBvcnQgdnN3aW5nIHByb2dyYW1taW5nCj4gY2hhbmdlcyBwZXIgQlNQRUMiKQo+IFNpZ25lZC1v
ZmYtYnk6IE1hdHQgQXR3b29kIDxtYXR0aGV3LnMuYXR3b29kQGludGVsLmNvbT4KPiAtLS0KPiAg
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMgfCA2ICsrKystLQo+ICAgMSBmaWxlIGNo
YW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZHAuYwo+IGluZGV4IDI0YjU2YjJhNzZjOC4uYTQ0OTBiY2FkNjg0IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9kcC5jCj4gQEAgLTE0MSw2ICsxNDEsOCBAQCBzdGF0aWMgY29uc3QgdTggdmFs
aWRfZHNjX3NsaWNlY291bnRbXSA9IHsxLCAyLCA0fTsKPiAgICAqCj4gICAgKiBJZiBhIENQVSBv
ciBQQ0ggRFAgb3V0cHV0IGlzIGF0dGFjaGVkIHRvIGFuIGVEUCBwYW5lbCwgdGhpcyBmdW5jdGlv
bgo+ICAgICogd2lsbCByZXR1cm4gdHJ1ZSwgYW5kIGZhbHNlIG90aGVyd2lzZS4KPiArICoKPiAr
ICogVGhpcyBmdW5jdGlvbiBpcyBub3Qgc2FmZSB0byB1c2UgcHJpb3IgdG8gZW5jb2RlciB0eXBl
IGJlaW5nIHNldC4KPiAgICAqLwo+ICAgYm9vbCBpbnRlbF9kcF9pc19lZHAoc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCkKPiAgIHsKPiBAQCAtNzM0Miw4ICs3MzQ0LDYgQEAgaW50ZWxfZHBfaW5p
dF9jb25uZWN0b3Ioc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQsCj4g
ICAJCSBpbnRlbF9kaWdfcG9ydC0+bWF4X2xhbmVzLCBwb3J0X25hbWUocG9ydCkpKQo+ICAgCQly
ZXR1cm4gZmFsc2U7Cj4gICAKPiAtCWludGVsX2RwX3NldF9zb3VyY2VfcmF0ZXMoaW50ZWxfZHAp
Owo+IC0KPiAgIAlpbnRlbF9kcC0+cmVzZXRfbGlua19wYXJhbXMgPSB0cnVlOwo+ICAgCWludGVs
X2RwLT5wcHNfcGlwZSA9IElOVkFMSURfUElQRTsKPiAgIAlpbnRlbF9kcC0+YWN0aXZlX3BpcGUg
PSBJTlZBTElEX1BJUEU7Cj4gQEAgLTczODgsNiArNzM4OCw4IEBAIGludGVsX2RwX2luaXRfY29u
bmVjdG9yKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0LAo+ICAgCQkJ
dHlwZSA9PSBEUk1fTU9ERV9DT05ORUNUT1JfZURQID8gImVEUCIgOiAiRFAiLAo+ICAgCQkJcG9y
dF9uYW1lKHBvcnQpKTsKPiAgIAo+ICsJaW50ZWxfZHBfc2V0X3NvdXJjZV9yYXRlcyhpbnRlbF9k
cCk7Cj4gKwo+ICAgCWRybV9jb25uZWN0b3JfaW5pdChkZXYsIGNvbm5lY3RvciwgJmludGVsX2Rw
X2Nvbm5lY3Rvcl9mdW5jcywgdHlwZSk7Cj4gICAJZHJtX2Nvbm5lY3Rvcl9oZWxwZXJfYWRkKGNv
bm5lY3RvciwgJmludGVsX2RwX2Nvbm5lY3Rvcl9oZWxwZXJfZnVuY3MpOwo+ICAgCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
