Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8900BB0B6B
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 11:29:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D36FB6EC39;
	Thu, 12 Sep 2019 09:29:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 577096EC39
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 09:29:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18461334-1500050 
 for multiple; Thu, 12 Sep 2019 10:29:35 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Sep 2019 10:29:32 +0100
Message-Id: <20190912092933.4729-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/execlists: Add a paranoid flush of
 the CSB pointers upon reset
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

QWZ0ZXIgYSBHUFUgcmVzZXQsIHdlIG5lZWQgdG8gZHJhaW4gYWxsIHRoZSBDUyBldmVudHMgc28g
dGhhdCB3ZSBoYXZlIGFuCmFjY3VyYXRlIHBpY3R1cmUgb2YgdGhlIGV4ZWNsaXN0cyBzdGF0ZSBh
dCB0aGUgdGltZSBvZiB0aGUgcmVzZXQuIEJlCnBhcmFub2lkIGFuZCBmb3JjZSBhIHJlYWQgb2Yg
dGhlIENTQiB3cml0ZSBwb2ludGVyIGZyb20gbWVtb3J5LgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNaWthIEt1b3BwYWxhIDxtaWth
Lmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1p
a2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2xyYy5jIHwgNCArKysrCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwppbmRleCBkY2RmN2NmNjZlN2UuLmRiYzkwZGEy
MzQxYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKQEAgLTIzNTksNiArMjM1OSwx
MCBAQCBzdGF0aWMgdm9pZCBfX2V4ZWNsaXN0c19yZXNldChzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmUsIGJvb2wgc3RhbGxlZCkKIAlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKIAl1MzIg
KnJlZ3M7CiAKKwltYigpOyAvKiBwYXJhbm9pYTogcmVhZCB0aGUgQ1NCIHBvaW50ZXJzIGZyb20g
YWZ0ZXIgdGhlIHJlc2V0ICovCisJY2xmbHVzaChleGVjbGlzdHMtPmNzYl93cml0ZSk7CisJbWIo
KTsKKwogCXByb2Nlc3NfY3NiKGVuZ2luZSk7IC8qIGRyYWluIHByZWVtcHRpb24gZXZlbnRzICov
CiAKIAkvKiBGb2xsb3dpbmcgdGhlIHJlc2V0LCB3ZSBuZWVkIHRvIHJlbG9hZCB0aGUgQ1NCIHJl
YWQvd3JpdGUgcG9pbnRlcnMgKi8KLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
