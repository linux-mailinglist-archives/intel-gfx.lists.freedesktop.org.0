Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7807E10C5DB
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 10:21:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D42C89337;
	Thu, 28 Nov 2019 09:21:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B3A489337
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 09:21:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19371690-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 09:21:21 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Nov 2019 09:21:20 +0000
Message-Id: <20191128092120.3783242-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI] drm/i915/tgl: Drop preemption to see if that helps
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

LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDUgKysrKy0KIDEgZmls
ZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jCmluZGV4IDRjZDBkNDZiNWRhNi4uMzdjOGVlOTgwMWQwIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwpAQCAtMzc3Myw4ICszNzczLDExIEBAIHZvaWQgaW50
ZWxfZXhlY2xpc3RzX3NldF9kZWZhdWx0X3N1Ym1pc3Npb24oc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqZW5naW5lKQogCQkJZW5naW5lLT5mbGFncyB8PSBJOTE1X0VOR0lORV9IQVNfUFJFRU1QVElP
TjsKIAl9CiAKLQlpZiAoSU5URUxfR0VOKGVuZ2luZS0+aTkxNSkgPj0gMTIpCisJaWYgKElOVEVM
X0dFTihlbmdpbmUtPmk5MTUpID49IDEyKSB7CiAJCWVuZ2luZS0+ZmxhZ3MgfD0gSTkxNV9FTkdJ
TkVfSEFTX1JFTEFUSVZFX01NSU87CisJCWVuZ2luZS0+ZmxhZ3MgJj0gfkk5MTVfRU5HSU5FX0hB
U19QUkVFTVBUSU9OOworCQllbmdpbmUtPmZsYWdzICY9IH5JOTE1X0VOR0lORV9IQVNfU0VNQVBI
T1JFUzsKKwl9CiB9CiAKIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19kZXN0cm95KHN0cnVjdCBpbnRl
bF9lbmdpbmVfY3MgKmVuZ2luZSkKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
