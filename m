Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 904568EA7D
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 13:40:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5AC46E2DD;
	Thu, 15 Aug 2019 11:40:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0ABA66E2D0;
 Thu, 15 Aug 2019 11:40:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 03ED9A00FE;
 Thu, 15 Aug 2019 11:40:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kuoppala" <mika.kuoppala@linux.intel.com>
Date: Thu, 15 Aug 2019 11:40:33 -0000
Message-ID: <20190815114033.16992.50074@emeril.freedesktop.org>
References: <20190815083055.14132-1-mika.kuoppala@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190815083055.14132-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/3=5D_drm/i915/icl=3A_Implement_gen?=
 =?utf-8?q?11_flush_including_tile_cache_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvM10g
ZHJtL2k5MTUvaWNsOiBJbXBsZW1lbnQgZ2VuMTEgZmx1c2ggaW5jbHVkaW5nIHRpbGUgY2FjaGUg
KHJldjIpClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82
NTIyNi8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9y
aWdpbi9kcm0tdGlwCjI1OGFkMTJmMjhhYSBkcm0vaTkxNS9pY2w6IEltcGxlbWVudCBnZW4xMSBm
bHVzaCBpbmNsdWRpbmcgdGlsZSBjYWNoZQotOjMwOiBDSEVDSzpTUEFDSU5HOiBzcGFjZXMgcHJl
ZmVycmVkIGFyb3VuZCB0aGF0ICc8PCcgKGN0eDpWeFYpCiMzMDogRklMRTogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmg6MjExOgorI2RlZmluZSAgIFBJUEVfQ09O
VFJPTF9USUxFX0NBQ0hFX0ZMVVNICQkJKDE8PDI4KSAvKiBnZW4xMSsgKi8KICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIAkJCSAgXgoKdG90YWw6IDAgZXJyb3JzLCAwIHdh
cm5pbmdzLCAxIGNoZWNrcywgODAgbGluZXMgY2hlY2tlZAphMmRkZGVmYmU3YWQgZHJtL2k5MTUv
aWNsOiBBZGQgY29tbWFuZCBjYWNoZSBpbnZhbGlkYXRlCi06MjA6IENIRUNLOlNQQUNJTkc6IHNw
YWNlcyBwcmVmZXJyZWQgYXJvdW5kIHRoYXQgJzw8JyAoY3R4OlZ4VikKIzIwOiBGSUxFOiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaDoyMTE6CisjZGVmaW5lICAg
UElQRV9DT05UUk9MX0NPTU1BTkRfQ0FDSEVfSU5WQUxJREFURQkJKDE8PDI5KSAvKiBnZW4xMSsg
Ki8KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCQkgIF4K
CnRvdGFsOiAwIGVycm9ycywgMCB3YXJuaW5ncywgMSBjaGVja3MsIDE0IGxpbmVzIGNoZWNrZWQK
ZmNkYTI4NjFmOGM5IGRybS9pOTE1L2ljbDogQWRkIGdlbjExIHNwZWNpZmljIHJlbmRlciBicmVh
ZGNydW1icwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
