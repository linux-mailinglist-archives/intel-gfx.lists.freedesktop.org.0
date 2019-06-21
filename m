Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B5824EB6A
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 17:00:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90F736E8DA;
	Fri, 21 Jun 2019 15:00:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FB666E8D9
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 15:00:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16980699-1500050 
 for multiple; Fri, 21 Jun 2019 16:00:12 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jun 2019 16:00:11 +0100
Message-Id: <20190621150011.16984-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Disable preemption under GVT
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

UHJlZW1wdC10by1idXN5IHVzZXMgYSBHUFUgc2VtYXBob3JlIHRvIGVuZm9yY2UgYW4gaWRsZS1i
YXJyaWVyIGFjcm9zcwpwcmVlbXB0aW9uLCBidXQgbWVkaWF0ZWQgZ3Z0IGRvZXMgbm90IGZ1bGx5
IHN1cHBvcnQgc2VtYXBob3Jlcy4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xy
Yy5jIHwgNyArKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAzIGRlbGV0
aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXggYjNlMGUyNWM1ZDgw
Li5mOGFjOWE4NTZiZjQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCkBAIC0yNjc2
LDEwICsyNjc2LDExIEBAIHZvaWQgaW50ZWxfZXhlY2xpc3RzX3NldF9kZWZhdWx0X3N1Ym1pc3Np
b24oc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCWVuZ2luZS0+dW5wYXJrID0gTlVM
TDsKIAogCWVuZ2luZS0+ZmxhZ3MgfD0gSTkxNV9FTkdJTkVfU1VQUE9SVFNfU1RBVFM7Ci0JaWYg
KCFpbnRlbF92Z3B1X2FjdGl2ZShlbmdpbmUtPmk5MTUpKQorCWlmICghaW50ZWxfdmdwdV9hY3Rp
dmUoZW5naW5lLT5pOTE1KSkgewogCQllbmdpbmUtPmZsYWdzIHw9IEk5MTVfRU5HSU5FX0hBU19T
RU1BUEhPUkVTOwotCWlmIChIQVNfTE9HSUNBTF9SSU5HX1BSRUVNUFRJT04oZW5naW5lLT5pOTE1
KSkKLQkJZW5naW5lLT5mbGFncyB8PSBJOTE1X0VOR0lORV9IQVNfUFJFRU1QVElPTjsKKwkJaWYg
KEhBU19MT0dJQ0FMX1JJTkdfUFJFRU1QVElPTihlbmdpbmUtPmk5MTUpKQorCQkJZW5naW5lLT5m
bGFncyB8PSBJOTE1X0VOR0lORV9IQVNfUFJFRU1QVElPTjsKKwl9CiB9CiAKIHN0YXRpYyB2b2lk
IGV4ZWNsaXN0c19kZXN0cm95KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKLS0gCjIu
MjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
