Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D73B66DE
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2019 17:16:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3A936F3DD;
	Wed, 18 Sep 2019 15:16:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BA9E16F3DB;
 Wed, 18 Sep 2019 15:16:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B29CDA0099;
 Wed, 18 Sep 2019 15:16:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 18 Sep 2019 15:16:03 -0000
Message-ID: <20190918151603.21835.83075@emeril.freedesktop.org>
References: <20190918145453.8800-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190918145453.8800-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B1/4=5D_drm/i915=3A_Verify_the_engine_aft?=
 =?utf-8?q?er_acquiring_the_active=2Elock?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvNF0g
ZHJtL2k5MTU6IFZlcmlmeSB0aGUgZW5naW5lIGFmdGVyIGFjcXVpcmluZyB0aGUgYWN0aXZlLmxv
Y2sKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY2ODY3
LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIHNwYXJzZSBvcmlnaW4vZHJt
LXRpcApTcGFyc2UgdmVyc2lvbjogdjAuNi4wCkNvbW1pdDogZHJtL2k5MTU6IFZlcmlmeSB0aGUg
ZW5naW5lIGFmdGVyIGFjcXVpcmluZyB0aGUgYWN0aXZlLmxvY2sKT2theSEKCkNvbW1pdDogZHJt
L2k5MTU6IE1hcmsgaTkxNV9yZXF1ZXN0LnRpbWVsaW5lIGFzIGEgdm9sYXRpbGUsIHJjdSBwb2lu
dGVyCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1lbGluZS5jOjUwNDo0MTogICAg
ZXhwZWN0ZWQgc3RydWN0IGludGVsX3RpbWVsaW5lICp0bAorZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfdGltZWxpbmUuYzo1MDQ6NDE6ICAgIGdvdCBzdHJ1Y3QgaW50ZWxfdGltZWxpbmUg
W25vZGVyZWZdIDxhc246ND4gKnRpbWVsaW5lCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF90aW1lbGluZS5jOjUwNDo0MTogd2FybmluZzogaW5jb3JyZWN0IHR5cGUgaW4gaW5pdGlhbGl6
ZXIgKGRpZmZlcmVudCBhZGRyZXNzIHNwYWNlcykKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVxdWVzdC5jOjc3MTo0OTogICAgZXhwZWN0ZWQgc3RydWN0IGxpc3RfaGVhZCBjb25zdCAqaGVh
ZAorZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0LmM6NzcxOjQ5OiAgICBnb3Qgc3Ry
dWN0IGxpc3RfaGVhZCBbbm9kZXJlZl0gPGFzbjo0PiAqCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlcXVlc3QuYzo3NzE6NDk6IHdhcm5pbmc6IGluY29ycmVjdCB0eXBlIGluIGFyZ3VtZW50
IDIgKGRpZmZlcmVudCBhZGRyZXNzIHNwYWNlcykKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVxdWVzdC5jOjgxMzo5OiB3YXJuaW5nOiBkZXJlZmVyZW5jZSBvZiBub2RlcmVmIGV4cHJlc3Np
b24KCkNvbW1pdDogZHJtL2k5MTU6IExvY2sgc2lnbmFsZXIgdGltZWxpbmUgd2hpbGUgbmF2aWdh
dGluZwotTzpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYzo3NzE6NDk6ICAgIGV4
cGVjdGVkIHN0cnVjdCBsaXN0X2hlYWQgY29uc3QgKmhlYWQKLU86ZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZXF1ZXN0LmM6NzcxOjQ5OiAgICBnb3Qgc3RydWN0IGxpc3RfaGVhZCBbbm9kZXJl
Zl0gPGFzbjo0PiAqCi1POmRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jOjc3MTo0
OTogd2FybmluZzogaW5jb3JyZWN0IHR5cGUgaW4gYXJndW1lbnQgMiAoZGlmZmVyZW50IGFkZHJl
c3Mgc3BhY2VzKQotTzpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYzo4MTM6OTog
d2FybmluZzogZGVyZWZlcmVuY2Ugb2Ygbm9kZXJlZiBleHByZXNzaW9uCisKCkNvbW1pdDogZHJt
L2k5MTU6IFByb3RlY3QgdGltZWxpbmUtPmh3c3AgZGVyZWZlcmVuY2luZwotTzpkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF90aW1lbGluZS5jOjUwNDo0MTogICAgZXhwZWN0ZWQgc3RydWN0
IGludGVsX3RpbWVsaW5lICp0bAotTzpkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1l
bGluZS5jOjUwNDo0MTogICAgZ290IHN0cnVjdCBpbnRlbF90aW1lbGluZSBbbm9kZXJlZl0gPGFz
bjo0PiAqdGltZWxpbmUKLU86ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUu
Yzo1MDQ6NDE6IHdhcm5pbmc6IGluY29ycmVjdCB0eXBlIGluIGluaXRpYWxpemVyIChkaWZmZXJl
bnQgYWRkcmVzcyBzcGFjZXMpCisKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
