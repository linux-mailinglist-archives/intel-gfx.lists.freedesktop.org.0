Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D66A134D41
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 18:29:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DFFF8922E;
	Tue,  4 Jun 2019 16:29:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 323448922E;
 Tue,  4 Jun 2019 16:29:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16791541-1500050 
 for multiple; Tue, 04 Jun 2019 17:29:16 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jun 2019 17:29:12 +0100
Message-Id: <20190604162912.28359-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_shared: Fixup vec0 mmio base
 for icl
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

SSB0b2xkIHZlY3MwIHRvIHVzZSB2ZWNzMSByZWdpc3RlcnMuLi4KClNpZ25lZC1vZmYtYnk6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIHRlc3RzL2k5MTUvZ2Vt
X2N0eF9zaGFyZWQuYyB8IDQgKysrLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2N0eF9zaGFyZWQuYyBi
L3Rlc3RzL2k5MTUvZ2VtX2N0eF9zaGFyZWQuYwppbmRleCA2N2VjZDA5NTMuLjA2OTk2NDU0NiAx
MDA2NDQKLS0tIGEvdGVzdHMvaTkxNS9nZW1fY3R4X3NoYXJlZC5jCisrKyBiL3Rlc3RzL2k5MTUv
Z2VtX2N0eF9zaGFyZWQuYwpAQCAtNTQ0LDkgKzU0NCwxMSBAQCBzdGF0aWMgdm9pZCBpbmRlcGVu
ZGVudChpbnQgaTkxNSwgdW5zaWduZWQgcmluZywgdW5zaWduZWQgZmxhZ3MpCiAJCW1taW9fYmFz
ZSA9IDB4MjIwMDA7CiAJCWJyZWFrOwogCisjZGVmaW5lIEdFTjExX1ZFQ1MwX0JBU0UgMHgxYzgw
MDAKKyNkZWZpbmUgR0VOMTFfVkVDUzFfQkFTRSAweDFkODAwMAogCWNhc2UgSTkxNV9FWEVDX1ZF
Qk9YOgogCQlpZiAoaW50ZWxfZ2VuKGludGVsX2dldF9kcm1fZGV2aWQoaTkxNSkpID49IDExKQot
CQkJbW1pb19iYXNlID0gMHgxZDgwMDA7CisJCQltbWlvX2Jhc2UgPSBHRU4xMV9WRUNTMF9CQVNF
OwogCQllbHNlCiAJCQltbWlvX2Jhc2UgPSAweDFhMDAwOwogCQlicmVhazsKLS0gCjIuMjAuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
