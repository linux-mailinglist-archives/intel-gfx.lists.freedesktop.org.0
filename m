Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C78FFB7F2F
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 18:32:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F0016F81D;
	Thu, 19 Sep 2019 16:32:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DFF16F822
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 16:32:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 09:32:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,524,1559545200"; d="scan'208";a="192097327"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 19 Sep 2019 09:32:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Sep 2019 19:32:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Sep 2019 19:31:11 +0300
Message-Id: <20190919163113.17402-20-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190919163113.17402-1-ville.syrjala@linux.intel.com>
References: <20190919163113.17402-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH xf86-video-intel 19/21] uxa: Get rid of
 -Wno-shift-negative-value
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBtaW5pbXVtIENTIFVSQiBlbnRyeSBzaXplIGlzIDEuIExldCdzIHVzZSB0aGF0Cmluc3RlYWQg
b2YgMCBzbyB0aGF0IHdlIGRvbid0IGVuZCB1cCBsZWZ0IHNoaWZ0aW5nCmEgLTEuCgpTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgot
LS0KIHNyYy91eGEvaTk2NV9yZW5kZXIuYyB8IDIgKy0KIHNyYy91eGEvaTk2NV92aWRlby5jICB8
IDIgKy0KIHNyYy91eGEvbWVzb24uYnVpbGQgICB8IDEgLQogMyBmaWxlcyBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL3V4YS9pOTY1X3Jl
bmRlci5jIGIvc3JjL3V4YS9pOTY1X3JlbmRlci5jCmluZGV4IGMxOTQzZmI2YjVhOC4uMzJkYmYy
Zjk1MTczIDEwMDY0NAotLS0gYS9zcmMvdXhhL2k5NjVfcmVuZGVyLmMKKysrIGIvc3JjL3V4YS9p
OTY1X3JlbmRlci5jCkBAIC0yNzcsNyArMjc3LDcgQEAgaTk2NV9jaGVja19jb21wb3NpdGVfdGV4
dHVyZShTY3JlZW5QdHIgc2NyZWVuLCBQaWN0dXJlUHRyIHBpY3R1cmUpCiAvKiBTZXQgdXAgYSBk
ZWZhdWx0IHN0YXRpYyBwYXJ0aXRpb25pbmcgb2YgdGhlIFVSQiwgd2hpY2ggaXMgc3VwcG9zZWQg
dG8KICAqIGFsbG93IGFueXRoaW5nIHdlIHdvdWxkIHdhbnQgdG8gZG8sIGF0IHBvdGVudGlhbGx5
IGxvd2VyIHBlcmZvcm1hbmNlLgogICovCi0jZGVmaW5lIFVSQl9DU19FTlRSWV9TSVpFICAgICAw
CisjZGVmaW5lIFVSQl9DU19FTlRSWV9TSVpFICAgICAxCiAjZGVmaW5lIFVSQl9DU19FTlRSSUVT
CSAgICAgIDAKIAogI2RlZmluZSBVUkJfVlNfRU5UUllfU0laRSAgICAgMQkvLyBlYWNoIDUxMi1i
aXQgcm93CmRpZmYgLS1naXQgYS9zcmMvdXhhL2k5NjVfdmlkZW8uYyBiL3NyYy91eGEvaTk2NV92
aWRlby5jCmluZGV4IDliOTIwM2I2NmYyNS4uZmNkNTY1N2Q5NDI2IDEwMDY0NAotLS0gYS9zcmMv
dXhhL2k5NjVfdmlkZW8uYworKysgYi9zcmMvdXhhL2k5NjVfdmlkZW8uYwpAQCAtMzc4LDcgKzM3
OCw3IEBAIHN0YXRpYyB2b2lkIGk5NjVfcG9zdF9kcmF3X2RlYnVnKFNjcm5JbmZvUHRyIHNjcm4p
CiAjZGVmaW5lIFVSQl9TRl9FTlRSWV9TSVpFICAgICAyCiAKICNkZWZpbmUgVVJCX0NTX0VOVFJJ
RVMJICAgICAgMAotI2RlZmluZSBVUkJfQ1NfRU5UUllfU0laRSAgICAgMAorI2RlZmluZSBVUkJf
Q1NfRU5UUllfU0laRSAgICAgMQogCiBzdGF0aWMgdm9pZCBpOTY1X2NyZWF0ZV9kc3Rfc3VyZmFj
ZV9zdGF0ZShTY3JuSW5mb1B0ciBzY3JuLAogCQkJCQlQaXhtYXBQdHIgcGl4bWFwLApkaWZmIC0t
Z2l0IGEvc3JjL3V4YS9tZXNvbi5idWlsZCBiL3NyYy91eGEvbWVzb24uYnVpbGQKaW5kZXggNWYw
OTI5YWUzMmE5Li5mNGEzMzAyZDM2NTUgMTAwNjQ0Ci0tLSBhL3NyYy91eGEvbWVzb24uYnVpbGQK
KysrIGIvc3JjL3V4YS9tZXNvbi5idWlsZApAQCAtNTgsNyArNTgsNiBAQCB1eGEgPSBzdGF0aWNf
bGlicmFyeSgndXhhJywKIAkJICAgICBpbmNsdWRlX2RpcmVjdG9yaWVzIDogaW5jLAogCQkgICAg
IGNfYXJncyA6IFsKIAkJICAgICAgICctV25vLWRlcHJlY2F0ZWQtZGVjbGFyYXRpb25zJywKLQkJ
ICAgICAgICctV25vLXNoaWZ0LW5lZ2F0aXZlLXZhbHVlJywKIAkJICAgICAgICctV25vLXVudXNl
ZC1wYXJhbWV0ZXInLAogCQkgICAgICAgJy1Xbm8tc2lnbi1jb21wYXJlJywKIAkJICAgICBdLAot
LSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
