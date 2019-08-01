Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5907C7E298
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Aug 2019 20:47:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDC146E775;
	Thu,  1 Aug 2019 18:47:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 41AB46E774;
 Thu,  1 Aug 2019 18:47:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 38717A0075;
 Thu,  1 Aug 2019 18:47:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 01 Aug 2019 18:47:22 -0000
Message-ID: <20190801184722.30398.55666@emeril.freedesktop.org>
References: <20190801124458.24949-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190801124458.24949-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_Revert_=22drm/vgem=3A_fix_cache_synchronization_on_arm/arm64?=
 =?utf-8?q?=22?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogUmV2ZXJ0ICJkcm0vdmdlbTogZml4IGNhY2hl
IHN5bmNocm9uaXphdGlvbiBvbiBhcm0vYXJtNjQiClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsu
ZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82NDU0NC8KU3RhdGUgOiB3YXJuaW5nCgo9PSBTdW1tYXJ5
ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCjE4ZjcwYmNlYWY1YiBSZXZlcnQg
ImRybS92Z2VtOiBmaXggY2FjaGUgc3luY2hyb25pemF0aW9uIG9uIGFybS9hcm02NCIKLTo1Mjog
Q0hFQ0s6T1BFTl9FTkRFRF9MSU5FOiBMaW5lcyBzaG91bGQgbm90IGVuZCB3aXRoIGEgJygnCiM1
MjogRklMRTogZHJpdmVycy9ncHUvZHJtL3ZnZW0vdmdlbV9kcnYuYzo5NzoKKwkJcGFnZSA9IHNo
bWVtX3JlYWRfbWFwcGluZ19wYWdlKAoKLTo1ODogRVJST1I6U1dJVENIX0NBU0VfSU5ERU5UX0xF
VkVMOiBzd2l0Y2ggYW5kIGNhc2Ugc2hvdWxkIGJlIGF0IHRoZSBzYW1lIGluZGVudAojNTg6IEZJ
TEU6IGRyaXZlcnMvZ3B1L2RybS92Z2VtL3ZnZW1fZHJ2LmM6MTAzOgorCQl9IGVsc2Ugc3dpdGNo
IChQVFJfRVJSKHBhZ2UpKSB7CisJCQljYXNlIC1FTk9TUEM6CisJCQljYXNlIC1FTk9NRU06Clsu
Li5dCisJCQljYXNlIC1FQlVTWToKWy4uLl0KKwkJCWNhc2UgLUVGQVVMVDoKKwkJCWNhc2UgLUVJ
TlZBTDoKWy4uLl0KKwkJCWRlZmF1bHQ6CgotOjU4OiBFUlJPUjpUUkFJTElOR19TVEFURU1FTlRT
OiB0cmFpbGluZyBzdGF0ZW1lbnRzIHNob3VsZCBiZSBvbiBuZXh0IGxpbmUKIzU4OiBGSUxFOiBk
cml2ZXJzL2dwdS9kcm0vdmdlbS92Z2VtX2Rydi5jOjEwMzoKKwkJfSBlbHNlIHN3aXRjaCAoUFRS
X0VSUihwYWdlKSkgewoKLTo3NjogQ0hFQ0s6QlJBQ0VTOiBCbGFuayBsaW5lcyBhcmVuJ3QgbmVj
ZXNzYXJ5IGJlZm9yZSBhIGNsb3NlIGJyYWNlICd9JwojNzY6IEZJTEU6IGRyaXZlcnMvZ3B1L2Ry
bS92Z2VtL3ZnZW1fZHJ2LmM6MTIxOgogCisJfQoKdG90YWw6IDIgZXJyb3JzLCAwIHdhcm5pbmdz
LCAyIGNoZWNrcywgMTgzIGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
