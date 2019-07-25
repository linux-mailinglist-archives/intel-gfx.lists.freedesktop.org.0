Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0AA74A80
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2019 11:55:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 915FC6E6BA;
	Thu, 25 Jul 2019 09:55:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 52AAD6E6B9;
 Thu, 25 Jul 2019 09:55:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 45538A010A;
 Thu, 25 Jul 2019 09:55:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Takashi Iwai" <tiwai@suse.de>
Date: Thu, 25 Jul 2019 09:55:45 -0000
Message-ID: <20190725095545.29715.87724@emeril.freedesktop.org>
References: <20190725080300.1913-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190725080300.1913-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_Revert_=22ALSA=3A_hda_-_Fix_intermittent_CORB/RIRB_stall_on_?=
 =?utf-8?q?Intel_chips=22_=28rev2=29?=
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
ZXJtaXR0ZW50IENPUkIvUklSQiBzdGFsbCBvbiBJbnRlbCBjaGlwcyIgKHJldjIpClVSTCAgIDog
aHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NDIxMi8KU3RhdGUgOiB3
YXJuaW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjUz
MzFkOGI1Y2U5NiBSZXZlcnQgIkFMU0E6IGhkYSAtIEZpeCBpbnRlcm1pdHRlbnQgQ09SQi9SSVJC
IHN0YWxsIG9uIEludGVsIGNoaXBzIgotOjE1OiBXQVJOSU5HOkNPTU1JVF9MT0dfTE9OR19MSU5F
OiBQb3NzaWJsZSB1bndyYXBwZWQgY29tbWl0IGRlc2NyaXB0aW9uIChwcmVmZXIgYSBtYXhpbXVt
IDc1IGNoYXJzIHBlciBsaW5lKQojMTU6IAo+ID4gPDQ+IFszMTUuNDc4ODMwXSBzbmRfaGRhX2lu
dGVsIDAwMDA6MDA6MWYuMzogYXp4X2dldF9yZXNwb25zZSB0aW1lb3V0LCBzd2l0Y2hpbmcgdG8g
cG9sbGluZyBtb2RlOiBsYXN0IGNtZD0weDIwMmY4MTAwCgotOjE5OiBFUlJPUjpHSVRfQ09NTUlU
X0lEOiBQbGVhc2UgdXNlIGdpdCBjb21taXQgZGVzY3JpcHRpb24gc3R5bGUgJ2NvbW1pdCA8MTIr
IGNoYXJzIG9mIHNoYTE+ICgiPHRpdGxlIGxpbmU+IiknIC0gaWU6ICdjb21taXQgMjc1NmQ5MTQz
YWE1ICgiQUxTQTogaGRhIC0gRml4IGludGVybWl0dGVudCBDT1JCL1JJUkIgc3RhbGwgb24gSW50
ZWwgY2hpcHMiKScKIzE5OiAKPiA+IGZvbGxvd2luZyBjb21taXRzIDI3NTZkOTE0M2FhNSAoIkFM
U0E6IGhkYSAtIEZpeCBpbnRlcm1pdHRlbnQgQ09SQi9SSVJCCgotOjIwOiBFUlJPUjpHSVRfQ09N
TUlUX0lEOiBQbGVhc2UgdXNlIGdpdCBjb21taXQgZGVzY3JpcHRpb24gc3R5bGUgJ2NvbW1pdCA8
MTIrIGNoYXJzIG9mIHNoYTE+ICgiPHRpdGxlIGxpbmU+IiknIC0gaWU6ICdjb21taXQgYTMwZjE3
NDNlNGY1ICgiQUxTQTogbGluZTY6IHNpemVvZiAoYnl0ZSkgaXMgYWx3YXlzIDEsIHVzZSB0aGF0
IGZhY3QuIiknCiMyMDogCj4gPiBzdGFsbCBvbiBJbnRlbCBjaGlwcyIpIGFuZCBhMzBmMTc0M2U0
ZjUgKCJBTFNBOiBsaW5lNjogc2l6ZW9mIChieXRlKSBpcwoKdG90YWw6IDIgZXJyb3JzLCAxIHdh
cm5pbmdzLCAwIGNoZWNrcywgOSBsaW5lcyBjaGVja2VkCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
