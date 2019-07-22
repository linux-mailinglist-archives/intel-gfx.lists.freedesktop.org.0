Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE2270CEC
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jul 2019 01:03:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1A6389F41;
	Mon, 22 Jul 2019 23:03:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CC59A89F35;
 Mon, 22 Jul 2019 23:03:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C682EA00FE;
 Mon, 22 Jul 2019 23:03:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 22 Jul 2019 23:03:47 -0000
Message-ID: <20190722230347.5092.12744@emeril.freedesktop.org>
References: <20190722222847.24178-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190722222847.24178-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_d?=
 =?utf-8?q?rm/i915=3A_Rely_on_spinlock_protection_for_GPU_error_capture?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFJlbHkgb24gc3BpbmxvY2sg
cHJvdGVjdGlvbiBmb3IgR1BVIGVycm9yIGNhcHR1cmUKVVJMICAgOiBodHRwczovL3BhdGNod29y
ay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY0MDM3LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1h
cnkgPT0KCiQgZGltIHNwYXJzZSBvcmlnaW4vZHJtLXRpcApTcGFyc2UgdmVyc2lvbjogdjAuNS4y
CkNvbW1pdDogZHJtL2k5MTU6IFJlbHkgb24gc3BpbmxvY2sgcHJvdGVjdGlvbiBmb3IgR1BVIGVy
cm9yIGNhcHR1cmUKLU86ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYzoxMDA3
OjIxOiB3YXJuaW5nOiBleHByZXNzaW9uIHVzaW5nIHNpemVvZih2b2lkKQotTzpkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jOjEwMDc6MjE6IHdhcm5pbmc6IGV4cHJlc3Npb24g
dXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5j
OjEwMTU6MjE6IHdhcm5pbmc6IGV4cHJlc3Npb24gdXNpbmcgc2l6ZW9mKHZvaWQpCitkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jOjEwMTU6MjE6IHdhcm5pbmc6IGV4cHJlc3Np
b24gdXNpbmcgc2l6ZW9mKHZvaWQpCi0uL2luY2x1ZGUvbGludXgvc2xhYi5oOjY3MjoxMzogZXJy
b3I6IG5vdCBhIGZ1bmN0aW9uIDxub2lkZW50PgotLi9pbmNsdWRlL2xpbnV4L3NsYWIuaDo2NzI6
MTM6IGVycm9yOiBub3QgYSBmdW5jdGlvbiA8bm9pZGVudD4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
