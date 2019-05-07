Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 603EE16209
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 12:37:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9197289F6F;
	Tue,  7 May 2019 10:37:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A13789F6F
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2019 10:37:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 May 2019 03:37:03 -0700
X-ExtLoop1: 1
Received: from jzapadkx-mobl1.ger.corp.intel.com (HELO [10.252.0.159])
 ([10.252.0.159])
 by fmsmga005.fm.intel.com with ESMTP; 07 May 2019 03:37:02 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190503140239.32668-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <38932513-2ac3-4e06-fc93-f626ab122cf7@linux.intel.com>
Date: Tue, 7 May 2019 11:37:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190503140239.32668-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Acquire the signaler's timeline
 HWSP last
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

Ck9uIDAzLzA1LzIwMTkgMTU6MDIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBBY3F1aXJpbmcgdGhl
IHNpZ25hbGVyJ3MgdGltZWxpbmUgdGFrZXMgYW4gYWN0aXZlIHJlZmVyZW5jZSB0byB0aGVpcgo+
IEhXU1AgdGhhdCB3ZSB3b3VsZCBsaWtlIHRvIGF2b2lkIGlmIHBvc3NpYmxlLCBzbyB0YWtlIGl0
IGFmdGVyCj4gcGVyZm9ybWluZyBhbGwgb2Ygb3VyIGFsbG9jYXRpb25zIHJlcXVpcmVkIHRvIHNl
dCB1cCB0aGUgZmVuY2luZy4gVGhlCj4gYWNxdWlzaXRpb24gYWxzbyBwcm92aWRlcyB0aGUgZmlu
YWwgY2hlY2sgdGhhdCB0aGUgdGFyZ2V0IGhhcyBub3QKPiBhbHJlYWR5IHNpZ25hbGVkIGFsbG93
aW5nIHVzIHRvIGF2b2lkIHRoZSBzZW1hcGhvcmUgYXQgdGhlIGxhc3QgbW9tZW50Lgo+IAo+IFNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0t
LQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMgfCA4ICsrKystLS0tCj4g
ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+IAo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jCj4gaW5kZXggNmRiZjhkYzVjZDZhLi45MzNhMTE2
NzdmNGEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwo+IEBAIC04MTMsMTMg
KzgxMywxMyBAQCBlbWl0X3NlbWFwaG9yZV93YWl0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnRvLAo+
ICAgCWlmIChlcnIgPCAwKQo+ICAgCQlyZXR1cm4gZXJyOwo+ICAgCj4gLQkvKiBXZSBuZWVkIHRv
IHBpbiB0aGUgc2lnbmFsZXIncyBIV1NQIHVudGlsIHdlIGFyZSBmaW5pc2hlZCByZWFkaW5nLiAq
Lwo+IC0JZXJyID0gaTkxNV90aW1lbGluZV9yZWFkX2h3c3AoZnJvbSwgdG8sICZod3NwX29mZnNl
dCk7Cj4gKwkvKiBPbmx5IHN1Ym1pdCBvdXIgc3Bpbm5lciBhZnRlciB0aGUgc2lnbmFsZXIgaXMg
cnVubmluZyEgKi8KPiArCWVyciA9IGk5MTVfcmVxdWVzdF9hd2FpdF9leGVjdXRpb24odG8sIGZy
b20sIGdmcCk7Cj4gICAJaWYgKGVycikKPiAgIAkJcmV0dXJuIGVycjsKPiAgIAo+IC0JLyogT25s
eSBzdWJtaXQgb3VyIHNwaW5uZXIgYWZ0ZXIgdGhlIHNpZ25hbGVyIGlzIHJ1bm5pbmchICovCj4g
LQllcnIgPSBpOTE1X3JlcXVlc3RfYXdhaXRfZXhlY3V0aW9uKHRvLCBmcm9tLCBnZnApOwo+ICsJ
LyogV2UgbmVlZCB0byBwaW4gdGhlIHNpZ25hbGVyJ3MgSFdTUCB1bnRpbCB3ZSBhcmUgZmluaXNo
ZWQgcmVhZGluZy4gKi8KPiArCWVyciA9IGk5MTVfdGltZWxpbmVfcmVhZF9od3NwKGZyb20sIHRv
LCAmaHdzcF9vZmZzZXQpOwo+ICAgCWlmIChlcnIpCj4gICAJCXJldHVybiBlcnI7Cj4gICAKPiAK
ClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgoK
UmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
