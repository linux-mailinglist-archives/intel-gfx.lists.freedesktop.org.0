Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC89B109014
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2019 15:34:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECDFC89F06;
	Mon, 25 Nov 2019 14:34:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E61B689F2A;
 Mon, 25 Nov 2019 14:34:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DDCE0A0093;
 Mon, 25 Nov 2019 14:34:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 25 Nov 2019 14:34:29 -0000
Message-ID: <157469246988.15530.9477743247281443180@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191125112520.1760492-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191125112520.1760492-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915/execlists=3A_Fixup_cancel=5Fport=5Frequests=28=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZXhlY2xpc3RzOiBGaXh1cCBj
YW5jZWxfcG9ydF9yZXF1ZXN0cygpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0
b3Aub3JnL3Nlcmllcy82OTk3OC8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpBcHBs
eWluZzogZHJtL2k5MTUvZXhlY2xpc3RzOiBGaXh1cCBjYW5jZWxfcG9ydF9yZXF1ZXN0cygpClVz
aW5nIGluZGV4IGluZm8gdG8gcmVjb25zdHJ1Y3QgYSBiYXNlIHRyZWUuLi4KTQlkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwpGYWxsaW5nIGJhY2sgdG8gcGF0Y2hpbmcgYmFzZSBh
bmQgMy13YXkgbWVyZ2UuLi4KQXV0by1tZXJnaW5nIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2xyYy5jCk5vIGNoYW5nZXMgLS0gUGF0Y2ggYWxyZWFkeSBhcHBsaWVkLgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
