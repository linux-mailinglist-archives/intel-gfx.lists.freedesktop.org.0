Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A3FFDE6A
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 13:55:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A81589EBB;
	Fri, 15 Nov 2019 12:55:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A1AB89EBB
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 12:55:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 04:55:07 -0800
X-IronPort-AV: E=Sophos;i="5.68,308,1569308400"; d="scan'208";a="199192408"
Received: from mpotanix-mobl2.ccr.corp.intel.com (HELO [10.252.20.183])
 ([10.252.20.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 15 Nov 2019 04:55:06 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191114225736.616885-1-chris@chris-wilson.co.uk>
 <20191114225736.616885-5-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <9e701baf-a597-222a-01fa-78f570518a39@linux.intel.com>
Date: Fri, 15 Nov 2019 12:55:04 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191114225736.616885-5-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/gem: Silence sparse for RCU
 protection inside the constructor
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

Ck9uIDE0LzExLzIwMTkgMjI6NTcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBJbnNpZGUgdGhlIGNv
bnN0cnVjdG9yLCB3aGlsZSBjbG9uaW5nLCB3ZSBuZWVkIHRvIHJlcGxhY2UgdGhlCj4gZHN0LT5l
bmdpbmVzLiBIYXZpbmcgZm9yZ290dGVuIHRoYXQgZHN0LT5lbmdpbmVzIGlzIG1hcmtlZCBhcyBS
Q1UKPiBwcm90ZWN0ZWQsIHdlIG5lZWQgdG8gYWRkIHRoZSBhcHByb3ByaWF0ZSBhbm5vdGF0aW9u
cyB0byBtYWtlIHNwYXJzZQo+IGhhcHB5Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtv
LnVyc3VsaW5AaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2NvbnRleHQuYyB8IDYgKysrKy0tCj4gICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2NvbnRleHQuYwo+IGluZGV4IDEyODRmNDczMDNmYS4uNmYxZTYxODFmNjdhIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCj4gQEAgLTIw
MDksNyArMjAwOSw4IEBAIHN0YXRpYyBpbnQgY2xvbmVfZW5naW5lcyhzdHJ1Y3QgaTkxNV9nZW1f
Y29udGV4dCAqZHN0LAo+ICAgCXVzZXJfZW5naW5lcyA9IGk5MTVfZ2VtX2NvbnRleHRfdXNlcl9l
bmdpbmVzKHNyYyk7Cj4gICAJaTkxNV9nZW1fY29udGV4dF91bmxvY2tfZW5naW5lcyhzcmMpOwo+
ICAgCj4gLQlmcmVlX2VuZ2luZXMoZHN0LT5lbmdpbmVzKTsKPiArCS8qIFNlcmlhbGlzZWQgYnkg
Y29uc3RydWN0b3IgKi8KPiArCWZyZWVfZW5naW5lcyhfX2NvbnRleHRfZW5naW5lc19zdGF0aWMo
ZHN0KSk7Cj4gICAJUkNVX0lOSVRfUE9JTlRFUihkc3QtPmVuZ2luZXMsIGNsb25lKTsKPiAgIAlp
ZiAodXNlcl9lbmdpbmVzKQo+ICAgCQlpOTE1X2dlbV9jb250ZXh0X3NldF91c2VyX2VuZ2luZXMo
ZHN0KTsKPiBAQCAtMjA0NCw3ICsyMDQ1LDggQEAgc3RhdGljIGludCBjbG9uZV9zc2V1KHN0cnVj
dCBpOTE1X2dlbV9jb250ZXh0ICpkc3QsCj4gICAJdW5zaWduZWQgbG9uZyBuOwo+ICAgCWludCBl
cnI7Cj4gICAKPiAtCWNsb25lID0gZHN0LT5lbmdpbmVzOyAvKiBubyBsb2NraW5nIHJlcXVpcmVk
OyBzb2xlIGFjY2VzcyAqLwo+ICsJLyogbm8gbG9ja2luZyByZXF1aXJlZDsgc29sZSBhY2Nlc3Mg
dW5kZXIgY29uc3RydWN0b3IqLwo+ICsJY2xvbmUgPSBfX2NvbnRleHRfZW5naW5lc19zdGF0aWMo
ZHN0KTsKPiAgIAlpZiAoZS0+bnVtX2VuZ2luZXMgIT0gY2xvbmUtPm51bV9lbmdpbmVzKSB7Cj4g
ICAJCWVyciA9IC1FSU5WQUw7Cj4gICAJCWdvdG8gdW5sb2NrOwo+IAoKUmV2aWV3ZWQtYnk6IFR2
cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtv
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
