Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1BF5CF33E
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2019 09:11:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 077E86E1B6;
	Tue,  8 Oct 2019 07:11:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8CAD6E1B6
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2019 07:11:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18759433-1500050 
 for multiple; Tue, 08 Oct 2019 08:11:23 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Oct 2019 08:11:21 +0100
Message-Id: <20191008071121.25088-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Assign the engine->uncore
 shortcut
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

U2V0IHVwIHRoZSBlbmdpbmUtPnVuY29yZSBzaG9ydGN1dCBvbiBtb2NrX2VuZ2luZSBjcmVhdGlv
bi4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L21vY2tfZW5naW5lLmMgfCAxICsKIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L21vY2tfZW5naW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9tb2NrX2VuZ2lu
ZS5jCmluZGV4IDVkNDNjYmMzZjM0NS4uM2Q4ODM5N2MwZGJiIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9tb2NrX2VuZ2luZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L21vY2tfZW5naW5lLmMKQEAgLTI0OCw2ICsyNDgsNyBAQCBzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICptb2NrX2VuZ2luZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIAkvKiBtaW5p
bWFsIGVuZ2luZSBzZXR1cCBmb3IgcmVxdWVzdHMgKi8KIAllbmdpbmUtPmJhc2UuaTkxNSA9IGk5
MTU7CiAJZW5naW5lLT5iYXNlLmd0ID0gJmk5MTUtPmd0OworCWVuZ2luZS0+YmFzZS51bmNvcmUg
PSBpOTE1LT5ndC51bmNvcmU7CiAJc25wcmludGYoZW5naW5lLT5iYXNlLm5hbWUsIHNpemVvZihl
bmdpbmUtPmJhc2UubmFtZSksICIlcyIsIG5hbWUpOwogCWVuZ2luZS0+YmFzZS5pZCA9IGlkOwog
CWVuZ2luZS0+YmFzZS5tYXNrID0gQklUKGlkKTsKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
