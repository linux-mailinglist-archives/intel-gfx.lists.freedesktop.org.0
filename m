Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A571B5F21
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 17:28:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B954F6E8D4;
	Thu, 23 Apr 2020 15:28:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 643426E8D4;
 Thu, 23 Apr 2020 15:28:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5C559A47E2;
 Thu, 23 Apr 2020 15:28:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 23 Apr 2020 15:28:05 -0000
Message-ID: <158765568534.26751.4738818049062690509@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200423151743.18767-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200423151743.18767-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/edid=3A_Fix_off-by-one_in_DispID_DTD_pixel_clock?=
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2VkaWQ6IEZpeCBvZmYtYnktb25lIGlu
IERpc3BJRCBEVEQgcGl4ZWwgY2xvY2sKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVz
a3RvcC5vcmcvc2VyaWVzLzc2Mzk5LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQg
ZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKNzI5ODRiNDlkYTU2IGRybS9lZGlkOiBGaXgg
b2ZmLWJ5LW9uZSBpbiBEaXNwSUQgRFREIHBpeGVsIGNsb2NrCi06MTA6IFdBUk5JTkc6Q09NTUlU
X0xPR19MT05HX0xJTkU6IFBvc3NpYmxlIHVud3JhcHBlZCBjb21taXQgZGVzY3JpcHRpb24gKHBy
ZWZlciBhIG1heGltdW0gNzUgY2hhcnMgcGVyIGxpbmUpCiMxMDogCiIwMCAwMCAwMCBoIOKGkiBG
RiBGRiBGRiBoIHwgUGl4ZWwgY2xvY2sgw7cgMTAsMDAwIDAuMDEg4oaSIDE2Nyw3NzIuMTYgTWVn
YSBQaXhlbHMgcGVyIFNlYyIKCnRvdGFsOiAwIGVycm9ycywgMSB3YXJuaW5ncywgMCBjaGVja3Ms
IDggbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
