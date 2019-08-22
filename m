Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DEBD9AAC4
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 10:54:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A063F6EC2D;
	Fri, 23 Aug 2019 08:54:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07F126EC2C
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 08:54:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 09:31:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,417,1559545200"; d="scan'208";a="186620556"
Received: from mdroper-desk.fm.intel.com ([10.105.128.12])
 by FMSMGA003.fm.intel.com with ESMTP; 22 Aug 2019 09:31:40 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Aug 2019 09:31:33 -0700
Message-Id: <20190822163133.27587-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Add 324mhz and 326.4mhz cdclks for
 gen11+
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

VGhlIGJzcGVjIHdhcyByZWNlbnRseSB1cGRhdGVkIHdpdGggdGhlc2UgbmV3IGNkY2xrIHZhbHVl
cyBmb3IgSUNMLCBFSEwsCmFuZCBUR0wuCgpCc3BlYzogMjA1OTgKQnNwZWM6IDQ5MjAxCkNjOiBK
b3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KQ2M6IEx1Y2FzIERl
IE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYXR0IFJv
cGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyB8IDggKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jZGNsay5jCmluZGV4IGQwYmM0MmU1MDM5Yy4uMGJlMTM3YTkxMjlhIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCkBAIC0xNzQ4LDggKzE3NDgs
MTAgQEAgc3RhdGljIHZvaWQgY25sX3Nhbml0aXplX2NkY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikKIAogc3RhdGljIGludCBpY2xfY2FsY19jZGNsayhpbnQgbWluX2NkY2xr
LCB1bnNpZ25lZCBpbnQgcmVmKQogewotCXN0YXRpYyBjb25zdCBpbnQgcmFuZ2VzXzI0W10gPSB7
IDE4MDAwMCwgMTkyMDAwLCAzMTIwMDAsIDU1MjAwMCwgNjQ4MDAwIH07Ci0Jc3RhdGljIGNvbnN0
IGludCByYW5nZXNfMTlfMzhbXSA9IHsgMTcyODAwLCAxOTIwMDAsIDMwNzIwMCwgNTU2ODAwLCA2
NTI4MDAgfTsKKwlzdGF0aWMgY29uc3QgaW50IHJhbmdlc18yNFtdID0geyAxODAwMDAsIDE5MjAw
MCwgMzEyMDAwLCAzMjQwMDAsCisJCQkJCSA1NTIwMDAsIDY0ODAwMCB9OworCXN0YXRpYyBjb25z
dCBpbnQgcmFuZ2VzXzE5XzM4W10gPSB7IDE3MjgwMCwgMTkyMDAwLCAzMDcyMDAsIDMyNjQwMCwK
KwkJCQkJICAgIDU1NjgwMCwgNjUyODAwIH07CiAJY29uc3QgaW50ICpyYW5nZXM7CiAJaW50IGxl
biwgaTsKIApAQCAtMTc5MCw2ICsxNzkyLDcgQEAgc3RhdGljIGludCBpY2xfY2FsY19jZGNsa19w
bGxfdmNvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgaW50IGNkY2xrKQogCQkv
KiBmYWxsIHRocm91Z2ggKi8KIAljYXNlIDE3MjgwMDoKIAljYXNlIDMwNzIwMDoKKwljYXNlIDMy
NjQwMDoKIAljYXNlIDU1NjgwMDoKIAljYXNlIDY1MjgwMDoKIAkJV0FSTl9PTihkZXZfcHJpdi0+
Y2RjbGsuaHcucmVmICE9IDE5MjAwICYmCkBAIC0xNzk3LDYgKzE4MDAsNyBAQCBzdGF0aWMgaW50
IGljbF9jYWxjX2NkY2xrX3BsbF92Y28oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LCBpbnQgY2RjbGspCiAJCWJyZWFrOwogCWNhc2UgMTgwMDAwOgogCWNhc2UgMzEyMDAwOgorCWNh
c2UgMzI0MDAwOgogCWNhc2UgNTUyMDAwOgogCWNhc2UgNjQ4MDAwOgogCQlXQVJOX09OKGRldl9w
cml2LT5jZGNsay5ody5yZWYgIT0gMjQwMDApOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
