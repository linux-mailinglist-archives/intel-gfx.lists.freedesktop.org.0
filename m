Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 266C24277A
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2019 15:28:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD8438955D;
	Wed, 12 Jun 2019 13:28:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81EA98951B;
 Wed, 12 Jun 2019 13:28:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16876932-1500050 
 for multiple; Wed, 12 Jun 2019 14:28:31 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: dri-devel@lists.freedesktop.org
Date: Wed, 12 Jun 2019 14:28:30 +0100
Message-Id: <20190612132830.31221-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] dma-fence/reservation: Markup rcu protected
 access for DEBUG_MUTEXES
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TWFyayB0aGUgYWNjZXNzIHRvIHJlc2VydmF0aW9uX29iamVjdC5mZW5jZSBhcyBiZWluZyBwcm90
ZWN0ZWQgdG8Kc2lsZW5jZSBzcGFyc2UuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBpbmNsdWRlL2xpbnV4L3Jlc2VydmF0aW9uLmgg
fCA4ICsrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgvcmVzZXJ2YXRpb24uaCBiL2luY2x1ZGUv
bGludXgvcmVzZXJ2YXRpb24uaAppbmRleCBlZTc1MDc2NWNjOTQuLjY0NGEyMmRiZTUzYiAxMDA2
NDQKLS0tIGEvaW5jbHVkZS9saW51eC9yZXNlcnZhdGlvbi5oCisrKyBiL2luY2x1ZGUvbGludXgv
cmVzZXJ2YXRpb24uaApAQCAtMjE2LDggKzIxNiwxMiBAQCByZXNlcnZhdGlvbl9vYmplY3RfdW5s
b2NrKHN0cnVjdCByZXNlcnZhdGlvbl9vYmplY3QgKm9iaikKIHsKICNpZmRlZiBDT05GSUdfREVC
VUdfTVVURVhFUwogCS8qIFRlc3Qgc2hhcmVkIGZlbmNlIHNsb3QgcmVzZXJ2YXRpb24gKi8KLQlp
ZiAob2JqLT5mZW5jZSkKLQkJb2JqLT5mZW5jZS0+c2hhcmVkX21heCA9IG9iai0+ZmVuY2UtPnNo
YXJlZF9jb3VudDsKKwlpZiAocmN1X2FjY2Vzc19wb2ludGVyKG9iai0+ZmVuY2UpKSB7CisJCXN0
cnVjdCByZXNlcnZhdGlvbl9vYmplY3RfbGlzdCAqZmVuY2UgPQorCQkJcmVzZXJ2YXRpb25fb2Jq
ZWN0X2dldF9saXN0KG9iaik7CisKKwkJZmVuY2UtPnNoYXJlZF9tYXggPSBmZW5jZS0+c2hhcmVk
X2NvdW50OworCX0KICNlbmRpZgogCXd3X211dGV4X3VubG9jaygmb2JqLT5sb2NrKTsKIH0KLS0g
CjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
