Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBFAEAF721
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 09:47:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9BCD6EA45;
	Wed, 11 Sep 2019 07:47:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC8F16EA45
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 07:47:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18447038-1500050 
 for multiple; Wed, 11 Sep 2019 08:47:28 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Sep 2019 08:47:27 +0100
Message-Id: <20190911074727.32585-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Put glk_cdclk_table
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

Q29tbWl0IDczNmRhODExMmZlZSAoImRybS9pOTE1OiBVc2UgbGl0ZXJhbCByZXByZXNlbnRhdGlv
biBvZiBjZGNsawp0YWJsZXMiKSBwdXNoZWQgdGhlIGNkY2xrIGxvZ2ljIGludG8gdGFibGVzLCBh
ZGRpbmcgZ2xrX2NkY2xrX3RhYmxlIGJ1dApub3QgdXNpbmcgeWV0OgoKZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jOjExNzM6Mzg6IGVycm9yOiDigJhnbGtfY2RjbGtf
dGFibGXigJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XZXJyb3I9dW51c2VkLWNvbnN0LXZhcmlh
YmxlPV0KCkZpeGVzOiA3MzZkYTgxMTJmZWUgKCJkcm0vaTkxNTogVXNlIGxpdGVyYWwgcmVwcmVz
ZW50YXRpb24gb2YgY2RjbGsgdGFibGVzIikKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPgpDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVs
LmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgNSArKysrLQogMSBm
aWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwppbmRleCA2MThhOTNiYWQwYTguLjEzNzc5
YjYwMjlmNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
ZGNsay5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwpA
QCAtMjUxMSw3ICsyNTExLDEwIEBAIHZvaWQgaW50ZWxfaW5pdF9jZGNsa19ob29rcyhzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJCWRldl9wcml2LT5kaXNwbGF5LnNldF9jZGNs
ayA9IGJ4dF9zZXRfY2RjbGs7CiAJCWRldl9wcml2LT5kaXNwbGF5Lm1vZGVzZXRfY2FsY19jZGNs
ayA9IGJ4dF9tb2Rlc2V0X2NhbGNfY2RjbGs7CiAJCWRldl9wcml2LT5kaXNwbGF5LmNhbGNfdm9s
dGFnZV9sZXZlbCA9IGJ4dF9jYWxjX3ZvbHRhZ2VfbGV2ZWw7Ci0JCWRldl9wcml2LT5jZGNsay50
YWJsZSA9IGJ4dF9jZGNsa190YWJsZTsKKwkJaWYgKElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpKQor
CQkJZGV2X3ByaXYtPmNkY2xrLnRhYmxlID0gZ2xrX2NkY2xrX3RhYmxlOworCQllbHNlCisJCQlk
ZXZfcHJpdi0+Y2RjbGsudGFibGUgPSBieHRfY2RjbGtfdGFibGU7CiAJfSBlbHNlIGlmIChJU19H
RU45X0JDKGRldl9wcml2KSkgewogCQlkZXZfcHJpdi0+ZGlzcGxheS5zZXRfY2RjbGsgPSBza2xf
c2V0X2NkY2xrOwogCQlkZXZfcHJpdi0+ZGlzcGxheS5tb2Rlc2V0X2NhbGNfY2RjbGsgPSBza2xf
bW9kZXNldF9jYWxjX2NkY2xrOwotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
