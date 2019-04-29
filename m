Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7E5E9B6
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2019 20:08:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4917A89090;
	Mon, 29 Apr 2019 18:08:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4F9D789077;
 Mon, 29 Apr 2019 18:08:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 47936A0081;
 Mon, 29 Apr 2019 18:08:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 29 Apr 2019 18:08:45 -0000
Message-ID: <20190429180845.31947.68979@emeril.freedesktop.org>
References: <20190429180020.27274-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190429180020.27274-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B1/5=5D_drm/i915=3A_Wait_for_the_struct?=
 =?utf-8?q?=5Fmutex_on_idling?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvNV0g
ZHJtL2k5MTU6IFdhaXQgZm9yIHRoZSBzdHJ1Y3RfbXV0ZXggb24gaWRsaW5nClVSTCAgIDogaHR0
cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy82MDA3Mi8KU3RhdGUgOiB3YXJu
aW5nCgo9PSBTdW1tYXJ5ID09CgokIGRpbSBzcGFyc2Ugb3JpZ2luL2RybS10aXAKU3BhcnNlIHZl
cnNpb246IHYwLjUuMgpDb21taXQ6IGRybS9pOTE1OiBXYWl0IGZvciB0aGUgc3RydWN0X211dGV4
IG9uIGlkbGluZwpPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNTogT25seSByZXNjaGVkdWxlIHRoZSBz
dWJtaXNzaW9uIHRhc2tsZXQgaWYgcHJlZW1wdGlvbiBpcyBwb3NzaWJsZQorZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lLmg6MTI0OjIzOiB3YXJuaW5nOiBleHByZXNzaW9uIHVz
aW5nIHNpemVvZih2b2lkKQoKQ29tbWl0OiBkcm0vaTkxNTogRGVsYXkgc2VtYXBob3JlIHN1Ym1p
c3Npb24gdW50aWwgdGhlIHN0YXJ0IG9mIHRoZSBzaWduYWxlcgpPa2F5IQoKQ29tbWl0OiBkcm0v
aTkxNTogRGlzYWJsZSBzZW1hcGhvcmUgYnVzeXdhaXRzIG9uIHNhdHVyYXRlZCBzeXN0ZW1zCisu
L2luY2x1ZGUvdWFwaS9saW51eC9wZXJmX2V2ZW50Lmg6MTQ3OjU2OiB3YXJuaW5nOiBjYXN0IHRy
dW5jYXRlcyBiaXRzIGZyb20gY29uc3RhbnQgdmFsdWUgKDgwMDAwMDAwMDAwMDAwMDAgYmVjb21l
cyAwKQoKQ29tbWl0OiBkcm0vaTkxNS9leGVjbGlzdHM6IERvbid0IGFwcGx5IHByaW9yaXR5IGJv
b3N0IGZvciByZXNldHMKT2theSEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
