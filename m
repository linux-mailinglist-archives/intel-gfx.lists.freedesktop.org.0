Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73CF255739
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 20:30:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF9966E1C0;
	Tue, 25 Jun 2019 18:30:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 597E96E1C0
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 18:30:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 11:30:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,416,1557212400"; d="scan'208";a="169852710"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by FMSMGA003.fm.intel.com with ESMTP; 25 Jun 2019 11:30:19 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x5PIUIP5007550; Tue, 25 Jun 2019 19:30:19 +0100
To: intel-gfx@lists.freedesktop.org, "Chris Wilson" <chris@chris-wilson.co.uk>
References: <20190625174547.22164-1-chris@chris-wilson.co.uk>
Date: Tue, 25 Jun 2019 20:30:18 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z3ydosirxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20190625174547.22164-1-chris@chris-wilson.co.uk>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Compact init params debug to
 a single line
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

T24gVHVlLCAyNSBKdW4gMjAxOSAxOTo0NTo0NyArMDIwMCwgQ2hyaXMgV2lsc29uICAKPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cgo+IFVzZSBoZXhfZHVtcF90b19idWZmZXIoKSB0
byBjb21wcmVzcyB0aGUgcGFyYW1ldGVyIGRlYnVnIGludG8gYSBzaW5nbGUKPiBsaW5lIGZvciBs
ZXNzIHZlcmJvc2UgZGVidWcgbG9ncy4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwu
d2FqZGVjemtvQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
Z3VjLmMgfCA2ICsrKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1
Yy5jICAKPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Yy5jCj4gaW5kZXggYzQwYTZl
ZmRkMzNhLi40NDdmMWRlMTUyODkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZ3VjLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWMuYwo+IEBA
IC0zNjcsNiArMzY3LDcgQEAgc3RhdGljIHUzMiBndWNfY3RsX2Fkc19mbGFncyhzdHJ1Y3QgaW50
ZWxfZ3VjICpndWMpCj4gIHZvaWQgaW50ZWxfZ3VjX2luaXRfcGFyYW1zKHN0cnVjdCBpbnRlbF9n
dWMgKmd1YykKPiAgewo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZ3Vj
X3RvX2k5MTUoZ3VjKTsKPiArCWNoYXIgYnVmW0dVQ19DVExfTUFYX0RXT1JEUyAqIDEwXTsKPiAg
CXUzMiBwYXJhbXNbR1VDX0NUTF9NQVhfRFdPUkRTXTsKPiAgCWludCBpOwo+IEBAIC0zNzgsOCAr
Mzc5LDkgQEAgdm9pZCBpbnRlbF9ndWNfaW5pdF9wYXJhbXMoc3RydWN0IGludGVsX2d1YyAqZ3Vj
KQo+ICAJcGFyYW1zW0dVQ19DVExfREVCVUddID0gZ3VjX2N0bF9kZWJ1Z19mbGFncyhndWMpOwo+
ICAJcGFyYW1zW0dVQ19DVExfQURTXSA9IGd1Y19jdGxfYWRzX2ZsYWdzKGd1Yyk7Cj4gLQlmb3Ig
KGkgPSAwOyBpIDwgR1VDX0NUTF9NQVhfRFdPUkRTOyBpKyspCj4gLQkJRFJNX0RFQlVHX0RSSVZF
UigicGFyYW1bJTJkXSA9ICUjeFxuIiwgaSwgcGFyYW1zW2ldKTsKPiArCWhleF9kdW1wX3RvX2J1
ZmZlcihwYXJhbXMsIHNpemVvZihwYXJhbXMpLAo+ICsJCQkgICAzMiwgNCwgYnVmLCBzaXplb2Yo
YnVmKSwgZmFsc2UpOwoKaG1tLCBHVUNfQ1RMX01BWF9EV09SRFMgaXMgMTQsIHNvIGl0IHdpbGwg
YmUgNTYgYnl0ZXMgaW4gdG90YWwsCmJ1dCBoZXhfZHVtcF90b19idWZmZXIgd2lsbCBkdW1wIG9u
bHkgMzIgYnl0ZXMgLi4uIHVubGVzcwp3ZSBleHBsaWNpdGx5IGxpbWl0IG91ciBkdW1wIHRvIGN1
cnJlbnRseSB1c2VkIGp1c3QgNSBlbnRyaWVzCigyMCBieXRlcykgYnV0IHRoZW4gdGhpcyBtaWdo
dCBiZSBub3QgZnV0dXJlIHByb29mIGlmIG5ldyBmdwp3aWxsIHJlcXVpcmUvdXNlIG1vcmUgdGhl
biA4IHBhcmFtZXRlcnMKCj4gKwlEUk1fREVCVUdfRFJJVkVSKCJwYXJhbXNbJXNdXG4iLCBidWYp
OwoKdXNlIG9mIFslc10gbWF5IG1ha2UgdGhpcyBsZXNzIHJlYWRhYmxlLCBzbyBtYXliZToKCglE
Uk1fREVCVUdfRFJJVkVSKCJHdUMgcGFyYW1zICVzXG4iLCBidWYpOwoKYnV0IEknbSBzdGlsbCBu
b3Qgc3VyZSBpZiB3ZSBzaG91bGQgZ28gdGhhdCBwYXJ0aWFsIHdheSwgRGFuaWVsZSA/CgpNaWNo
YWwKCnBzLiB3ZSBjYW4gYXNsbyB1c2UgdHdvIGxpbmVzIG9yIHR3byBidWZzIGZvciAwLi43IGFu
ZCA4Li4xMyBwYXJhbXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
