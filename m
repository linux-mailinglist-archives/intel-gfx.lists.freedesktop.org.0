Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E94E37AF2
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 19:23:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF075894EA;
	Thu,  6 Jun 2019 17:23:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA845894EA;
 Thu,  6 Jun 2019 17:23:07 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16817129-1500050 
 for multiple; Thu, 06 Jun 2019 18:22:51 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  6 Jun 2019 18:22:49 +0100
Message-Id: <20190606172249.8418-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_balancer: Fix typo in memcpy
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

Rml4ZXM6IGMyNmU3NjQxOGY0OSAoInRlc3RzL2dlbV9leGVjX2JhbGFuY2VyOiBNYW51YWxseSBj
YWxjdWxhdGUgVkxBIHN0cnVjdCBzaXplcyIpClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogQXJrYWRpdXN6IEhpbGVyIDxhcmthZGl1c3ou
aGlsZXJAaW50ZWwuY29tPgotLS0KIHRlc3RzL2k5MTUvZ2VtX2V4ZWNfYmFsYW5jZXIuYyB8IDIg
Ky0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAt
LWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfYmFsYW5jZXIuYyBiL3Rlc3RzL2k5MTUvZ2VtX2V4
ZWNfYmFsYW5jZXIuYwppbmRleCBiYjQ5MTFlMTcuLmIyMDc0NDg2YSAxMDA2NDQKLS0tIGEvdGVz
dHMvaTkxNS9nZW1fZXhlY19iYWxhbmNlci5jCisrKyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfYmFs
YW5jZXIuYwpAQCAtMTIzLDcgKzEyMyw3IEBAIHN0YXRpYyBpbnQgX19zZXRfZW5naW5lcyhpbnQg
aTkxNSwgdWludDMyX3QgY3R4LAogCX07CiAKIAllbmdpbmVzLT5leHRlbnNpb25zID0gMDsKLQlt
ZW1jcHkoZW5naW5lcy0+ZW5naW5lcywgY2ksIHNpemVvZigqY2kpKTsKKwltZW1jcHkoZW5naW5l
cy0+ZW5naW5lcywgY2ksIGNvdW50ICogc2l6ZW9mKCpjaSkpOwogCiAJcmV0dXJuIF9fZ2VtX2Nv
bnRleHRfc2V0X3BhcmFtKGk5MTUsICZwKTsKIH0KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
