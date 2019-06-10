Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6882D3B551
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 14:56:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC0E28911F;
	Mon, 10 Jun 2019 12:56:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7034389110;
 Mon, 10 Jun 2019 12:56:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16852510-1500050 
 for multiple; Mon, 10 Jun 2019 13:55:53 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jun 2019 13:55:50 +0100
Message-Id: <20190610125550.20870-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_mmap_gtt: Disregard forked
 subtests on ICL for reasons
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

Tm90aGluZyB0byBzZWUgaGVyZSwgcGxlYXNlIG1vdmUgYWxvbmcuCgpYWFg6IFVwZGF0ZSB3aXRo
IGJldHRlciBidWd6aWxsYQoKQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcv
c2hvd19idWcuY2dpP2lkPTEwNzcxMyNjMTI1ClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFs
YUBsaW51eC5pbnRlbC5jb20+CkNjOiBNYXJ0aW4gUGVyZXMgPG1hcnRpbi5wZXJlc0BsaW51eC5p
bnRlbC5jb20+Ci0tLQogdGVzdHMvaTkxNS9nZW1fbW1hcF9ndHQuYyB8IDMgKysrCiAxIGZpbGUg
Y2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fbW1h
cF9ndHQuYyBiL3Rlc3RzL2k5MTUvZ2VtX21tYXBfZ3R0LmMKaW5kZXggMDM0NjU4ZTY0Li5jM2Ni
NWRiMmQgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2k5MTUvZ2VtX21tYXBfZ3R0LmMKKysrIGIvdGVzdHMv
aTkxNS9nZW1fbW1hcF9ndHQuYwpAQCAtNjU2LDYgKzY1Niw5IEBAIHRlc3RfaHVnZV9jb3B5KGlu
dCBmZCwgaW50IGh1Z2UsIGludCB0aWxpbmdfYSwgaW50IHRpbGluZ19iLCBpbnQgbmNwdXMpCiAJ
dWludDY0X3QgaHVnZV9vYmplY3Rfc2l6ZSwgaTsKIAl1bnNpZ25lZCBtb2RlID0gQ0hFQ0tfUkFN
OwogCisJaWd0X2ZhaWxfb25fZihpbnRlbF9nZW4oZGV2aWQpID49IDExICYmIG5jcHVzID4gMSwK
KwkJICAgICAgIlBsZWFzZSBhZGp1c3QgeW91ciBleHBlY3RhdGlvbnMsIGh0dHBzOi8vYnVncy5m
cmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNzcxMyNjMTI1XG4iKTsKKwogCXN3aXRj
aCAoaHVnZSkgewogCWNhc2UgLTI6CiAJCWh1Z2Vfb2JqZWN0X3NpemUgPSBnZW1fbWFwcGFibGVf
YXBlcnR1cmVfc2l6ZSgpIC8gNDsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
