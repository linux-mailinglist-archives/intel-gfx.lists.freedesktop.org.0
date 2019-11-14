Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D69BFCF1D
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 21:05:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69B9F6EF28;
	Thu, 14 Nov 2019 20:05:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 281676EF27;
 Thu, 14 Nov 2019 20:05:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 188BDA0BCB;
 Thu, 14 Nov 2019 20:05:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 14 Nov 2019 20:05:25 -0000
Message-ID: <157376192509.31207.16067565298755590579@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191114172535.1116-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191114172535.1116-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915=3A_Split_i915=5Factive=2Emutex_into_an_irq-safe_spinlock_f?=
 =?utf-8?q?or_the_rbtree_=28rev3=29?=
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
Lm11dGV4IGludG8gYW4gaXJxLXNhZmUgc3BpbmxvY2sgZm9yIHRoZSByYnRyZWUgKHJldjMpClVS
TCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82OTM5OS8KU3Rh
dGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpBcHBseWluZzogZHJtL2k5MTU6IFNwbGl0IGk5
MTVfYWN0aXZlLm11dGV4IGludG8gYW4gaXJxLXNhZmUgc3BpbmxvY2sgZm9yIHRoZSByYnRyZWUK
VXNpbmcgaW5kZXggaW5mbyB0byByZWNvbnN0cnVjdCBhIGJhc2UgdHJlZS4uLgpNCWRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmMKTQlkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Fj
dGl2ZV90eXBlcy5oCk0JZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfYWN0aXZl
LmMKRmFsbGluZyBiYWNrIHRvIHBhdGNoaW5nIGJhc2UgYW5kIDMtd2F5IG1lcmdlLi4uCk5vIGNo
YW5nZXMgLS0gUGF0Y2ggYWxyZWFkeSBhcHBsaWVkLgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
