Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD302BB154
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 11:24:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F6D56E2EA;
	Mon, 23 Sep 2019 09:24:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACEF36E290;
 Mon, 23 Sep 2019 09:24:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18583918-1500050 
 for multiple; Mon, 23 Sep 2019 10:24:35 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Sep 2019 10:24:32 +0100
Message-Id: <20190923092432.14793-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_render_copy: Add hang detector
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RGllIGVhcmx5IGlmIHRoZSBHUFUgaGFuZ3MgZHVyaW5nIG91ciBiYXNpYyByZW5kZXIgY29weSB0
ZXN0aW5nLCBhbmQKY2xlYW4gdXAgcmF0aGVyIHRoYW4gd2FpdGluZyBmb3IgbXVsdGlwbGUgZGlm
ZmVyZW50IGZhaWxpbmcgYmF0Y2hlcwpiZWZvcmUgZGV0ZWN0aW5nIG91ciBmYWlsdXJlLgoKU2ln
bmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQog
dGVzdHMvaTkxNS9nZW1fcmVuZGVyX2NvcHkuYyB8IDMgKysrCiAxIGZpbGUgY2hhbmdlZCwgMyBp
bnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fcmVuZGVyX2NvcHkuYyBi
L3Rlc3RzL2k5MTUvZ2VtX3JlbmRlcl9jb3B5LmMKaW5kZXggYjgxNDk0ODNjLi4yNjE4MzNkMjQg
MTAwNjQ0Ci0tLSBhL3Rlc3RzL2k5MTUvZ2VtX3JlbmRlcl9jb3B5LmMKKysrIGIvdGVzdHMvaTkx
NS9nZW1fcmVuZGVyX2NvcHkuYwpAQCAtNzE1LDYgKzcxNSw4IEBAIGlndF9tYWluX2FyZ3MoImRh
IiwgTlVMTCwgaGVscF9zdHIsIG9wdF9oYW5kbGVyLCBOVUxMKQogCiAJCWRhdGEuYmF0Y2ggPSBp
bnRlbF9iYXRjaGJ1ZmZlcl9hbGxvYyhkYXRhLmJ1Zm1nciwgZGF0YS5kZXZpZCk7CiAJCWlndF9h
c3NlcnQoZGF0YS5iYXRjaCk7CisKKwkJaWd0X2ZvcmtfaGFuZ19kZXRlY3RvcihkYXRhLmRybV9m
ZCk7CiAJfQogCiAJaWd0X3N1YnRlc3QoImxpbmVhciIpCkBAIC03NDUsNiArNzQ3LDcgQEAgaWd0
X21haW5fYXJncygiZGEiLCBOVUxMLCBoZWxwX3N0ciwgb3B0X2hhbmRsZXIsIE5VTEwpCiAJCXRl
c3QoJmRhdGEsIEk5MTVfVElMSU5HX1lmLCBJOTE1X1RJTElOR19ZZik7CiAKIAlpZ3RfZml4dHVy
ZSB7CisJCWlndF9zdG9wX2hhbmdfZGV0ZWN0b3IoKTsKIAkJaW50ZWxfYmF0Y2hidWZmZXJfZnJl
ZShkYXRhLmJhdGNoKTsKIAkJZHJtX2ludGVsX2J1Zm1ncl9kZXN0cm95KGRhdGEuYnVmbWdyKTsK
IAl9Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
