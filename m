Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A3F1E6BD5
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 22:03:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06B046E5C8;
	Thu, 28 May 2020 20:03:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 835186E5C1
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2020 20:02:59 +0000 (UTC)
IronPort-SDR: urHNCPWjMiGc9N5dgUe6UJ3suAna4dViZsxwQZ7zBsSi72WEvSAC5B2/3r37qvm/2YqldRPaBz
 W3Iw8pcPQYnQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 13:02:59 -0700
IronPort-SDR: clRgLjCAdjDBa+GFRjTIgRYD7dLqqBXQHFzJtMmvsTdTcmGv5a/mhUPiWt1GTEYLHBUY763nXk
 m5buNmbGB0nA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="469258887"
Received: from jmcenteg-mobl.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.255.69.53])
 by fmsmga006.fm.intel.com with ESMTP; 28 May 2020 13:02:46 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 May 2020 13:03:54 -0700
Message-Id: <20200528200356.36756-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200528200356.36756-1-jose.souza@intel.com>
References: <20200528200356.36756-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/bios: Parse HOBL parameter
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

SE9CTCBtZWFucyBob3VycyBvZiBiYXR0ZXJ5IGxpZmUsIGl0IGlzIGEgcG93ZXItc2F2aW5nIGZl
YXR1cmUKd2VyZSBzdXBwb3J0ZWQgbW90aGVyYm9hcmRzIGNhbiB1c2UgYSBzcGVjaWFsIHZvbHRh
Z2Ugc3dpbmcgdGFibGUKdGhhdCB1c2VzIGxlc3MgcG93ZXIuCgpTbyBoZXJlIHBhcnNpbmcgdGhl
IFZCVCB0byBjaGVjayBpZiB0aGlzIGZlYXR1cmUgaXMgc3VwcG9ydGVkLgpXaGlsZSBhdCBpdCBh
bHJlYWR5IGFkZGVkIHRoZSBWUlIgcGFyYW1ldGVyIHRvby4KCkJTcGVjOiAyMDE1MApTaWduZWQt
b2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyAgICAgfCAzICsrKwog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oIHwgMiArKwogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICAgICAgIHwgMSArCiAzIGZpbGVz
IGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9iaW9zLmMKaW5kZXggODM5MTI0NjQ3MjAyLi5iM2M0NTNhYTc2MjMgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCkBAIC03MjIsNiArNzIyLDkgQEAgcGFy
c2VfcG93ZXJfY29uc2VydmF0aW9uX2ZlYXR1cmVzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwKIAkgKi8KIAlpZiAoIShwb3dlci0+ZHJycyAmIEJJVChwYW5lbF90eXBlKSkpCiAJ
CWRldl9wcml2LT52YnQuZHJyc190eXBlID0gRFJSU19OT1RfU1VQUE9SVEVEOworCisJaWYgKGJk
Yi0+dmVyc2lvbiA+PSAyMzIpCisJCWRldl9wcml2LT52YnQuZWRwLmhvYmwgPSBwb3dlci0+aG9i
bCAmIEJJVChwYW5lbF90eXBlKTsKIH0KIAogc3RhdGljIHZvaWQKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaAppbmRleCBhZWY3ZmU5MzJkMWEuLjY1ZjU1
MmY1N2UwNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92
YnRfZGVmcy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2Rl
ZnMuaApAQCAtODIwLDYgKzgyMCw4IEBAIHN0cnVjdCBiZGJfbGZwX3Bvd2VyIHsKIAl1MTYgYWRi
OwogCXUxNiBsYWNlX2VuYWJsZWRfc3RhdHVzOwogCXN0cnVjdCBhZ3Jlc3NpdmVuZXNzX3Byb2Zp
bGVfZW50cnkgYWdncmVzc2l2ZW5lc1sxNl07CisJdTE2IGhvYmw7IC8qIDIzMisgKi8KKwl1MTYg
dnJyOyAvKiAyMzMrICovCiB9IF9fcGFja2VkOwogCiAvKgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgK
aW5kZXggOThmMmM0NDhjZDkyLi4xZTA2MGRlM2VkYzQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
aApAQCAtNjkwLDYgKzY5MCw3IEBAIHN0cnVjdCBpbnRlbF92YnRfZGF0YSB7CiAJCWJvb2wgaW5p
dGlhbGl6ZWQ7CiAJCWludCBicHA7CiAJCXN0cnVjdCBlZHBfcG93ZXJfc2VxIHBwczsKKwkJYm9v
bCBob2JsOwogCX0gZWRwOwogCiAJc3RydWN0IHsKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
