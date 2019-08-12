Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F18FF8A37C
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 18:38:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACCD26E579;
	Mon, 12 Aug 2019 16:38:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E68526E579;
 Mon, 12 Aug 2019 16:38:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DB352A0119;
 Mon, 12 Aug 2019 16:38:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kuoppala" <mika.kuoppala@linux.intel.com>
Date: Mon, 12 Aug 2019 16:38:11 -0000
Message-ID: <20190812163811.20590.33863@emeril.freedesktop.org>
References: <20190812160108.16973-1-mika.kuoppala@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190812160108.16973-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/2=5D_drm/i915/icl=3A_Implement_gen?=
 =?utf-8?q?11_flush_including_tile_cache?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvMl0g
ZHJtL2k5MTUvaWNsOiBJbXBsZW1lbnQgZ2VuMTEgZmx1c2ggaW5jbHVkaW5nIHRpbGUgY2FjaGUK
VVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY1MDk0LwpT
dGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2Ry
bS10aXAKMzRlZjQ4OTA2YjJjIGRybS9pOTE1L2ljbDogSW1wbGVtZW50IGdlbjExIGZsdXNoIGlu
Y2x1ZGluZyB0aWxlIGNhY2hlCi06Mjc6IENIRUNLOlNQQUNJTkc6IHNwYWNlcyBwcmVmZXJyZWQg
YXJvdW5kIHRoYXQgJzw8JyAoY3R4OlZ4VikKIzI3OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaDoyMTE6CisjZGVmaW5lICAgUElQRV9DT05UUk9MX1RJ
TEVfQ0FDSEVfRkxVU0gJCQkoMTw8MjgpIC8qIGdlbjExKyAqLwogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgCQkJICBeCgp0b3RhbDogMCBlcnJvcnMsIDAgd2FybmluZ3Ms
IDEgY2hlY2tzLCA4MiBsaW5lcyBjaGVja2VkCmEzYzhkMzQxYzQwMyBkcm0vaTkxNS9pY2w6IEFk
ZCBjb21tYW5kIGNhY2hlIGludmFsaWRhdGUKLToyMDogQ0hFQ0s6U1BBQ0lORzogc3BhY2VzIHBy
ZWZlcnJlZCBhcm91bmQgdGhhdCAnPDwnIChjdHg6VnhWKQojMjA6IEZJTEU6IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oOjIxMToKKyNkZWZpbmUgICBQSVBFX0NP
TlRST0xfQ09NTUFORF9DQUNIRV9JTlZBTElEQVRFCQkoMTw8MjkpIC8qIGdlbjExKyAqLwogICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAJCSAgXgoKdG90YWw6
IDAgZXJyb3JzLCAwIHdhcm5pbmdzLCAxIGNoZWNrcywgMTQgbGluZXMgY2hlY2tlZAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
