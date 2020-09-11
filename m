Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6212664D9
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Sep 2020 18:47:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E8A06EAAE;
	Fri, 11 Sep 2020 16:47:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A3F26EAAE
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Sep 2020 16:47:01 +0000 (UTC)
IronPort-SDR: nkz7yVxjuABIsWSUaBPA+uXomVQLmXl1zn4jXNpN37mC2ngi7xLWzl2ieBg0hMiNML875eN/b0
 JAIF0u42l1Kw==
X-IronPort-AV: E=McAfee;i="6000,8403,9741"; a="138313648"
X-IronPort-AV: E=Sophos;i="5.76,416,1592895600"; d="scan'208";a="138313648"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 09:46:59 -0700
IronPort-SDR: IsTE0q/H16z3SOgIZ8sG4UYTfytuS43zzWd2tO7Uc8OqKz7KXelXVI50fPy73crdaHradKdUwq
 FtKhFaqf2qAg==
X-IronPort-AV: E=Sophos;i="5.76,416,1592895600"; d="scan'208";a="481384261"
Received: from shaunbis-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.26.108])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 09:46:58 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200908140210.31048-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200908140210.31048-1-ville.syrjala@linux.intel.com>
 <20200908140210.31048-2-ville.syrjala@linux.intel.com>
Date: Fri, 11 Sep 2020 19:47:00 +0300
Message-ID: <87o8mcz2ez.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Nuke the magic FBC_CONTROL
 save/restore
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAwOCBTZXAgMjAyMCwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBUaGUgRkJDX0NPTlRST0wgc2F2ZSByZXN0b3JlIGlzIHRoZXJl
IGp1c3QgdG8gcHJlc2VydmUgdGhlCj4gY29tcHJlc3Npb24gaW50ZXJ2YWwgc2V0dGluZy4gU2lu
Y2UgY29tbWl0IGE2OGNlMjFiYTBjNAo+ICgiZHJtL2k5MTUvZmJjOiBTdG9yZSB0aGUgZmJjMSBj
b21wcmVzc2lvbiBpbnRlcnZhbCBpbiB0aGUgcGFyYW1zIikKPiB3ZSd2ZSBiZWVuIGV4cGxpY2l0
bHkgc2V0dGluZyB0aGUgaW50ZXJ2YWwgdG8gYSBzcGVjaWZpYwo+IHZhbHVlLCBzbyB0aGUgc2Fj
ZS9yZXN0b3JlIGlzIG5vdyBlbnRpcmVseSBwb2ludGxlc3MuCj4KPiBTaWduZWQtb2ZmLWJ5OiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgoKU2VlbXMgbGVn
aXQsCgpSZXZpZXdlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KCj4g
LS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgIHwgMSAtCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfc3VzcGVuZC5jIHwgOCAtLS0tLS0tLQo+ICAyIGZpbGVzIGNo
YW5nZWQsIDkgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiBpbmRleCAy
ZTQ0MzhlOGUzZWIuLjM5MTdiYjFhNjE1NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+
IEBAIC01MzcsNyArNTM3LDYgQEAgc3RydWN0IGludGVsX2dtYnVzIHsKPiAgCj4gIHN0cnVjdCBp
OTE1X3N1c3BlbmRfc2F2ZWRfcmVnaXN0ZXJzIHsKPiAgCXUzMiBzYXZlRFNQQVJCOwo+IC0JdTMy
IHNhdmVGQkNfQ09OVFJPTDsKPiAgCXUzMiBzYXZlQ0FDSEVfTU9ERV8wOwo+ICAJdTMyIHNhdmVN
SV9BUkJfU1RBVEU7Cj4gIAl1MzIgc2F2ZVNXRjBbMTZdOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3N1c3BlbmQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
c3VzcGVuZC5jCj4gaW5kZXggZWQyYmUzNDg5ZjhlLi41OTJjMjMwZTY5MTQgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zdXNwZW5kLmMKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3N1c3BlbmQuYwo+IEBAIC0zNywxMCArMzcsNiBAQCBzdGF0aWMgdm9p
ZCBpOTE1X3NhdmVfZGlzcGxheShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4g
IAkvKiBEaXNwbGF5IGFyYml0cmF0aW9uIGNvbnRyb2wgKi8KPiAgCWlmIChJTlRFTF9HRU4oZGV2
X3ByaXYpIDw9IDQpCj4gIAkJZGV2X3ByaXYtPnJlZ2ZpbGUuc2F2ZURTUEFSQiA9IEk5MTVfUkVB
RChEU1BBUkIpOwo+IC0KPiAtCS8qIHNhdmUgRkJDIGludGVydmFsICovCj4gLQlpZiAoSEFTX0ZC
QyhkZXZfcHJpdikgJiYgSU5URUxfR0VOKGRldl9wcml2KSA8PSA0ICYmICFJU19HNFgoZGV2X3By
aXYpKQo+IC0JCWRldl9wcml2LT5yZWdmaWxlLnNhdmVGQkNfQ09OVFJPTCA9IEk5MTVfUkVBRChG
QkNfQ09OVFJPTCk7Cj4gIH0KPiAgCj4gIHN0YXRpYyB2b2lkIGk5MTVfcmVzdG9yZV9kaXNwbGF5
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiBAQCAtNTIsMTAgKzQ4LDYgQEAg
c3RhdGljIHZvaWQgaTkxNV9yZXN0b3JlX2Rpc3BsYXkoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2KQo+ICAJLyogb25seSByZXN0b3JlIEZCQyBpbmZvIG9uIHRoZSBwbGF0Zm9ybSB0
aGF0IHN1cHBvcnRzIEZCQyovCj4gIAlpbnRlbF9mYmNfZ2xvYmFsX2Rpc2FibGUoZGV2X3ByaXYp
Owo+ICAKPiAtCS8qIHJlc3RvcmUgRkJDIGludGVydmFsICovCj4gLQlpZiAoSEFTX0ZCQyhkZXZf
cHJpdikgJiYgSU5URUxfR0VOKGRldl9wcml2KSA8PSA0ICYmICFJU19HNFgoZGV2X3ByaXYpKQo+
IC0JCUk5MTVfV1JJVEUoRkJDX0NPTlRST0wsIGRldl9wcml2LT5yZWdmaWxlLnNhdmVGQkNfQ09O
VFJPTCk7Cj4gLQo+ICAJaW50ZWxfdmdhX3JlZGlzYWJsZShkZXZfcHJpdik7Cj4gIH0KCi0tIApK
YW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
