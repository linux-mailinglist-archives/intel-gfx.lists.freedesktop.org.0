Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09218113A3E
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 04:14:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 554D66F47E;
	Thu,  5 Dec 2019 03:14:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E1ACA6E978;
 Thu,  5 Dec 2019 03:14:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DA9F9A00C7;
 Thu,  5 Dec 2019 03:14:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 05 Dec 2019 03:14:08 -0000
Message-ID: <157551564886.19943.13425524587846784368@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191204211703.4073569-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191204211703.4073569-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Copy_across_scheduler_behaviour_flags_across_sub?=
 =?utf-8?q?mit_fences_=28rev4=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IENvcHkgYWNyb3NzIHNjaGVk
dWxlciBiZWhhdmlvdXIgZmxhZ3MgYWNyb3NzIHN1Ym1pdCBmZW5jZXMgKHJldjQpClVSTCAgIDog
aHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy83MDEwNy8KU3RhdGUgOiB3
YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjk0
NDU5MDc1MDZiMyBkcm0vaTkxNTogQ29weSBhY3Jvc3Mgc2NoZWR1bGVyIGJlaGF2aW91ciBmbGFn
cyBhY3Jvc3Mgc3VibWl0IGZlbmNlcwotOjE4NDogRVJST1I6U1BBQ0lORzogc3BhY2VzIHJlcXVp
cmVkIGFyb3VuZCB0aGF0ICc9JyAoY3R4Old4VikKIzE4NDogRklMRTogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZXF1ZXN0LmM6MTA0NzoKKwkJZXJyID1fX2VtaXRfc2VtYXBob3JlX3dhaXQo
dG8sIGZyb20sIGZyb20tPmZlbmNlLnNlcW5vIC0gMSk7CiAJCSAgICBeCgp0b3RhbDogMSBlcnJv
cnMsIDAgd2FybmluZ3MsIDAgY2hlY2tzLCAxNzIgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
