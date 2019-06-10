Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B963B5AA
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 15:02:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84DC6890B9;
	Mon, 10 Jun 2019 13:02:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1542C890B9;
 Mon, 10 Jun 2019 13:02:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16852577-1500050 
 for multiple; Mon, 10 Jun 2019 14:02:01 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jun 2019 14:02:00 +0100
Message-Id: <20190610130200.21164-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190610125550.20870-1-chris@chris-wilson.co.uk>
References: <20190610125550.20870-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2] i915/gem_mmap_gtt: Disregard forked
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

Tm90aGluZyB0byBzZWUgaGVyZSwgcGxlYXNlIG1vdmUgYWxvbmcuCgpSZWZlcmVuY2VzOiBodHRw
czovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA4ODIKU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNaWthIEt1
b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IE1hcnRpbiBQZXJlcyA8
bWFydGluLnBlcmVzQGxpbnV4LmludGVsLmNvbT4KLS0tCiB0ZXN0cy9pOTE1L2dlbV9tbWFwX2d0
dC5jIHwgMyArKysKIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQg
YS90ZXN0cy9pOTE1L2dlbV9tbWFwX2d0dC5jIGIvdGVzdHMvaTkxNS9nZW1fbW1hcF9ndHQuYwpp
bmRleCAwMzQ2NThlNjQuLjZmM2E5YzM2ZSAxMDA2NDQKLS0tIGEvdGVzdHMvaTkxNS9nZW1fbW1h
cF9ndHQuYworKysgYi90ZXN0cy9pOTE1L2dlbV9tbWFwX2d0dC5jCkBAIC02NTYsNiArNjU2LDkg
QEAgdGVzdF9odWdlX2NvcHkoaW50IGZkLCBpbnQgaHVnZSwgaW50IHRpbGluZ19hLCBpbnQgdGls
aW5nX2IsIGludCBuY3B1cykKIAl1aW50NjRfdCBodWdlX29iamVjdF9zaXplLCBpOwogCXVuc2ln
bmVkIG1vZGUgPSBDSEVDS19SQU07CiAKKwlpZ3RfZmFpbF9vbl9mKGludGVsX2dlbihkZXZpZCkg
Pj0gMTEgJiYgbmNwdXMgPiAxLAorCQkgICAgICAiUGxlYXNlIGFkanVzdCB5b3VyIGV4cGVjdGF0
aW9ucywgaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwODgy
XG4iKTsKKwogCXN3aXRjaCAoaHVnZSkgewogCWNhc2UgLTI6CiAJCWh1Z2Vfb2JqZWN0X3NpemUg
PSBnZW1fbWFwcGFibGVfYXBlcnR1cmVfc2l6ZSgpIC8gNDsKLS0gCjIuMjAuMQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
