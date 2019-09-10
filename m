Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 242D3AEB28
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 15:10:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D9336E0A1;
	Tue, 10 Sep 2019 13:10:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 52C1C6E0A0;
 Tue, 10 Sep 2019 13:10:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 49174A011B;
 Tue, 10 Sep 2019 13:10:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 10 Sep 2019 13:10:12 -0000
Message-ID: <20190910131012.31036.97970@emeril.freedesktop.org>
References: <20190910121009.13431-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190910121009.13431-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/selftests=3A_Tighten_the_timeout_testing_for_partia?=
 =?utf-8?q?l_mmaps?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvc2VsZnRlc3RzOiBUaWdodGVu
IHRoZSB0aW1lb3V0IHRlc3RpbmcgZm9yIHBhcnRpYWwgbW1hcHMKVVJMICAgOiBodHRwczovL3Bh
dGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY2NDg0LwpTdGF0ZSA6IHdhcm5pbmcKCj09
IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKOGIyOGM4MDJiMDZi
IGRybS9pOTE1L3NlbGZ0ZXN0czogVGlnaHRlbiB0aGUgdGltZW91dCB0ZXN0aW5nIGZvciBwYXJ0
aWFsIG1tYXBzCi06Mjc0OiBXQVJOSU5HOkxJTkVfU1BBQ0lORzogTWlzc2luZyBhIGJsYW5rIGxp
bmUgYWZ0ZXIgZGVjbGFyYXRpb25zCiMyNzQ6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9zZWxmdGVzdHMvaTkxNV9nZW1fbW1hbi5jOjQzMToKKwlpbnRlbF93YWtlcmVmX3Qgd2FrZXJl
ZjsKKwlJOTE1X1JORF9TVEFURShwcm5nKTsKCi06Mjc2OiBXQVJOSU5HOkxJTkVfU1BBQ0lORzog
TWlzc2luZyBhIGJsYW5rIGxpbmUgYWZ0ZXIgZGVjbGFyYXRpb25zCiMyNzY6IEZJTEU6IGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fbW1hbi5jOjQzMzoKKwl1bnNp
Z25lZCBsb25nIGNvdW50OworCUlHVF9USU1FT1VUKGVuZCk7CgotOjI5MzogV0FSTklORzpMT05H
X0xJTkU6IGxpbmUgb3ZlciAxMDAgY2hhcmFjdGVycwojMjkzOiBGSUxFOiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21tYW4uYzo0NTA6CisJCQkgICAgICAoMSAr
IG5leHRfcHJpbWVfbnVtYmVyKGk5MTUtPmdndHQudm0udG90YWwgPj4gUEFHRV9TSElGVCkpIDw8
IFBBR0VfU0hJRlQpOwoKdG90YWw6IDAgZXJyb3JzLCAzIHdhcm5pbmdzLCAwIGNoZWNrcywgMzI5
IGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
