Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 004D83B670
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 15:50:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 046DC890BA;
	Mon, 10 Jun 2019 13:50:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 480F1890BA
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 13:50:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16852925-1500050 
 for multiple; Mon, 10 Jun 2019 14:34:14 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 10 Jun 2019 14:34:13 +0100
Message-Id: <20190610133413.21460-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] Revert "drm/i915/icl: More workaround for port
 F detection due to broken VBTs"
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

VGhpcyByZXZlcnRzIGNvbW1pdCAxYWEzNzUwODg1ZmJjZWNlNWEwYzllNmJiY2QwMTRhYzUyNmNl
YTQxLgoKUmVmZXJlbmNlczogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5j
Z2k/aWQ9MTEwODgyCi0tLQogaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaCB8IDQgKystLQogMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oIGIvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaApp
bmRleCA2ZDYwZWE2OGMxNzEuLjY0NzdkYTIyYWYyOCAxMDA2NDQKLS0tIGEvaW5jbHVkZS9kcm0v
aTkxNV9wY2lpZHMuaAorKysgYi9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oCkBAIC01NTksNiAr
NTU5LDcgQEAKICNkZWZpbmUgSU5URUxfSUNMX1BPUlRfRl9JRFMoaW5mbykgXAogCUlOVEVMX1ZH
QV9ERVZJQ0UoMHg4QTUwLCBpbmZvKSwgXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHg4QTVDLCBpbmZv
KSwgXAorCUlOVEVMX1ZHQV9ERVZJQ0UoMHg4QTVELCBpbmZvKSwgXAogCUlOVEVMX1ZHQV9ERVZJ
Q0UoMHg4QTU5LCBpbmZvKSwJXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHg4QTU4LCBpbmZvKSwJXAog
CUlOVEVMX1ZHQV9ERVZJQ0UoMHg4QTUyLCBpbmZvKSwgXApAQCAtNTcyLDggKzU3Myw3IEBACiAK
ICNkZWZpbmUgSU5URUxfSUNMXzExX0lEUyhpbmZvKSBcCiAJSU5URUxfSUNMX1BPUlRfRl9JRFMo
aW5mbyksIFwKLQlJTlRFTF9WR0FfREVWSUNFKDB4OEE1MSwgaW5mbyksIFwKLQlJTlRFTF9WR0Ff
REVWSUNFKDB4OEE1RCwgaW5mbykKKwlJTlRFTF9WR0FfREVWSUNFKDB4OEE1MSwgaW5mbykKIAog
LyogRUhMICovCiAjZGVmaW5lIElOVEVMX0VITF9JRFMoaW5mbykgXAotLSAKMi4yMC4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
