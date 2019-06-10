Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC30F3BEE6
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 23:48:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3310889143;
	Mon, 10 Jun 2019 21:48:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DEFC89143
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 21:48:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jun 2019 14:48:35 -0700
X-ExtLoop1: 1
Received: from ldmartin-desk.jf.intel.com ([10.24.10.152])
 by orsmga007.jf.intel.com with ESMTP; 10 Jun 2019 14:48:35 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jun 2019 14:48:34 -0700
Message-Id: <20190610214834.9789-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190610214449.9447-1-lucas.demarchi@intel.com>
References: <20190610214449.9447-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/3] drm/i915/cnl: use ranges for voltage
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
Y2xrLmMgfCAxMyArKysrKy0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCsp
LCA4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2NkY2xrLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jZGNsay5jCmluZGV4IDQ2NWE3
MmQxODVhZC4uODBlMjI1MDdjZDM0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9jZGNsay5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NkY2xrLmMKQEAg
LTE1MzEsMTUgKzE1MzEsMTIgQEAgc3RhdGljIGludCBjbmxfY2FsY19jZGNsayhpbnQgbWluX2Nk
Y2xrKQogCiBzdGF0aWMgdTggY25sX2NhbGNfdm9sdGFnZV9sZXZlbChpbnQgY2RjbGspCiB7Ci0J
c3dpdGNoIChjZGNsaykgewotCWRlZmF1bHQ6Ci0JY2FzZSAxNjgwMDA6Ci0JCXJldHVybiAwOwot
CWNhc2UgMzM2MDAwOgotCQlyZXR1cm4gMTsKLQljYXNlIDUyODAwMDoKKwlpZiAoY2RjbGsgPiAz
MzYwMDApCiAJCXJldHVybiAyOwotCX0KKwllbHNlIGlmIChjZGNsayA+IDE2ODAwMCkKKwkJcmV0
dXJuIDE7CisJZWxzZQorCQlyZXR1cm4gMDsKIH0KIAogc3RhdGljIHZvaWQgY25sX2NkY2xrX3Bs
bF91cGRhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAotLSAKMi4yMS4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
