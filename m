Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5496067581
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 21:45:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEB7C6E375;
	Fri, 12 Jul 2019 19:45:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D395F6E373;
 Fri, 12 Jul 2019 19:45:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C8264A363D;
 Fri, 12 Jul 2019 19:45:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 12 Jul 2019 19:45:23 -0000
Message-ID: <20190712194523.29165.40705@emeril.freedesktop.org>
References: <20190712192953.9187-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190712192953.9187-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_d?=
 =?utf-8?q?rm/i915/gt=3A_Use_intel=5Fgt_as_the_primary_object_for_handling?=
 =?utf-8?q?_resets?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3Q6IFVzZSBpbnRlbF9ndCBh
cyB0aGUgcHJpbWFyeSBvYmplY3QgZm9yIGhhbmRsaW5nIHJlc2V0cwpVUkwgICA6IGh0dHBzOi8v
cGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjM2NjIvClN0YXRlIDogd2FybmluZwoK
PT0gU3VtbWFyeSA9PQoKJCBkaW0gc3BhcnNlIG9yaWdpbi9kcm0tdGlwClNwYXJzZSB2ZXJzaW9u
OiB2MC41LjIKQ29tbWl0OiBkcm0vaTkxNS9ndDogVXNlIGludGVsX2d0IGFzIHRoZSBwcmltYXJ5
IG9iamVjdCBmb3IgaGFuZGxpbmcgcmVzZXRzCi1POmRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3Jlc2V0LmM6MTI4NTo1OiB3YXJuaW5nOiBjb250ZXh0IGltYmFsYW5jZSBpbiAnaTkxNV9y
ZXNldF90cnlsb2NrJyAtIGRpZmZlcmVudCBsb2NrIGNvbnRleHRzIGZvciBiYXNpYyBibG9jawor
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYzoxMjcwOjU6IHdhcm5pbmc6IGNv
bnRleHQgaW1iYWxhbmNlIGluICdpbnRlbF9ndF9yZXNldF90cnlsb2NrJyAtIGRpZmZlcmVudCBs
b2NrIGNvbnRleHRzIGZvciBiYXNpYyBibG9jawotLi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9z
ZWxmdGVzdF90aW1lbGluZS5jOjkxOjM4OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVv
Zih2b2lkKQotLi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF90aW1lbGluZS5jOjkx
OjM4OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQotLi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9zZWxmdGVzdF90aW1lbGluZS5jOjk0OjQ0OiB3YXJuaW5nOiBleHByZXNz
aW9uIHVzaW5nIHNpemVvZih2b2lkKQotLi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVz
dF90aW1lbGluZS5jOjk0OjQ0OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lk
KQorLi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF90aW1lbGluZS5jOjkyOjM4OiB3
YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQorLi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9zZWxmdGVzdF90aW1lbGluZS5jOjkyOjM4OiB3YXJuaW5nOiBleHByZXNzaW9uIHVz
aW5nIHNpemVvZih2b2lkKQorLi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF90aW1l
bGluZS5jOjk1OjQ0OiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQorLi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF90aW1lbGluZS5jOjk1OjQ0OiB3YXJuaW5n
OiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
