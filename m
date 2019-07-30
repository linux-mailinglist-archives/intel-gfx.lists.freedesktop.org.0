Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10DF27B4F7
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 23:25:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBF2B6E61B;
	Tue, 30 Jul 2019 21:25:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BE6D6E61B;
 Tue, 30 Jul 2019 21:25:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17741373-1500050 
 for multiple; Tue, 30 Jul 2019 22:24:55 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jul 2019 22:24:53 +0100
Message-Id: <20190730212454.6954-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 1/2] i915/gem_exec_schedule: Avoid using
 borked engines
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

Q2hlY2sgZm9yIHZpYWJpbGl0eSBvZiBzdG9yZS1kd29yZCBiZWZvcmUgdXNlLgoKU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogdGVzdHMv
aTkxNS9nZW1fZXhlY19zY2hlZHVsZS5jIHwgNiArKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1f
ZXhlY19zY2hlZHVsZS5jIGIvdGVzdHMvaTkxNS9nZW1fZXhlY19zY2hlZHVsZS5jCmluZGV4IDRj
Y2FjYmE0MS4uNmU4NDY2Mjk5IDEwMDY0NAotLS0gYS90ZXN0cy9pOTE1L2dlbV9leGVjX3NjaGVk
dWxlLmMKKysrIGIvdGVzdHMvaTkxNS9nZW1fZXhlY19zY2hlZHVsZS5jCkBAIC0yODIsOSArMjgy
LDExIEBAIHN0YXRpYyB2b2lkIHNtb2tldGVzdChpbnQgZmQsIHVuc2lnbmVkIHJpbmcsIHVuc2ln
bmVkIHRpbWVvdXQpCiAJbmVuZ2luZSA9IDA7CiAJaWYgKHJpbmcgPT0gQUxMX0VOR0lORVMpIHsK
IAkJZm9yX2VhY2hfcGh5c2ljYWxfZW5naW5lKGZkLCBlbmdpbmUpCi0JCQllbmdpbmVzW25lbmdp
bmUrK10gPSBlbmdpbmU7CisJCQlpZiAoZ2VtX2Nhbl9zdG9yZV9kd29yZChmZCwgZW5naW5lKSkK
KwkJCQllbmdpbmVzW25lbmdpbmUrK10gPSBlbmdpbmU7CiAJfSBlbHNlIHsKLQkJZW5naW5lc1tu
ZW5naW5lKytdID0gcmluZzsKKwkJaWYgKGdlbV9jYW5fc3RvcmVfZHdvcmQoZmQsIHJpbmcpKQor
CQkJZW5naW5lc1tuZW5naW5lKytdID0gcmluZzsKIAl9CiAJaWd0X3JlcXVpcmUobmVuZ2luZSk7
CiAKLS0gCjIuMjIuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
