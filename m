Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0312D48DD
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 22:10:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D04D6EC95;
	Fri, 11 Oct 2019 20:10:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 845CC6EC95
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 20:10:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 13:10:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,285,1566889200"; d="scan'208";a="278232084"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 11 Oct 2019 13:10:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Oct 2019 23:10:03 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Oct 2019 23:09:45 +0300
Message-Id: <20191011200949.7839-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191011200949.7839-1-ville.syrjala@linux.intel.com>
References: <20191011200949.7839-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/8] drm/i915: Don't set undefined bits in
 dirty_pipes
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCnNr
bF9jb21taXRfbW9kZXNldF9lbmFibGVzKCkgc3RyYWlnaHQgdXAgY29tcGFyZXMgZGlydHlfcGlw
ZXMKd2l0aCBhIGJpdG1hc2sgb2YgYWxyZWFkeSBjb21taXR0ZWQgcGlwZXMuIElmIHdlIHNldCBi
aXRzIGluCmRpcnR5X3BpcGVzIGZvciBub24tZXhpc3RlbnQgcGlwZXMgdGhhdCBjb21wYXJpc29u
IHdpbGwgbmV2ZXIKd29yayByaWdodC4gU28gbGV0J3MgbGltaXQgb3Vyc2VsdmVzIHRvIGJpdHMg
dGhhdCBleGlzdC4KCkFuZCB3ZSdsbCBkbyB0aGUgc2FtZSBmb3IgdGhlIGFjdGl2ZV9waXBlc19j
aGFuZ2VkIGJpdG1hc2suCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bt
LmMgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKaW5kZXggMmI3MWQ1MmE0ZWRlLi5mMjFlYjkyNTBk
MjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwpAQCAtNTQ0NCw3ICs1NDQ0LDcgQEAgc2tsX2Rk
Yl9hZGRfYWZmZWN0ZWRfcGlwZXMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCiAJ
CWlmIChyZXQpCiAJCQlyZXR1cm4gcmV0OwogCi0JCXN0YXRlLT5hY3RpdmVfcGlwZV9jaGFuZ2Vz
ID0gfjA7CisJCXN0YXRlLT5hY3RpdmVfcGlwZV9jaGFuZ2VzID0gSU5URUxfSU5GTyhkZXZfcHJp
diktPnBpcGVfbWFzazsKIAogCQkvKgogCQkgKiBXZSB1c3VhbGx5IG9ubHkgaW5pdGlhbGl6ZSBz
dGF0ZS0+YWN0aXZlX3BpcGVzIGlmIHdlCkBAIC01NDcwLDcgKzU0NzAsNyBAQCBza2xfZGRiX2Fk
ZF9hZmZlY3RlZF9waXBlcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkKIAkgKiB0
byBncmFiIHRoZSBsb2NrIG9uICphbGwqIENSVEMncy4KIAkgKi8KIAlpZiAoc3RhdGUtPmFjdGl2
ZV9waXBlX2NoYW5nZXMgfHwgc3RhdGUtPm1vZGVzZXQpIHsKLQkJc3RhdGUtPndtX3Jlc3VsdHMu
ZGlydHlfcGlwZXMgPSB+MDsKKwkJc3RhdGUtPndtX3Jlc3VsdHMuZGlydHlfcGlwZXMgPSBJTlRF
TF9JTkZPKGRldl9wcml2KS0+cGlwZV9tYXNrOwogCiAJCXJldCA9IGludGVsX2FkZF9hbGxfcGlw
ZXMoc3RhdGUpOwogCQlpZiAocmV0KQotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
