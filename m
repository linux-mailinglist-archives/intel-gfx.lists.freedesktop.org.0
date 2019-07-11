Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 685D3660D7
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 22:45:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9DD76E28B;
	Thu, 11 Jul 2019 20:45:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 524086E28B
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 20:45:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 13:45:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,479,1557212400"; d="scan'208";a="365391390"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga006.fm.intel.com with ESMTP; 11 Jul 2019 13:45:47 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190710064454.682-1-chris@chris-wilson.co.uk>
 <20190710064454.682-14-chris@chris-wilson.co.uk>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <b6682d3f-0593-1ca2-ab85-6c198dec1853@intel.com>
Date: Thu, 11 Jul 2019 13:45:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190710064454.682-14-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 14/14] drm/i915/gt: Use intel_gt as the
 primary object for handling resets
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

PHNuaXA+Cgo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3NlbGZ0
ZXN0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9zZWxmdGVz
dC5jCj4gQEAgLTI1Niw3ICsyNTYsNyBAQCBpbnQgX19pOTE1X2xpdmVfc2V0dXAodm9pZCAqZGF0
YSkKPiAgIHsKPiAgIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGRhdGE7Cj4gICAK
PiAtCXJldHVybiBpOTE1X3Rlcm1pbmFsbHlfd2VkZ2VkKGk5MTUpOwo+ICsJcmV0dXJuIGludGVs
X2d0X3Rlcm1pbmFsbHlfd2VkZ2VkKCZpOTE1LT5ndCk7Cj4gICB9Cj4gICAKPiAgIGludCBfX2k5
MTVfbGl2ZV90ZWFyZG93bihpbnQgZXJyLCB2b2lkICpkYXRhKQo+IEBAIC0yNzMsNiArMjczLDI3
IEBAIGludCBfX2k5MTVfbGl2ZV90ZWFyZG93bihpbnQgZXJyLCB2b2lkICpkYXRhKQo+ICAgCXJl
dHVybiBlcnI7Cj4gICB9Cj4gICAKPiAraW50IF9faW50ZWxfZ3RfbGl2ZV9zZXR1cCh2b2lkICpk
YXRhKQo+ICt7Cj4gKwlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gZGF0YTsKPiArCj4gKwlyZXR1cm4g
aW50ZWxfZ3RfdGVybWluYWxseV93ZWRnZWQoZ3QpOwo+ICt9Cj4gKwo+ICtpbnQgX19pbnRlbF9n
dF9saXZlX3RlYXJkb3duKGludCBlcnIsIHZvaWQgKmRhdGEpCj4gK3sKPiArCXN0cnVjdCBpbnRl
bF9ndCAqZ3QgPSBkYXRhOwo+ICsKPiArCW11dGV4X2xvY2soJmd0LT5pOTE1LT5kcm0uc3RydWN0
X211dGV4KTsKPiArCWlmIChpZ3RfZmx1c2hfdGVzdChndC0+aTkxNSwgSTkxNV9XQUlUX0xPQ0tF
RCkpCj4gKwkJZXJyID0gLUVJTzsKPiArCW11dGV4X3VubG9jaygmZ3QtPmk5MTUtPmRybS5zdHJ1
Y3RfbXV0ZXgpOwo+ICsKPiArCWk5MTVfZ2VtX2RyYWluX2ZyZWVkX29iamVjdHMoZ3QtPmk5MTUp
Owo+ICsKPiArCXJldHVybiBlcnI7Cj4gK30KCnRoaXMgaXMgYmFzaWNhbGx5IGEgY29weSBvZiBf
X2k5MTVfbGl2ZV90ZWFyZG93biwgaXQgbWlnaHQgYmUgd29ydGggCmhhdmluZyBvbmUgb2YgdGhl
IDIgZnVuY3Rpb25zIGNhbGwgaW50byB0aGUgb3RoZXIgaWYgeW91J3JlIG5vdCBwbGFubmluZyAK
dG8gaGF2ZSB0aGVtIGRpdmVyZ2UgaW4gdGhlIHNob3J0IHRlcm0uCgpzL2ludGVsX2dwdV9yZXNl
dC9pbnRlbF9ndF9yZXNldC8gYWxzbyBkaWRuJ3QgbWF0ZXJpYWxpemUgYnV0IEknbSBoYXBweSAK
Zm9yIHRoYXQgdG8gY29tZSBsYXRlci4KClJldmlld2VkLWJ5OiBEYW5pZWxlIENlcmFvbG8gU3B1
cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgoKUC5TLjogaWYgeW91IGhhdmUg
dG8gcmVzcGluIGZvciBvdGhlciByZWFzb25zLCBpdCdkIGJlIG5pY2UgaWYgeW91IGNvdWxkIAp1
c2UgYSBsb2NhbCBpOTE1IHZhcmlhYmxlIHdoZXJlIHRoZXJlIGFyZSBhIGxvdCBvZiBzL2k5MTUv
Z3QtPmk5MTUvIHRvIAprZWVwIHRoZSBkaWZmIHNtYWxsZXIgOlAKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
