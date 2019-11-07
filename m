Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D34F3AAF
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 22:46:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B023E6F7D3;
	Thu,  7 Nov 2019 21:46:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 005F86F7D3
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2019 21:46:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 13:46:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,279,1569308400"; d="scan'208";a="353919869"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by orsmga004.jf.intel.com with ESMTP; 07 Nov 2019 13:46:04 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Nov 2019 13:45:57 -0800
Message-Id: <20191107214559.77087-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/display: Fix
 TRANS_DDI_MST_TRANSPORT_SELECT definition
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VFJBTlNfRERJX01TVF9UUkFOU1BPUlRfU0VMRUNUIGlzIDIgYml0cyB3aWRlIG5vdCAzLCBpdCB3
YXMgdGFraW5nCm9uZSBiaXQgZnJvbSBFRFAvRFNJIElucHV0IFNlbGVjdC4KCkZpeGVzOiBiMzU0
NWUwODY4NzcgKCJkcm0vaTkxNS90Z2w6IGFkZCBzdXBwb3J0IHRvIG9uZSBEUC1NU1Qgc3RyZWFt
IikKQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpTaWduZWQt
b2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIHwgMiArLQogMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5k
ZXggYTYwN2VhNTIwODI5Li43MDQ1OWEzZDkzZTMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApA
QCAtOTY2NSw3ICs5NjY1LDcgQEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7CiAjZGVmaW5lICBUUkFO
U19ERElfRURQX0lOUFVUX0FfT05PRkYJKDQgPDwgMTIpCiAjZGVmaW5lICBUUkFOU19ERElfRURQ
X0lOUFVUX0JfT05PRkYJKDUgPDwgMTIpCiAjZGVmaW5lICBUUkFOU19ERElfRURQX0lOUFVUX0Nf
T05PRkYJKDYgPDwgMTIpCi0jZGVmaW5lICBUUkFOU19ERElfTVNUX1RSQU5TUE9SVF9TRUxFQ1Rf
TUFTSwlSRUdfR0VOTUFTSygxMiwgMTApCisjZGVmaW5lICBUUkFOU19ERElfTVNUX1RSQU5TUE9S
VF9TRUxFQ1RfTUFTSwlSRUdfR0VOTUFTSygxMSwgMTApCiAjZGVmaW5lICBUUkFOU19ERElfTVNU
X1RSQU5TUE9SVF9TRUxFQ1QodHJhbnMpCVwKIAlSRUdfRklFTERfUFJFUChUUkFOU19ERElfTVNU
X1RSQU5TUE9SVF9TRUxFQ1RfTUFTSywgdHJhbnMpCiAjZGVmaW5lICBUUkFOU19ERElfSERDUF9T
SUdOQUxMSU5HCSgxIDw8IDkpCi0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
