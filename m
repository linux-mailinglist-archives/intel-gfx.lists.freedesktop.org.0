Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3AC867284
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 17:34:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E9006E113;
	Fri, 12 Jul 2019 15:34:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 912996E0F7;
 Fri, 12 Jul 2019 15:34:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 89D59A363D;
 Fri, 12 Jul 2019 15:34:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 12 Jul 2019 15:34:54 -0000
Message-ID: <20190712153454.29166.55626@emeril.freedesktop.org>
References: <20190712112725.2892-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190712112725.2892-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B1/4=5D_drm/i915/gtt=3A_Recursive_cleanup?=
 =?utf-8?q?_for_gen8?=
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
ZHJtL2k5MTUvZ3R0OiBSZWN1cnNpdmUgY2xlYW51cCBmb3IgZ2VuOApVUkwgICA6IGh0dHBzOi8v
cGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjM2MzcvClN0YXRlIDogd2FybmluZwoK
PT0gU3VtbWFyeSA9PQoKJCBkaW0gc3BhcnNlIG9yaWdpbi9kcm0tdGlwClNwYXJzZSB2ZXJzaW9u
OiB2MC41LjIKQ29tbWl0OiBkcm0vaTkxNS9ndHQ6IFJlY3Vyc2l2ZSBjbGVhbnVwIGZvciBnZW44
Ci1kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYzo5NzY6OTogd2FybmluZzogZXhw
cmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKLWRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
X2d0dC5jOjk3Njo5OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQotTzpk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYzoxNTExOjk6IHdhcm5pbmc6IGV4cHJl
c3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCi1POmRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2Vt
X2d0dC5jOjE1MTE6OTogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKK2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jOjE0ODA6OTogd2FybmluZzogZXhwcmVz
c2lvbiB1c2luZyBzaXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0
dC5jOjE0ODA6OTogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKLWRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jOjM0ODoxNDogd2FybmluZzogZXhwcmVzc2lv
biB1c2luZyBzaXplb2Yodm9pZCkKLWRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5j
OjM0ODoxNDogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKK2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jOjM0ODoxNDogd2FybmluZzogZXhwcmVzc2lvbiB1
c2luZyBzaXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jOjM0
ODoxNDogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKK2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jOjk3Njo5OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5n
IHNpemVvZih2b2lkKQorZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmM6OTc2Ojk6
IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCgpDb21taXQ6IGRybS9pOTE1
L2d0dDogUmVjdXJzaXZlIHBwZ3R0IGNsZWFyIGZvciBnZW44Ci1POmRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2d0dC5jOjEwMDQ6OTogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXpl
b2Yodm9pZCkKLU86ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmM6MTAwNDo5OiB3
YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQorCi1POmRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX2d0dC5jOjk1ODo5OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNp
emVvZih2b2lkKQotTzpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYzo5NTg6OTog
d2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKLU86ZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW1fZ3R0LmM6OTc2Ojk6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6
ZW9mKHZvaWQpCi1POmRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jOjk3Njo5OiB3
YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQorRXJyb3IgaW4gcmVhZGluZyBv
ciBlbmQgb2YgZmlsZS4KCkNvbW1pdDogZHJtL2k5MTUvZ3R0OiBSZWN1cnNpdmUgcHBndHQgYWxs
b2MgZm9yIGdlbjgKLU86ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmM6MTA0Njo5
OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQotTzpkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbV9ndHQuYzoxMDQ2Ojk6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcg
c2l6ZW9mKHZvaWQpCi1POmRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jOjEwOTU6
OTogd2FybmluZzogZXhwcmVzc2lvbiB1c2luZyBzaXplb2Yodm9pZCkKLU86ZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmM6MTA5NTo5OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5n
IHNpemVvZih2b2lkKQotTzpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYzoxMTU5
Ojk6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCi1POmRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jOjExNTk6OTogd2FybmluZzogZXhwcmVzc2lvbiB1c2lu
ZyBzaXplb2Yodm9pZCkKLU86ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmM6MTUw
NDo5OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQotTzpkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYzoxNTA0Ojk6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNp
bmcgc2l6ZW9mKHZvaWQpCi1kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYzozNTQ6
MTQ6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCi1kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbV9ndHQuYzozNTQ6MTQ6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcg
c2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYzozNTQ6MTQ6
IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dlbV9ndHQuYzozNTQ6MTQ6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6
ZW9mKHZvaWQpCgpDb21taXQ6IGRybS9pOTE1L2d0dDogVGlkeSB1cCBwcGd0dCBpbnNlcnRpb24g
Zm9yIGdlbjgKT2theSEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
