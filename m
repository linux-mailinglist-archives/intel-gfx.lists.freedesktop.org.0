Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D3BC9D9AC
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 00:56:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD8E16E32E;
	Mon, 26 Aug 2019 22:56:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72DEB6E32E
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 22:56:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 15:56:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,435,1559545200"; d="scan'208";a="174357079"
Received: from mdroper-desk.fm.intel.com ([10.105.128.12])
 by orsmga008.jf.intel.com with ESMTP; 26 Aug 2019 15:56:01 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Aug 2019 15:55:40 -0700
Message-Id: <20190826225540.11987-3-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190826225540.11987-1-matthew.d.roper@intel.com>
References: <20190826225540.11987-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Add 324mhz and 326.4mhz cdclks
 for gen11+
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
cGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgOCArKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDYg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NkY2xrLmMKaW5kZXggYTU2Y2NkMDkzMGUwLi42NDUwN2NjYjA1M2MgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKQEAgLTE3NjEsOCArMTc2
MSwxMCBAQCBzdGF0aWMgdm9pZCBjbmxfc2FuaXRpemVfY2RjbGsoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2KQogCiBzdGF0aWMgaW50IGljbF9jYWxjX2NkY2xrKGludCBtaW5fY2Rj
bGssIHVuc2lnbmVkIGludCByZWYpCiB7Ci0Jc3RhdGljIGNvbnN0IGludCByYW5nZXNfMjRbXSA9
IHsgMTgwMDAwLCAxOTIwMDAsIDMxMjAwMCwgNTUyMDAwLCA2NDgwMDAgfTsKLQlzdGF0aWMgY29u
c3QgaW50IHJhbmdlc18xOV8zOFtdID0geyAxNzI4MDAsIDE5MjAwMCwgMzA3MjAwLCA1NTY4MDAs
IDY1MjgwMCB9OworCXN0YXRpYyBjb25zdCBpbnQgcmFuZ2VzXzI0W10gPSB7IDE4MDAwMCwgMTky
MDAwLCAzMTIwMDAsIDMyNDAwMCwKKwkJCQkJIDU1MjAwMCwgNjQ4MDAwIH07CisJc3RhdGljIGNv
bnN0IGludCByYW5nZXNfMTlfMzhbXSA9IHsgMTcyODAwLCAxOTIwMDAsIDMwNzIwMCwgMzI2NDAw
LAorCQkJCQkgICAgNTU2ODAwLCA2NTI4MDAgfTsKIAljb25zdCBpbnQgKnJhbmdlczsKIAlpbnQg
bGVuLCBpOwogCkBAIC0xODAzLDYgKzE4MDUsNyBAQCBzdGF0aWMgaW50IGljbF9jYWxjX2NkY2xr
X3BsbF92Y28oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBpbnQgY2RjbGspCiAJ
CS8qIGZhbGwgdGhyb3VnaCAqLwogCWNhc2UgMTcyODAwOgogCWNhc2UgMzA3MjAwOgorCWNhc2Ug
MzI2NDAwOgogCWNhc2UgNTU2ODAwOgogCWNhc2UgNjUyODAwOgogCQlXQVJOX09OKGRldl9wcml2
LT5jZGNsay5ody5yZWYgIT0gMTkyMDAgJiYKQEAgLTE4MTAsNiArMTgxMyw3IEBAIHN0YXRpYyBp
bnQgaWNsX2NhbGNfY2RjbGtfcGxsX3ZjbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsIGludCBjZGNsaykKIAkJYnJlYWs7CiAJY2FzZSAxODAwMDA6CiAJY2FzZSAzMTIwMDA6CisJ
Y2FzZSAzMjQwMDA6CiAJY2FzZSA1NTIwMDA6CiAJY2FzZSA2NDgwMDA6CiAJCVdBUk5fT04oZGV2
X3ByaXYtPmNkY2xrLmh3LnJlZiAhPSAyNDAwMCk7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
