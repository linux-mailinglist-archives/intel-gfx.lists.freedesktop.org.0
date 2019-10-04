Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC922CB938
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 13:35:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 848C06EB40;
	Fri,  4 Oct 2019 11:35:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54FC76EB33
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2019 11:35:24 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Oct 2019 13:35:11 +0200
Message-Id: <20191004113514.17064-22-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191004113514.17064-1-maarten.lankhorst@linux.intel.com>
References: <20191004113514.17064-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 21/24] drm/i915: Ensure color blobs are copied
 to slave before planes are checked
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

VGhpcyBpcyByZXF1aXJlZCB0byBlbnN1cmUgcHJvcGVydHkgYmxvYnMgYXJlIGNvcnJlY3RseSBj
b3BpZWQgb24gYmlnam9pbmVyCnNsYXZlcy4gT25seSBhdCB0aGlzIHBvaW50IHdlIGFyZSBzdXJl
IHRoYXQgdGhlIHNsYXZlIGNydGMgaXMgcGFydCBvZiB0aGUgc3RhdGUuCgpTaWduZWQtb2ZmLWJ5
OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTAgKysr
KysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDY2ZDdlYWVkY2VhMy4uMGQ5
ZDRlMmQ2MWM2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYwpAQCAtMTE5MzUsNiArMTE5MzUsMTYgQEAgc3RhdGljIGludCBpY2xfYWRkX2xpbmtlZF9w
bGFuZXMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCiAKIAkJCWlmIChJU19FUlIo
bGlua2VkX2NydGNfc3RhdGUpKQogCQkJCXJldHVybiBQVFJfRVJSKGxpbmtlZF9jcnRjX3N0YXRl
KTsKKworCQkJaWYgKG5lZWRzX21vZGVzZXQobmV3X2NydGNfc3RhdGUpIHx8IG5ld19jcnRjX3N0
YXRlLT51cGRhdGVfcGlwZSB8fAorCQkJICAgIG5ld19jcnRjX3N0YXRlLT51YXBpLmNvbG9yX21n
bXRfY2hhbmdlZCkgeworCQkJCWlmIChuZXdfY3J0Y19zdGF0ZS0+Ymlnam9pbmVyX3NsYXZlKQor
CQkJCQlpbnRlbF9jcnRjX2NvcHlfY29sb3JfYmxvYnMobmV3X2NydGNfc3RhdGUsCisJCQkJCQkJ
CSAgICBsaW5rZWRfY3J0Y19zdGF0ZSk7CisJCQkJZWxzZQorCQkJCQlpbnRlbF9jcnRjX2NvcHlf
Y29sb3JfYmxvYnMobGlua2VkX2NydGNfc3RhdGUsCisJCQkJCQkJCSAgICBuZXdfY3J0Y19zdGF0
ZSk7CisJCQl9CiAJCX0KIAl9CiAKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
