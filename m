Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E51D3B7B
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 10:45:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18C636E037;
	Fri, 11 Oct 2019 08:45:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA9D989FE3
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 08:45:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 01:45:46 -0700
X-IronPort-AV: E=Sophos;i="5.67,283,1566889200"; d="scan'208";a="197520706"
Received: from hemavenk-mobl1.ger.corp.intel.com (HELO [10.251.81.25])
 ([10.251.81.25])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 11 Oct 2019 01:45:45 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191010071434.31195-1-chris@chris-wilson.co.uk>
 <20191010071434.31195-5-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <183ce59f-c7d6-c4ed-6263-8acdf98c0ba3@linux.intel.com>
Date: Fri, 11 Oct 2019 09:45:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191010071434.31195-5-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 05/10] drm/i915: Mark up "sentinel" requests
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

Ck9uIDEwLzEwLzIwMTkgMDg6MTQsIENocmlzIFdpbHNvbiB3cm90ZToKPiBTb21ldGltZXMgd2Ug
d2FudCB0byBlbWl0IGEgdGVybWluYXRvciByZXF1ZXN0LCBhIHJlcXVlc3QgdGhhdCBmbHVzaGVz
Cj4gdGhlIHBpcGVsaW5lIGFuZCBhbGxvd3Mgbm8gcmVxdWVzdCB0byBjb21lIGFmdGVyIGl0LiBU
aGlzIGNhbiBiZSB1c2VkCj4gZm9yIGEgInByZWVtcHQtdG8taWRsZSIgdG8gZW5zdXJlIHRoYXQg
dXBvbiBwcm9jZXNzaW5nIHRoZQo+IGNvbnRleHQtc3dpdGNoIHRvIHRoYXQgcmVxdWVzdCwgYWxs
IG90aGVyIGFjdGl2ZSBjb250ZXh0cyBoYXZlIGJlZW4KPiBmbHVzaGVkLgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+ICAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgfCAgNiArKysrKysKPiAgIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5oIHwgMTAgKysrKysrKystLQo+ICAgMiBmaWxl
cyBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gaW5kZXggYWE1MmU1ZjM0ZGFiLi5lYjk5ZjFlODA0Zjcg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+IEBAIC0xMjUzLDYgKzEyNTMs
OSBAQCBzdGF0aWMgYm9vbCBjYW5fbWVyZ2VfcnEoY29uc3Qgc3RydWN0IGk5MTVfcmVxdWVzdCAq
cHJldiwKPiAgIAlpZiAoaTkxNV9yZXF1ZXN0X2NvbXBsZXRlZChuZXh0KSkKPiAgIAkJcmV0dXJu
IHRydWU7Cj4gICAKPiArCWlmIChpOTE1X3JlcXVlc3RfaGFzX3NlbnRpbmVsKHByZXYpKQo+ICsJ
CXJldHVybiBmYWxzZTsKPiArCj4gICAJaWYgKCFjYW5fbWVyZ2VfY3R4KHByZXYtPmh3X2NvbnRl
eHQsIG5leHQtPmh3X2NvbnRleHQpKQo+ICAgCQlyZXR1cm4gZmFsc2U7Cj4gICAKPiBAQCAtMTcy
NCw2ICsxNzI3LDkgQEAgc3RhdGljIHZvaWQgZXhlY2xpc3RzX2RlcXVldWUoc3RydWN0IGludGVs
X2VuZ2luZV9jcyAqZW5naW5lKQo+ICAgCQkJCWlmIChsYXN0LT5od19jb250ZXh0ID09IHJxLT5o
d19jb250ZXh0KQo+ICAgCQkJCQlnb3RvIGRvbmU7Cj4gICAKPiArCQkJCWlmIChpOTE1X3JlcXVl
c3RfaGFzX3NlbnRpbmVsKGxhc3QpKQo+ICsJCQkJCWdvdG8gZG9uZTsKPiArCj4gICAJCQkJLyoK
PiAgIAkJCQkgKiBJZiBHVlQgb3ZlcnJpZGVzIHVzIHdlIG9ubHkgZXZlciBzdWJtaXQKPiAgIAkJ
CQkgKiBwb3J0WzBdLCBsZWF2aW5nIHBvcnRbMV0gZW1wdHkuIE5vdGUgdGhhdCB3ZQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5oCj4gaW5kZXggNmE5NTI0MmIyODBkLi45Njk5MWQ2NDc1
OWMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmgKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuaAo+IEBAIC0yMTYsOCArMjE2
LDkgQEAgc3RydWN0IGk5MTVfcmVxdWVzdCB7Cj4gICAJdW5zaWduZWQgbG9uZyBlbWl0dGVkX2pp
ZmZpZXM7Cj4gICAKPiAgIAl1bnNpZ25lZCBsb25nIGZsYWdzOwo+IC0jZGVmaW5lIEk5MTVfUkVR
VUVTVF9XQUlUQk9PU1QgQklUKDApCj4gLSNkZWZpbmUgSTkxNV9SRVFVRVNUX05PUFJFRU1QVCBC
SVQoMSkKPiArI2RlZmluZSBJOTE1X1JFUVVFU1RfV0FJVEJPT1NUCUJJVCgwKQo+ICsjZGVmaW5l
IEk5MTVfUkVRVUVTVF9OT1BSRUVNUFQJQklUKDEpCj4gKyNkZWZpbmUgSTkxNV9SRVFVRVNUX1NF
TlRJTkVMCUJJVCgyKQo+ICAgCj4gICAJLyoqIHRpbWVsaW5lLT5yZXF1ZXN0IGVudHJ5IGZvciB0
aGlzIHJlcXVlc3QgKi8KPiAgIAlzdHJ1Y3QgbGlzdF9oZWFkIGxpbms7Cj4gQEAgLTQ0MCw2ICs0
NDEsMTEgQEAgc3RhdGljIGlubGluZSBib29sIGk5MTVfcmVxdWVzdF9oYXNfbm9wcmVlbXB0KGNv
bnN0IHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQo+ICAgCXJldHVybiB1bmxpa2VseShycS0+Zmxh
Z3MgJiBJOTE1X1JFUVVFU1RfTk9QUkVFTVBUKTsKPiAgIH0KPiAgIAo+ICtzdGF0aWMgaW5saW5l
IGJvb2wgaTkxNV9yZXF1ZXN0X2hhc19zZW50aW5lbChjb25zdCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0
ICpycSkKPiArewo+ICsJcmV0dXJuIHVubGlrZWx5KHJxLT5mbGFncyAmIEk5MTVfUkVRVUVTVF9T
RU5USU5FTCk7Cj4gK30KPiArCj4gICBzdGF0aWMgaW5saW5lIHN0cnVjdCBpbnRlbF90aW1lbGlu
ZSAqCj4gICBpOTE1X3JlcXVlc3RfdGltZWxpbmUoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCj4g
ICB7Cj4gCgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVs
LmNvbT4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
