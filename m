Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E4F33661
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 19:18:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17AEE892BB;
	Mon,  3 Jun 2019 17:18:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E33B7892AE;
 Mon,  3 Jun 2019 17:18:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DE911A010C;
 Mon,  3 Jun 2019 17:18:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 03 Jun 2019 17:18:09 -0000
Message-ID: <20190603171809.25578.93336@emeril.freedesktop.org>
References: <20190603171130.3186-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190603171130.3186-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915/gtt=3A_Replace_struct=5Fmutex_serialisation_for_all?=
 =?utf-8?q?ocation?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3R0OiBSZXBsYWNlIHN0cnVj
dF9tdXRleCBzZXJpYWxpc2F0aW9uIGZvciBhbGxvY2F0aW9uClVSTCAgIDogaHR0cHM6Ly9wYXRj
aHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MTUzMy8KU3RhdGUgOiB3YXJuaW5nCgo9PSBT
dW1tYXJ5ID09CgokIGRpbSBjaGVja3BhdGNoIG9yaWdpbi9kcm0tdGlwCmQ2MjI2YjdmMTkxOCBk
cm0vaTkxNS9ndHQ6IFJlcGxhY2Ugc3RydWN0X211dGV4IHNlcmlhbGlzYXRpb24gZm9yIGFsbG9j
YXRpb24KLTo0OTU6IENIRUNLOlVOQ09NTUVOVEVEX0RFRklOSVRJT046IHNwaW5sb2NrX3QgZGVm
aW5pdGlvbiB3aXRob3V0IGNvbW1lbnQKIzQ5NTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW1fZ3R0Lmg6MjU5OgorCXNwaW5sb2NrX3QgbG9jazsKCi06NTAzOiBDSEVDSzpVTkNP
TU1FTlRFRF9ERUZJTklUSU9OOiBzcGlubG9ja190IGRlZmluaXRpb24gd2l0aG91dCBjb21tZW50
CiM1MDM6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5oOjI2NjoKKwlz
cGlubG9ja190IGxvY2s7CgotOjUwOTogQ0hFQ0s6VU5DT01NRU5URURfREVGSU5JVElPTjogc3Bp
bmxvY2tfdCBkZWZpbml0aW9uIHdpdGhvdXQgY29tbWVudAojNTA5OiBGSUxFOiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuaDoyNzI6CisJc3BpbmxvY2tfdCBsb2NrOwoKdG90YWw6
IDAgZXJyb3JzLCAwIHdhcm5pbmdzLCAzIGNoZWNrcywgNDYzIGxpbmVzIGNoZWNrZWQKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
