Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80DB9F79A6
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 18:20:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30FC2899B3;
	Mon, 11 Nov 2019 17:20:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7684D899B3;
 Mon, 11 Nov 2019 17:20:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 67195A0096;
 Mon, 11 Nov 2019 17:20:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vandita Kulkarni" <vandita.kulkarni@intel.com>
Date: Mon, 11 Nov 2019 17:20:03 -0000
Message-ID: <157349280339.29958.9422615763230120950@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191111111029.9126-1-vandita.kulkarni@intel.com>
In-Reply-To: <20191111111029.9126-1-vandita.kulkarni@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_Add_support_for_mipi_dsi_cmd_mode?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogQWRkIHN1cHBvcnQgZm9yIG1pcGkgZHNpIGNt
ZCBtb2RlClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82
OTI5MC8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9y
aWdpbi9kcm0tdGlwCjhlZDA4MmIzOTg5YyBkcm0vaTkxNS9kc2k6IERlZmluZSBjb21tYW5kIG1v
ZGUgcmVnaXN0ZXJzCjBiMzhkOWVlNmNjNyBkcm0vaTkxNS9kc2k6IENvbmZpZ3VyZSB0cmFuc2Nv
ZGVyIG9wZXJhdGlvbiBmb3IgY29tbWFuZCBtb2RlLgo4Zjk0MDhjZDBlMzYgZHJtL2k5MTUvZHNp
OiBBZGQgdmJsYW5rIGNhbGN1bGF0aW9uIGZvciBjb21tYW5kIG1vZGUKLTo0MTogV0FSTklORzpM
T05HX0xJTkU6IGxpbmUgb3ZlciAxMDAgY2hhcmFjdGVycwojNDE6IEZJTEU6IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jOjg0OToKKwkJbGluZV90aW1lX3VzID0gKGh0b3Rh
bCAqIChicHAgLyA4KSAqIGJ5dGVfY2xrX3BlcmlvZF9ucykgLyAoMTAwMCAqIGludGVsX2RzaS0+
bGFuZV9jb3VudCk7Cgp0b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCA3MyBs
aW5lcyBjaGVja2VkCmM3MTY1ZjRjYTA1ZSBkcm0vaTkxNS9kc2k6IEFkZCBjbWQgbW9kZSBmbGFn
cyBpbiBkaXNwbGF5IG1vZGUgcHJpdmF0ZSBmbGFncwotOjIzOiBDSEVDSzpTUEFDSU5HOiBzcGFj
ZXMgcHJlZmVycmVkIGFyb3VuZCB0aGF0ICc8PCcgKGN0eDpWeFYpCiMyMzogRklMRTogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmg6NjYwOgorI2RlZmlu
ZSBJOTE1X01PREVfRkxBR19EU0lfVVNFX1RFMCAoMTw8MykKICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBeCgotOjI1OiBDSEVDSzpTUEFDSU5HOiBzcGFjZXMgcHJlZmVycmVk
IGFyb3VuZCB0aGF0ICc8PCcgKGN0eDpWeFYpCiMyNTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmg6NjYyOgorI2RlZmluZSBJOTE1X01PREVf
RkxBR19EU0lfVVNFX1RFMSAoMTw8NCkKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBeCgotOjI3OiBDSEVDSzpTUEFDSU5HOiBzcGFjZXMgcHJlZmVycmVkIGFyb3VuZCB0aGF0
ICc8PCcgKGN0eDpWeFYpCiMyNzogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3R5cGVzLmg6NjY0OgorI2RlZmluZSBJOTE1X01PREVfRkxBR19EU0lfUEVS
SU9ESUNfQ01EX01PREUgKDE8PDUpCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIF4KCnRvdGFsOiAwIGVycm9ycywgMCB3YXJuaW5ncywgMyBjaGVja3MsIDEy
IGxpbmVzIGNoZWNrZWQKMGYzNjE3ZDFjNzU2IGRybS9pOTE1L2RzaTogQWRkIGNoZWNrIGZvciBw
ZXJpb2RpYyBjb21tYW5kIG1vZGUKZDAxOWI1Yzc0MWJlIGRybS9pOTE1L2RzaTogVXNlIHByaXZh
dGUgZmxhZ3MgdG8gaW5kaWNhdGUgVEUgaW4gY21kIG1vZGUKNjlhZGQwYWE2NmYzIGRybS9pOTE1
L2RzaTogQ29uZmlndXJlIFRFIGludGVycnVwdCBmb3IgY21kIG1vZGUKMWJjZTExMDIyY2Y4IGRy
bS9pOTE1L2RzaTogQWRkIFRFIGhhbmRsZXIgZm9yIGRzaSBjbWQgbW9kZS4KLTo4MzogQ0hFQ0s6
UEFSRU5USEVTSVNfQUxJR05NRU5UOiBBbGlnbm1lbnQgc2hvdWxkIG1hdGNoIG9wZW4gcGFyZW50
aGVzaXMKIzgzOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jOjIzNTQ6CisJ
CQlpZiAoKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpICYmCisJCQkJKGlpciAmIChEU0kwX1RF
IHwgRFNJMV9URSkpKSB7Cgp0b3RhbDogMCBlcnJvcnMsIDAgd2FybmluZ3MsIDEgY2hlY2tzLCA3
NCBsaW5lcyBjaGVja2VkCjI3YTdhOWI1YTcwZSBkcm0vaTkxNS9kc2k6IEluaXRpYXRlIGZhbWUg
cmVxdWVzdCBpbiBjbWQgbW9kZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
