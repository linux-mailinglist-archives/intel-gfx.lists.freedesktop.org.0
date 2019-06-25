Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96AA655632
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 19:48:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFFC46E1B9;
	Tue, 25 Jun 2019 17:47:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 812436E1B9
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 17:47:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 10:47:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,416,1557212400"; d="scan'208";a="245148493"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga001.jf.intel.com with ESMTP; 25 Jun 2019 10:47:56 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x5PHltmL028250; Tue, 25 Jun 2019 18:47:55 +0100
To: intel-gfx@lists.freedesktop.org, "Robert M. Fosha"
 <robert.m.fosha@intel.com>
References: <20190621200940.32665-1-robert.m.fosha@intel.com>
 <20190625164107.21512-1-robert.m.fosha@intel.com>
Date: Tue, 25 Jun 2019 19:47:55 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z3ybp5u5xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20190625164107.21512-1-robert.m.fosha@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/guc: Add debug capture of GuC
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

T24gVHVlLCAyNSBKdW4gMjAxOSAxODo0MTowNyArMDIwMCwgUm9iZXJ0IE0uIEZvc2hhICAKPHJv
YmVydC5tLmZvc2hhQGludGVsLmNvbT4gd3JvdGU6Cgo+IERldGVjdCBHdUMgZmlybXdhcmUgbG9h
ZCBmYWlsdXJlIGR1ZSB0byBhbiBleGNlcHRpb24gZHVyaW5nIGV4ZWN1dGlvbgo+IGluIEd1QyBm
aXJtd2FyZS4gT3V0cHV0IHRoZSBHdUMgRUlQIHdoZXJlIGV4Y2VwdGlvbiBvY2N1cnJlZCB0byBk
bWVzZwo+IGZvciBHdUMgZGVidWcgaW5mb3JtYXRpb24uCj4KPiB2MjogY29ycmVjdCB0eXBvcywg
Y2hhbmdlIGRlYnVnIG1lc3NhZ2UgYW5kIGVycm9yIGNvZGUgcmV0dXJuZWQgZm9yCj4gR3VDIGV4
Y2VwdGlvbiAoTWljaGFsKQo+Cj4gU2lnbmVkLW9mZi1ieTogUm9iZXJ0IE0uIEZvc2hhIDxyb2Jl
cnQubS5mb3NoYUBpbnRlbC5jb20+Cj4gQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmll
bGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hh
bC53YWpkZWN6a29AaW50ZWwuY29tPgoKbGV0J3MgaG9wZSBpdCB3aWxsIG5ldmVyIHNob3cgdXAK
ClJldmlld2VkLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNv
bT4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19mdy5jICB8IDcgKysr
KysrKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfcmVnLmggfCAxICsKPiAgMiBm
aWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9ndWNfZncuYyAgCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9ndWNfZncuYwo+IGluZGV4IDcyY2RhZmQ5NjM2YS4uOTcwZjM5ZWYyNDhiIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19mdy5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZ3VjX2Z3LmMKPiBAQCAtMTk3LDYgKzE5Nyw3IEBAIHN0YXRpYyBp
bmxpbmUgYm9vbCBndWNfcmVhZHkoc3RydWN0IGludGVsX2d1YyAqZ3VjLCAgCj4gdTMyICpzdGF0
dXMpCj4gc3RhdGljIGludCBndWNfd2FpdF91Y29kZShzdHJ1Y3QgaW50ZWxfZ3VjICpndWMpCj4g
IHsKPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZ3VjX3RvX2k5MTUoZ3VjKTsK
PiAgCXUzMiBzdGF0dXM7Cj4gIAlpbnQgcmV0Owo+IEBAIC0yMTYsNiArMjE3LDEyIEBAIHN0YXRp
YyBpbnQgZ3VjX3dhaXRfdWNvZGUoc3RydWN0IGludGVsX2d1YyAqZ3VjKQo+ICAJCXJldCA9IC1F
Tk9FWEVDOwo+ICAJfQo+ICsJaWYgKChzdGF0dXMgJiBHU19VS0VSTkVMX01BU0spID09IEdTX1VL
RVJORUxfRVhDRVBUSU9OKSB7Cj4gKwkJRFJNX0VSUk9SKCJHdUMgZmlybXdhcmUgZXhjZXB0aW9u
LiBFSVA6ICUjeFxuIiwKPiArCQkJICBpbnRlbF91bmNvcmVfcmVhZCgmaTkxNS0+dW5jb3JlLCBT
T0ZUX1NDUkFUQ0goMTMpKSk7Cj4gKwkJcmV0ID0gLUVOWElPOwo+ICsJfQo+ICsKPiAgCWlmIChy
ZXQgPT0gMCAmJiAhZ3VjX3hmZXJfY29tcGxldGVkKGd1YywgJnN0YXR1cykpIHsKPiAgCQlEUk1f
RVJST1IoIkd1QyBpcyByZWFkeSwgYnV0IHRoZSB4ZmVyICUwOHggaXMgaW5jb21wbGV0ZVxuIiwK
PiAgCQkJICBzdGF0dXMpOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9ndWNfcmVnLmggIAo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX3JlZy5oCj4g
aW5kZXggYTIxNGY4YjcxOTI5Li5kOTBiODhmYWRiNWUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZ3VjX3JlZy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZ3VjX3JlZy5oCj4gQEAgLTM3LDYgKzM3LDcgQEAKPiAgI2RlZmluZSAgIEdTX1VLRVJO
RUxfTUFTSwkJICAoMHhGRiA8PCBHU19VS0VSTkVMX1NISUZUKQo+ICAjZGVmaW5lICAgR1NfVUtF
Uk5FTF9MQVBJQ19ET05FCQkgICgweDMwIDw8IEdTX1VLRVJORUxfU0hJRlQpCj4gICNkZWZpbmUg
ICBHU19VS0VSTkVMX0RQQ19FUlJPUgkJICAoMHg2MCA8PCBHU19VS0VSTkVMX1NISUZUKQo+ICsj
ZGVmaW5lICAgR1NfVUtFUk5FTF9FWENFUFRJT04JCSAgKDB4NzAgPDwgR1NfVUtFUk5FTF9TSElG
VCkKPiAgI2RlZmluZSAgIEdTX1VLRVJORUxfUkVBRFkJCSAgKDB4RjAgPDwgR1NfVUtFUk5FTF9T
SElGVCkKPiAgI2RlZmluZSAgIEdTX01JQV9TSElGVAkJCTE2Cj4gICNkZWZpbmUgICBHU19NSUFf
TUFTSwkJCSAgKDB4MDcgPDwgR1NfTUlBX1NISUZUKQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
