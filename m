Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93BD5CB0F5
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 23:18:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1E486EA79;
	Thu,  3 Oct 2019 21:18:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F55B6EA79
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 21:18:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Oct 2019 14:18:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,253,1566889200"; d="scan'208";a="182509154"
Received: from dk-thinkpad-x260.jf.intel.com ([10.165.21.139])
 by orsmga007.jf.intel.com with ESMTP; 03 Oct 2019 14:18:34 -0700
Message-ID: <af67dd9c0cf31c312748a29656ec5b7153ca59ce.camel@intel.com>
From: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 03 Oct 2019 14:18:29 -0700
In-Reply-To: <20190923102935.5860-8-dhinakaran.pandiyan@intel.com>
References: <20190923102935.5860-1-dhinakaran.pandiyan@intel.com>
 <20190923102935.5860-8-dhinakaran.pandiyan@intel.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
Subject: Re: [Intel-gfx] [RFC v3 7/9] drm/i915: Skip rotated offset
 adjustment for unsupported modifiers
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
Reply-To: dhinakaran.pandiyan@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDE5LTA5LTIzIGF0IDAzOjI5IC0wNzAwLCBEaGluYWthcmFuIFBhbmRpeWFuIHdy
b3RlOgo+IER1cmluZyBmcmFtZWJ1ZmZlciBjcmVhdGlvbiwgd2UgcHJlLWNvbXB1dGUgb2Zmc2V0
cyBmb3IgOTAvMjcwIHBsYW5lCj4gcm90YXRpb24uIEhvd2V2ZXIsIG9ubHkgWSBhbmQgWWYgbW9k
aWZpZXJzIHN1cHBvcnQgOTAvMjcwIHJvdGF0aW9uLiBTbywKPiBza2lwIHRoZSBjYWxjdWxhdGlv
bnMgZm9yIG90aGVyIG1vZGlmaWVycy4KPiAKPiBDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJv
cGVyQGludGVsLmNvbT4KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBEaGluYWthcmFuIFBhbmRpeWFuIDxkaGluYWth
cmFuLnBhbmRpeWFuQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMgfCA0ICsrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKPiBpbmRleCA3NDQ3MDAxYzFmODUuLjZmMGYzODE1NzY5NyAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4g
QEAgLTI3ODQsNyArMjc4NCw5IEBAIGludGVsX2ZpbGxfZmJfaW5mbyhzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsCj4gIAkJCQkJCSAgICAgIHRpbGVfc2l6ZSk7Cj4gIAkJb2Zmc2V0
IC89IHRpbGVfc2l6ZTsKPiAgCj4gLQkJaWYgKCFpc19zdXJmYWNlX2xpbmVhcihmYi0+bW9kaWZp
ZXIsIGkpKSB7Cj4gKwkJLyogWSBvciBZZiBtb2RpZmllcnMgcmVxdWlyZWQgZm9yIDkwLzI3MCBy
b3RhdGlvbiAqLwo+ICsJCWlmIChmYi0+bW9kaWZpZXIgPT0gSTkxNV9GT1JNQVRfTU9EX1lfVElM
RUQgfHwKPiArCQkgICAgZmItPm1vZGlmaWVyID09IEk5MTVfRk9STUFUX01PRF9ZZl9USUxFRCkg
ewpUaGlzIGlzIHdyb25nLCBhcyBDSSByZXN1bHRzIGNsZWFybHkgc2hvdyBpZ3RAa21zX2FkZGZi
X2Jhc2ljQGJvLXRvby1zbWFsbC1kdWUtdG8tdGlsaW5nIGZhaWxzLgpQbGVhc2UgaWdub3JlIHRo
aXMgcGF0Y2guCgotREsKCj4gIAkJCXVuc2lnbmVkIGludCB0aWxlX3dpZHRoLCB0aWxlX2hlaWdo
dDsKPiAgCQkJdW5zaWduZWQgaW50IHBpdGNoX3RpbGVzOwo+ICAJCQlzdHJ1Y3QgZHJtX3JlY3Qg
cjsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
