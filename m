Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D470E9508
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2019 03:36:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4CFA6E87F;
	Wed, 30 Oct 2019 02:36:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9F7236E87D;
 Wed, 30 Oct 2019 02:36:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9872CA47E1;
 Wed, 30 Oct 2019 02:36:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Takashi Iwai" <tiwai@suse.de>
Date: Wed, 30 Oct 2019 02:36:14 -0000
Message-ID: <20191030023614.8994.51136@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191029191050.GF1208@intel.com>
In-Reply-To: <20191029191050.GF1208@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_pcm=5Flock_deadlock?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogcGNtX2xvY2sgZGVhZGxvY2sKVVJMICAgOiBo
dHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY4NzQyLwpTdGF0ZSA6IHdh
cm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKZDUy
ZDFlMTZhNTgzIHBjbV9sb2NrIGRlYWRsb2NrCi06MjE6IFdBUk5JTkc6Q09NTUlUX0xPR19MT05H
X0xJTkU6IFBvc3NpYmxlIHVud3JhcHBlZCBjb21taXQgZGVzY3JpcHRpb24gKHByZWZlciBhIG1h
eGltdW0gNzUgY2hhcnMgcGVyIGxpbmUpCiMyMTogCj4gWyAgMjAzLjcxNjQyMV0gZWZiMWMxMzgg
KCZzcGVjLT5wY21fbG9jayl7Ky4rLn0sIGF0OiBnZW5lcmljX2hkbWlfaW5pdCsweDIxLzB4MTQw
IFtzbmRfaGRhX2NvZGVjX2hkbWldCgotOjkyOiBFUlJPUjpHSVRfQ09NTUlUX0lEOiBQbGVhc2Ug
dXNlIGdpdCBjb21taXQgZGVzY3JpcHRpb24gc3R5bGUgJ2NvbW1pdCA8MTIrIGNoYXJzIG9mIHNo
YTE+ICgiPHRpdGxlIGxpbmU+IiknIC0gaWU6ICdjb21taXQgYWRlNDlkYjMzN2E5ICgiQUxTQTog
aGRhL2hkbWkgLSBBbGxvdyBhdWRpbyBjb21wb25lbnQgZm9yIEFNRC9BVEkgYW5kIE52aWRpYSBI
RE1JIiknCiM5MjogCj4gTG9va3MgbGlrZSBjb21taXQgYWRlNDlkYjMzN2E5ICgiQUxTQTogaGRh
L2hkbWkgLSBBbGxvdyBhdWRpbwoKdG90YWw6IDEgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNr
cywgMzkgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
