Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D63E2DBBA
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 13:24:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC1C76E2DD;
	Wed, 29 May 2019 11:24:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10E256E2DD
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2019 11:24:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16718847-1500050 
 for multiple; Wed, 29 May 2019 12:24:22 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 May 2019 12:24:20 +0100
Message-Id: <20190529112420.17257-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Initialise subslice prior to
 potential zero-length loop
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

QXBwZWFzZSBzdGF0aWMgYW5hbHlzZXJzIGJ5IG1ha2luZyBzdXJlIHN1YnNsaWNlIGFsd2F5cyBo
YXZlIGEgdmFsdWUuCgpkcml2ZXJzL2dwdS9kcm0vaTkxNS8vZ3QvaW50ZWxfZW5naW5lX2NzLmM6
OTcxIGludGVsX3NzZXVfZmxzX3N1YnNsaWNlKCkgZXJyb3I6IHVuaW5pdGlhbGl6ZWQgc3ltYm9s
ICdzdWJzbGljZScuCgpUaGVyZSdzIGFsc28gdGhlIG5hZ2dpbmcgcXVlc3Rpb24gb2Ygd2hldGhl
ciB0aGF0IGZscygpIGlzIG9mZi1ieS1vbmUuLi4KCkZpeGVzOiAxYWMxNTllMjNjMmMgKCJkcm0v
aTkxNTogRXhwYW5kIHN1YnNsaWNlIG1hc2siKQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRh
bmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+CkNjOiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlv
bmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+CkNjOiBTdHVhcnQgU3VtbWVycyA8c3R1YXJ0LnN1
bW1lcnNAaW50ZWwuY29tPgpDYzogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyB8IDYg
KysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKaW5kZXggMTU4NzIyYjUw
NjkxLi5mYzg4MDQyNGJlMmYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZV9jcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2lu
ZV9jcy5jCkBAIC05NTYsMTIgKzk1NiwxMiBAQCBjb25zdCBjaGFyICppOTE1X2NhY2hlX2xldmVs
X3N0cihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgaW50IHR5cGUpCiBzdGF0aWMgaW5s
aW5lIHUzMgogaW50ZWxfc3NldV9mbHNfc3Vic2xpY2UoY29uc3Qgc3RydWN0IHNzZXVfZGV2X2lu
Zm8gKnNzZXUsIHUzMiBzbGljZSkKIHsKLQl1MzIgc3Vic2xpY2U7CisJY29uc3QgdTggKnN1YnNs
aWNlX21hc2sgPSBzc2V1LT5zdWJzbGljZV9tYXNrICsgc2xpY2UgKiBzc2V1LT5zc19zdHJpZGU7
CisJdTMyIHN1YnNsaWNlID0gMDsKIAlpbnQgaTsKIAogCWZvciAoaSA9IHNzZXUtPnNzX3N0cmlk
ZSAtIDE7IGkgPj0gMDsgaS0tKSB7Ci0JCXN1YnNsaWNlID0gZmxzKHNzZXUtPnN1YnNsaWNlX21h
c2tbc2xpY2UgKiBzc2V1LT5zc19zdHJpZGUgKwotCQkJCQkJICAgaV0pOworCQlzdWJzbGljZSA9
IGZscyhzdWJzbGljZV9tYXNrW2ldKTsKIAkJaWYgKHN1YnNsaWNlKSB7CiAJCQlzdWJzbGljZSAr
PSBpICogQklUU19QRVJfQllURTsKIAkJCWJyZWFrOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
