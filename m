Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE4F10FE71
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 14:12:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB7086E514;
	Tue,  3 Dec 2019 13:12:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6648E6E511;
 Tue,  3 Dec 2019 13:12:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5E0FCA47E7;
 Tue,  3 Dec 2019 13:12:46 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 03 Dec 2019 13:12:46 -0000
Message-ID: <157537876638.4659.16391221635780641827@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191203093646.2795492-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191203093646.2795492-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/gem=3A_Take_runtime-pm_wakeref_prior_to_unbinding?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ2VtOiBUYWtlIHJ1bnRpbWUt
cG0gd2FrZXJlZiBwcmlvciB0byB1bmJpbmRpbmcKVVJMICAgOiBodHRwczovL3BhdGNod29yay5m
cmVlZGVza3RvcC5vcmcvc2VyaWVzLzcwMzQ0LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkg
PT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKYmY1MmQyMGQ3Zjk3IGRybS9pOTE1
L2dlbTogVGFrZSBydW50aW1lLXBtIHdha2VyZWYgcHJpb3IgdG8gdW5iaW5kaW5nCi06MTY6IFdB
Uk5JTkc6Q09NTUlUX0xPR19MT05HX0xJTkU6IFBvc3NpYmxlIHVud3JhcHBlZCBjb21taXQgZGVz
Y3JpcHRpb24gKHByZWZlciBhIG1heGltdW0gNzUgY2hhcnMgcGVyIGxpbmUpCiMxNjogCjw0PiBb
NTcuMTIxNzU4XSBmZmZmZmZmZjgyMjYzYTQwIChmc19yZWNsYWltKXsrLisufSwgYXQ6IGZzX3Jl
Y2xhaW1fYWNxdWlyZS5wYXJ0LjExNysweDAvMHgzMAoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5p
bmdzLCAwIGNoZWNrcywgMzIgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
