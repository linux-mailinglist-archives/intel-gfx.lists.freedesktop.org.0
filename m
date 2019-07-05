Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C42C460623
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2019 14:43:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A3926E49F;
	Fri,  5 Jul 2019 12:43:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 383A06E49F
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jul 2019 12:43:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17142937-1500050 
 for multiple; Fri, 05 Jul 2019 13:43:26 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Jul 2019 13:43:25 +0100
Message-Id: <20190705124325.14270-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190705124325.14270-1-chris@chris-wilson.co.uk>
References: <20190705124325.14270-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Remove presumption of RCS0
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

V2Ugbm93IHRyYWNrIGZlYXR1cmVzIGNvcnJlY3RseSBpbnN0ZWFkIG9mIHByb2JpbmcgaTkxNS0+
ZW5naW5lW1JDUzBdCndoaWNoIGlzIG11Y2ggbW9yZSBmbGV4aWJsZSBhbmQgYXZvaWRzIGFueSBu
YXN0eSBzdXJwcmlzZXMuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgfCA2IC0t
LS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9lbmdpbmVfY3MuYwppbmRleCBkZjU5MzJmNWY1NzguLmJkZjI3OWZhM2IyZSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKQEAgLTQ0OCwxMiAr
NDQ4LDYgQEAgaW50IGludGVsX2VuZ2luZXNfaW5pdF9tbWlvKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1KQogCWlmIChXQVJOX09OKG1hc2sgIT0gZW5naW5lX21hc2spKQogCQlkZXZpY2Vf
aW5mby0+ZW5naW5lX21hc2sgPSBtYXNrOwogCi0JLyogV2UgYWx3YXlzIHByZXN1bWUgd2UgaGF2
ZSBhdCBsZWFzdCBSQ1MgYXZhaWxhYmxlIGZvciBsYXRlciBwcm9iaW5nICovCi0JaWYgKFdBUk5f
T04oIUhBU19FTkdJTkUoaTkxNSwgUkNTMCkpKSB7Ci0JCWVyciA9IC1FTk9ERVY7Ci0JCWdvdG8g
Y2xlYW51cDsKLQl9Ci0KIAlSVU5USU1FX0lORk8oaTkxNSktPm51bV9lbmdpbmVzID0gaHdlaWdo
dDMyKG1hc2spOwogCiAJaW50ZWxfZ3RfY2hlY2tfYW5kX2NsZWFyX2ZhdWx0cygmaTkxNS0+Z3Qp
OwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
