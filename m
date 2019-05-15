Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BDC11F9CA
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2019 20:17:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 921B28925F;
	Wed, 15 May 2019 18:17:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3411F89220;
 Wed, 15 May 2019 18:17:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2CC72A0087;
 Wed, 15 May 2019 18:17:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Umesh Nerlige Ramappa" <umesh.nerlige.ramappa@intel.com>
Date: Wed, 15 May 2019 18:17:36 -0000
Message-ID: <20190515181736.5991.41951@emeril.freedesktop.org>
References: <20190515180736.3425-1-umesh.nerlige.ramappa@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190515180736.3425-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/perf=3A_Refactor_oa_object_to_better_manage_resourc?=
 =?utf-8?b?ZXMgKHJldjMp?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvcGVyZjogUmVmYWN0b3Igb2Eg
b2JqZWN0IHRvIGJldHRlciBtYW5hZ2UgcmVzb3VyY2VzIChyZXYzKQpVUkwgICA6IGh0dHBzOi8v
cGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjAxNzYvClN0YXRlIDogd2FybmluZwoK
PT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJtLXRpcAozYzZlNmNjOTEz
MzEgZHJtL2k5MTUvcGVyZjogUmVmYWN0b3Igb2Egb2JqZWN0IHRvIGJldHRlciBtYW5hZ2UgcmVz
b3VyY2VzCi06MTUyMjogV0FSTklORzpBVk9JRF9CVUc6IEF2b2lkIGNyYXNoaW5nIHRoZSBrZXJu
ZWwgLSB0cnkgdXNpbmcgV0FSTl9PTiAmIHJlY292ZXJ5IGNvZGUgcmF0aGVyIHRoYW4gQlVHKCkg
b3IgQlVHX09OKCkKIzE1MjI6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5j
OjEzNjY6CisJQlVHX09OKHN0cmVhbSAhPSBkZXZfcHJpdi0+cGVyZi5leGNsdXNpdmVfc3RyZWFt
KTsKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVja3MsIDIxNjYgbGluZXMgY2hl
Y2tlZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
