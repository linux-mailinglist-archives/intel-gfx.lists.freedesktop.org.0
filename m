Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4190477A9E
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jul 2019 18:37:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0A736EEC6;
	Sat, 27 Jul 2019 16:37:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46B8B6EEC0;
 Sat, 27 Jul 2019 16:37:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17658651-1500050 
 for multiple; Sat, 27 Jul 2019 17:37:27 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 27 Jul 2019 17:37:27 +0100
Message-Id: <20190727163727.24432-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] Force spin-batch to cause a hang as
 required
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

V2hlbiB1c2luZyBhIHNwaW5uZXIgdG8gdHJpZ2dlciBhIGhhbmcsIG1ha2UgaXQgdW5wcmVlbXB0
YWJsZSBzbyB0aGF0IGl0CmFwcGVhcnMgbGlrZSBhIHRydWUgaGFuZy4KClNpZ25lZC1vZmYtYnk6
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIHRlc3RzL2k5MTUv
Z2VtX2V4ZWNfZmVuY2UuYyB8IDMgKystCiB0ZXN0cy9rbXNfYnVzeS5jICAgICAgICAgICAgfCAz
ICsrLQogMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fZXhlY19mZW5jZS5jIGIvdGVzdHMvaTkxNS9nZW1f
ZXhlY19mZW5jZS5jCmluZGV4IDBiZWZiNTRmOC4uZjViZGY1ODUxIDEwMDY0NAotLS0gYS90ZXN0
cy9pOTE1L2dlbV9leGVjX2ZlbmNlLmMKKysrIGIvdGVzdHMvaTkxNS9nZW1fZXhlY19mZW5jZS5j
CkBAIC0zMzEsNyArMzMxLDggQEAgc3RhdGljIHZvaWQgdGVzdF9mZW5jZV9hd2FpdChpbnQgZmQs
IHVuc2lnbmVkIHJpbmcsIHVuc2lnbmVkIGZsYWdzKQogCiAJc3BpbiA9IGlndF9zcGluX25ldyhm
ZCwKIAkJCSAgICAuZW5naW5lID0gcmluZywKLQkJCSAgICAuZmxhZ3MgPSBJR1RfU1BJTl9GRU5D
RV9PVVQpOworCQkJICAgIC5mbGFncyA9IChJR1RfU1BJTl9GRU5DRV9PVVQgfAorCQkJCSAgICAg
IElHVF9TUElOX05PX1BSRUVNUFRJT04pKTsKIAlpZ3RfYXNzZXJ0KHNwaW4tPm91dF9mZW5jZSAh
PSAtMSk7CiAKIAlpID0gMDsKZGlmZiAtLWdpdCBhL3Rlc3RzL2ttc19idXN5LmMgYi90ZXN0cy9r
bXNfYnVzeS5jCmluZGV4IDY2ZjI2Y2QwOC4uN2U1YWIzZDE5IDEwMDY0NAotLS0gYS90ZXN0cy9r
bXNfYnVzeS5jCisrKyBiL3Rlc3RzL2ttc19idXN5LmMKQEAgLTI3MSw3ICsyNzEsOCBAQCBzdGF0
aWMgdm9pZCB0ZXN0X3BhZ2VmbGlwX21vZGVzZXRfaGFuZyhpZ3RfZGlzcGxheV90ICpkcHksCiAK
IAl0ID0gaWd0X3NwaW5fbmV3KGRweS0+ZHJtX2ZkLAogCQkJIC5lbmdpbmUgPSByaW5nLAotCQkJ
IC5kZXBlbmRlbmN5ID0gZmIuZ2VtX2hhbmRsZSk7CisJCQkgLmRlcGVuZGVuY3kgPSBmYi5nZW1f
aGFuZGxlLAorCQkJIC5mbGFncyA9IElHVF9TUElOX05PX1BSRUVNUFRJT04pOwogCiAJZG9fb3Jf
ZGllKGRybU1vZGVQYWdlRmxpcChkcHktPmRybV9mZCwgZHB5LT5waXBlc1twaXBlXS5jcnRjX2lk
LCBmYi5mYl9pZCwgRFJNX01PREVfUEFHRV9GTElQX0VWRU5ULCAmZmIpKTsKIAotLSAKMi4yMi4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
