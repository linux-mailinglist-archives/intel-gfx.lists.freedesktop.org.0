Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A685550E4
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 15:55:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B3E66E103;
	Tue, 25 Jun 2019 13:55:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC9326E0FA
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 13:55:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 06:55:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,416,1557212400"; d="scan'208";a="163630025"
Received: from mbarlik-mobl.ger.corp.intel.com (HELO delly.ger.corp.intel.com)
 ([10.249.140.16])
 by fmsmga007.fm.intel.com with ESMTP; 25 Jun 2019 06:55:08 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jun 2019 16:55:01 +0300
Message-Id: <20190625135503.4262-2-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
In-Reply-To: <20190625135503.4262-1-lionel.g.landwerlin@intel.com>
References: <20190625135503.4262-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 1/3] drm/i915: fix whitelist selftests with
 readonly registers
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

V2hlbiBhIHJlZ2lzdGVyIGlzIHJlYWRvbmx5IHRoZXJlIGlzIG5vdCBtdWNoIHdlIGNhbiB0ZWxs
IGFib3V0IGl0cwp2YWx1ZSAoYXBhcnQgZnJvbSBpdHMgZGVmYXVsdCB2YWx1ZT8pLiBUaGlzIGNh
biBiZSBjb3ZlcmVkIGJ5IHRlc3RzCmV4ZXJjaXNpbmcgdGhlIHZhbHVlIG9mIHRoZSByZWdpc3Rl
ciBmcm9tIHVzZXJzcGFjZS4KCkZvciBQU19JTlZPQ0FUSU9OX0NPVU5UIHdlJ3ZlIGdvdCB0aGUg
Zm9sbG93aW5nIHBpZ2xpdCB0ZXN0cyA6CgogICBLSFItR0w0NS5waXBlbGluZV9zdGF0aXN0aWNz
X3F1ZXJ5X3Rlc3RzX0FSQi5mdW5jdGlvbmFsX2ZyYWdtZW50X3NoYWRlcl9pbnZvY2F0aW9ucwoK
VnVsa2FuIENUUyB0ZXN0cyA6CgogICBkRVFQLVZLLnF1ZXJ5X3Bvb2wuc3RhdGlzdGljc19xdWVy
eS5mcmFnbWVudF9zaGFkZXJfaW52b2NhdGlvbnMuKgoKU2lnbmVkLW9mZi1ieTogTGlvbmVsIExh
bmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3dvcmthcm91bmRzLmMgfCAzICsrKwogMSBmaWxlIGNoYW5n
ZWQsIDMgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3NlbGZ0ZXN0X3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVz
dF93b3JrYXJvdW5kcy5jCmluZGV4IGYxMmNiMjBmZTc4NS4uODAxYTk0NTE2YmFlIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF93b3JrYXJvdW5kcy5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3dvcmthcm91bmRzLmMKQEAgLTkyNiw2
ICs5MjYsOSBAQCBjaGVja193aGl0ZWxpc3RlZF9yZWdpc3RlcnMoc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqZW5naW5lLAogCiAJZXJyID0gMDsKIAlmb3IgKGkgPSAwOyBpIDwgZW5naW5lLT53aGl0
ZWxpc3QuY291bnQ7IGkrKykgeworCQlpZiAoZW5naW5lLT53aGl0ZWxpc3QubGlzdFtpXS5yZWcg
JiBSSU5HX0ZPUkNFX1RPX05PTlBSSVZfUkQpCisJCQljb250aW51ZTsKKwogCQlpZiAoIWZuKGVu
Z2luZSwgYVtpXSwgYltpXSwgZW5naW5lLT53aGl0ZWxpc3QubGlzdFtpXS5yZWcpKQogCQkJZXJy
ID0gLUVJTlZBTDsKIAl9Ci0tIAoyLjIxLjAuMzkyLmdmOGY2Nzg3MTU5ZQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
