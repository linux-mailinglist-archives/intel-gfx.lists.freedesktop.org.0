Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C5A74DD2
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2019 14:11:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BBBB6E72D;
	Thu, 25 Jul 2019 12:11:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BEE266E72C;
 Thu, 25 Jul 2019 12:11:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B0CCEA0114;
 Thu, 25 Jul 2019 12:11:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Takashi Iwai" <tiwai@suse.de>
Date: Thu, 25 Jul 2019 12:11:00 -0000
Message-ID: <20190725121100.29716.57523@emeril.freedesktop.org>
References: <20190725080300.1913-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190725080300.1913-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_Revert_=22ALSA=3A_hda_-_Fix_intermittent_CORB/RIRB_stall_on_?=
 =?utf-8?q?Intel_chips=22_=28rev3=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogUmV2ZXJ0ICJBTFNBOiBoZGEgLSBGaXggaW50
ZXJtaXR0ZW50IENPUkIvUklSQiBzdGFsbCBvbiBJbnRlbCBjaGlwcyIgKHJldjMpClVSTCAgIDog
aHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NDIxMi8KU3RhdGUgOiB3
YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCmI5
ZDM4MGEyOGUwNiBSZXZlcnQgIkFMU0E6IGhkYSAtIEZpeCBpbnRlcm1pdHRlbnQgQ09SQi9SSVJC
IHN0YWxsIG9uIEludGVsIGNoaXBzIgotOjIwOiBXQVJOSU5HOkNPTU1JVF9MT0dfTE9OR19MSU5F
OiBQb3NzaWJsZSB1bndyYXBwZWQgY29tbWl0IGRlc2NyaXB0aW9uIChwcmVmZXIgYSBtYXhpbXVt
IDc1IGNoYXJzIHBlciBsaW5lKQojMjA6IAo+ID4gPiA+ID4gPDQ+IFszMTUuNDc4ODMwXSBzbmRf
aGRhX2ludGVsIDAwMDA6MDA6MWYuMzogYXp4X2dldF9yZXNwb25zZSB0aW1lb3V0LCBzd2l0Y2hp
bmcgdG8gcG9sbGluZyBtb2RlOiBsYXN0IGNtZD0weDIwMmY4MTAwCgotOjI0OiBFUlJPUjpHSVRf
Q09NTUlUX0lEOiBQbGVhc2UgdXNlIGdpdCBjb21taXQgZGVzY3JpcHRpb24gc3R5bGUgJ2NvbW1p
dCA8MTIrIGNoYXJzIG9mIHNoYTE+ICgiPHRpdGxlIGxpbmU+IiknIC0gaWU6ICdjb21taXQgMjc1
NmQ5MTQzYWE1ICgiQUxTQTogaGRhIC0gRml4IGludGVybWl0dGVudCBDT1JCL1JJUkIgc3RhbGwg
b24gSW50ZWwgY2hpcHMiKScKIzI0OiAKPiA+ID4gPiA+IGZvbGxvd2luZyBjb21taXRzIDI3NTZk
OTE0M2FhNSAoIkFMU0E6IGhkYSAtIEZpeCBpbnRlcm1pdHRlbnQgQ09SQi9SSVJCCgotOjI1OiBF
UlJPUjpHSVRfQ09NTUlUX0lEOiBQbGVhc2UgdXNlIGdpdCBjb21taXQgZGVzY3JpcHRpb24gc3R5
bGUgJ2NvbW1pdCA8MTIrIGNoYXJzIG9mIHNoYTE+ICgiPHRpdGxlIGxpbmU+IiknIC0gaWU6ICdj
b21taXQgYTMwZjE3NDNlNGY1ICgiQUxTQTogbGluZTY6IHNpemVvZiAoYnl0ZSkgaXMgYWx3YXlz
IDEsIHVzZSB0aGF0IGZhY3QuIiknCiMyNTogCj4gPiA+ID4gPiBzdGFsbCBvbiBJbnRlbCBjaGlw
cyIpIGFuZCBhMzBmMTc0M2U0ZjUgKCJBTFNBOiBsaW5lNjogc2l6ZW9mIChieXRlKSBpcwoKdG90
YWw6IDIgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgMTggbGluZXMgY2hlY2tlZAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
