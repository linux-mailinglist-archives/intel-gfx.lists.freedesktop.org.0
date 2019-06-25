Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8B7557A0
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 21:15:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 141EC6E201;
	Tue, 25 Jun 2019 19:15:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E8AE6E201
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 19:15:54 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 12:15:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,416,1557212400"; d="scan'208";a="152399852"
Received: from orsosgc001.ra.intel.com (HELO orsosgc001.amr.corp.intel.com)
 ([10.23.184.150])
 by orsmga007.jf.intel.com with ESMTP; 25 Jun 2019 12:15:53 -0700
Date: Tue, 25 Jun 2019 12:15:53 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <20190625191553.GB6319@orsosgc001.amr.corp.intel.com>
References: <20190610081914.25428-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610081914.25428-1-lionel.g.landwerlin@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: fix ICL perf register offsets
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBKdW4gMTAsIDIwMTkgYXQgMTE6MTk6MTRBTSArMDMwMCwgTGlvbmVsIExhbmR3ZXJs
aW4gd3JvdGU6Cj5XZSBnb3QgdGhlIHdyb25nIG9mZnNldHMgKGNvdWxkIHRoZXkgaGF2ZSBjaGFu
Z2VkPykuIE5ldyB2YWx1ZXMgd2VyZQo+Y29tcHV0ZWQgb2ZmIGFuIGVycm9yIHN0YXRlIGJ5IGxv
b2tpbmcgdXAgdGhlIHJlZ2lzdGVyIG9mZnNldCBpbiB0aGUKPmNvbnRleHQgaW1hZ2UgYXMgd3Jp
dHRlbiBieSB0aGUgSFcuCj4KPlNpZ25lZC1vZmYtYnk6IExpb25lbCBMYW5kd2VybGluIDxsaW9u
ZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KPkZpeGVzOiAxZGU0MDFjMDhmYTgwNSAoImRybS9p
OTE1L3BlcmY6IGVuYWJsZSBwZXJmIHN1cHBvcnQgb24gSUNMIikKPi0tLQo+IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcGVyZi5jIHwgMTAgKysrKysrKy0tLQo+IDEgZmlsZSBjaGFuZ2VkLCA3
IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4KPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BlcmYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5j
Cj5pbmRleCA0YTc2NzA4N2RlMjcuLjZjODUxOTFmYzZjOSAxMDA2NDQKPi0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BlcmYuYwo+QEAgLTM2MTIsOSArMzYxMiwxMyBAQCB2b2lkIGk5MTVfcGVyZl9pbml0KHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAJCQlkZXZfcHJpdi0+cGVyZi5vYS5vcHMu
ZW5hYmxlX21ldHJpY19zZXQgPSBnZW44X2VuYWJsZV9tZXRyaWNfc2V0Owo+IAkJCWRldl9wcml2
LT5wZXJmLm9hLm9wcy5kaXNhYmxlX21ldHJpY19zZXQgPSBnZW4xMF9kaXNhYmxlX21ldHJpY19z
ZXQ7Cj4KPi0JCQlkZXZfcHJpdi0+cGVyZi5vYS5jdHhfb2FjdHhjdHJsX29mZnNldCA9IDB4MTI4
Owo+LQkJCWRldl9wcml2LT5wZXJmLm9hLmN0eF9mbGV4ZXUwX29mZnNldCA9IDB4M2RlOwo+LQo+
KwkJCWlmIChJU19HRU4oZGV2X3ByaXYsIDEwKSkgewo+KwkJCQlkZXZfcHJpdi0+cGVyZi5vYS5j
dHhfb2FjdHhjdHJsX29mZnNldCA9IDB4MTI4Owo+KwkJCQlkZXZfcHJpdi0+cGVyZi5vYS5jdHhf
ZmxleGV1MF9vZmZzZXQgPSAweDNkZTsKPisJCQl9IGVsc2Ugewo+KwkJCQlkZXZfcHJpdi0+cGVy
Zi5vYS5jdHhfb2FjdHhjdHJsX29mZnNldCA9IDB4MTI0Owo+KwkJCQlkZXZfcHJpdi0+cGVyZi5v
YS5jdHhfZmxleGV1MF9vZmZzZXQgPSAweDc4ZTsKPisJCQl9Cj4gCQkJZGV2X3ByaXYtPnBlcmYu
b2EuZ2VuOF92YWxpZF9jdHhfYml0ID0gKDE8PDE2KTsKPiAJCX0KPiAJfQo+LS0gCj4yLjIxLjAu
MzkyLmdmOGY2Nzg3MTU5ZQo+CgpSZXZpZXdlZC1ieTogVW1lc2ggTmVybGlnZSBSYW1hcHBhIDx1
bWVzaC5uZXJsaWdlLnJhbWFwcGFAaW50ZWwuY29tPgoKPl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj5JbnRlbC1nZnggbWFpbGluZyBsaXN0Cj5JbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj5odHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
