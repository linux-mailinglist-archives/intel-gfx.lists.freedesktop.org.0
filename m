Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3E810A5C0
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 22:02:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 949B289C49;
	Tue, 26 Nov 2019 21:02:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5EE8D89321;
 Tue, 26 Nov 2019 21:02:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 56232A01BB;
 Tue, 26 Nov 2019 21:02:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 26 Nov 2019 21:02:34 -0000
Message-ID: <157480215431.11654.651359087723524183@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191126164712.2802694-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191126164712.2802694-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_dr?=
 =?utf-8?q?m/i915/selftest=3A_If_reconfigure=5Fsseu_is_busy=2C_try_again_?=
 =?utf-8?b?KHJldjIp?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvc2VsZnRlc3Q6IElmIHJlY29u
ZmlndXJlX3NzZXUgaXMgYnVzeSwgdHJ5IGFnYWluIChyZXYyKQpVUkwgICA6IGh0dHBzOi8vcGF0
Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNzAwNjAvClN0YXRlIDogZmFpbHVyZQoKPT0g
U3VtbWFyeSA9PQoKQXBwbHlpbmc6IGRybS9pOTE1L3NlbGZ0ZXN0OiBJZiByZWNvbmZpZ3VyZV9z
c2V1IGlzIGJ1c3ksIHRyeSBhZ2FpbgplcnJvcjogcGF0Y2ggZmFpbGVkOiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2FjdGl2ZS5jOjc1MwplcnJvcjogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9hY3RpdmUuYzogcGF0Y2ggZG9lcyBub3QgYXBwbHkKZXJyb3I6IERpZCB5b3UgaGFuZCBlZGl0
IHlvdXIgcGF0Y2g/Ckl0IGRvZXMgbm90IGFwcGx5IHRvIGJsb2JzIHJlY29yZGVkIGluIGl0cyBp
bmRleC4KaGludDogVXNlICdnaXQgYW0gLS1zaG93LWN1cnJlbnQtcGF0Y2gnIHRvIHNlZSB0aGUg
ZmFpbGVkIHBhdGNoClVzaW5nIGluZGV4IGluZm8gdG8gcmVjb25zdHJ1Y3QgYSBiYXNlIHRyZWUu
Li4KUGF0Y2ggZmFpbGVkIGF0IDAwMDEgZHJtL2k5MTUvc2VsZnRlc3Q6IElmIHJlY29uZmlndXJl
X3NzZXUgaXMgYnVzeSwgdHJ5IGFnYWluCldoZW4geW91IGhhdmUgcmVzb2x2ZWQgdGhpcyBwcm9i
bGVtLCBydW4gImdpdCBhbSAtLWNvbnRpbnVlIi4KSWYgeW91IHByZWZlciB0byBza2lwIHRoaXMg
cGF0Y2gsIHJ1biAiZ2l0IGFtIC0tc2tpcCIgaW5zdGVhZC4KVG8gcmVzdG9yZSB0aGUgb3JpZ2lu
YWwgYnJhbmNoIGFuZCBzdG9wIHBhdGNoaW5nLCBydW4gImdpdCBhbSAtLWFib3J0Ii4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
