Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E713B320
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 12:23:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 375FC8911F;
	Mon, 10 Jun 2019 10:22:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 375F189115;
 Mon, 10 Jun 2019 10:22:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 304EDA363D;
 Mon, 10 Jun 2019 10:22:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>
Date: Mon, 10 Jun 2019 10:22:58 -0000
Message-ID: <20190610102258.9308.86485@emeril.freedesktop.org>
References: <20190608152657.36613-1-noralf@tronnes.org>
X-Patchwork-Hint: ignore
In-Reply-To: <20190608152657.36613-1-noralf@tronnes.org>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_d?=
 =?utf-8?q?rm/fb-helper=3A_Move_modesetting_code_to_drm=5Fclient_=28rev9?=
 =?utf-8?q?=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2ZiLWhlbHBlcjogTW92ZSBtb2Rlc2V0
dGluZyBjb2RlIHRvIGRybV9jbGllbnQgKHJldjkpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsu
ZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy81ODU5Ny8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5
ID09CgokIGRpbSBzcGFyc2Ugb3JpZ2luL2RybS10aXAKU3BhcnNlIHZlcnNpb246IHYwLjUuMgpD
b21taXQ6IGRybS9mYi1oZWxwZXI6IFJlbW92ZSBkcm1fZmJfaGVscGVyX2Nvbm5lY3RvcgotTzpk
cml2ZXJzL2dwdS9kcm0vZHJtX2ZiX2hlbHBlci5jOjIyOTI6MzA6IHdhcm5pbmc6IGV4cHJlc3Np
b24gdXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vZHJtX2ZiX2hlbHBlci5jOjIw
OTE6MzA6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCi0uL2luY2x1ZGUv
bGludXgvc2xhYi5oOjY2NjoxMzogZXJyb3I6IG5vdCBhIGZ1bmN0aW9uIDxub2lkZW50PgoKQ29t
bWl0OiBkcm0vZmItaGVscGVyOiBQcmVwYXJlIHRvIG1vdmUgb3V0IG1vZGVzZXQgY29uZmlnIGNv
ZGUKLU86ZHJpdmVycy9ncHUvZHJtL2RybV9mYl9oZWxwZXIuYzoyMDkxOjMwOiB3YXJuaW5nOiBl
eHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQorZHJpdmVycy9ncHUvZHJtL2RybV9mYl9oZWxw
ZXIuYzoyMDk1OjMwOiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQoKQ29t
bWl0OiBkcm0vZmItaGVscGVyOiBNb3ZlIG91dCBtb2Rlc2V0IGNvbmZpZyBjb2RlCitkcml2ZXJz
L2dwdS9kcm0vZHJtX2NsaWVudF9tb2Rlc2V0LmM6NTA2OjMwOiB3YXJuaW5nOiBleHByZXNzaW9u
IHVzaW5nIHNpemVvZih2b2lkKQotTzpkcml2ZXJzL2dwdS9kcm0vZHJtX2ZiX2hlbHBlci5jOjIw
OTU6MzA6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCisuL2luY2x1ZGUv
bGludXgvc2xhYi5oOjY2NjoxMzogZXJyb3I6IG5vdCBhIGZ1bmN0aW9uIDxub2lkZW50PgotLi9p
bmNsdWRlL2xpbnV4L3NsYWIuaDo2NjY6MTM6IGVycm9yOiB1bmRlZmluZWQgaWRlbnRpZmllciAn
X19idWlsdGluX211bF9vdmVyZmxvdycKLS4vaW5jbHVkZS9saW51eC9zbGFiLmg6NjY2OjEzOiB3
YXJuaW5nOiBjYWxsIHdpdGggbm8gdHlwZSEKCkNvbW1pdDogZHJtL2NsaWVudDogSGFjazogQWRk
IGJvb3RzcGxhc2ggZXhhbXBsZQorCisgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4K
K2RyaXZlcnMvZ3B1L2RybS9kcm1fY2xpZW50LmM6MTY2OjU6IHdhcm5pbmc6ICJDT05GSUdfRFJN
X0NMSUVOVF9CT09UU1BMQVNIIiBpcyBub3QgZGVmaW5lZCwgZXZhbHVhdGVzIHRvIDAgWy1XdW5k
ZWZdCitkcml2ZXJzL2dwdS9kcm0vZHJtX2NsaWVudC5jOjE2Njo1OiB3YXJuaW5nOiB1bmRlZmlu
ZWQgcHJlcHJvY2Vzc29yIGlkZW50aWZpZXIgJ0NPTkZJR19EUk1fQ0xJRU5UX0JPT1RTUExBU0gn
Citkcml2ZXJzL2dwdS9kcm0vZHJtX2NsaWVudC5jOiBJbiBmdW5jdGlvbiDigJhkcm1fY2xpZW50
X2Rldl9yZWdpc3RlcuKAmToKK0Vycm9yIGluIHJlYWRpbmcgb3IgZW5kIG9mIGZpbGUuCisgI2lm
IENPTkZJR19EUk1fQ0xJRU5UX0JPT1RTUExBU0gKCkNvbW1pdDogZHJtL3RvZG86IEFkZCBib290
c3BsYXNoIGVudHJ5Ck9rYXkhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
