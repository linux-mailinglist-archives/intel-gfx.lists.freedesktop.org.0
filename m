Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2672B977F
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 21:01:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 365E86E0B9;
	Fri, 20 Sep 2019 19:01:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CE0A6E0B9
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 19:01:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Sep 2019 12:01:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,529,1559545200"; d="scan'208";a="202556513"
Received: from ericferx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.39.24])
 by fmsmga001.fm.intel.com with ESMTP; 20 Sep 2019 12:01:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20190920185347.17760-1-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190920185347.17760-1-jani.nikula@intel.com>
Date: Fri, 20 Sep 2019 22:01:07 +0300
Message-ID: <87pnjuztak.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 1/6] drm/i915: add
 i915_driver_modeset_remove()
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
Cc: Chris@freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

ClBsZWFzZSBpZ25vcmUgdGhlIHR3byBwYXRjaGVzIGhlcmUuIENyaXRpY2FsIGZ1bWJsZS4KCkJS
LApKYW5pLgoKCk9uIEZyaSwgMjAgU2VwIDIwMTksIEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBp
bnRlbC5jb20+IHdyb3RlOgo+IEZvciBjb21wbGV0ZW5lc3MsIGFkZCBjb3VudGVycGFydCB0byBp
OTE1X2RyaXZlcl9tb2Rlc2V0X3Byb2JlKCkgYW5kCj4gcmVtb3ZlIHRoZSBhc3ltbWV0cnkgaW4g
dGhlIHByb2JlL3JlbW92ZSBwYXJ0cy4gTm8gZnVuY3Rpb25hbCBjaGFuZ2VzLgo+Cj4gUmV2aWV3
ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IFNpZ25lZC1v
ZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgfCAyNSArKysrKysrKysrKysrKystLS0tLS0tLS0t
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKPgo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+IGluZGV4IDk5MDRmNzYyZjRiYi4uNGNiOTVmZDliMzVk
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gQEAgLTQyMiw2ICs0MjIsMjAgQEAgc3Rh
dGljIGludCBpOTE1X2RyaXZlcl9tb2Rlc2V0X3Byb2JlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYp
Cj4gIAlyZXR1cm4gcmV0Owo+ICB9Cj4gIAo+ICtzdGF0aWMgdm9pZCBpOTE1X2RyaXZlcl9tb2Rl
c2V0X3JlbW92ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiArewo+ICsJc3RydWN0
IHBjaV9kZXYgKnBkZXYgPSBpOTE1LT5kcm0ucGRldjsKPiArCj4gKwlpbnRlbF9tb2Rlc2V0X2Ry
aXZlcl9yZW1vdmUoJmk5MTUtPmRybSk7Cj4gKwo+ICsJaW50ZWxfYmlvc19kcml2ZXJfcmVtb3Zl
KGk5MTUpOwo+ICsKPiArCXZnYV9zd2l0Y2hlcm9vX3VucmVnaXN0ZXJfY2xpZW50KHBkZXYpOwo+
ICsJdmdhX2NsaWVudF9yZWdpc3RlcihwZGV2LCBOVUxMLCBOVUxMLCBOVUxMKTsKPiArCj4gKwlp
bnRlbF9jc3JfdWNvZGVfZmluaShpOTE1KTsKPiArfQo+ICsKPiAgc3RhdGljIHZvaWQgaW50ZWxf
aW5pdF9kcGlvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgewo+ICAJLyoK
PiBAQCAtMTU4Niw4ICsxNjAwLDYgQEAgaW50IGk5MTVfZHJpdmVyX3Byb2JlKHN0cnVjdCBwY2lf
ZGV2ICpwZGV2LCBjb25zdCBzdHJ1Y3QgcGNpX2RldmljZV9pZCAqZW50KQo+ICAKPiAgdm9pZCBp
OTE1X2RyaXZlcl9yZW1vdmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gIHsKPiAt
CXN0cnVjdCBwY2lfZGV2ICpwZGV2ID0gaTkxNS0+ZHJtLnBkZXY7Cj4gLQo+ICAJZGlzYWJsZV9y
cG1fd2FrZXJlZl9hc3NlcnRzKCZpOTE1LT5ydW50aW1lX3BtKTsKPiAgCj4gIAlpOTE1X2RyaXZl
cl91bnJlZ2lzdGVyKGk5MTUpOwo+IEBAIC0xNjA4LDE0ICsxNjIwLDcgQEAgdm9pZCBpOTE1X2Ry
aXZlcl9yZW1vdmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gIAo+ICAJaW50ZWxf
Z3Z0X2RyaXZlcl9yZW1vdmUoaTkxNSk7Cj4gIAo+IC0JaW50ZWxfbW9kZXNldF9kcml2ZXJfcmVt
b3ZlKCZpOTE1LT5kcm0pOwo+IC0KPiAtCWludGVsX2Jpb3NfZHJpdmVyX3JlbW92ZShpOTE1KTsK
PiAtCj4gLQl2Z2Ffc3dpdGNoZXJvb191bnJlZ2lzdGVyX2NsaWVudChwZGV2KTsKPiAtCXZnYV9j
bGllbnRfcmVnaXN0ZXIocGRldiwgTlVMTCwgTlVMTCwgTlVMTCk7Cj4gLQo+IC0JaW50ZWxfY3Ny
X3Vjb2RlX2ZpbmkoaTkxNSk7Cj4gKwlpOTE1X2RyaXZlcl9tb2Rlc2V0X3JlbW92ZShpOTE1KTsK
PiAgCj4gIAkvKiBGcmVlIGVycm9yIHN0YXRlIGFmdGVyIGludGVycnVwdHMgYXJlIGZ1bGx5IGRp
c2FibGVkLiAqLwo+ICAJY2FuY2VsX2RlbGF5ZWRfd29ya19zeW5jKCZpOTE1LT5ndC5oYW5nY2hl
Y2sud29yayk7CgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENl
bnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
