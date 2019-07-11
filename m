Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DE3660E6
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 22:50:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DC5D6E28A;
	Thu, 11 Jul 2019 20:50:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CECB6E28A
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 20:50:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 13:50:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,480,1557212400"; d="scan'208";a="365392145"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga006.fm.intel.com with ESMTP; 11 Jul 2019 13:50:02 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190710064454.682-1-chris@chris-wilson.co.uk>
 <20190710064454.682-14-chris@chris-wilson.co.uk>
 <b6682d3f-0593-1ca2-ab85-6c198dec1853@intel.com>
Message-ID: <6bcd9e44-67b8-be6c-7cae-66250166fa5e@intel.com>
Date: Thu, 11 Jul 2019 13:49:51 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <b6682d3f-0593-1ca2-ab85-6c198dec1853@intel.com>
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

CgpPbiA3LzExLzE5IDE6NDUgUE0sIERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gd3JvdGU6Cj4gPHNu
aXA+Cj4gCj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3NlbGZ0
ZXN0LmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfc2VsZnRl
c3QuYwo+PiBAQCAtMjU2LDcgKzI1Niw3IEBAIGludCBfX2k5MTVfbGl2ZV9zZXR1cCh2b2lkICpk
YXRhKQo+PiDCoCB7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUg
PSBkYXRhOwo+PiAtwqDCoMKgIHJldHVybiBpOTE1X3Rlcm1pbmFsbHlfd2VkZ2VkKGk5MTUpOwo+
PiArwqDCoMKgIHJldHVybiBpbnRlbF9ndF90ZXJtaW5hbGx5X3dlZGdlZCgmaTkxNS0+Z3QpOwo+
PiDCoCB9Cj4+IMKgIGludCBfX2k5MTVfbGl2ZV90ZWFyZG93bihpbnQgZXJyLCB2b2lkICpkYXRh
KQo+PiBAQCAtMjczLDYgKzI3MywyNyBAQCBpbnQgX19pOTE1X2xpdmVfdGVhcmRvd24oaW50IGVy
ciwgdm9pZCAqZGF0YSkKPj4gwqDCoMKgwqDCoCByZXR1cm4gZXJyOwo+PiDCoCB9Cj4+ICtpbnQg
X19pbnRlbF9ndF9saXZlX3NldHVwKHZvaWQgKmRhdGEpCj4+ICt7Cj4+ICvCoMKgwqAgc3RydWN0
IGludGVsX2d0ICpndCA9IGRhdGE7Cj4+ICsKPj4gK8KgwqDCoCByZXR1cm4gaW50ZWxfZ3RfdGVy
bWluYWxseV93ZWRnZWQoZ3QpOwo+PiArfQo+PiArCj4+ICtpbnQgX19pbnRlbF9ndF9saXZlX3Rl
YXJkb3duKGludCBlcnIsIHZvaWQgKmRhdGEpCj4+ICt7Cj4+ICvCoMKgwqAgc3RydWN0IGludGVs
X2d0ICpndCA9IGRhdGE7Cj4+ICsKPj4gK8KgwqDCoCBtdXRleF9sb2NrKCZndC0+aTkxNS0+ZHJt
LnN0cnVjdF9tdXRleCk7Cj4+ICvCoMKgwqAgaWYgKGlndF9mbHVzaF90ZXN0KGd0LT5pOTE1LCBJ
OTE1X1dBSVRfTE9DS0VEKSkKPj4gK8KgwqDCoMKgwqDCoMKgIGVyciA9IC1FSU87Cj4+ICvCoMKg
wqAgbXV0ZXhfdW5sb2NrKCZndC0+aTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7Cj4+ICsKPj4gK8Kg
wqDCoCBpOTE1X2dlbV9kcmFpbl9mcmVlZF9vYmplY3RzKGd0LT5pOTE1KTsKPj4gKwo+PiArwqDC
oMKgIHJldHVybiBlcnI7Cj4+ICt9Cj4gCj4gdGhpcyBpcyBiYXNpY2FsbHkgYSBjb3B5IG9mIF9f
aTkxNV9saXZlX3RlYXJkb3duLCBpdCBtaWdodCBiZSB3b3J0aCAKPiBoYXZpbmcgb25lIG9mIHRo
ZSAyIGZ1bmN0aW9ucyBjYWxsIGludG8gdGhlIG90aGVyIGlmIHlvdSdyZSBub3QgcGxhbm5pbmcg
Cj4gdG8gaGF2ZSB0aGVtIGRpdmVyZ2UgaW4gdGhlIHNob3J0IHRlcm0uCj4gCj4gcy9pbnRlbF9n
cHVfcmVzZXQvaW50ZWxfZ3RfcmVzZXQvIGFsc28gZGlkbid0IG1hdGVyaWFsaXplIGJ1dCBJJ20g
aGFwcHkgCj4gZm9yIHRoYXQgdG8gY29tZSBsYXRlci4KPiAKPiBSZXZpZXdlZC1ieTogRGFuaWVs
ZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiAKCkkn
dmUgcmVwbGllZCB0byB0aGUgd3JvbmcgdmVyc2lvbiBvZiB0aGlzIHBhdGNoLCB0aGUgb25lIEkn
dmUgYWN0dWFsbHkgCnJldmlld2VkIGlzIHRoZSBvbmUgaW4gdGhlIDE4IHBhdGNoZXMgc2VyaWVz
LiBUaGV5IGxvb2sgcHJldHR5IG11Y2ggdGhlIApzYW1lIGFueXdheSwgYnV0IEknbSBjbGFyaWZ5
aW5nIGFueXdheSBpbiBjYXNlIHRoZXJlIGlzIGEgZGlmZmVyZW5jZSBJIAptaXNzZWQuCgpEYW5p
ZWxlCgo+IFAuUy46IGlmIHlvdSBoYXZlIHRvIHJlc3BpbiBmb3Igb3RoZXIgcmVhc29ucywgaXQn
ZCBiZSBuaWNlIGlmIHlvdSBjb3VsZCAKPiB1c2UgYSBsb2NhbCBpOTE1IHZhcmlhYmxlIHdoZXJl
IHRoZXJlIGFyZSBhIGxvdCBvZiBzL2k5MTUvZ3QtPmk5MTUvIHRvIAo+IGtlZXAgdGhlIGRpZmYg
c21hbGxlciA6UAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
