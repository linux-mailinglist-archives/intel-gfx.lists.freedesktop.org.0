Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DBB14DA3B
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 21:34:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37A7A6E4DD;
	Thu, 20 Jun 2019 19:34:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C7C546E4D2;
 Thu, 20 Jun 2019 19:34:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C09FDA0137;
 Thu, 20 Jun 2019 19:34:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Thu, 20 Jun 2019 19:34:23 -0000
Message-ID: <20190620193423.12829.19387@emeril.freedesktop.org>
References: <1560913807-10464-1-git-send-email-shawn.c.lee@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <1560913807-10464-1-git-send-email-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Check_backlight_type_while_doing_eDP_backlight_i?=
 =?utf-8?q?nitializaiton_=28rev3=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IENoZWNrIGJhY2tsaWdodCB0
eXBlIHdoaWxlIGRvaW5nIGVEUCBiYWNrbGlnaHQgaW5pdGlhbGl6YWl0b24gKHJldjMpClVSTCAg
IDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MjM2Mi8KU3RhdGUg
OiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlw
CmNkZGVmOTY0MTllYyBkcm0vaTkxNTogQ2hlY2sgYmFja2xpZ2h0IHR5cGUgd2hpbGUgZG9pbmcg
ZURQIGJhY2tsaWdodCBpbml0aWFsaXphaXRvbgotOjE0OiBXQVJOSU5HOkNPTU1JVF9MT0dfTE9O
R19MSU5FOiBQb3NzaWJsZSB1bndyYXBwZWQgY29tbWl0IGRlc2NyaXB0aW9uIChwcmVmZXIgYSBt
YXhpbXVtIDc1IGNoYXJzIHBlciBsaW5lKQojMTQ6IAp2MjogYWNjZXNzIGRldl9wcml2LT52YnQu
YmFja2xpZ2h0LnR5cGUgZGlyZWN0bHkgYW5kIHJlbW92ZSB1bnVzZWQgZnVuY3Rpb24uCgotOjY2
OiBDSEVDSzpQQVJFTlRIRVNJU19BTElHTk1FTlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2ggb3Bl
biBwYXJlbnRoZXNpcwojNjY6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1z
LmM6MTczOgoraTkxNV9wYXJhbV9uYW1lZChlbmFibGVfZHBjZF9iYWNrbGlnaHQsIGludCwgMDYw
MCwKKwkiRW5hYmxlIHN1cHBvcnQgZm9yIERQQ0QgYmFja2xpZ2h0IGNvbnRyb2wiCgp0b3RhbDog
MCBlcnJvcnMsIDEgd2FybmluZ3MsIDEgY2hlY2tzLCA0NCBsaW5lcyBjaGVja2VkCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
