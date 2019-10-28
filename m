Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C6AE7067
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 12:30:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F8606E5DC;
	Mon, 28 Oct 2019 11:30:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 577D06E5FB
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 11:30:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 04:30:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,239,1569308400"; d="scan'208";a="193229528"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 28 Oct 2019 04:30:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 28 Oct 2019 13:30:42 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Oct 2019 13:30:33 +0200
Message-Id: <20191028113036.27553-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191028113036.27553-1-ville.syrjala@linux.intel.com>
References: <20191028113036.27553-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/6] drm/i915: Fix overlay colorkey for 30bpp
 and 8bpp
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFz
IHdpdGggdGhlIHZpZGVvIHNwcml0ZXMgdGhlIGNvbG9ya2V5IGlzIGFsd2F5cyBzcGVjaWZpZWQK
YXMgOGJwYy4gRm9yIDEwYnBjIHByaW1hcnkgcGxhbmUgZm9ybWF0cyB3ZSBqdXN0IGlnbm9yZSB0
aGUKdHdvIGxzYnMgb2YgZWFjaCBjb21wb25lbnQuIEZvciBDOCB3ZSdsbCByZXBsaWNhdGUgdGhl
IHNhbWUKa2V5IHRvIGVhY2ggY2hhbmVsLCB3aGljaCBpcyB3aGF0IHRoZSBoYXJkd2FyZSB3YW50
cy4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vdmVybGF5
LmMgfCAxNCArKysrKysrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyks
IDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9vdmVybGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX292
ZXJsYXkuYwppbmRleCA4NDhjZTA3YThlYzIuLjIzODI5Mzc0Zjc1MSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vdmVybGF5LmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9vdmVybGF5LmMKQEAgLTEwMSwxMiArMTAxLDE1IEBA
CiAjZGVmaW5lIENMS19SR0IyNF9NQVNLCQkweDAKICNkZWZpbmUgQ0xLX1JHQjE2X01BU0sJCTB4
MDcwMzA3CiAjZGVmaW5lIENMS19SR0IxNV9NQVNLCQkweDA3MDcwNwotI2RlZmluZSBDTEtfUkdC
OElfTUFTSwkJMHhmZmZmZmYKIAorI2RlZmluZSBSR0IzMF9UT19DT0xPUktFWShjKSBcCisJKCgo
YyAmIDB4M0ZDMDAwMDApID4+IDYpIHwgKChjICYgMHgwMDBGRjAwMCkgPj4gNCkgfCAoKGMgJiAw
eDAwMDAwM0ZDKSA+PiAyKSkKICNkZWZpbmUgUkdCMTZfVE9fQ09MT1JLRVkoYykgXAogCSgoKGMg
JiAweEY4MDApIDw8IDgpIHwgKChjICYgMHgwN0UwKSA8PCA1KSB8ICgoYyAmIDB4MDAxRikgPDwg
MykpCiAjZGVmaW5lIFJHQjE1X1RPX0NPTE9SS0VZKGMpIFwKIAkoKChjICYgMHg3YzAwKSA8PCA5
KSB8ICgoYyAmIDB4MDNFMCkgPDwgNikgfCAoKGMgJiAweDAwMUYpIDw8IDMpKQorI2RlZmluZSBS
R0I4SV9UT19DT0xPUktFWShjKSBcCisJKCgoYyAmIDB4RkYpIDw8IDE2KSB8ICgoYyAmIDBYRkYp
IDw8IDgpIHwgKChjICYgMHhGRikgPDwgMCkpCiAKIC8qIG92ZXJsYXkgZmxpcCBhZGRyIGZsYWcg
Ki8KICNkZWZpbmUgT0ZDX1VQREFURQkJMHgxCkBAIC02NzMsOCArNjc2LDggQEAgc3RhdGljIHZv
aWQgdXBkYXRlX2NvbG9ya2V5KHN0cnVjdCBpbnRlbF9vdmVybGF5ICpvdmVybGF5LAogCiAJc3dp
dGNoIChmb3JtYXQpIHsKIAljYXNlIERSTV9GT1JNQVRfQzg6Ci0JCWtleSA9IDA7Ci0JCWZsYWdz
IHw9IENMS19SR0I4SV9NQVNLOworCQlrZXkgPSBSR0I4SV9UT19DT0xPUktFWShrZXkpOworCQlm
bGFncyB8PSBDTEtfUkdCMjRfTUFTSzsKIAkJYnJlYWs7CiAJY2FzZSBEUk1fRk9STUFUX1hSR0Ix
NTU1OgogCQlrZXkgPSBSR0IxNV9UT19DT0xPUktFWShrZXkpOwpAQCAtNjg0LDYgKzY4NywxMSBA
QCBzdGF0aWMgdm9pZCB1cGRhdGVfY29sb3JrZXkoc3RydWN0IGludGVsX292ZXJsYXkgKm92ZXJs
YXksCiAJCWtleSA9IFJHQjE2X1RPX0NPTE9SS0VZKGtleSk7CiAJCWZsYWdzIHw9IENMS19SR0Ix
Nl9NQVNLOwogCQlicmVhazsKKwljYXNlIERSTV9GT1JNQVRfWFJHQjIxMDEwMTA6CisJY2FzZSBE
Uk1fRk9STUFUX1hCR1IyMTAxMDEwOgorCQlrZXkgPSBSR0IzMF9UT19DT0xPUktFWShrZXkpOwor
CQlmbGFncyB8PSBDTEtfUkdCMjRfTUFTSzsKKwkJYnJlYWs7CiAJZGVmYXVsdDoKIAkJZmxhZ3Mg
fD0gQ0xLX1JHQjI0X01BU0s7CiAJCWJyZWFrOwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
