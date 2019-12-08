Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BA611630C
	for <lists+intel-gfx@lfdr.de>; Sun,  8 Dec 2019 17:34:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A356B6E2E3;
	Sun,  8 Dec 2019 16:34:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1D4266E09A;
 Sun,  8 Dec 2019 16:34:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 114C9A00E9;
 Sun,  8 Dec 2019 16:34:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 08 Dec 2019 16:34:30 -0000
Message-ID: <157582287003.2632.16059480791909742276@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191208161252.3015727-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191208161252.3015727-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/2=5D_drm/i915/gem=3A_Avoid_rcu=5Fb?=
 =?utf-8?q?arrier=28=29_from_shrinker_paths?=
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
ZHJtL2k5MTUvZ2VtOiBBdm9pZCByY3VfYmFycmllcigpIGZyb20gc2hyaW5rZXIgcGF0aHMKVVJM
ICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzcwNjAxLwpTdGF0
ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10
aXAKNWJhYjRhZWE4ODZjIGRybS9pOTE1L2dlbTogQXZvaWQgcmN1X2JhcnJpZXIoKSBmcm9tIHNo
cmlua2VyIHBhdGhzCi06MTQ6IFdBUk5JTkc6Q09NTUlUX0xPR19MT05HX0xJTkU6IFBvc3NpYmxl
IHVud3JhcHBlZCBjb21taXQgZGVzY3JpcHRpb24gKHByZWZlciBhIG1heGltdW0gNzUgY2hhcnMg
cGVyIGxpbmUpCiMxNDogCjw0PiBbNDMwLjIyMjY3OF0gZmZmZmZmZmY4MjI0ODIxOCAocmN1X3N0
YXRlLmJhcnJpZXJfbXV0ZXgpeysuKy59LCBhdDogcmN1X2JhcnJpZXIrMHgyMy8weDE5MAoKdG90
YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgMjUgbGluZXMgY2hlY2tlZApmYWJk
YjliOGViYjAgZHJtL2k5MTU6IENoYW5nZSBpOTE1X3ZtYV91bmJpbmQoKSB0byByZXBvcnQgLUVB
R0FJTiBvbiBhY3Rpdml0eQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
