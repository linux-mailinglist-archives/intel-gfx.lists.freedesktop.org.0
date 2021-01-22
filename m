Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 393C43010E5
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Jan 2021 00:22:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB8AA6EA6E;
	Fri, 22 Jan 2021 23:22:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A6A16EA77
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 23:22:32 +0000 (UTC)
IronPort-SDR: gtvPhvD4b42szkvVjA8DNNHqs9+9HQt12HVMiLiu15lWhL+o1ZOCZph7iBOsTvD2kNZKufF6Y1
 mRfEdeE1kmDQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9872"; a="264344457"
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="264344457"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 15:22:31 -0800
IronPort-SDR: kO7vzy3eDzF3E7Igwyjw/0pI9veneeCq9vHDCeV142xJda2oRViyqxpdvTSDFPqBk4lfCg4uOx
 vXXnzVQaDQpA==
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="392466028"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 22 Jan 2021 15:22:29 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Jan 2021 15:26:42 -0800
Message-Id: <20210122232647.22688-13-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20210122232647.22688-1-manasi.d.navare@intel.com>
References: <20210122232647.22688-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI v5 13/18] drm/i915/display/vrr: Set IGNORE_MSA_PAR
 state in DP Sink
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

SWYgVlJSIGlzIGVuYWJsZWQsIHRoZSBzaW5rIHNob3VsZCBpZ25vcmUgTVNBIHBhcmFtZXRlcnMK
YW5kIHJlZ2VuZXJhdGUgaW5jb21pbmcgdmlkZW8gc3RyZWFtIHdpdGhvdXQgZGVwZW5kaW5nCm9u
IHRoZXNlIHBhcmFtZXRlcnMuIEhlbmNlIHNldCB0aGUgTVNBX1RJTUlOR19QQVJfSUdOT1JFX0VO
CmJpdCBpZiBWUlIgaXMgZW5hYmxlZC4KUmVzZXQgdGhpcyBiaXQgb24gVlJSIGRpc2FibGUuCgp2
MjoKKiBBQ3R1YWxseSBzZXQgdGhlIGRwY2QgbXNhIGlnbm9yZSBiaXQgKFZpbGxlKQoKQ2M6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBKYW5pIE5p
a3VsYSA8amFuaS5uaWt1bGFAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYW5hc2kg
TmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICAgfCAxOSArKysrKysrKysrKysrKysrKysr
CiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMgfCAgMiArLQog
MiBmaWxlcyBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggNzA0ODU2YjQ0NWIxLi5mYmQ4
NTdmMmJkYjIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAt
MzU1Myw2ICszNTUzLDIyIEBAIGk5MTVfcmVnX3QgZHBfdHBfc3RhdHVzX3JlZyhzdHJ1Y3QgaW50
ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJcmV0dXJuIERQX1RQX1NUQVRVUyhlbmNvZGVyLT5wb3J0
KTsKIH0KIAorc3RhdGljIHZvaWQgaW50ZWxfZHBfc2lua19zZXRfbXNhX3RpbWluZ19wYXJfaWdu
b3JlX3N0YXRlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCisJCQkJCQkJICBjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKKwkJCQkJCQkgIGJvb2wgZW5hYmxlKQor
eworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7
CisKKwlpZiAoIWNydGNfc3RhdGUtPnZyci5lbmFibGUpCisJCXJldHVybjsKKworCWlmIChkcm1f
ZHBfZHBjZF93cml0ZWIoJmludGVsX2RwLT5hdXgsIERQX0RPV05TUFJFQURfQ1RSTCwKKwkJCSAg
ICAgICBlbmFibGUgPyBEUF9NU0FfVElNSU5HX1BBUl9JR05PUkVfRU4gOiAwKSA8PSAwKQorCQlk
cm1fZGJnX2ttcygmaTkxNS0+ZHJtLAorCQkJICAgICJGYWlsZWQgdG8gc2V0IE1TQV9USU1JTkdf
UEFSX0lHTk9SRSAlcyBpbiB0aGUgc2lua1xuIiwKKwkJCSAgICBlbmFibGUgPyAiZW5hYmxlIiA6
ICJkaXNhYmxlIik7Cit9CisKIHN0YXRpYyB2b2lkIGludGVsX2RwX3Npbmtfc2V0X2ZlY19yZWFk
eShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCQkJCQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIHsKQEAgLTQzNTEsNiArNDM2Nyw5IEBAIHN0YXRpYyB2b2lk
IGludGVsX2Rpc2FibGVfZGRpX2RwKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAog
CS8qIERpc2FibGUgdGhlIGRlY29tcHJlc3Npb24gaW4gRFAgU2luayAqLwogCWludGVsX2RwX3Np
bmtfc2V0X2RlY29tcHJlc3Npb25fc3RhdGUoaW50ZWxfZHAsIG9sZF9jcnRjX3N0YXRlLAogCQkJ
CQkgICAgICBmYWxzZSk7CisJLyogRGlzYWJsZSBJZ25vcmVfTVNBIGJpdCBpbiBEUCBTaW5rICov
CisJaW50ZWxfZHBfc2lua19zZXRfbXNhX3RpbWluZ19wYXJfaWdub3JlX3N0YXRlKGludGVsX2Rw
LCBvbGRfY3J0Y19zdGF0ZSwKKwkJCQkJCSAgICAgIGZhbHNlKTsKIH0KIAogc3RhdGljIHZvaWQg
aW50ZWxfZGlzYWJsZV9kZGlfaGRtaShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190
cmFpbmluZy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3Ry
YWluaW5nLmMKaW5kZXggMmQzMzk2YmZjMjA3Li5kNWVjOGYzNWU3MDggMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5jCkBA
IC00MzQsNyArNDM0LDcgQEAgaW50ZWxfZHBfcHJlcGFyZV9saW5rX3RyYWluKHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHAsCiAJCWRybV9kcF9kcGNkX3dyaXRlKCZpbnRlbF9kcC0+YXV4LCBEUF9M
SU5LX1JBVEVfU0VULAogCQkJCSAgJnJhdGVfc2VsZWN0LCAxKTsKIAotCWxpbmtfY29uZmlnWzBd
ID0gMDsKKwlsaW5rX2NvbmZpZ1swXSA9IGNydGNfc3RhdGUtPnZyci5lbmFibGUgPyBEUF9NU0Ff
VElNSU5HX1BBUl9JR05PUkVfRU4gOiAwOwogCWxpbmtfY29uZmlnWzFdID0gRFBfU0VUX0FOU0lf
OEIxMEI7CiAJZHJtX2RwX2RwY2Rfd3JpdGUoJmludGVsX2RwLT5hdXgsIERQX0RPV05TUFJFQURf
Q1RSTCwgbGlua19jb25maWcsIDIpOwogCi0tIAoyLjE5LjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
