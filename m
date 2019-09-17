Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50CC6B4929
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 10:20:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7829D6EB53;
	Tue, 17 Sep 2019 08:20:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E21666EB50;
 Tue, 17 Sep 2019 08:19:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18515353-1500050 
 for multiple; Tue, 17 Sep 2019 09:19:55 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Sep 2019 09:19:53 +0100
Message-Id: <20190917081953.28098-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] 915/gem_exec_faulting_reloc: Uses the
 blitter; require the blitter
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

U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0t
LQogdGVzdHMvaTkxNS9nZW1fZXhlY19mYXVsdGluZ19yZWxvYy5jIHwgMiArKwogMSBmaWxlIGNo
YW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNf
ZmF1bHRpbmdfcmVsb2MuYyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfZmF1bHRpbmdfcmVsb2MuYwpp
bmRleCA2YjA1ZTQzZmUuLjBiYjVmYTkxYSAxMDA2NDQKLS0tIGEvdGVzdHMvaTkxNS9nZW1fZXhl
Y19mYXVsdGluZ19yZWxvYy5jCisrKyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfZmF1bHRpbmdfcmVs
b2MuYwpAQCAtMTczLDYgKzE3Myw4IEBAIHN0YXRpYyB2b2lkIHJ1bihpbnQgb2JqZWN0X3NpemUp
CiAKIAlmZCA9IGRybV9vcGVuX2RyaXZlcihEUklWRVJfSU5URUwpOwogCWlndF9yZXF1aXJlX2dl
bShmZCk7CisJZ2VtX3JlcXVpcmVfYmxpdHRlcihmZCk7CisKIAlkZXZpZCA9IGludGVsX2dldF9k
cm1fZGV2aWQoZmQpOwogCWhhbmRsZSA9IGdlbV9jcmVhdGUoZmQsIDQwOTYpOwogCXNyYyA9IGdl
bV9jcmVhdGUoZmQsIG9iamVjdF9zaXplKTsKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
