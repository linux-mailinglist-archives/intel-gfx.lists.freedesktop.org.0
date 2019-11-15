Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE017FE14D
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 16:34:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DA296E856;
	Fri, 15 Nov 2019 15:34:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C06126E856
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 15:34:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 07:34:01 -0800
X-IronPort-AV: E=Sophos;i="5.68,308,1569308400"; d="scan'208";a="199231807"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 07:33:58 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Nov 2019 17:33:37 +0200
Message-Id: <37347742f1250aaac8725827538cffa939587434.1573831924.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1573831924.git.jani.nikula@intel.com>
References: <cover.1573831924.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 01/10] drm/i915/bios: pass devdata to
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
cGxheS9pbnRlbF9iaW9zLmMKaW5kZXggNmQ3YjFhODNjYjA3Li4yY2RhOTYzMjRhNzMgMTAwNjQ0
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
