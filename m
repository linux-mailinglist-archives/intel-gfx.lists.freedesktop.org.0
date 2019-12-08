Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57ECC116016
	for <lists+intel-gfx@lfdr.de>; Sun,  8 Dec 2019 02:11:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B2CD6E129;
	Sun,  8 Dec 2019 01:11:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 678B66E119;
 Sun,  8 Dec 2019 01:11:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5F00CA47D9;
 Sun,  8 Dec 2019 01:11:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sun, 08 Dec 2019 01:11:24 -0000
Message-ID: <157576748435.2629.15247246565665038351@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191208001209.2914430-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191208001209.2914430-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/gem=3A_Avoid_rcu=5Fbarrier=28=29_from_shrinker_path?=
 =?utf-8?q?s?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ2VtOiBBdm9pZCByY3VfYmFy
cmllcigpIGZyb20gc2hyaW5rZXIgcGF0aHMKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVl
ZGVza3RvcC5vcmcvc2VyaWVzLzcwNTk2LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0K
CiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKMWQ0M2RmODU3OTM5IGRybS9pOTE1L2dl
bTogQXZvaWQgcmN1X2JhcnJpZXIoKSBmcm9tIHNocmlua2VyIHBhdGhzCi06MTQ6IFdBUk5JTkc6
Q09NTUlUX0xPR19MT05HX0xJTkU6IFBvc3NpYmxlIHVud3JhcHBlZCBjb21taXQgZGVzY3JpcHRp
b24gKHByZWZlciBhIG1heGltdW0gNzUgY2hhcnMgcGVyIGxpbmUpCiMxNDogCjw0PiBbNDMwLjIy
MjY3OF0gZmZmZmZmZmY4MjI0ODIxOCAocmN1X3N0YXRlLmJhcnJpZXJfbXV0ZXgpeysuKy59LCBh
dDogcmN1X2JhcnJpZXIrMHgyMy8weDE5MAoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAw
IGNoZWNrcywgMjUgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
