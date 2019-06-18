Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70DD14AB90
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 22:21:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 929926E239;
	Tue, 18 Jun 2019 20:21:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24D8B6E23D
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 20:21:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16945621-1500050 
 for multiple; Tue, 18 Jun 2019 21:21:38 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jun 2019 21:21:39 +0100
Message-Id: <20190618202139.1481-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_engine: Prevent preemption
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

SW4gb3JkZXIgdG8gcGluIHRoZSBlbmdpbmUgYXMgYnVzeSwgd2UgaGF2ZSB0byBwcmV2ZW50IHRo
ZSBrZXJuZWwgZnJvbQpleGVjdXRpbmcgb3RoZXIgaW5kZXBlbmRlbnQgd29yayBhaGVhZCBvZiBv
dXIgcGx1Zywgc28gdGVsbCB0aGUgc3Bpbm5lcgp0byBub3QgYWxsb3cgcHJlZW1wdGlvbi4KClNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0K
IHRlc3RzL2k5MTUvZ2VtX2N0eF9lbmdpbmVzLmMgfCAzICsrLQogMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2Vt
X2N0eF9lbmdpbmVzLmMgYi90ZXN0cy9pOTE1L2dlbV9jdHhfZW5naW5lcy5jCmluZGV4IDNlY2Fk
ZTQxNy4uZDQ3Y2JkZDdjIDEwMDY0NAotLS0gYS90ZXN0cy9pOTE1L2dlbV9jdHhfZW5naW5lcy5j
CisrKyBiL3Rlc3RzL2k5MTUvZ2VtX2N0eF9lbmdpbmVzLmMKQEAgLTI4Myw3ICsyODMsOCBAQCBz
dGF0aWMgdm9pZCBleGVjdXRlX29uZShpbnQgaTkxNSkKIAogCQkJc3BpbiA9IGlndF9zcGluX25l
dyhpOTE1LAogCQkJCQkgICAgLmN0eCA9IHBhcmFtLmN0eF9pZCwKLQkJCQkJICAgIC5lbmdpbmUg
PSAwKTsKKwkJCQkJICAgIC5lbmdpbmUgPSAwLAorCQkJCQkgICAgLmZsYWdzID0gSUdUX1NQSU5f
Tk9fUFJFRU1QVElPTik7CiAKIAkJCWlndF9kZWJ1ZygiVGVzdGluZyB3aXRoIG1hcCBvZiAlZCBl
bmdpbmVzXG4iLCBpICsgMSk7CiAJCQltZW1zZXQoJmVuZ2luZXMuZW5naW5lcywgLTEsIHNpemVv
ZihlbmdpbmVzLmVuZ2luZXMpKTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
