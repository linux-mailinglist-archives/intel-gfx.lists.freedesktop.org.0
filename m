Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B45A916B1
	for <lists+intel-gfx@lfdr.de>; Sun, 18 Aug 2019 14:56:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EC3E6E075;
	Sun, 18 Aug 2019 12:56:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB1166E06F;
 Sun, 18 Aug 2019 12:56:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18179961-1500050 
 for multiple; Sun, 18 Aug 2019 13:56:32 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 18 Aug 2019 13:56:30 +0100
Message-Id: <20190818125630.12200-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_engine: Scheduler required
 for reordering requests
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

VG8gcnVuIHRoZSBpbmRlcGVuZGVudCBzdWJ0ZXN0cyByZXF1aXJlcyB0byBpc3N1ZSB0aGUgcmVx
dWVzdHMKbm90LWluLXN1Ym1pc3Npb24gb3JkZXIsIHdlIG5lZWQgYSBzY2hlZHVsZXIuCgpTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiB0
ZXN0cy9pOTE1L2dlbV9jdHhfZW5naW5lcy5jIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKykKCmRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV9jdHhfZW5naW5lcy5jIGIvdGVz
dHMvaTkxNS9nZW1fY3R4X2VuZ2luZXMuYwppbmRleCAyZTgwZDBmM2UuLjFlODJlNTFlZSAxMDA2
NDQKLS0tIGEvdGVzdHMvaTkxNS9nZW1fY3R4X2VuZ2luZXMuYworKysgYi90ZXN0cy9pOTE1L2dl
bV9jdHhfZW5naW5lcy5jCkBAIC00MzEsNiArNDMxLDcgQEAgc3RhdGljIHZvaWQgaW5kZXBlbmRl
bnQoaW50IGk5MTUpCiAJdWludDMyX3QgbGFzdCwgKm1hcDsKIAogCWlndF9yZXF1aXJlKGdlbiA+
PSA2KTsgLyogTm8gcGVyLWVuZ2luZSBUSU1FU1RBTVAgb24gb2xkZXIgZ2VuICovCisJaWd0X3Jl
cXVpcmUoZ2VtX3NjaGVkdWxlcl9lbmFibGVkKGk5MTUpKTsKIAogCXsKIAkJc3RydWN0IGRybV9p
OTE1X2dlbV9leGVjYnVmZmVyMiBleGVjYnVmID0gewotLSAKMi4yMy4wLnJjMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
