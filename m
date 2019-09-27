Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA263C0BFB
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 21:15:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66A166E20F;
	Fri, 27 Sep 2019 19:15:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF3C16E202
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 19:15:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18644038-1500050 
 for multiple; Fri, 27 Sep 2019 20:14:47 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Sep 2019 20:14:43 +0100
Message-Id: <20190927191443.14126-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190927191443.14126-1-chris@chris-wilson.co.uk>
References: <20190927191443.14126-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/selftests;
 Do not try to sanitize mock HW
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

SWYgd2UgYXJlIG1vY2tpbmcgdGhlIGRldmljZSwgc2tpcCB0cnlpbmcgdG8gc2FuaXRpemUgdGhl
IHBtIEhXIHN0YXRlLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+CkNjOiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jIHwgMyArKy0KIDEgZmlsZSBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZ3RfcG0uYwppbmRleCA0MmYxNzVkOWI5OGMuLjI5ZmExZGFiYmMyZSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG0uYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jCkBAIC0xMzcsNyArMTM3LDggQEAgdm9pZCBpbnRl
bF9ndF9zYW5pdGl6ZShzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCBib29sIGZvcmNlKQogCiB2b2lkIGlu
dGVsX2d0X3BtX2Rpc2FibGUoc3RydWN0IGludGVsX2d0ICpndCkKIHsKLQlpbnRlbF9zYW5pdGl6
ZV9ndF9wb3dlcnNhdmUoZ3QtPmk5MTUpOworCWlmICghaXNfbW9ja19ndChndCkpCisJCWludGVs
X3Nhbml0aXplX2d0X3Bvd2Vyc2F2ZShndC0+aTkxNSk7CiB9CiAKIHZvaWQgaW50ZWxfZ3RfcG1f
ZmluaShzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
