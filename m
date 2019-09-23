Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C86BB252
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 12:38:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E1896E869;
	Mon, 23 Sep 2019 10:38:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0B5A56E84F;
 Mon, 23 Sep 2019 10:38:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 03E64A0134;
 Mon, 23 Sep 2019 10:38:13 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 23 Sep 2019 10:38:12 -0000
Message-ID: <20190923103812.29099.72171@emeril.freedesktop.org>
References: <20190923094004.15324-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190923094004.15324-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/execlists=3A_Drop_redundant_list=5Fdel=5Finit=28=26?=
 =?utf-8?b?cnEtPnNjaGVkLmxpbmsp?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZXhlY2xpc3RzOiBEcm9wIHJl
ZHVuZGFudCBsaXN0X2RlbF9pbml0KCZycS0+c2NoZWQubGluaykKVVJMICAgOiBodHRwczovL3Bh
dGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY3MDc2LwpTdGF0ZSA6IHdhcm5pbmcKCj09
IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKYWQ0MTFiMWE1YmNh
IGRybS9pOTE1L2V4ZWNsaXN0czogRHJvcCByZWR1bmRhbnQgbGlzdF9kZWxfaW5pdCgmcnEtPnNj
aGVkLmxpbmspCi06MTI6IFdBUk5JTkc6Q09NTUlUX0xPR19MT05HX0xJTkU6IFBvc3NpYmxlIHVu
d3JhcHBlZCBjb21taXQgZGVzY3JpcHRpb24gKHByZWZlciBhIG1heGltdW0gNzUgY2hhcnMgcGVy
IGxpbmUpCiMxMjogClJlZmVyZW5jZXM6IDQyMmQ3ZGY0ZjA5MCAoImRybS9pOTE1OiBSZXBsYWNl
IGVuZ2luZS0+dGltZWxpbmUgd2l0aCBhIHBsYWluIGxpc3QiKQoKLToxMjogRVJST1I6R0lUX0NP
TU1JVF9JRDogUGxlYXNlIHVzZSBnaXQgY29tbWl0IGRlc2NyaXB0aW9uIHN0eWxlICdjb21taXQg
PDEyKyBjaGFycyBvZiBzaGExPiAoIjx0aXRsZSBsaW5lPiIpJyAtIGllOiAnY29tbWl0IDQyMmQ3
ZGY0ZjA5MCAoImRybS9pOTE1OiBSZXBsYWNlIGVuZ2luZS0+dGltZWxpbmUgd2l0aCBhIHBsYWlu
IGxpc3QiKScKIzEyOiAKUmVmZXJlbmNlczogNDIyZDdkZjRmMDkwICgiZHJtL2k5MTU6IFJlcGxh
Y2UgZW5naW5lLT50aW1lbGluZSB3aXRoIGEgcGxhaW4gbGlzdCIpCgp0b3RhbDogMSBlcnJvcnMs
IDEgd2FybmluZ3MsIDAgY2hlY2tzLCA3IGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
