Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A5C97FE9
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 18:22:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C94689010;
	Wed, 21 Aug 2019 16:22:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 499AD89010;
 Wed, 21 Aug 2019 16:22:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 412D0A00EF;
 Wed, 21 Aug 2019 16:22:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 21 Aug 2019 16:22:13 -0000
Message-ID: <20190821162213.4277.85874@emeril.freedesktop.org>
References: <20190820145336.15649-1-daniel.vetter@ffwll.ch>
X-Patchwork-Hint: ignore
In-Reply-To: <20190820145336.15649-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_RFC/T=3A_dma=5Fresv_vs=2E_mmap=5Fsem_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogUkZDL1Q6IGRtYV9yZXN2IHZzLiBtbWFwX3Nl
bSAocmV2MikKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVz
LzY1NDg4LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2gg
b3JpZ2luL2RybS10aXAKMzE2NjMxMzQ5OGRhIGRtYV9yZXN2OiBwcmltZSBsb2NrZGVwIGFubm90
YXRpb25zCi06NjU6IFdBUk5JTkc6QkFEX1NJR05fT0ZGOiBlbWFpbCBhZGRyZXNzICciVk13YXJl
IEdyYXBoaWNzIiA8bGludXgtZ3JhcGhpY3MtbWFpbnRhaW5lckB2bXdhcmUuY29tPicgbWlnaHQg
YmUgYmV0dGVyIGFzICdWTXdhcmUgR3JhcGhpY3MgPGxpbnV4LWdyYXBoaWNzLW1haW50YWluZXJA
dm13YXJlLmNvbT4nCiM2NTogCkNjOiAiVk13YXJlIEdyYXBoaWNzIiA8bGludXgtZ3JhcGhpY3Mt
bWFpbnRhaW5lckB2bXdhcmUuY29tPgoKLTo5OTogV0FSTklORzpOT19BVVRIT1JfU0lHTl9PRkY6
IE1pc3NpbmcgU2lnbmVkLW9mZi1ieTogbGluZSBieSBub21pbmFsIHBhdGNoIGF1dGhvciAnRGFu
aWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4nCgp0b3RhbDogMCBlcnJvcnMsIDIg
d2FybmluZ3MsIDAgY2hlY2tzLCAyNCBsaW5lcyBjaGVja2VkCjdjMzU1NzcwMzVmOCBkcm0vbm91
dmVhdTogc2xvd3BhdGggZm9yIHB1c2hidWYgaW9jdGwKLToxNTM6IFdBUk5JTkc6Tk9fQVVUSE9S
X1NJR05fT0ZGOiBNaXNzaW5nIFNpZ25lZC1vZmYtYnk6IGxpbmUgYnkgbm9taW5hbCBwYXRjaCBh
dXRob3IgJ0RhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+JwoKdG90YWw6IDAg
ZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgMTIyIGxpbmVzIGNoZWNrZWQKZTAwNjI2ODI1
ZDgxIGRybS90dG06IHJlbW92ZSB0dG1fYm9fd2FpdF91bnJlc2VydmVkCi06MjQ6IFdBUk5JTkc6
QkFEX1NJR05fT0ZGOiBlbWFpbCBhZGRyZXNzICciVk13YXJlIEdyYXBoaWNzIiA8bGludXgtZ3Jh
cGhpY3MtbWFpbnRhaW5lckB2bXdhcmUuY29tPicgbWlnaHQgYmUgYmV0dGVyIGFzICdWTXdhcmUg
R3JhcGhpY3MgPGxpbnV4LWdyYXBoaWNzLW1haW50YWluZXJAdm13YXJlLmNvbT4nCiMyNDogCkNj
OiAiVk13YXJlIEdyYXBoaWNzIiA8bGludXgtZ3JhcGhpY3MtbWFpbnRhaW5lckB2bXdhcmUuY29t
PgoKLToxNjU6IFdBUk5JTkc6Tk9fQVVUSE9SX1NJR05fT0ZGOiBNaXNzaW5nIFNpZ25lZC1vZmYt
Ynk6IGxpbmUgYnkgbm9taW5hbCBwYXRjaCBhdXRob3IgJ0RhbmllbCBWZXR0ZXIgPGRhbmllbC52
ZXR0ZXJAZmZ3bGwuY2g+JwoKdG90YWw6IDAgZXJyb3JzLCAyIHdhcm5pbmdzLCAwIGNoZWNrcywg
ODEgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
