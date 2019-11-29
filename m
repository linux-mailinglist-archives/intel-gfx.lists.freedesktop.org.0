Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D80E10D8E7
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 18:25:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CC286E943;
	Fri, 29 Nov 2019 17:25:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81D816E943
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 17:25:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19396744-1500050 
 for multiple; Fri, 29 Nov 2019 17:25:43 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Nov 2019 17:25:42 +0000
Message-Id: <20191129172542.1222810-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191129171908.1195512-1-chris@chris-wilson.co.uk>
References: <20191129171908.1195512-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/execlists: Ensure the tasklet is
 decoupled upon shutdown
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

QXMgd2Ugb25seSBjYW5jZWwgdGhlIHRpbWVycyBhc3luY2hyb25vdXNseSwgdGhleSBtYXkKc3Rp
bGwgYmUgcnVubmluZyBvbiBhbm90aGVyIENQVSBhcyB3ZSBzaHV0ZG93biwgcmFpc2luZyBvbmUg
bGFzdApzb2Z0aXJxLiBTbyBiZSBzYWZlIGFuZCBtYWtlIHN1cmUgdGhlIHRhc2tsZXQgaXMgZmx1
c2hlZCBiZWZvcmUKZGVzdHJveWluZyB0aGUgZW5naW5lJ3MgbWVtb3J5LgoKU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgfCAxMCArKysrKysrKysrCiAxIGZpbGUgY2hhbmdl
ZCwgMTAgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXgg
NGNkMGQ0NmI1ZGE2Li5mZWY0YjdlODIzZjUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xy
Yy5jCkBAIC0zNzc3LDggKzM3NzcsMTggQEAgdm9pZCBpbnRlbF9leGVjbGlzdHNfc2V0X2RlZmF1
bHRfc3VibWlzc2lvbihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJCWVuZ2luZS0+
ZmxhZ3MgfD0gSTkxNV9FTkdJTkVfSEFTX1JFTEFUSVZFX01NSU87CiB9CiAKK3N0YXRpYyB2b2lk
IGV4ZWNsaXN0c19zaHV0ZG93bihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCit7CisJ
LyogU3luY2hyb25pc2Ugd2l0aCByZXNpZHVhbCB0aW1lcnMgYW5kIGFueSBzb2Z0aXJxIHRoZXkg
cmFpc2UgKi8KKwlkZWxfdGltZXJfc3luYygmZW5naW5lLT5leGVjbGlzdHMudGltZXIpOworCWRl
bF90aW1lcl9zeW5jKCZlbmdpbmUtPmV4ZWNsaXN0cy5wcmVlbXB0KTsKKwl0YXNrbGV0X2tpbGwo
JmVuZ2luZS0+ZXhlY2xpc3RzLnRhc2tsZXQpOworfQorCiBzdGF0aWMgdm9pZCBleGVjbGlzdHNf
ZGVzdHJveShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiB7CisJZXhlY2xpc3RzX3No
dXRkb3duKGVuZ2luZSk7CisKIAlpbnRlbF9lbmdpbmVfY2xlYW51cF9jb21tb24oZW5naW5lKTsK
IAlscmNfZGVzdHJveV93YV9jdHgoZW5naW5lKTsKIAlrZnJlZShlbmdpbmUpOwotLSAKMi4yNC4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
