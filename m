Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCFC93C677A
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 02:34:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24CFA89F01;
	Tue, 13 Jul 2021 00:34:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2CBF89F01
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 00:34:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10043"; a="273907686"
X-IronPort-AV: E=Sophos;i="5.84,235,1620716400"; d="scan'208";a="273907686"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2021 17:34:47 -0700
X-IronPort-AV: E=Sophos;i="5.84,235,1620716400"; d="scan'208";a="451584097"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.59])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2021 17:34:47 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Jul 2021 17:38:49 -0700
Message-Id: <20210713003854.143197-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI 1/6] drm/i915/display: Settle on "adl-x" in
 WA comments
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TW9zdCBvZiB0aGUgcGxhY2VzIGFyZSB1c2luZyB0aGlzIGZvcm1hdCBzbyBsZXRzIGNvbnNvbGlk
YXRlIGl0LgoKdjI6Ci0gc3BsaXQgcGF0Y2ggaW4gdHdvOiBkaXNwbGF5IGFuZCBub24tZGlzcGxh
eSBiZWNhdXNlIG9mIGNvbmZsaWN0cwpiZXR3ZWVuIGRybS1pbnRlbC1ndC1uZXh0IHggZHJtLWlu
dGVsLW5leHQKClJldmlld2VkLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwu
Y29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5j
ICAgICAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jdXJz
b3IuYyAgICAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMgICAgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYyAgICAgICAgICAgfCAxMCArKysrKy0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYyB8ICAyICstCiA1IGZpbGVzIGNoYW5nZWQsIDkg
aW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NkY2xrLmMKaW5kZXggZGYyZDhjZTRhMTJmNi4uNzEwNjdhNjIyNjRkZSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwpAQCAtMjg3OCw3ICsy
ODc4LDcgQEAgdm9pZCBpbnRlbF9pbml0X2NkY2xrX2hvb2tzKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikKIAkJZGV2X3ByaXYtPmRpc3BsYXkuYndfY2FsY19taW5fY2RjbGsgPSBz
a2xfYndfY2FsY19taW5fY2RjbGs7CiAJCWRldl9wcml2LT5kaXNwbGF5Lm1vZGVzZXRfY2FsY19j
ZGNsayA9IGJ4dF9tb2Rlc2V0X2NhbGNfY2RjbGs7CiAJCWRldl9wcml2LT5kaXNwbGF5LmNhbGNf
dm9sdGFnZV9sZXZlbCA9IHRnbF9jYWxjX3ZvbHRhZ2VfbGV2ZWw7Ci0JCS8qIFdhXzIyMDExMzIw
MzE2OmFkbHBbYTBdICovCisJCS8qIFdhXzIyMDExMzIwMzE2OmFkbC1wW2EwXSAqLwogCQlpZiAo
SVNfQURMUF9ESVNQTEFZX1NURVAoZGV2X3ByaXYsIFNURVBfQTAsIFNURVBfQTApKQogCQkJZGV2
X3ByaXYtPmNkY2xrLnRhYmxlID0gYWRscF9hX3N0ZXBfY2RjbGtfdGFibGU7CiAJCWVsc2UKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3Vyc29yLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N1cnNvci5jCmluZGV4IGJiNjFlNzM2
ZGU5MTEuLmY2MWEyNWZiODdlOTAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY3Vyc29yLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jdXJzb3IuYwpAQCAtMzgzLDcgKzM4Myw3IEBAIHN0YXRpYyB1MzIgaTl4eF9jdXJzb3Jf
Y3RsKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAogCWlmIChwbGFu
ZV9zdGF0ZS0+aHcucm90YXRpb24gJiBEUk1fTU9ERV9ST1RBVEVfMTgwKQogCQljbnRsIHw9IE1D
VVJTT1JfUk9UQVRFXzE4MDsKIAotCS8qIFdhXzIyMDEyMzU4NTY1OmFkbHAgKi8KKwkvKiBXYV8y
MjAxMjM1ODU2NTphZGwtcCAqLwogCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPT0gMTMpCiAJ
CWNudGwgfD0gTUNVUlNPUl9BUkJfU0xPVFMoMSk7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggMDI2YzI4YzYxMmYwNy4uNjVkZGI2Y2ExNmU2
NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAg
LTk3NSw3ICs5NzUsNyBAQCB2b2lkIGludGVsX2VuYWJsZV9waXBlKGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSkKIAkJLyogRklYTUU6IGFzc2VydCBDUFUgcG9y
dCBjb25kaXRpb25zIGZvciBTTkIrICovCiAJfQogCi0JLyogV2FfMjIwMTIzNTg1NjU6YWRscCAq
LworCS8qIFdhXzIyMDEyMzU4NTY1OmFkbC1wICovCiAJaWYgKERJU1BMQVlfVkVSKGRldl9wcml2
KSA9PSAxMykKIAkJaW50ZWxfZGVfcm13KGRldl9wcml2LCBQSVBFX0FSQl9DVEwocGlwZSksCiAJ
CQkgICAgIDAsIFBJUEVfQVJCX1VTRV9QUk9HX1NMT1RTKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jCmluZGV4IDk2NDM2MjRmZTE2MGQuLjRkZmUxZGNlYjg2MzUgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwpAQCAtNTQ1LDcgKzU0NSw3
IEBAIHN0YXRpYyB2b2lkIGhzd19hY3RpdmF0ZV9wc3IyKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxf
ZHApCiAJdmFsIHw9IEVEUF9QU1IyX0ZSQU1FX0JFRk9SRV9TVShpbnRlbF9kcC0+cHNyLnNpbmtf
c3luY19sYXRlbmN5ICsgMSk7CiAJdmFsIHw9IGludGVsX3BzcjJfZ2V0X3RwX3RpbWUoaW50ZWxf
ZHApOwogCi0JLyogV2FfMjIwMTIyNzgyNzU6YWRscCAqLworCS8qIFdhXzIyMDEyMjc4Mjc1OmFk
bC1wICovCiAJaWYgKElTX0FETFBfRElTUExBWV9TVEVQKGRldl9wcml2LCBTVEVQX0EwLCBTVEVQ
X0QxKSkgewogCQlzdGF0aWMgY29uc3QgdTggbWFwW10gPSB7CiAJCQkyLCAvKiA1IGxpbmVzICov
CkBAIC03MzMsNyArNzMzLDcgQEAgdGdsX2RjM2NvX2V4aXRsaW5lX2NvbXB1dGVfY29uZmlnKHN0
cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAJaWYgKCFkYzNjb19pc19waXBlX3BvcnRfY29tcGF0
aWJsZShpbnRlbF9kcCwgY3J0Y19zdGF0ZSkpCiAJCXJldHVybjsKIAotCS8qIFdhXzE2MDExMzAz
OTE4OmFkbHAgKi8KKwkvKiBXYV8xNjAxMTMwMzkxODphZGwtcCAqLwogCWlmIChJU19BRExQX0RJ
U1BMQVlfU1RFUChkZXZfcHJpdiwgU1RFUF9BMCwgU1RFUF9BMCkpCiAJCXJldHVybjsKIApAQCAt
OTY1LDcgKzk2NSw3IEBAIHN0YXRpYyBib29sIGludGVsX3BzcjJfY29uZmlnX3ZhbGlkKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAJCXJldHVybiBmYWxzZTsKIAl9CiAKLQkvKiBXYV8xNjAx
MTMwMzkxODphZGxwICovCisJLyogV2FfMTYwMTEzMDM5MTg6YWRsLXAgKi8KIAlpZiAoY3J0Y19z
dGF0ZS0+dnJyLmVuYWJsZSAmJgogCSAgICBJU19BRExQX0RJU1BMQVlfU1RFUChkZXZfcHJpdiwg
U1RFUF9BMCwgU1RFUF9BMCkpIHsKIAkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sCkBAIC0x
MTYwLDcgKzExNjAsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX3NvdXJjZShzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwKQogCQkJICAgICBpbnRlbF9kcC0+cHNyLnBzcjJfc2VsX2Zl
dGNoX2VuYWJsZWQgPwogCQkJICAgICBJR05PUkVfUFNSMl9IV19UUkFDS0lORyA6IDApOwogCi0J
LyogV2FfMTYwMTExNjgzNzM6YWRscCAqLworCS8qIFdhXzE2MDExMTY4MzczOmFkbC1wICovCiAJ
aWYgKElTX0FETFBfRElTUExBWV9TVEVQKGRldl9wcml2LCBTVEVQX0EwLCBTVEVQX0EwKSAmJgog
CSAgICBpbnRlbF9kcC0+cHNyLnBzcjJfZW5hYmxlZCkKIAkJaW50ZWxfZGVfcm13KGRldl9wcml2
LApAQCAtMTM0Niw3ICsxMzQ2LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2Rpc2FibGVfbG9j
a2VkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiAJCWludGVsX2RlX3JtdyhkZXZfcHJpdiwg
Q0hJQ0tFTl9QQVIxXzEsCiAJCQkgICAgIERJU19SQU1fQllQQVNTX1BTUjJfTUFOX1RSQUNLLCAw
KTsKIAotCS8qIFdhXzE2MDExMTY4MzczOmFkbHAgKi8KKwkvKiBXYV8xNjAxMTE2ODM3MzphZGwt
cCAqLwogCWlmIChJU19BRExQX0RJU1BMQVlfU1RFUChkZXZfcHJpdiwgU1RFUF9BMCwgU1RFUF9B
MCkgJiYKIAkgICAgaW50ZWxfZHAtPnBzci5wc3IyX2VuYWJsZWQpCiAJCWludGVsX2RlX3Jtdyhk
ZXZfcHJpdiwKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3Vu
aXZlcnNhbF9wbGFuZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVy
c2FsX3BsYW5lLmMKaW5kZXggYzcyNjNmNGZmMTFkNy4uNjI4YjY3OGQ5YTcxYyAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMKQEAg
LTkyNiw3ICs5MjYsNyBAQCBzdGF0aWMgdTMyIHNrbF9wbGFuZV9jdGwoY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJZWxzZSBpZiAoa2V5LT5mbGFncyAmIEk5MTVf
U0VUX0NPTE9SS0VZX1NPVVJDRSkKIAkJcGxhbmVfY3RsIHw9IFBMQU5FX0NUTF9LRVlfRU5BQkxF
X1NPVVJDRTsKIAotCS8qIFdhXzIyMDEyMzU4NTY1OmFkbHAgKi8KKwkvKiBXYV8yMjAxMjM1ODU2
NTphZGwtcCAqLwogCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPT0gMTMpCiAJCXBsYW5lX2N0
bCB8PSBhZGxwX3BsYW5lX2N0bF9hcmJfc2xvdHMocGxhbmVfc3RhdGUpOwogCi0tIAoyLjMyLjAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
