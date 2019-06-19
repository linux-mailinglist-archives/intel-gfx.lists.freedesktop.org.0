Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 079374B4DF
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 11:26:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 473686E31C;
	Wed, 19 Jun 2019 09:26:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A167C6E31C;
 Wed, 19 Jun 2019 09:26:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 95EABA00A0;
 Wed, 19 Jun 2019 09:26:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Wed, 19 Jun 2019 09:26:11 -0000
Message-ID: <20190619092611.18136.55477@emeril.freedesktop.org>
References: <1560913807-10464-1-git-send-email-shawn.c.lee@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <1560913807-10464-1-git-send-email-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Check_backlight_type_while_doing_eDP_backlight_i?=
 =?utf-8?q?nitializaiton_=28rev2=29?=
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
eXBlIHdoaWxlIGRvaW5nIGVEUCBiYWNrbGlnaHQgaW5pdGlhbGl6YWl0b24gKHJldjIpClVSTCAg
IDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MjM2Mi8KU3RhdGUg
OiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlw
Cjc0ZjVmYzZiMzhlNyBkcm0vaTkxNTogQ2hlY2sgYmFja2xpZ2h0IHR5cGUgd2hpbGUgZG9pbmcg
ZURQIGJhY2tsaWdodCBpbml0aWFsaXphaXRvbgotOjE0OiBXQVJOSU5HOkNPTU1JVF9MT0dfTE9O
R19MSU5FOiBQb3NzaWJsZSB1bndyYXBwZWQgY29tbWl0IGRlc2NyaXB0aW9uIChwcmVmZXIgYSBt
YXhpbXVtIDc1IGNoYXJzIHBlciBsaW5lKQojMTQ6IAp2MjogYWNjZXNzIGRldl9wcml2LT52YnQu
YmFja2xpZ2h0LnR5cGUgZGlyZWN0bHkgYW5kIHJlbW92ZSB1bnVzZWQgZnVuY3Rpb24uCgotOjQ2
OiBDSEVDSzpVTk5FQ0VTU0FSWV9QQVJFTlRIRVNFUzogVW5uZWNlc3NhcnkgcGFyZW50aGVzZXMg
YXJvdW5kICdkZXZfcHJpdi0+dmJ0LmJhY2tsaWdodC50eXBlICE9IElOVEVMX0JBQ0tMSUdIVF9W
RVNBX0VEUF9BVVhfSU5URVJGQUNFJwojNDY6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBfYXV4X2JhY2tsaWdodC5jOjI2OToKKwlpZiAoIWk5MTVfbW9kcGFyYW1z
LmVuYWJsZV9kcGNkX2JhY2tsaWdodCAmJgorCSAgICAoZGV2X3ByaXYtPnZidC5iYWNrbGlnaHQu
dHlwZSAhPSBJTlRFTF9CQUNLTElHSFRfVkVTQV9FRFBfQVVYX0lOVEVSRkFDRSkpCgp0b3RhbDog
MCBlcnJvcnMsIDEgd2FybmluZ3MsIDEgY2hlY2tzLCAxOCBsaW5lcyBjaGVja2VkCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
