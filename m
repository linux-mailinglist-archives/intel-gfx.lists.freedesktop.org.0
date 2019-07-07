Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC6B617BB
	for <lists+intel-gfx@lfdr.de>; Sun,  7 Jul 2019 23:41:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 152438999E;
	Sun,  7 Jul 2019 21:41:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C627C89996;
 Sun,  7 Jul 2019 21:41:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BDF96A363D;
 Sun,  7 Jul 2019 21:41:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 07 Jul 2019 21:41:19 -0000
Message-ID: <20190707214119.27871.8693@emeril.freedesktop.org>
References: <20190707210024.26192-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190707210024.26192-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B01/11=5D_drm/i915/gtt=3A_Use_shallow?=
 =?utf-8?q?_dma_pages_for_scratch?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzAxLzEx
XSBkcm0vaTkxNS9ndHQ6IFVzZSBzaGFsbG93IGRtYSBwYWdlcyBmb3Igc2NyYXRjaApVUkwgICA6
IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjMzMjkvClN0YXRlIDog
d2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcAo0
NmI0ZDA3MmIxOTQgZHJtL2k5MTUvZ3R0OiBVc2Ugc2hhbGxvdyBkbWEgcGFnZXMgZm9yIHNjcmF0
Y2gKNjI3ZGZmNzg1ODk3IGRybS9pOTE1L2d0dDogV3JhcCBwYWdlX3RhYmxlIHdpdGggcGFnZV9k
aXJlY3RvcnkKLTozOTI6IENIRUNLOk1BQ1JPX0FSR19SRVVTRTogTWFjcm8gYXJndW1lbnQgcmV1
c2UgJ3B4JyAtIHBvc3NpYmxlIHNpZGUtZWZmZWN0cz8KIzM5MjogRklMRTogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW1fZ3R0Lmg6MjYxOgorI2RlZmluZSBweF9iYXNlKHB4KSBcCisJX19w
eF9jaG9vc2VfZXhwcihweCwgc3RydWN0IGk5MTVfcGFnZV9kbWEgKiwgX194LCBcCisJX19weF9j
aG9vc2VfZXhwcihweCwgc3RydWN0IGk5MTVfcGFnZV90YWJsZSAqLCAmX194LT5iYXNlLCBcCisJ
X19weF9jaG9vc2VfZXhwcihweCwgc3RydWN0IGk5MTVfcGFnZV9kaXJlY3RvcnkgKiwgJl9feC0+
cHQuYmFzZSwgXAorCSh2b2lkKTApKSkKCi06Mzk5OiBDSEVDSzpNQUNST19BUkdfUkVVU0U6IE1h
Y3JvIGFyZ3VtZW50IHJldXNlICdweCcgLSBwb3NzaWJsZSBzaWRlLWVmZmVjdHM/CiMzOTk6IEZJ
TEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5oOjI2ODoKKyNkZWZpbmUgcHhf
cHQocHgpIFwKKwlfX3B4X2Nob29zZV9leHByKHB4LCBzdHJ1Y3QgaTkxNV9wYWdlX3RhYmxlICos
IF9feCwgXAorCV9fcHhfY2hvb3NlX2V4cHIocHgsIHN0cnVjdCBpOTE1X3BhZ2VfZGlyZWN0b3J5
ICosICZfX3gtPnB0LCBcCisJKHZvaWQpMCkpCgp0b3RhbDogMCBlcnJvcnMsIDAgd2FybmluZ3Ms
IDIgY2hlY2tzLCAzNjggbGluZXMgY2hlY2tlZAozZDEyNWNhNWI4N2UgZHJtL2k5MTUvZ3R0OiBS
ZW9yZGVyIGdlbjggcHBndHQgZnJlZS9jbGVhci9hbGxvYwotOjM3MDogV0FSTklORzpMSU5FX1NQ
QUNJTkc6IE1pc3NpbmcgYSBibGFuayBsaW5lIGFmdGVyIGRlY2xhcmF0aW9ucwojMzcwOiBGSUxF
OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYzoxMTk0OgorCWRtYV9hZGRyX3Qg
YWRkciA9IHNnX2RtYV9hZGRyZXNzKHNnKTsKKwlyZXR1cm4gKHN0cnVjdCBzZ3RfZG1hKSB7IHNn
LCBhZGRyLCBhZGRyICsgc2ctPmxlbmd0aCB9OwoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdz
LCAwIGNoZWNrcywgNzE3IGxpbmVzIGNoZWNrZWQKY2U2NzIxNmJkY2I4IGRybS9pOTE1L2d0dDog
TWFya3VwIGk5MTVfcHBndHQgZGVwdGgKNGVlZWMyMjI0M2NjIGRybS9pOTE1L2d0dDogQ29tcHV0
ZSB0aGUgcmFkaXggZm9yIGdlbjggcGFnZSB0YWJsZSBsZXZlbHMKMDRmZGQ1MGU3NWU1IGRybS9p
OTE1L2d0dDogQ29udmVydCB2bS0+c2NyYXRjaCBpbnRvIGFuIGFycmF5CjE4MDYwMGVjNzc0NiBk
cm0vaTkxNS9ndHQ6IFVzZSBOVUxMIHRvIGVuY29kZSBzY3JhdGNoIHNoYWRvdyBlbnRyaWVzCjcx
ZGExMDA3MGNlYiBkcm0vaTkxNS9ndHQ6IFJlY3Vyc2l2ZSBjbGVhbnVwIGZvciBnZW44Cjc1Mzdm
OGM0YjUyOCBkcm0vaTkxNS9ndHQ6IFJlY3Vyc2l2ZSBwcGd0dCBjbGVhciBmb3IgZ2VuOAoyMmMx
ZGYzY2I2NDAgZHJtL2k5MTUvZ3R0OiBSZWN1cnNpdmUgcHBndHQgYWxsb2MgZm9yIGdlbjgKNTNk
NzdmOTg0MjRkIGRybS9pOTE1L2d0dDogVGlkeSB1cCBwcGd0dCBpbnNlcnRpb24gZm9yIGdlbjgK
LToyMzU6IFdBUk5JTkc6TE9OR19MSU5FOiBsaW5lIG92ZXIgMTAwIGNoYXJhY3RlcnMKIzIzNTog
RklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmM6MTMyODoKKwkJCQkJCQkg
ICAgaTkxNV9wZF9lbnRyeShwbWw0LCBnZW44X3BkX2luZGV4KGlkeCwgMykpLAoKdG90YWw6IDAg
ZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgMzM2IGxpbmVzIGNoZWNrZWQKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
