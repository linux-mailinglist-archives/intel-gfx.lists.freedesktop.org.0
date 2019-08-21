Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC71398710
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 00:22:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2642F6E7CD;
	Wed, 21 Aug 2019 22:22:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 797D56E7CD;
 Wed, 21 Aug 2019 22:22:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 732C9A363E;
 Wed, 21 Aug 2019 22:22:15 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 21 Aug 2019 22:22:15 -0000
Message-ID: <20190821222215.4279.7910@emeril.freedesktop.org>
References: <20190821215030.31660-1-daniel.vetter@ffwll.ch>
X-Patchwork-Hint: ignore
In-Reply-To: <20190821215030.31660-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/3=5D_dma=5Fresv=3A_prime_lockdep_a?=
 =?utf-8?q?nnotations?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvM10g
ZG1hX3Jlc3Y6IHByaW1lIGxvY2tkZXAgYW5ub3RhdGlvbnMKVVJMICAgOiBodHRwczovL3BhdGNo
d29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY1NTc1LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1
bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKMjdiMjg5MGM5OTgwIGRt
YV9yZXN2OiBwcmltZSBsb2NrZGVwIGFubm90YXRpb25zCi06Nzc6IFdBUk5JTkc6QkFEX1NJR05f
T0ZGOiBlbWFpbCBhZGRyZXNzICciVk13YXJlIEdyYXBoaWNzIiA8bGludXgtZ3JhcGhpY3MtbWFp
bnRhaW5lckB2bXdhcmUuY29tPicgbWlnaHQgYmUgYmV0dGVyIGFzICdWTXdhcmUgR3JhcGhpY3Mg
PGxpbnV4LWdyYXBoaWNzLW1haW50YWluZXJAdm13YXJlLmNvbT4nCiM3NzogCkNjOiAiVk13YXJl
IEdyYXBoaWNzIiA8bGludXgtZ3JhcGhpY3MtbWFpbnRhaW5lckB2bXdhcmUuY29tPgoKLToxMTQ6
IEVSUk9SOlRSQUlMSU5HX1dISVRFU1BBQ0U6IHRyYWlsaW5nIHdoaXRlc3BhY2UKIzExNDogRklM
RTogZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmM6MTE2OgorXkkkCgotOjE0NzogV0FSTklORzpO
T19BVVRIT1JfU0lHTl9PRkY6IE1pc3NpbmcgU2lnbmVkLW9mZi1ieTogbGluZSBieSBub21pbmFs
IHBhdGNoIGF1dGhvciAnRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4nCgp0
b3RhbDogMSBlcnJvcnMsIDIgd2FybmluZ3MsIDAgY2hlY2tzLCA2MCBsaW5lcyBjaGVja2VkCmIw
MzZiYTNkNjAzOCBkcm0vbm91dmVhdTogc2xvd3BhdGggZm9yIHB1c2hidWYgaW9jdGwKLToxNTM6
IFdBUk5JTkc6Tk9fQVVUSE9SX1NJR05fT0ZGOiBNaXNzaW5nIFNpZ25lZC1vZmYtYnk6IGxpbmUg
Ynkgbm9taW5hbCBwYXRjaCBhdXRob3IgJ0RhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3
bGwuY2g+JwoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgMTIyIGxpbmVz
IGNoZWNrZWQKOTViYWUwYzgwNGU5IGRybS90dG06IHJlbW92ZSB0dG1fYm9fd2FpdF91bnJlc2Vy
dmVkCi06MjQ6IFdBUk5JTkc6QkFEX1NJR05fT0ZGOiBlbWFpbCBhZGRyZXNzICciVk13YXJlIEdy
YXBoaWNzIiA8bGludXgtZ3JhcGhpY3MtbWFpbnRhaW5lckB2bXdhcmUuY29tPicgbWlnaHQgYmUg
YmV0dGVyIGFzICdWTXdhcmUgR3JhcGhpY3MgPGxpbnV4LWdyYXBoaWNzLW1haW50YWluZXJAdm13
YXJlLmNvbT4nCiMyNDogCkNjOiAiVk13YXJlIEdyYXBoaWNzIiA8bGludXgtZ3JhcGhpY3MtbWFp
bnRhaW5lckB2bXdhcmUuY29tPgoKLToxNjU6IFdBUk5JTkc6Tk9fQVVUSE9SX1NJR05fT0ZGOiBN
aXNzaW5nIFNpZ25lZC1vZmYtYnk6IGxpbmUgYnkgbm9taW5hbCBwYXRjaCBhdXRob3IgJ0Rhbmll
bCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+JwoKdG90YWw6IDAgZXJyb3JzLCAyIHdh
cm5pbmdzLCAwIGNoZWNrcywgODEgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
