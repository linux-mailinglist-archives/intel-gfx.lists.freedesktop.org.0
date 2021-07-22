Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 298143D1D85
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 07:39:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F07526EDF8;
	Thu, 22 Jul 2021 05:39:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1D536E9E5
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jul 2021 05:39:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="208456077"
X-IronPort-AV: E=Sophos;i="5.84,260,1620716400"; d="scan'208";a="208456077"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 22:39:25 -0700
X-IronPort-AV: E=Sophos;i="5.84,260,1620716400"; d="scan'208";a="470415091"
Received: from jkandi-mobl.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.209.170.189])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 22:39:25 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Jul 2021 22:43:36 -0700
Message-Id: <20210722054338.12891-8-jose.souza@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210722054338.12891-1-jose.souza@intel.com>
References: <20210722054338.12891-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/10] drm/i915/bios: Nuke panel_type
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWxsIHRoZSB1c2VycyB3YXMgY29udmVydGVkIG5vdyB3ZSBjYW4gZHJvcCBpdC4KCkNjOiBKYW5p
IE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9iaW9zLmMgfCAzNiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICAgfCAgMSAtCiAyIGZpbGVzIGNoYW5n
ZWQsIDM3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYmlvcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9i
aW9zLmMKaW5kZXggYTFhMWNjMGM0NjJmZC4uZDFhZDZkNjI1ZTUyMSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKQEAgLTIxMSw0MSArMjExLDYgQEAgZ2V0X2x2
ZHNfZnBfdGltaW5nKGNvbnN0IHN0cnVjdCBiZGJfaGVhZGVyICpiZGIsCiAJcmV0dXJuIChjb25z
dCBzdHJ1Y3QgbHZkc19mcF90aW1pbmcgKikoKGNvbnN0IHU4ICopYmRiICsgb2ZzKTsKIH0KIAot
LyoKLSAqIFBhcnNlIGFuZCBzZXQgdmJ0LnBhbmVsX3R5cGUsIGl0IHdpbGwgYmUgdXNlZCBieSB0
aGUgVkJUIGJsb2NrcyB0aGF0IGFyZQotICogbm90IGJlaW5nIGNhbGxlZCBmcm9tIHBhcnNlX2lu
dGVncmF0ZWRfcGFuZWwoKSB5ZXQuCi0gKi8KLXN0YXRpYyB2b2lkIHBhcnNlX3BhbmVsX3R5cGUo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCi0JCQkgICAgIGNvbnN0IHN0cnVjdCBiZGJf
aGVhZGVyICpiZGIpCi17Ci0JY29uc3Qgc3RydWN0IGJkYl9sdmRzX29wdGlvbnMgKmx2ZHNfb3B0
aW9uczsKLQlpbnQgcmV0LCBwYW5lbF90eXBlOwotCi0JbHZkc19vcHRpb25zID0gZmluZF9zZWN0
aW9uKGJkYiwgQkRCX0xWRFNfT1BUSU9OUyk7Ci0JaWYgKCFsdmRzX29wdGlvbnMpCi0JCXJldHVy
bjsKLQotCXJldCA9IGludGVsX29wcmVnaW9uX2dldF9wYW5lbF90eXBlKGk5MTUpOwotCWlmIChy
ZXQgPj0gMCkgewotCQlkcm1fV0FSTl9PTigmaTkxNS0+ZHJtLCByZXQgPiAweGYpOwotCQlwYW5l
bF90eXBlID0gcmV0OwotCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiUGFuZWwgdHlwZTogJWQg
KE9wUmVnaW9uKVxuIiwKLQkJCSAgICBwYW5lbF90eXBlKTsKLQl9IGVsc2UgewotCQlpZiAobHZk
c19vcHRpb25zLT5wYW5lbF90eXBlID4gMHhmKSB7Ci0JCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJt
LAotCQkJCSAgICAiSW52YWxpZCBWQlQgcGFuZWwgdHlwZSAweCV4XG4iLAotCQkJCSAgICBsdmRz
X29wdGlvbnMtPnBhbmVsX3R5cGUpOwotCQkJcmV0dXJuOwotCQl9Ci0JCXBhbmVsX3R5cGUgPSBs
dmRzX29wdGlvbnMtPnBhbmVsX3R5cGU7Ci0JCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sICJQYW5l
bCB0eXBlOiAlZCAoVkJUKVxuIiwKLQkJCSAgICBwYW5lbF90eXBlKTsKLQl9Ci0KLQlpOTE1LT52
YnQucGFuZWxfdHlwZSA9IHBhbmVsX3R5cGU7Ci19Ci0KIC8qIFBhcnNlIGdlbmVyYWwgcGFuZWwg
b3B0aW9ucyAqLwogc3RhdGljIHZvaWQKIHBhcnNlX3BhbmVsX29wdGlvbnMoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUsCkBAIC0yNDg5LDcgKzI0NTQsNiBAQCB2b2lkIGludGVsX2Jpb3Nf
aW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAkvKiBHcmFiIHVzZWZ1bCBnZW5l
cmFsIGRlZmluaXRpb25zICovCiAJcGFyc2VfZ2VuZXJhbF9mZWF0dXJlcyhpOTE1LCBiZGIpOwog
CXBhcnNlX2dlbmVyYWxfZGVmaW5pdGlvbnMoaTkxNSwgYmRiKTsKLQlwYXJzZV9wYW5lbF90eXBl
KGk5MTUsIGJkYik7CiAJcGFyc2Vfc2R2b19wYW5lbF9kYXRhKGk5MTUsIGJkYik7CiAJcGFyc2Vf
ZHJpdmVyX2ZlYXR1cmVzKGk5MTUsIGJkYik7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCmluZGV4
IGFkY2FjYjhjYjI0OGEuLjhhMDlmOWVkODgxYjkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApA
QCAtNzI5LDcgKzcyOSw2IEBAIHN0cnVjdCBpbnRlbF92YnRfZGF0YSB7CiAJdW5zaWduZWQgaW50
IGludF9sdmRzX3N1cHBvcnQ6MTsKIAl1bnNpZ25lZCBpbnQgZGlzcGxheV9jbG9ja19tb2RlOjE7
CiAJdW5zaWduZWQgaW50IGZkaV9yeF9wb2xhcml0eV9pbnZlcnRlZDoxOwotCXVuc2lnbmVkIGlu
dCBwYW5lbF90eXBlOjQ7CiAJaW50IGx2ZHNfc3NjX2ZyZXE7CiAJdW5zaWduZWQgaW50IGJpb3Nf
bHZkc192YWw7IC8qIGluaXRpYWwgW1BDSF9dTFZEUyByZWcgdmFsIGluIFZCSU9TICovCiAJZW51
bSBkcm1fcGFuZWxfb3JpZW50YXRpb24gb3JpZW50YXRpb247Ci0tIAoyLjMyLjAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
