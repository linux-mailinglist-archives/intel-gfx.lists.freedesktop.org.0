Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3173751A7
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2019 16:45:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 010056E765;
	Thu, 25 Jul 2019 14:45:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F14D46E742;
 Thu, 25 Jul 2019 14:45:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E4912A0119;
 Thu, 25 Jul 2019 14:45:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 25 Jul 2019 14:45:47 -0000
Message-ID: <20190725144547.29712.46871@emeril.freedesktop.org>
References: <20190725131447.27515-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190725131447.27515-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/2=5D_drm/i915/gt=3A_Add_to_timelin?=
 =?utf-8?q?e_requires_the_timeline_mutex?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvMl0g
ZHJtL2k5MTUvZ3Q6IEFkZCB0byB0aW1lbGluZSByZXF1aXJlcyB0aGUgdGltZWxpbmUgbXV0ZXgK
VVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY0MjI3LwpT
dGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2Ry
bS10aXAKNDAwZjExM2IzYjJiIGRybS9pOTE1L2d0OiBBZGQgdG8gdGltZWxpbmUgcmVxdWlyZXMg
dGhlIHRpbWVsaW5lIG11dGV4CjdiMzYzNGVkMDJmYSBkcm0vaTkxNTogVW5zaGFyZSB0aGUgaWRs
ZS1iYXJyaWVyIGZyb20gb3RoZXIga2VybmVsIHJlcXVlc3RzCi06MTEyOiBXQVJOSU5HOkZJTEVf
UEFUSF9DSEFOR0VTOiBhZGRlZCwgbW92ZWQgb3IgZGVsZXRlZCBmaWxlKHMpLCBkb2VzIE1BSU5U
QUlORVJTIG5lZWQgdXBkYXRpbmc/CiMxMTI6IApuZXcgZmlsZSBtb2RlIDEwMDY0NAoKLToxMTc6
IFdBUk5JTkc6U1BEWF9MSUNFTlNFX1RBRzogTWlzc2luZyBvciBtYWxmb3JtZWQgU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXIgdGFnIGluIGxpbmUgMQojMTE3OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9zZWxmdGVzdF9jb250ZXh0LmM6MToKKy8qCgotOjExODogV0FSTklORzpTUERYX0xJ
Q0VOU0VfVEFHOiBNaXNwbGFjZWQgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXIgdGFnIC0gdXNlIGxp
bmUgMSBpbnN0ZWFkCiMxMTg6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0
X2NvbnRleHQuYzoyOgorICogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKCi06Mzcy
OiBXQVJOSU5HOkxPTkdfTElORTogbGluZSBvdmVyIDEwMCBjaGFyYWN0ZXJzCiMzNzI6IEZJTEU6
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2NvbnRleHQuYzoyNTY6CisJCQlwcl9l
cnIoInJlbW90ZSBjb250ZXh0IGlzIG5vdCBhY3RpdmU7IGV4cGVjdGVkIGlkbGUtYmFycmllciAo
cGFzcyAlZClcbiIsIHBhc3MpOwoKdG90YWw6IDAgZXJyb3JzLCA0IHdhcm5pbmdzLCAwIGNoZWNr
cywgNTI4IGxpbmVzIGNoZWNrZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
