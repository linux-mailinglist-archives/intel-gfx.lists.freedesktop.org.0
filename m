Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCEC7F7A78
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 19:07:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F7716E9BC;
	Mon, 11 Nov 2019 18:06:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2FD956E9BB;
 Mon, 11 Nov 2019 18:06:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 294A1A00E9;
 Mon, 11 Nov 2019 18:06:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 11 Nov 2019 18:06:57 -0000
Message-ID: <157349561716.29959.15723882066145297846@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191111122706.28292-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191111122706.28292-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_seri?=
 =?utf-8?q?es_starting_with_=5BCI=2C1/2=5D_drm/i915/selftests=3A_Exercise_?=
 =?utf-8?q?parallel_blit_operations_on_a_single_ctx?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLDEv
Ml0gZHJtL2k5MTUvc2VsZnRlc3RzOiBFeGVyY2lzZSBwYXJhbGxlbCBibGl0IG9wZXJhdGlvbnMg
b24gYSBzaW5nbGUgY3R4ClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3Nlcmllcy82OTI5NS8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5ID09CgpBcHBseWluZzog
ZHJtL2k5MTUvc2VsZnRlc3RzOiBFeGVyY2lzZSBwYXJhbGxlbCBibGl0IG9wZXJhdGlvbnMgb24g
YSBzaW5nbGUgY3R4ClVzaW5nIGluZGV4IGluZm8gdG8gcmVjb25zdHJ1Y3QgYSBiYXNlIHRyZWUu
Li4KTQlkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX29iamVjdF9i
bHQuYwpGYWxsaW5nIGJhY2sgdG8gcGF0Y2hpbmcgYmFzZSBhbmQgMy13YXkgbWVyZ2UuLi4KTm8g
Y2hhbmdlcyAtLSBQYXRjaCBhbHJlYWR5IGFwcGxpZWQuCkFwcGx5aW5nOiBkcm0vaTkxNS9zZWxm
dGVzdHM6IEZpbGwgYWxsIHRoZSBkcm1fdm1hX21hbmFnZXIgaG9sZXMKVXNpbmcgaW5kZXggaW5m
byB0byByZWNvbnN0cnVjdCBhIGJhc2UgdHJlZS4uLgpNCWRyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9zZWxmdGVzdHMvaTkxNV9nZW1fbW1hbi5jCkZhbGxpbmcgYmFjayB0byBwYXRjaGluZyBiYXNl
IGFuZCAzLXdheSBtZXJnZS4uLgpObyBjaGFuZ2VzIC0tIFBhdGNoIGFscmVhZHkgYXBwbGllZC4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
