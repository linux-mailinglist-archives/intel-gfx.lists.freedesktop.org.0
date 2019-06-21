Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A9C4F010
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 22:40:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27CE76E924;
	Fri, 21 Jun 2019 20:40:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C9CA6E924
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 20:40:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jun 2019 13:40:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,401,1557212400"; d="scan'208";a="171343196"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga002.jf.intel.com with ESMTP; 21 Jun 2019 13:40:31 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.138.217])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x5LKeU0p021992; Fri, 21 Jun 2019 21:40:30 +0100
To: intel-gfx@lists.freedesktop.org, "Robert M. Fosha"
 <robert.m.fosha@intel.com>
References: <20190621200940.32665-1-robert.m.fosha@intel.com>
Date: Fri, 21 Jun 2019 22:40:28 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z3q41qlaxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20190621200940.32665-1-robert.m.fosha@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Add debug capture of GuC
 exception
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMSBKdW4gMjAxOSAyMjowOTo0MCArMDIwMCwgUm9iZXJ0IE0uIEZvc2hhICAKPHJv
YmVydC5tLmZvc2hhQGludGVsLmNvbT4gd3JvdGU6Cgo+IERldGVjdCBHdUMgZmlybXdhcmUgbG9h
ZCBmYWlsdXJlIGR1ZSB0byBhbiBleGNlcHRpb24gZHVyaW5nIGV4ZWN1dGlvbgo+IGluIEd1QyBm
aXJtd2FyZS4gT3V0cHV0IHRoZSBHdUMgRUlQIHdoZXJlIGV4Y3BldGlvbiBvY2N1cmVkIHRvIGRt
ZXNnCgp0d28gdHlwb3MgaGVyZQoKPiBmb3IgR3VDIGRlYnVnIGluZm9ybWF0aW9uLgo+Cj4gU2ln
bmVkLW9mZi1ieTogUm9iZXJ0IE0uIEZvc2hhIDxyb2JlcnQubS5mb3NoYUBpbnRlbC5jb20+Cj4g
Q2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5j
b20+Cj4gQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+
IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfZncuYyAgfCA3ICsrKysrKysK
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX3JlZy5oIHwgMSArCj4gIDIgZmlsZXMg
Y2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZ3VjX2Z3LmMgIAo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3Vj
X2Z3LmMKPiBpbmRleCA3MmNkYWZkOTYzNmEuLjkwY2I2NTY0MWQ2MCAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfZncuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2d1Y19mdy5jCj4gQEAgLTE5Nyw2ICsxOTcsNyBAQCBzdGF0aWMgaW5saW5l
IGJvb2wgZ3VjX3JlYWR5KHN0cnVjdCBpbnRlbF9ndWMgKmd1YywgIAo+IHUzMiAqc3RhdHVzKQo+
IHN0YXRpYyBpbnQgZ3VjX3dhaXRfdWNvZGUoc3RydWN0IGludGVsX2d1YyAqZ3VjKQo+ICB7Cj4g
KwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGd1Y190b19pOTE1KGd1Yyk7Cj4gIAl1
MzIgc3RhdHVzOwo+ICAJaW50IHJldDsKPiBAQCAtMjE2LDYgKzIxNywxMiBAQCBzdGF0aWMgaW50
IGd1Y193YWl0X3Vjb2RlKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKPiAgCQlyZXQgPSAtRU5PRVhF
QzsKPiAgCX0KPiArCWlmICgoc3RhdHVzICYgR1NfVUtFUk5FTF9NQVNLKSA9PSBHU19VS0VSTkVM
X0VYQ0VQVElPTikgewoKSSBndWVzcyBHdUMgZXhjZXB0aW9uIGNvdWxkIGFsc28gaGFwcGVuIGFm
dGVyIGZ3IGJvb3QgdGltZSwKY2FuIHdlIGFkZCBzdXBwb3J0IHRvIGRldGVjdCBhbmQgbG9nIHN1
Y2ggZXhjZXB0aW9ucz8KYW5kIG1heWJlIHN1Y2ggdW5pZmllZCBhcHByb2FjaCB3aWxsIGNvdmVy
IHRoaXMgY2FzZSBhcyB3ZWxsPwoKPiArCQlEUk1fRVJST1IoIkd1QyBmdyBleGNlcHRpb24uIEd1
QyB1S2VybmVsIEVJUDogJSN4XG4iLAoKZG8gd2UgbmVlZCB0byB1c2UgdHdvIG5hbWVzICJmdyIg
YW5kICJ1S2VybmVsIiBoZXJlPyBtYXliZSBqdXN0OgoKCURSTV9FUlJPUigiR3VDIGZpcm13YXJl
IGV4Y2VwdGlvbi4gRUlQOiAlI3hcbiIsCgo+ICsJCQkgIGludGVsX3VuY29yZV9yZWFkKCZpOTE1
LT51bmNvcmUsIFNPRlRfU0NSQVRDSCgxMykpKTsKPiArCQlyZXQgPSAtRU5PRVhFQzsKCmFzIHRo
aXMgaXMgbm90IGEgYmxvYiBwcm9ibGVtLCBtYXliZSAtRU5YSU8gd2lsbCBmaXQgYmV0dGVyID8K
Cj4gKwl9Cj4gKwo+ICAJaWYgKHJldCA9PSAwICYmICFndWNfeGZlcl9jb21wbGV0ZWQoZ3VjLCAm
c3RhdHVzKSkgewo+ICAJCURSTV9FUlJPUigiR3VDIGlzIHJlYWR5LCBidXQgdGhlIHhmZXIgJTA4
eCBpcyBpbmNvbXBsZXRlXG4iLAo+ICAJCQkgIHN0YXR1cyk7Cj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19yZWcuaCAgCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9ndWNfcmVnLmgKPiBpbmRleCBhMjE0ZjhiNzE5MjkuLmQ5MGI4OGZhZGI1ZSAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfcmVnLmgKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfcmVnLmgKPiBAQCAtMzcsNiArMzcsNyBAQAo+
ICAjZGVmaW5lICAgR1NfVUtFUk5FTF9NQVNLCQkgICgweEZGIDw8IEdTX1VLRVJORUxfU0hJRlQp
Cj4gICNkZWZpbmUgICBHU19VS0VSTkVMX0xBUElDX0RPTkUJCSAgKDB4MzAgPDwgR1NfVUtFUk5F
TF9TSElGVCkKPiAgI2RlZmluZSAgIEdTX1VLRVJORUxfRFBDX0VSUk9SCQkgICgweDYwIDw8IEdT
X1VLRVJORUxfU0hJRlQpCj4gKyNkZWZpbmUgICBHU19VS0VSTkVMX0VYQ0VQVElPTgkJICAoMHg3
MCA8PCBHU19VS0VSTkVMX1NISUZUKQo+ICAjZGVmaW5lICAgR1NfVUtFUk5FTF9SRUFEWQkJICAo
MHhGMCA8PCBHU19VS0VSTkVMX1NISUZUKQo+ICAjZGVmaW5lICAgR1NfTUlBX1NISUZUCQkJMTYK
PiAgI2RlZmluZSAgIEdTX01JQV9NQVNLCQkJICAoMHgwNyA8PCBHU19NSUFfU0hJRlQpCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
