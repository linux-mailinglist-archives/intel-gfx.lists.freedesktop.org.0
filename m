Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9035A109F62
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 14:43:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E08A66E0C8;
	Tue, 26 Nov 2019 13:43:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1A9B6E0C8
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 13:43:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 05:43:04 -0800
X-IronPort-AV: E=Sophos;i="5.69,245,1571727600"; d="scan'208";a="198825143"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 05:43:02 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Nov 2019 15:42:36 +0200
Message-Id: <51bf703509717ca9613901f1ee2cf2b82311f74a.1574775655.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1574775655.git.jani.nikula@intel.com>
References: <cover.1574775655.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v3 01/13] drm/i915/bios: pass devdata to
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
IGZvciBhbGxvd2luZwpmdXR1cmUgbW9kaWZpY2F0aW9uIGFzIHdlbGwuCgpDYzogVmFuZGl0YSBL
dWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3Vs
YSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYmlvcy5jIHwgNyArKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25z
KCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYmlvcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9i
aW9zLmMKaW5kZXggZjZhOWE1Y2NiNTU2Li4xMjc5MzNmMTI0NTQgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCkBAIC0xNTI1LDkgKzE1MjUsMTAgQEAgc3RhdGlj
IGVudW0gcG9ydCBkdm9fcG9ydF90b19wb3J0KHU4IGR2b19wb3J0KQogfQogCiBzdGF0aWMgdm9p
ZCBwYXJzZV9kZGlfcG9ydChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCi0JCQkg
ICBjb25zdCBzdHJ1Y3QgY2hpbGRfZGV2aWNlX2NvbmZpZyAqY2hpbGQsCisJCQkgICBzdHJ1Y3Qg
ZGlzcGxheV9kZXZpY2VfZGF0YSAqZGV2ZGF0YSwKIAkJCSAgIHU4IGJkYl92ZXJzaW9uKQogewor
CWNvbnN0IHN0cnVjdCBjaGlsZF9kZXZpY2VfY29uZmlnICpjaGlsZCA9ICZkZXZkYXRhLT5jaGls
ZDsKIAlzdHJ1Y3QgZGRpX3ZidF9wb3J0X2luZm8gKmluZm87CiAJYm9vbCBpc19kdmksIGlzX2hk
bWksIGlzX2RwLCBpc19lZHAsIGlzX2NydDsKIAllbnVtIHBvcnQgcG9ydDsKQEAgLTE2NzksNyAr
MTY4MCw3IEBAIHN0YXRpYyB2b2lkIHBhcnNlX2RkaV9wb3J0KHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwKIAogc3RhdGljIHZvaWQgcGFyc2VfZGRpX3BvcnRzKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwgdTggYmRiX3ZlcnNpb24pCiB7Ci0JY29uc3Qgc3RydWN0
IGRpc3BsYXlfZGV2aWNlX2RhdGEgKmRldmRhdGE7CisJc3RydWN0IGRpc3BsYXlfZGV2aWNlX2Rh
dGEgKmRldmRhdGE7CiAKIAlpZiAoIUhBU19EREkoZGV2X3ByaXYpICYmICFJU19DSEVSUllWSUVX
KGRldl9wcml2KSkKIAkJcmV0dXJuOwpAQCAtMTY4OCw3ICsxNjg5LDcgQEAgc3RhdGljIHZvaWQg
cGFyc2VfZGRpX3BvcnRzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgdTggYmRi
X3ZlcnNpb24pCiAJCXJldHVybjsKIAogCWxpc3RfZm9yX2VhY2hfZW50cnkoZGV2ZGF0YSwgJmRl
dl9wcml2LT52YnQuZGlzcGxheV9kZXZpY2VzLCBub2RlKQotCQlwYXJzZV9kZGlfcG9ydChkZXZf
cHJpdiwgJmRldmRhdGEtPmNoaWxkLCBiZGJfdmVyc2lvbik7CisJCXBhcnNlX2RkaV9wb3J0KGRl
dl9wcml2LCBkZXZkYXRhLCBiZGJfdmVyc2lvbik7CiB9CiAKIHN0YXRpYyB2b2lkCi0tIAoyLjIw
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
