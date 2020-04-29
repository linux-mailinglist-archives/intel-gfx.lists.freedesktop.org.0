Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9561BE2B3
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 17:29:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B70786E9EA;
	Wed, 29 Apr 2020 15:29:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCAF16E9EA
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 15:29:25 +0000 (UTC)
IronPort-SDR: K/S3byU/DMMJZvbVQnopkc/PUt+YBnl0aOYaPC7WJdAuNARIdk3KZkpigWRVITOCymOUvoy5sp
 5b9wzE73Btog==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2020 08:29:25 -0700
IronPort-SDR: qzcZ8Jl7XAbK75Uy+j0OZb1Am7y7N/bFWRHvtCR7IMVDM6INm4Rp/PCSaIMwe8LFc5rv3UPcqT
 yT1FaCAp0uxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,332,1583222400"; d="scan'208";a="261463289"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 29 Apr 2020 08:29:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Apr 2020 18:29:21 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Apr 2020 18:29:21 +0300
Message-Id: <20200429152921.10596-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200429101034.8208-3-ville.syrjala@linux.intel.com>
References: <20200429101034.8208-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 02/12] drm/i915/fbc: Use the correct plane
 stride
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkNv
bnN1bHQgdGhlIGFjdHVhbCBwbGFuZSBzdHJpZGUgaW5zdGVhZCBvZiB0aGUgZmIgc3RyaWRlLiBU
aGUgdHdvCndpbGwgZGlzYWdyZWUgd2hlbiB3ZSByZW1hcCB0aGUgZ3R0LiBUaGUgcGxhbmUgc3Ry
aWRlIGlzIHdoYXQgdGhlCmh3IHdpbGwgYmUgZmVkIHNvIHRoYXQncyB3aGF0IHdlIHNob3VsZCBs
b29rIGF0IGZvciB0aGUgRkJDCnJldHJpY3Rpb25zL2NmYiBhbGxvY2F0aW9uLgoKU2luY2Ugd2Ug
bm8gbG9uZ2VyIHJlcXVpcmUgYSBmZW5jZSB3ZSBhcmUgZ29pbmcgdG8gYXR0ZW1wdCB1c2luZwpG
QkMgd2l0aCByZW1hcHBpbmcsIGFuZCBzbyB3ZSBzaG91bGQgbG9vayBhdCBjb3JyZWN0IHN0cmlk
ZS4KCldpdGggOTAvMjcwIGRlZ3JlZSByb3RhdGlvbiB0aGUgcGxhbmUgc3RyaWRlIGlzIHN0b3Jl
ZCBpbiB1bml0cwpvZiBwaXhlbHMsIHNvIHdlIG5lZWQgdG8gY29udmVyIGl0IHRvIGJ5dGVzIGZv
ciB0aGUgcHVycG9zZXMKb2YgY2FsY3VsYXRpbmcgdGhlIGNmYiBzdHJpZGUuIE5vdCBlbnRpcmVs
eSBzdXJlIGlmIHRoaXMgbWF0Y2hlcwp0aGUgaHcgYmVoYXZpb3VyIHRob3VnaC4gTmVlZCB0byBy
ZXZlcnNlIGVuZ2luZWVyIHRoYXQgYXQgc29tZQpwb2ludC4uLgoKV2UgYWxzbyBuZWVkIHRvIHJl
b3JkZXIgdGhlIHBpeGVsIGZvcm1hdCBjaGVjayB2cy4gc3RyaWRlIGNoZWNrCnRvIGF2b2lkIHRy
aWdnZXJpbmcgYSBzcHVyaW91cyBXQVJOKHN0cmlkZSAmIDYzKSB3aXRoIGNwcD09MSBhbmQKcGxh
bmUgc3RyaWRlPT0zMi4KCnYyOiBUcnkgdG8gZGVhbCB3aXRoIHJvdGF0ZWQgc3RyaWRlIGFuZCBy
ZWxhdGVkIFdBUk4KCkNjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVs
LmNvbT4KRml4ZXM6IDY5MWY3YmE1OGQ1MiAoImRybS9pOTE1L2Rpc3BsYXkvZmJjOiBNYWtlIGZl
bmNlcyBhIG5pY2UtdG8taGF2ZSBmb3IgR0VOOSsiKQpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMgfCAxNiArKysrKysrKysrLS0tLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwppbmRleCA3MTk0ZjliYzYyYzUuLjdmMmIyMzgyYjgx
MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCkBAIC03MDcsOSAr
NzA3LDEzIEBAIHN0YXRpYyB2b2lkIGludGVsX2ZiY191cGRhdGVfc3RhdGVfY2FjaGUoc3RydWN0
IGludGVsX2NydGMgKmNydGMsCiAJY2FjaGUtPnBsYW5lLnBpeGVsX2JsZW5kX21vZGUgPSBwbGFu
ZV9zdGF0ZS0+aHcucGl4ZWxfYmxlbmRfbW9kZTsKIAogCWNhY2hlLT5mYi5mb3JtYXQgPSBmYi0+
Zm9ybWF0OwotCWNhY2hlLT5mYi5zdHJpZGUgPSBmYi0+cGl0Y2hlc1swXTsKIAljYWNoZS0+ZmIu
bW9kaWZpZXIgPSBmYi0+bW9kaWZpZXI7CiAKKwkvKiBGSVhNRSBpcyB0aGlzIGNvcnJlY3Q/ICov
CisJY2FjaGUtPmZiLnN0cmlkZSA9IHBsYW5lX3N0YXRlLT5jb2xvcl9wbGFuZVswXS5zdHJpZGU7
CisJaWYgKGRybV9yb3RhdGlvbl85MF9vcl8yNzAocGxhbmVfc3RhdGUtPmh3LnJvdGF0aW9uKSkK
KwkJY2FjaGUtPmZiLnN0cmlkZSAqPSBmYi0+Zm9ybWF0LT5jcHBbMF07CisKIAlkcm1fV0FSTl9P
TigmZGV2X3ByaXYtPmRybSwgcGxhbmVfc3RhdGUtPmZsYWdzICYgUExBTkVfSEFTX0ZFTkNFICYm
CiAJCSAgICAhcGxhbmVfc3RhdGUtPnZtYS0+ZmVuY2UpOwogCkBAIC04MDQsNiArODA4LDExIEBA
IHN0YXRpYyBib29sIGludGVsX2ZiY19jYW5fYWN0aXZhdGUoc3RydWN0IGludGVsX2NydGMgKmNy
dGMpCiAJCXJldHVybiBmYWxzZTsKIAl9CiAKKwlpZiAoIXBpeGVsX2Zvcm1hdF9pc192YWxpZChk
ZXZfcHJpdiwgY2FjaGUtPmZiLmZvcm1hdC0+Zm9ybWF0KSkgeworCQlmYmMtPm5vX2ZiY19yZWFz
b24gPSAicGl4ZWwgZm9ybWF0IGlzIGludmFsaWQiOworCQlyZXR1cm4gZmFsc2U7CisJfQorCiAJ
aWYgKCFyb3RhdGlvbl9pc192YWxpZChkZXZfcHJpdiwgY2FjaGUtPmZiLmZvcm1hdC0+Zm9ybWF0
LAogCQkJICAgICAgIGNhY2hlLT5wbGFuZS5yb3RhdGlvbikpIHsKIAkJZmJjLT5ub19mYmNfcmVh
c29uID0gInJvdGF0aW9uIHVuc3VwcG9ydGVkIjsKQEAgLTgyMCwxMSArODI5LDYgQEAgc3RhdGlj
IGJvb2wgaW50ZWxfZmJjX2Nhbl9hY3RpdmF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKIAkJ
cmV0dXJuIGZhbHNlOwogCX0KIAotCWlmICghcGl4ZWxfZm9ybWF0X2lzX3ZhbGlkKGRldl9wcml2
LCBjYWNoZS0+ZmIuZm9ybWF0LT5mb3JtYXQpKSB7Ci0JCWZiYy0+bm9fZmJjX3JlYXNvbiA9ICJw
aXhlbCBmb3JtYXQgaXMgaW52YWxpZCI7Ci0JCXJldHVybiBmYWxzZTsKLQl9Ci0KIAlpZiAoY2Fj
aGUtPnBsYW5lLnBpeGVsX2JsZW5kX21vZGUgIT0gRFJNX01PREVfQkxFTkRfUElYRUxfTk9ORSAm
JgogCSAgICBjYWNoZS0+ZmIuZm9ybWF0LT5oYXNfYWxwaGEpIHsKIAkJZmJjLT5ub19mYmNfcmVh
c29uID0gInBlci1waXhlbCBhbHBoYSBibGVuZGluZyBpcyBpbmNvbXBhdGlibGUgd2l0aCBGQkMi
OwotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
