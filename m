Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43543F3444
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 17:09:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 800D06E4B7;
	Thu,  7 Nov 2019 16:09:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F25426E4B7
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2019 16:09:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 08:09:34 -0800
X-IronPort-AV: E=Sophos;i="5.68,278,1569308400"; d="scan'208";a="192862161"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 08:09:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Nov 2019 18:08:54 +0200
Message-Id: <20191107160854.17991-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191107160854.17991-1-jani.nikula@intel.com>
References: <20191107160854.17991-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/bios: pass devdata to
 parse_ddi_port
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWxsb3cgYWNjZXNzaW5nIHRoZSBwYXJlbnQgc3RydWN0dXJlIGxhdGVyIG9uLiBEcm9wIGNvbnN0
IGZvciBhbGxvd2luZwpmdXR1cmUgbW9kaWZpY2F0aW9uIGFzIHdlbGwuCgpTaWduZWQtb2ZmLWJ5
OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIHwgNyArKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwg
NCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9iaW9zLmMKaW5kZXggMzdiOTQ0Mzk3Yjc1Li4yZjNkNTE0MTc5NjQgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCkBAIC0xNDI1LDkgKzE0MjUs
MTAgQEAgc3RhdGljIGVudW0gcG9ydCBkdm9fcG9ydF90b19wb3J0KHU4IGR2b19wb3J0KQogfQog
CiBzdGF0aWMgdm9pZCBwYXJzZV9kZGlfcG9ydChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYsCi0JCQkgICBjb25zdCBzdHJ1Y3QgY2hpbGRfZGV2aWNlX2NvbmZpZyAqY2hpbGQsCisJ
CQkgICBzdHJ1Y3QgZGlzcGxheV9kZXZpY2VfZGF0YSAqZGV2ZGF0YSwKIAkJCSAgIHU4IGJkYl92
ZXJzaW9uKQogeworCWNvbnN0IHN0cnVjdCBjaGlsZF9kZXZpY2VfY29uZmlnICpjaGlsZCA9ICZk
ZXZkYXRhLT5jaGlsZDsKIAlzdHJ1Y3QgZGRpX3ZidF9wb3J0X2luZm8gKmluZm87CiAJYm9vbCBp
c19kdmksIGlzX2hkbWksIGlzX2RwLCBpc19lZHAsIGlzX2NydDsKIAllbnVtIHBvcnQgcG9ydDsK
QEAgLTE1NzksNyArMTU4MCw3IEBAIHN0YXRpYyB2b2lkIHBhcnNlX2RkaV9wb3J0KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAogc3RhdGljIHZvaWQgcGFyc2VfZGRpX3BvcnRz
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgdTggYmRiX3ZlcnNpb24pCiB7Ci0J
Y29uc3Qgc3RydWN0IGRpc3BsYXlfZGV2aWNlX2RhdGEgKmRldmRhdGE7CisJc3RydWN0IGRpc3Bs
YXlfZGV2aWNlX2RhdGEgKmRldmRhdGE7CiAKIAlpZiAoIUhBU19EREkoZGV2X3ByaXYpICYmICFJ
U19DSEVSUllWSUVXKGRldl9wcml2KSkKIAkJcmV0dXJuOwpAQCAtMTU4OCw3ICsxNTg5LDcgQEAg
c3RhdGljIHZvaWQgcGFyc2VfZGRpX3BvcnRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwgdTggYmRiX3ZlcnNpb24pCiAJCXJldHVybjsKIAogCWxpc3RfZm9yX2VhY2hfZW50cnko
ZGV2ZGF0YSwgJmRldl9wcml2LT52YnQuZGlzcGxheV9kZXZpY2VzLCBub2RlKQotCQlwYXJzZV9k
ZGlfcG9ydChkZXZfcHJpdiwgJmRldmRhdGEtPmNoaWxkLCBiZGJfdmVyc2lvbik7CisJCXBhcnNl
X2RkaV9wb3J0KGRldl9wcml2LCBkZXZkYXRhLCBiZGJfdmVyc2lvbik7CiB9CiAKIHN0YXRpYyB2
b2lkCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
