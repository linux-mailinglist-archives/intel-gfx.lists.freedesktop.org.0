Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02401FB8A7
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 20:18:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 492436EE22;
	Wed, 13 Nov 2019 19:18:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 067B76EE20;
 Wed, 13 Nov 2019 19:18:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F422FA0073;
 Wed, 13 Nov 2019 19:18:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 13 Nov 2019 19:18:03 -0000
Message-ID: <157367268399.30961.2227903055768054472@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191113111025.1769-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191113111025.1769-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Split_i915=5Factive=2Emutex_into_an_irq-safe_spi?=
 =?utf-8?q?nlock_for_the_rbtree_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFNwbGl0IGk5MTVfYWN0aXZl
Lm11dGV4IGludG8gYW4gaXJxLXNhZmUgc3BpbmxvY2sgZm9yIHRoZSByYnRyZWUgKHJldjIpClVS
TCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82OTM5OS8KU3Rh
dGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0t
dGlwCjcwY2E3MWQyMmYwNCBkcm0vaTkxNTogU3BsaXQgaTkxNV9hY3RpdmUubXV0ZXggaW50byBh
biBpcnEtc2FmZSBzcGlubG9jayBmb3IgdGhlIHJidHJlZQotOjEyOiBXQVJOSU5HOkNPTU1JVF9M
T0dfTE9OR19MSU5FOiBQb3NzaWJsZSB1bndyYXBwZWQgY29tbWl0IGRlc2NyaXB0aW9uIChwcmVm
ZXIgYSBtYXhpbXVtIDc1IGNoYXJzIHBlciBsaW5lKQojMTI6IApSZWZlcmVuY2VzOiBhMDg1NWQy
NGZjMjJkICgibG9ja2luZy9tdXRleDogQ29tcGxhaW4gdXBvbiBtdXRleCBBUEkgbWlzdXNlIGlu
IElSUSBjb250ZXh0cyIpCgotOjIwMTogQ0hFQ0s6VU5DT01NRU5URURfREVGSU5JVElPTjogc3Bp
bmxvY2tfdCBkZWZpbml0aW9uIHdpdGhvdXQgY29tbWVudAojMjAxOiBGSUxFOiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2FjdGl2ZV90eXBlcy5oOjUxOgorCXNwaW5sb2NrX3QgdHJlZV9sb2Nr
OwoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAxIGNoZWNrcywgMTczIGxpbmVzIGNoZWNr
ZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
