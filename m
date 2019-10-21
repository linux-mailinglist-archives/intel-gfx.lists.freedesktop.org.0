Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51250DF14B
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2019 17:26:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A304C6E156;
	Mon, 21 Oct 2019 15:26:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8F83B6E155;
 Mon, 21 Oct 2019 15:26:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8A5DCA77A2;
 Mon, 21 Oct 2019 15:26:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Mon, 21 Oct 2019 15:26:42 -0000
Message-ID: <20191021152642.5726.86623@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191021145017.17384-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20191021145017.17384-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_dma=5Fresv_lockdep_annotations/priming?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZG1hX3Jlc3YgbG9ja2RlcCBhbm5vdGF0aW9u
cy9wcmltaW5nClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmll
cy82ODMxMi8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNo
IG9yaWdpbi9kcm0tdGlwCmExMDUxZmZjYzcwMiBkbWFfcmVzdjogcHJpbWUgbG9ja2RlcCBhbm5v
dGF0aW9ucwotOjc3OiBXQVJOSU5HOkJBRF9TSUdOX09GRjogRHVwbGljYXRlIHNpZ25hdHVyZQoj
Nzc6IApDYzogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KCi06ODM6IFdBUk5JTkc6QkFE
X1NJR05fT0ZGOiBlbWFpbCBhZGRyZXNzICciVk13YXJlIEdyYXBoaWNzIiA8bGludXgtZ3JhcGhp
Y3MtbWFpbnRhaW5lckB2bXdhcmUuY29tPicgbWlnaHQgYmUgYmV0dGVyIGFzICdWTXdhcmUgR3Jh
cGhpY3MgPGxpbnV4LWdyYXBoaWNzLW1haW50YWluZXJAdm13YXJlLmNvbT4nCiM4MzogCkNjOiAi
Vk13YXJlIEdyYXBoaWNzIiA8bGludXgtZ3JhcGhpY3MtbWFpbnRhaW5lckB2bXdhcmUuY29tPgoK
LToxMjM6IEVSUk9SOlRSQUlMSU5HX1dISVRFU1BBQ0U6IHRyYWlsaW5nIHdoaXRlc3BhY2UKIzEy
MzogRklMRTogZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmM6MTE2OgorXkkkCgotOjEzMTogV0FS
TklORzpOT19BVVRIT1JfU0lHTl9PRkY6IE1pc3NpbmcgU2lnbmVkLW9mZi1ieTogbGluZSBieSBu
b21pbmFsIHBhdGNoIGF1dGhvciAnRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5j
aD4nCgp0b3RhbDogMSBlcnJvcnMsIDMgd2FybmluZ3MsIDAgY2hlY2tzLCAzNiBsaW5lcyBjaGVj
a2VkCmQ4NzQ0YTI4ZjBiZCBkcm0vbm91dmVhdTogc2xvd3BhdGggZm9yIHB1c2hidWYgaW9jdGwK
LToxNTU6IFdBUk5JTkc6Tk9fQVVUSE9SX1NJR05fT0ZGOiBNaXNzaW5nIFNpZ25lZC1vZmYtYnk6
IGxpbmUgYnkgbm9taW5hbCBwYXRjaCBhdXRob3IgJ0RhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0
ZXJAZmZ3bGwuY2g+JwoKdG90YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgMTIy
IGxpbmVzIGNoZWNrZWQKMDJmZTIyMGJmY2I1IGRybS90dG06IHJlbW92ZSB0dG1fYm9fd2FpdF91
bnJlc2VydmVkCi06MjU6IFdBUk5JTkc6QkFEX1NJR05fT0ZGOiBlbWFpbCBhZGRyZXNzICciVk13
YXJlIEdyYXBoaWNzIiA8bGludXgtZ3JhcGhpY3MtbWFpbnRhaW5lckB2bXdhcmUuY29tPicgbWln
aHQgYmUgYmV0dGVyIGFzICdWTXdhcmUgR3JhcGhpY3MgPGxpbnV4LWdyYXBoaWNzLW1haW50YWlu
ZXJAdm13YXJlLmNvbT4nCiMyNTogCkNjOiAiVk13YXJlIEdyYXBoaWNzIiA8bGludXgtZ3JhcGhp
Y3MtbWFpbnRhaW5lckB2bXdhcmUuY29tPgoKLToxNjY6IFdBUk5JTkc6Tk9fQVVUSE9SX1NJR05f
T0ZGOiBNaXNzaW5nIFNpZ25lZC1vZmYtYnk6IGxpbmUgYnkgbm9taW5hbCBwYXRjaCBhdXRob3Ig
J0RhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+JwoKdG90YWw6IDAgZXJyb3Jz
LCAyIHdhcm5pbmdzLCAwIGNoZWNrcywgODEgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
