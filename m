Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FAB1D6651
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 17:43:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30F056E524;
	Mon, 14 Oct 2019 15:43:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2B30E6E513;
 Mon, 14 Oct 2019 15:43:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 541DDA011C;
 Mon, 14 Oct 2019 15:42:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 14 Oct 2019 15:42:59 -0000
Message-ID: <20191014154259.23969.98246@emeril.freedesktop.org>
References: <20191013095211.2922-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191013095211.2922-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915/perf=3A_Avoid_polluting_the_i915=5Foa=5Fconfig_with_error_?=
 =?utf-8?q?pointers?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvcGVyZjogQXZvaWQgcG9sbHV0
aW5nIHRoZSBpOTE1X29hX2NvbmZpZyB3aXRoIGVycm9yIHBvaW50ZXJzClVSTCAgIDogaHR0cHM6
Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82Nzk0OS8KU3RhdGUgOiBmYWlsdXJl
Cgo9PSBTdW1tYXJ5ID09CgpBcHBseWluZzogZHJtL2k5MTUvcGVyZjogQXZvaWQgcG9sbHV0aW5n
IHRoZSBpOTE1X29hX2NvbmZpZyB3aXRoIGVycm9yIHBvaW50ZXJzClVzaW5nIGluZGV4IGluZm8g
dG8gcmVjb25zdHJ1Y3QgYSBiYXNlIHRyZWUuLi4KTQlkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BlcmYuYwpGYWxsaW5nIGJhY2sgdG8gcGF0Y2hpbmcgYmFzZSBhbmQgMy13YXkgbWVyZ2UuLi4K
Tm8gY2hhbmdlcyAtLSBQYXRjaCBhbHJlYWR5IGFwcGxpZWQuCgo9PSBMb2dzID09CgpGb3IgbW9y
ZSBkZXRhaWxzIHNlZTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9Q
YXRjaHdvcmtfMTQ3ODIvaW5kZXguaHRtbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
