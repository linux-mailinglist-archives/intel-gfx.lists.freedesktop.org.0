Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BF5E58D7
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2019 08:26:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D92E06EBF0;
	Sat, 26 Oct 2019 06:26:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0CC4E6EBF0;
 Sat, 26 Oct 2019 06:26:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 053E6A0137;
 Sat, 26 Oct 2019 06:26:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Sat, 26 Oct 2019 06:26:43 -0000
Message-ID: <20191026062643.22476.82450@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191025230623.27829-1-matthew.d.roper@intel.com>
In-Reply-To: <20191025230623.27829-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_DP_AUX_updates_=28rev3=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogRFAgQVVYIHVwZGF0ZXMgKHJldjMpClVSTCAg
IDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82ODU5MC8KU3RhdGUg
OiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlw
CmU4ZDM1YmIzNWYyNSBkcm0vaTkxNS90Z2w6IEhhbmRsZSBBVVggaW50ZXJydXB0cyBmb3IgVEMg
cG9ydHMKODkwMmY5YzU5NjY2IGRybS9pOTE1OiBEcm9wIHVudXNlZCBBVVggcmVnaXN0ZXIgb2Zm
c2V0cwotOjQ4OiBDSEVDSzpQQVJFTlRIRVNJU19BTElHTk1FTlQ6IEFsaWdubWVudCBzaG91bGQg
bWF0Y2ggb3BlbiBwYXJlbnRoZXNpcwojNDg6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d2
dC9oYW5kbGVycy5jOjI4Nzk6CisJTU1JT19GKERQX0FVWF9DSF9DVEwoQVVYX0NIX0IpLCA2ICog
NCwgMCwgMCwgMCwgRF9TS0xfUExVUywgTlVMTCwKIAkJCQkJCWRwX2F1eF9jaF9jdGxfbW1pb193
cml0ZSk7CgotOjUxOiBDSEVDSzpQQVJFTlRIRVNJU19BTElHTk1FTlQ6IEFsaWdubWVudCBzaG91
bGQgbWF0Y2ggb3BlbiBwYXJlbnRoZXNpcwojNTE6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d2dC9oYW5kbGVycy5jOjI4ODE6CisJTU1JT19GKERQX0FVWF9DSF9DVEwoQVVYX0NIX0MpLCA2
ICogNCwgMCwgMCwgMCwgRF9TS0xfUExVUywgTlVMTCwKIAkJCQkJCWRwX2F1eF9jaF9jdGxfbW1p
b193cml0ZSk7CgotOjU0OiBDSEVDSzpQQVJFTlRIRVNJU19BTElHTk1FTlQ6IEFsaWdubWVudCBz
aG91bGQgbWF0Y2ggb3BlbiBwYXJlbnRoZXNpcwojNTQ6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d2dC9oYW5kbGVycy5jOjI4ODM6CisJTU1JT19GKERQX0FVWF9DSF9DVEwoQVVYX0NIX0Qp
LCA2ICogNCwgMCwgMCwgMCwgRF9TS0xfUExVUywgTlVMTCwKIAkJCQkJCWRwX2F1eF9jaF9jdGxf
bW1pb193cml0ZSk7Cgp0b3RhbDogMCBlcnJvcnMsIDAgd2FybmluZ3MsIDMgY2hlY2tzLCA3OSBs
aW5lcyBjaGVja2VkCmVjNWIwYjdlOWY1MyBkcm0vaTkxNTogQWRkIG1pc3NpbmcgQVVYIGNoYW5u
ZWwgSCAmIEkgc3VwcG9ydAotOjc1OiBXQVJOSU5HOlVOTkVDRVNTQVJZX0VMU0U6IGVsc2UgaXMg
bm90IGdlbmVyYWxseSB1c2VmdWwgYWZ0ZXIgYSBicmVhayBvciByZXR1cm4KIzc1OiBGSUxFOiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYzo2ODYyOgorCQlyZXR1
cm4gUE9XRVJfRE9NQUlOX0FVWF9BICsgZGlnX3BvcnQtPmF1eF9jaDsKKwl9IGVsc2UgewoKdG90
YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgOTEgbGluZXMgY2hlY2tlZApjZDRl
ZmMzMGYzYTggZHJtL2k5MTU6IFByb3ZpZGUgbW9yZSBpbmZvcm1hdGlvbiBvbiBEUCBBVVggZmFp
bHVyZXMKNGViMDc0YWI4Yzc2IGRybS9pOTE1L3RnbDogQWRkIEFVWCBCICYgQyB0byBEQ19PRkZf
UE9XRVJfRE9NQUlOUwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
