Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E52FD341F5D
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Mar 2021 15:30:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E2916EA28;
	Fri, 19 Mar 2021 14:30:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D1AE6EA28
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Mar 2021 14:30:27 +0000 (UTC)
IronPort-SDR: FHVY0znNuVri6KetZWy2oapuvrPY7hlAvk3akQcQWXaUZlzIJXo9OfscLcmxr2e1vSzTkNxy3T
 zlDdJH/uvrWQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9928"; a="169205812"
X-IronPort-AV: E=Sophos;i="5.81,262,1610438400"; d="scan'208";a="169205812"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 07:30:27 -0700
IronPort-SDR: veC7Sq/5NOm8UhnfXXvETQxyfrA/ImB6yt5ym/GPGslxveiCqWVBDHVP+U1QNXuVQfDXfVIMXe
 LVgGh5vPaCVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,262,1610438400"; d="scan'208";a="406811416"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 19 Mar 2021 07:30:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 19 Mar 2021 16:30:24 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Mar 2021 16:30:20 +0200
Message-Id: <20210319143021.21823-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210319143021.21823-1-ville.syrjala@linux.intel.com>
References: <20210319143021.21823-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Give C0DRB3/C1DRB3 a _BW suffix
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZXNlIGFyZSB0aGUgOTY1Zy9nNDUvZzMzIHNwZWNpZmljIERSQiByZWdpc3RlcnMuIEdpdmUgdGhl
bQphIHN1aXRhYmxlIHN1ZmZpeCBzbyB3ZSBjYW4gYWRkIHRoZWlyIGNvdW50ZXJwYXJ0cyBmb3Ig
b3RoZXIKcGxhdGZvcm1zLgoKQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dndHRfZmVuY2lu
Zy5jIHwgNCArKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyAgICAgICAg
ICB8IDQgKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICAg
fCA0ICsrLS0KIDMgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dndHRfZmVuY2lu
Zy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ2d0dF9mZW5jaW5nLmMKaW5kZXgg
ZTg4OWE3NmM4NWM4Li5hZmIzOWE4OGU1N2QgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2dndHRfZmVuY2luZy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2dndHRfZmVuY2luZy5jCkBAIC02NDIsOCArNjQyLDggQEAgc3RhdGljIHZvaWQgZGV0
ZWN0X2JpdF82X3N3aXp6bGUoc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCkKIAkJICogYmFua3Mgb2Yg
bWVtb3J5IGFyZSBwYWlyZWQgYW5kIHVuc3dpenpsZWQgb24gdGhlCiAJCSAqIHVuZXZlbiBwb3J0
aW9uLCBzbyBsZWF2ZSB0aGF0IGFzIHVua25vd24uCiAJCSAqLwotCQlpZiAoaW50ZWxfdW5jb3Jl
X3JlYWQxNih1bmNvcmUsIEMwRFJCMykgPT0KLQkJICAgIGludGVsX3VuY29yZV9yZWFkMTYodW5j
b3JlLCBDMURSQjMpKSB7CisJCWlmIChpbnRlbF91bmNvcmVfcmVhZDE2KHVuY29yZSwgQzBEUkIz
X0JXKSA9PQorCQkgICAgaW50ZWxfdW5jb3JlX3JlYWQxNih1bmNvcmUsIEMxRFJCM19CVykpIHsK
IAkJCXN3aXp6bGVfeCA9IEk5MTVfQklUXzZfU1dJWlpMRV85XzEwOwogCQkJc3dpenpsZV95ID0g
STkxNV9CSVRfNl9TV0laWkxFXzk7CiAJCX0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMK
aW5kZXggNTExMzNiOGZhYmI0Li43NzkyYTU5NmRkYTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZGVidWdmcy5jCkBAIC02MTgsOSArNjE4LDkgQEAgc3RhdGljIGludCBpOTE1X3N3aXp6bGVfaW5m
byhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKmRhdGEpCiAJCXNlcV9wcmludGYobSwgIkREQzIg
PSAweCUwOHhcbiIsCiAJCQkgICBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIERDQzIpKTsKIAkJ
c2VxX3ByaW50ZihtLCAiQzBEUkIzID0gMHglMDR4XG4iLAotCQkJICAgaW50ZWxfdW5jb3JlX3Jl
YWQxNih1bmNvcmUsIEMwRFJCMykpOworCQkJICAgaW50ZWxfdW5jb3JlX3JlYWQxNih1bmNvcmUs
IEMwRFJCM19CVykpOwogCQlzZXFfcHJpbnRmKG0sICJDMURSQjMgPSAweCUwNHhcbiIsCi0JCQkg
ICBpbnRlbF91bmNvcmVfcmVhZDE2KHVuY29yZSwgQzFEUkIzKSk7CisJCQkgICBpbnRlbF91bmNv
cmVfcmVhZDE2KHVuY29yZSwgQzFEUkIzX0JXKSk7CiAJfSBlbHNlIGlmIChJTlRFTF9HRU4oZGV2
X3ByaXYpID49IDYpIHsKIAkJc2VxX3ByaW50ZihtLCAiTUFEX0RJTU1fQzAgPSAweCUwOHhcbiIs
CiAJCQkgICBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIE1BRF9ESU1NX0MwKSk7CmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaAppbmRleCBjYmY3YTYwYWZlNTQuLjkyM2E0ZDZjMTdkOSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oCkBAIC0zNzgxLDggKzM3ODEsOCBAQCBzdGF0aWMgaW5saW5lIGJvb2wg
aTkxNV9tbWlvX3JlZ192YWxpZChpOTE1X3JlZ190IHJlZykKICNkZWZpbmUgQ1NIUkREUjNDVExf
RERSMyAgICAgICAoMSA8PCAyKQogCiAvKiA5NjUgTUNIIHJlZ2lzdGVyIGNvbnRyb2xsaW5nIERS
QU0gY2hhbm5lbCBjb25maWd1cmF0aW9uICovCi0jZGVmaW5lIEMwRFJCMwkJCV9NTUlPKE1DSEJB
Ul9NSVJST1JfQkFTRSArIDB4MjA2KQotI2RlZmluZSBDMURSQjMJCQlfTU1JTyhNQ0hCQVJfTUlS
Uk9SX0JBU0UgKyAweDYwNikKKyNkZWZpbmUgQzBEUkIzX0JXCQlfTU1JTyhNQ0hCQVJfTUlSUk9S
X0JBU0UgKyAweDIwNikKKyNkZWZpbmUgQzFEUkIzX0JXCQlfTU1JTyhNQ0hCQVJfTUlSUk9SX0JB
U0UgKyAweDYwNikKIAogLyogc25iIE1DSCByZWdpc3RlcnMgZm9yIHJlYWRpbmcgdGhlIERSQU0g
Y2hhbm5lbCBjb25maWd1cmF0aW9uICovCiAjZGVmaW5lIE1BRF9ESU1NX0MwCQkJX01NSU8oTUNI
QkFSX01JUlJPUl9CQVNFX1NOQiArIDB4NTAwNCkKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
