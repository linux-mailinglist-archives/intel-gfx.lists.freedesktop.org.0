Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D05F53113C7
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 22:46:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05F596F4E3;
	Fri,  5 Feb 2021 21:46:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 767E36F4E3
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 21:46:44 +0000 (UTC)
IronPort-SDR: keoGO4xMgAaoxkC72tWJhj0gjSDmKFxgj/JdTsr1s0P3LhOdqwerFCxyh4jnqJ46NTg7gMJ13G
 2WTBXW2gV6yQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9886"; a="161246654"
X-IronPort-AV: E=Sophos;i="5.81,156,1610438400"; d="scan'208";a="161246654"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 13:46:44 -0800
IronPort-SDR: GiabJa7XOAtlW0vq2plDuqGqhcYD7G9hF2tr5Lt7dbUEdbSGh8vQi2Jj+LE8E4iIkz/TMFUqfw
 1Qh2HsqUgE1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,156,1610438400"; d="scan'208";a="373697295"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 05 Feb 2021 13:46:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Feb 2021 23:46:40 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Feb 2021 23:46:21 +0200
Message-Id: <20210205214634.19341-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210205214634.19341-1-ville.syrjala@linux.intel.com>
References: <20210205214634.19341-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 02/15] drm/i915: Introduce .{enable,
 disable}_clock() encoder vfuncs
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBjdXJyZW50IGNvZGUgZGVhbGluZyB3aXRoIHRoZSBjbG9jayByb3V0aW5nIGZvciBEREkgZW5j
b2RlcnMKaXMgYSBtYWludGVuYW5jZSBuaWdodG1hcmUuIExldCdzIHN0YXJ0IGNsZWFuaW5nIGl0
IHVwIGJ5IGFsbG93aW5nCnRoZSBlbmNvZGVyIHRvIHByb3ZpZGUgdmZ1bmNzIGZvciBlbmFibGln
bi9kaXNhYmxpbmcgdGhlIGNsb2NrLgoKV2UgbGVhdmUgdGhlbSBpbml0aWFsbHkgdW5pbXBsZW1l
bnRlZCwgZmFsbGluZyBiYWNrIHRvIHRoZSBvbGQKaWYtZWxzZSBhcHByb2FjaC4KCnYyOiBDb252
ZXJ0IHRoZSBGREkgZW5hYmxlIHNlcXVlbmNlCgpSZXZpZXdlZC1ieTogTHVjYXMgRGUgTWFyY2hp
IDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+ICN2MgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgICAgICB8IDI5ICsrKysrKysrKysrKysrKy0tLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmggICAgICB8ICA0ICstLQog
Li4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oICAgIHwgIDYgKysrKwog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mZGkuYyAgICAgIHwgIDIgKy0KIDQg
ZmlsZXMgY2hhbmdlZCwgMzIgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwppbmRleCBkYmVmMjI4NTU1YTAuLmViZmJk
NjhiOGU4MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC0x
OTI3LDYgKzE5MjcsMjMgQEAgc3RhdGljIHZvaWQgaW50ZWxfZGRpX2Nsa19kaXNhYmxlKHN0cnVj
dCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQogCX0KIH0KIAordm9pZCBpbnRlbF9kZGlfZW5hYmxl
X2Nsb2NrKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAorCQkJICAgIGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQoreworCWlmIChlbmNvZGVyLT5lbmFibGVf
Y2xvY2spCisJCWVuY29kZXItPmVuYWJsZV9jbG9jayhlbmNvZGVyLCBjcnRjX3N0YXRlKTsKKwll
bHNlCisJCWludGVsX2RkaV9jbGtfc2VsZWN0KGVuY29kZXIsIGNydGNfc3RhdGUpOworfQorCitz
dGF0aWMgdm9pZCBpbnRlbF9kZGlfZGlzYWJsZV9jbG9jayhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAq
ZW5jb2RlcikKK3sKKwlpZiAoZW5jb2Rlci0+ZGlzYWJsZV9jbG9jaykKKwkJZW5jb2Rlci0+ZGlz
YWJsZV9jbG9jayhlbmNvZGVyKTsKKwllbHNlCisJCWludGVsX2RkaV9jbGtfZGlzYWJsZShlbmNv
ZGVyKTsKK30KKwogc3RhdGljIHZvaWQKIGljbF9wcm9ncmFtX21nX2RwX21vZGUoc3RydWN0IGlu
dGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQsCiAJCSAgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKQEAgLTIxNzEsNyArMjE4OCw3IEBAIHN0YXRpYyB2b2lk
IHRnbF9kZGlfcHJlX2VuYWJsZV9kcChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwK
IAkgKiBoc3dfY3J0Y19lbmFibGUoKS0+aW50ZWxfZW5hYmxlX3NoYXJlZF9kcGxsKCkuICBXZSBu
ZWVkIG9ubHkKIAkgKiBjb25maWd1cmUgdGhlIFBMTCB0byBwb3J0IG1hcHBpbmcgaGVyZS4KIAkg
Ki8KLQlpbnRlbF9kZGlfY2xrX3NlbGVjdChlbmNvZGVyLCBjcnRjX3N0YXRlKTsKKwlpbnRlbF9k
ZGlfZW5hYmxlX2Nsb2NrKGVuY29kZXIsIGNydGNfc3RhdGUpOwogCiAJLyogNS4gSWYgSU8gcG93
ZXIgaXMgY29udHJvbGxlZCB0aHJvdWdoIFBXUl9XRUxMX0NUTCwgRW5hYmxlIElPIFBvd2VyICov
CiAJaWYgKCFpbnRlbF9waHlfaXNfdGMoZGV2X3ByaXYsIHBoeSkgfHwKQEAgLTIyOTIsNyArMjMw
OSw3IEBAIHN0YXRpYyB2b2lkIGhzd19kZGlfcHJlX2VuYWJsZV9kcChzdHJ1Y3QgaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSwKIAogCWludGVsX3Bwc19vbihpbnRlbF9kcCk7CiAKLQlpbnRlbF9k
ZGlfY2xrX3NlbGVjdChlbmNvZGVyLCBjcnRjX3N0YXRlKTsKKwlpbnRlbF9kZGlfZW5hYmxlX2Ns
b2NrKGVuY29kZXIsIGNydGNfc3RhdGUpOwogCiAJaWYgKCFpbnRlbF9waHlfaXNfdGMoZGV2X3By
aXYsIHBoeSkgfHwKIAkgICAgZGlnX3BvcnQtPnRjX21vZGUgIT0gVENfUE9SVF9UQlRfQUxUKSB7
CkBAIC0yMzY3LDcgKzIzODQsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfcHJlX2VuYWJsZV9o
ZG1pKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOwogCiAJaW50ZWxf
ZHBfZHVhbF9tb2RlX3NldF90bWRzX291dHB1dChpbnRlbF9oZG1pLCB0cnVlKTsKLQlpbnRlbF9k
ZGlfY2xrX3NlbGVjdChlbmNvZGVyLCBjcnRjX3N0YXRlKTsKKwlpbnRlbF9kZGlfZW5hYmxlX2Ns
b2NrKGVuY29kZXIsIGNydGNfc3RhdGUpOwogCiAJZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0s
IGRpZ19wb3J0LT5kZGlfaW9fd2FrZXJlZik7CiAJZGlnX3BvcnQtPmRkaV9pb193YWtlcmVmID0g
aW50ZWxfZGlzcGxheV9wb3dlcl9nZXQoZGV2X3ByaXYsCkBAIC0yNTE5LDcgKzI1MzYsNyBAQCBz
dGF0aWMgdm9pZCBpbnRlbF9kZGlfcG9zdF9kaXNhYmxlX2RwKHN0cnVjdCBpbnRlbF9hdG9taWNf
c3RhdGUgKnN0YXRlLAogCQkJCQlkaWdfcG9ydC0+ZGRpX2lvX3Bvd2VyX2RvbWFpbiwKIAkJCQkJ
ZmV0Y2hfYW5kX3plcm8oJmRpZ19wb3J0LT5kZGlfaW9fd2FrZXJlZikpOwogCi0JaW50ZWxfZGRp
X2Nsa19kaXNhYmxlKGVuY29kZXIpOworCWludGVsX2RkaV9kaXNhYmxlX2Nsb2NrKGVuY29kZXIp
OwogfQogCiBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfcG9zdF9kaXNhYmxlX2hkbWkoc3RydWN0IGlu
dGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCkBAIC0yNTQyLDcgKzI1NTksNyBAQCBzdGF0aWMgdm9p
ZCBpbnRlbF9kZGlfcG9zdF9kaXNhYmxlX2hkbWkoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAq
c3RhdGUsCiAJCQkJZGlnX3BvcnQtPmRkaV9pb19wb3dlcl9kb21haW4sCiAJCQkJZmV0Y2hfYW5k
X3plcm8oJmRpZ19wb3J0LT5kZGlfaW9fd2FrZXJlZikpOwogCi0JaW50ZWxfZGRpX2Nsa19kaXNh
YmxlKGVuY29kZXIpOworCWludGVsX2RkaV9kaXNhYmxlX2Nsb2NrKGVuY29kZXIpOwogCiAJaW50
ZWxfZHBfZHVhbF9tb2RlX3NldF90bWRzX291dHB1dChpbnRlbF9oZG1pLCBmYWxzZSk7CiB9CkBA
IC0yNjQyLDcgKzI2NTksNyBAQCB2b2lkIGludGVsX2RkaV9mZGlfcG9zdF9kaXNhYmxlKHN0cnVj
dCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBG
RElfUlhfQ1RMKFBJUEVfQSksIHZhbCk7CiAKIAlpbnRlbF9kaXNhYmxlX2RkaV9idWYoZW5jb2Rl
ciwgb2xkX2NydGNfc3RhdGUpOwotCWludGVsX2RkaV9jbGtfZGlzYWJsZShlbmNvZGVyKTsKKwlp
bnRlbF9kZGlfZGlzYWJsZV9jbG9jayhlbmNvZGVyKTsKIAogCXZhbCA9IGludGVsX2RlX3JlYWQo
ZGV2X3ByaXYsIEZESV9SWF9NSVNDKFBJUEVfQSkpOwogCXZhbCAmPSB+KEZESV9SWF9QV1JETl9M
QU5FMV9NQVNLIHwgRkRJX1JYX1BXUkROX0xBTkUwX01BU0spOwpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmgKaW5kZXggZTYxOGUxYzgwMjUyLi4xYWEwZWVkYmYzNDIgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmgKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuaApAQCAtMjgsOCArMjgsOCBA
QCB2b2lkIGludGVsX2RkaV9mZGlfcG9zdF9kaXNhYmxlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3Rh
dGUgKnN0YXRlLAogCQkJCXN0cnVjdCBpbnRlbF9lbmNvZGVyICppbnRlbF9lbmNvZGVyLAogCQkJ
CWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSwKIAkJCQljb25z
dCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqb2xkX2Nvbm5fc3RhdGUpOwotdm9pZCBpbnRl
bF9kZGlfY2xrX3NlbGVjdChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKLQkJCSAgY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOwordm9pZCBpbnRlbF9kZGlf
ZW5hYmxlX2Nsb2NrKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAorCQkJICAgIGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKIHZvaWQgaW50ZWxfcHJlcGFy
ZV9kcF9kZGlfYnVmZmVycyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJCQkgIGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKIHZvaWQgaW50ZWxfd2Fp
dF9kZGlfYnVmX2lkbGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LApkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAppbmRl
eCAzMDdmZjRiNzcxZjQuLjNmMDBjMzI4ZDE4OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKQEAgLTIxOSw2ICsyMTksMTIgQEAg
c3RydWN0IGludGVsX2VuY29kZXIgewogCSAqIGVuY29kZXJzIGhhdmUgYmVlbiBkaXNhYmxlZCBh
bmQgc3VzcGVuZGVkLgogCSAqLwogCXZvaWQgKCpzaHV0ZG93bikoc3RydWN0IGludGVsX2VuY29k
ZXIgKmVuY29kZXIpOworCS8qCisJICogRW5hYmxlL2Rpc2FibGUgdGhlIGNsb2NrIHRvIHRoZSBw
b3J0LgorCSAqLworCXZvaWQgKCplbmFibGVfY2xvY2spKHN0cnVjdCBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyLAorCQkJICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSk7CisJdm9pZCAoKmRpc2FibGVfY2xvY2spKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
KTsKIAllbnVtIGhwZF9waW4gaHBkX3BpbjsKIAllbnVtIGludGVsX2Rpc3BsYXlfcG93ZXJfZG9t
YWluIHBvd2VyX2RvbWFpbjsKIAkvKiBmb3IgY29tbXVuaWNhdGlvbiB3aXRoIGF1ZGlvIGNvbXBv
bmVudDsgcHJvdGVjdGVkIGJ5IGF2X211dGV4ICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9mZGkuYwppbmRleCBkYmQ2YmUzMzQyYzAuLjYwYjI5MTEwMDk5YSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mZGkuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZkaS5jCkBAIC01OTYsNyArNTk2LDcgQEAgdm9p
ZCBoc3dfZmRpX2xpbmtfdHJhaW4oc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCiAKIAkv
KiBDb25maWd1cmUgUG9ydCBDbG9jayBTZWxlY3QgKi8KIAlkcm1fV0FSTl9PTigmZGV2X3ByaXYt
PmRybSwgY3J0Y19zdGF0ZS0+c2hhcmVkX2RwbGwtPmluZm8tPmlkICE9IERQTExfSURfU1BMTCk7
Ci0JaW50ZWxfZGRpX2Nsa19zZWxlY3QoZW5jb2RlciwgY3J0Y19zdGF0ZSk7CisJaW50ZWxfZGRp
X2VuYWJsZV9jbG9jayhlbmNvZGVyLCBjcnRjX3N0YXRlKTsKIAogCS8qIFN0YXJ0IHRoZSB0cmFp
bmluZyBpdGVyYXRpbmcgdGhyb3VnaCBhdmFpbGFibGUgdm9sdGFnZXMgYW5kIGVtcGhhc2lzLAog
CSAqIHRlc3RpbmcgZWFjaCB2YWx1ZSB0d2ljZS4gKi8KLS0gCjIuMjYuMgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
