Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6894C89F
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 09:46:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACDD06E519;
	Thu, 20 Jun 2019 07:46:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 256186E513;
 Thu, 20 Jun 2019 07:46:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1E2C8A3C0D;
 Thu, 20 Jun 2019 07:46:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 20 Jun 2019 07:46:32 -0000
Message-ID: <20190620074632.12825.96164@emeril.freedesktop.org>
References: <20190620070559.30076-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190620070559.30076-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/3=5D_drm/i915/execlists=3A_Preempt?=
 =?utf-8?q?-to-busy?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvM10g
ZHJtL2k5MTUvZXhlY2xpc3RzOiBQcmVlbXB0LXRvLWJ1c3kKVVJMICAgOiBodHRwczovL3BhdGNo
d29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYyNDMxLwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1
bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKNGZlZGI4OTdjZDE1IGRy
bS9pOTE1L2V4ZWNsaXN0czogUHJlZW1wdC10by1idXN5Ci06MTUwMjogQ0hFQ0s6TUFDUk9fQVJH
X1JFVVNFOiBNYWNybyBhcmd1bWVudCByZXVzZSAncF9wdHInIC0gcG9zc2libGUgc2lkZS1lZmZl
Y3RzPwojMTUwMjogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oOjEzNDoK
KyNkZWZpbmUgcHRyX2NvdW50X2RlYyhwX3B0cikgZG8gewkJCQkJXAorCXR5cGVvZihwX3B0cikg
X19wID0gKHBfcHRyKTsJCQkJCVwKKwl1bnNpZ25lZCBsb25nIF9fdiA9ICh1bnNpZ25lZCBsb25n
KSgqX19wKTsJCQlcCisJKl9fcCA9ICh0eXBlb2YoKnBfcHRyKSkoLS1fX3YpOwkJCQkJXAorfSB3
aGlsZSAoMCkKCi06MTUwODogQ0hFQ0s6TUFDUk9fQVJHX1JFVVNFOiBNYWNybyBhcmd1bWVudCBy
ZXVzZSAncF9wdHInIC0gcG9zc2libGUgc2lkZS1lZmZlY3RzPwojMTUwODogRklMRTogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oOjE0MDoKKyNkZWZpbmUgcHRyX2NvdW50X2luYyhw
X3B0cikgZG8gewkJCQkJXAorCXR5cGVvZihwX3B0cikgX19wID0gKHBfcHRyKTsJCQkJCVwKKwl1
bnNpZ25lZCBsb25nIF9fdiA9ICh1bnNpZ25lZCBsb25nKSgqX19wKTsJCQlcCisJKl9fcCA9ICh0
eXBlb2YoKnBfcHRyKSkoKytfX3YpOwkJCQkJXAorfSB3aGlsZSAoMCkKCi06MTc5MTogV0FSTklO
RzpMSU5FX1NQQUNJTkc6IE1pc3NpbmcgYSBibGFuayBsaW5lIGFmdGVyIGRlY2xhcmF0aW9ucwoj
MTc5MTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZ3VjX3N1Ym1pc3Npb24uYzo4
MjA6CisJCWludCByZW0gPSBBUlJBWV9TSVpFKGV4ZWNsaXN0cy0+aW5mbGlnaHQpIC0gaWR4Owor
CQltZW1tb3ZlKGV4ZWNsaXN0cy0+aW5mbGlnaHQsIHBvcnQsIHJlbSAqIHNpemVvZigqcG9ydCkp
OwoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAyIGNoZWNrcywgMTY5MCBsaW5lcyBjaGVj
a2VkCjQ0Zjc0OWY1NDgyNCBkcm0vaTkxNS9leGVjbGlzdHM6IE1pbmltYWxpc3RpYyB0aW1lc2xp
Y2luZwotOjM0NTogV0FSTklORzpMT05HX0xJTkU6IGxpbmUgb3ZlciAxMDAgY2hhcmFjdGVycwoj
MzQ1OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYzoyMTE6CisJ
CQkgICAgICAyICogUlVOVElNRV9JTkZPKG91dGVyLT5pOTE1KS0+bnVtX2VuZ2luZXMgKiAoY291
bnQgKyAyKSAqIChjb3VudCArIDMpKSA8IDApIHsKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5n
cywgMCBjaGVja3MsIDQyNiBsaW5lcyBjaGVja2VkCjllYWZiNDI0YTgzYSBkcm0vaTkxNS9leGVj
bGlzdHM6IEZvcmNlIHByZWVtcHRpb24KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
