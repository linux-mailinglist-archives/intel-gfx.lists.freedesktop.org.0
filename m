Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D15E2E2731
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 01:54:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29F656E039;
	Wed, 23 Oct 2019 23:54:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63AC96E039
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 23:54:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18943207-1500050 
 for multiple; Thu, 24 Oct 2019 00:54:01 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2019 00:53:59 +0100
Message-Id: <20191023235359.27132-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Flush any i915_active
 callback work as well
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

TWFrZSB0cmVibHkgc3VyZSB0aGF0IGFsbCBwb3NzaWJsZSBjYWxsYmFja3MgYW5kIHRoZWlyIGRl
bGF5ZWQgYnJldGhyZW4KYXJlIGNvbXBsZXRlIGJlZm9yZSBhc3NlcnRpbmcgdGhhdCB0aGUgaTkx
NV9hY3RpdmUgc2hvdWxkIGJlIGlkbGUgYWZ0ZXIKZmx1c2hpbmcgYWxsIGJhcnJpZXJzLgoKU2ln
bmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfZW5naW5lX2hlYXJ0YmVhdC5jIHwgMSAr
CiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9lbmdpbmVfaGVhcnRiZWF0LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9zZWxmdGVzdF9lbmdpbmVfaGVhcnRiZWF0LmMKaW5kZXggOWZiNWQzMGM0M2Ji
Li43NjhmMDMyZTY1NzggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0
ZXN0X2VuZ2luZV9oZWFydGJlYXQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxm
dGVzdF9lbmdpbmVfaGVhcnRiZWF0LmMKQEAgLTU1LDYgKzU1LDcgQEAgc3RhdGljIHZvaWQgcHVs
c2VfdW5sb2NrX3dhaXQoc3RydWN0IHB1bHNlICpwKQogewogCW11dGV4X2xvY2soJnAtPmFjdGl2
ZS5tdXRleCk7CiAJbXV0ZXhfdW5sb2NrKCZwLT5hY3RpdmUubXV0ZXgpOworCWZsdXNoX3dvcmso
JnAtPmFjdGl2ZS53b3JrKTsKIH0KIAogc3RhdGljIGludCBfX2xpdmVfaWRsZV9wdWxzZShzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCi0tIAoyLjI0LjAucmMwCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
