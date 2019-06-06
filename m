Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A144368A5
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 02:14:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AFE2895B9;
	Thu,  6 Jun 2019 00:14:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D7E4A895B9;
 Thu,  6 Jun 2019 00:14:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D1D9EA0088;
 Thu,  6 Jun 2019 00:14:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Thu, 06 Jun 2019 00:14:19 -0000
Message-ID: <20190606001419.10845.40596@emeril.freedesktop.org>
References: <20190605235535.17791-1-lucas.demarchi@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190605235535.17791-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/dmc=3A_protect_against_reading_random_memory?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZG1jOiBwcm90ZWN0IGFnYWlu
c3QgcmVhZGluZyByYW5kb20gbWVtb3J5ClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRl
c2t0b3Aub3JnL3Nlcmllcy82MTY5NS8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09Cgok
IGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjg0MTdiMDBmNTI5NiBkcm0vaTkxNS9kbWM6
IHByb3RlY3QgYWdhaW5zdCByZWFkaW5nIHJhbmRvbSBtZW1vcnkKLToyMzogV0FSTklORzpDT01N
SVRfTE9HX0xPTkdfTElORTogUG9zc2libGUgdW53cmFwcGVkIGNvbW1pdCBkZXNjcmlwdGlvbiAo
cHJlZmVyIGEgbWF4aW11bSA3NSBjaGFycyBwZXIgbGluZSkKIzIzOiAKCWk5MTUgMDAwMDowMDow
Mi4wOiBGYWlsZWQgdG8gbG9hZCBETUMgZmlybXdhcmUgaTkxNS9pY2xfZG1jX3ZlcjFfMDcuYmlu
LiBEaXNhYmxpbmcgcnVudGltZSBwb3dlciBtYW5hZ2VtZW50LgoKdG90YWw6IDAgZXJyb3JzLCAx
IHdhcm5pbmdzLCAwIGNoZWNrcywgNDYgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
