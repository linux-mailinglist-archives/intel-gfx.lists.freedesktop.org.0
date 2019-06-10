Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0FA3BEE7
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 23:48:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFACB8914C;
	Mon, 10 Jun 2019 21:48:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA06A8914C
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 21:48:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jun 2019 14:48:48 -0700
X-ExtLoop1: 1
Received: from ldmartin-desk.jf.intel.com ([10.24.10.152])
 by orsmga007.jf.intel.com with ESMTP; 10 Jun 2019 14:48:48 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jun 2019 14:48:47 -0700
Message-Id: <20190610214847.9865-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190610214449.9447-1-lucas.demarchi@intel.com>
References: <20190610214449.9447-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/3] drm/i915/skl: use ranges for voltage
 level lookup
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

TGlrZSB3YXMgZG9uZSBmb3IgSUNMLCBsZXQncyBjb252ZXJ0IHRoZSB2b2x0YWdlIGxldmVsIGxv
b2t1cCB0byB1c2UKZnJlcXVlbmN5IHJhbmdlcyByYXRoZXIgdGhhbiBpbmRpdmlkdWFsIGZyZXF1
ZW5jaWVzLiBGb3IgZGVjaWRpbmcgdGhlCnZvbHRhZ2UsIHRoZSBpbmRpdmlkdWFsIHZhbHVlIGRv
ZXNuJ3QgcmVhbGx5IG1hdHRlci4KClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVj
YXMuZGVtYXJjaGlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nk
Y2xrLmMgfCAyMCArKysrKysrLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0
aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfY2RjbGsuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NkY2xrLmMKaW5k
ZXggODBlMjI1MDdjZDM0Li44OTkzYWIyODM1NjIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2NkY2xrLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY2Rj
bGsuYwpAQCAtODA5LDIwICs4MDksMTQgQEAgc3RhdGljIGludCBza2xfY2FsY19jZGNsayhpbnQg
bWluX2NkY2xrLCBpbnQgdmNvKQogCiBzdGF0aWMgdTggc2tsX2NhbGNfdm9sdGFnZV9sZXZlbChp
bnQgY2RjbGspCiB7Ci0Jc3dpdGNoIChjZGNsaykgewotCWRlZmF1bHQ6Ci0JY2FzZSAzMDg1NzE6
Ci0JY2FzZSAzMzc1MDA6Ci0JCXJldHVybiAwOwotCWNhc2UgNDUwMDAwOgotCWNhc2UgNDMyMDAw
OgotCQlyZXR1cm4gMTsKLQljYXNlIDU0MDAwMDoKLQkJcmV0dXJuIDI7Ci0JY2FzZSA2MTcxNDM6
Ci0JY2FzZSA2NzUwMDA6CisJaWYgKGNkY2xrID4gNTQwMDAwKQogCQlyZXR1cm4gMzsKLQl9CisJ
ZWxzZSBpZiAoY2RjbGsgPiA0NTAwMDApCisJCXJldHVybiAyOworCWVsc2UgaWYgKGNkY2xrID4g
MzM3NTAwKQorCQlyZXR1cm4gMTsKKwllbHNlCisJCXJldHVybiAwOwogfQogCiBzdGF0aWMgdm9p
ZCBza2xfZHBsbDBfdXBkYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKLS0g
CjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
