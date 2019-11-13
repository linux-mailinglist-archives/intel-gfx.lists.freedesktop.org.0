Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F545FB3DD
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 16:40:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E53746ED63;
	Wed, 13 Nov 2019 15:40:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 310016ED06;
 Wed, 13 Nov 2019 15:40:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2A213A00E7;
 Wed, 13 Nov 2019 15:40:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 13 Nov 2019 15:40:00 -0000
Message-ID: <157365960014.30958.13543623978625733853@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191113111025.1769-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191113111025.1769-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Split_i915=5Factive=2Emutex_into_an_irq-safe_spi?=
 =?utf-8?q?nlock_for_the_rbtree?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFNwbGl0IGk5MTVfYWN0aXZl
Lm11dGV4IGludG8gYW4gaXJxLXNhZmUgc3BpbmxvY2sgZm9yIHRoZSByYnRyZWUKVVJMICAgOiBo
dHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY5Mzk5LwpTdGF0ZSA6IHdh
cm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKNjhi
ZDI2ZmM1OTMzIGRybS9pOTE1OiBTcGxpdCBpOTE1X2FjdGl2ZS5tdXRleCBpbnRvIGFuIGlycS1z
YWZlIHNwaW5sb2NrIGZvciB0aGUgcmJ0cmVlCi06MTI6IFdBUk5JTkc6Q09NTUlUX0xPR19MT05H
X0xJTkU6IFBvc3NpYmxlIHVud3JhcHBlZCBjb21taXQgZGVzY3JpcHRpb24gKHByZWZlciBhIG1h
eGltdW0gNzUgY2hhcnMgcGVyIGxpbmUpCiMxMjogClJlZmVyZW5jZXM6IGEwODU1ZDI0ZmMyMmQg
KCJsb2NraW5nL211dGV4OiBDb21wbGFpbiB1cG9uIG11dGV4IEFQSSBtaXN1c2UgaW4gSVJRIGNv
bnRleHRzIikKCi06MTk4OiBDSEVDSzpVTkNPTU1FTlRFRF9ERUZJTklUSU9OOiBzcGlubG9ja190
IGRlZmluaXRpb24gd2l0aG91dCBjb21tZW50CiMxOTg6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfYWN0aXZlX3R5cGVzLmg6NTE6CisJc3BpbmxvY2tfdCB0cmVlX2xvY2s7Cgp0b3Rh
bDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDEgY2hlY2tzLCAxNzAgbGluZXMgY2hlY2tlZAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
