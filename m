Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9017389EE4
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 14:54:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A2436E4FF;
	Mon, 12 Aug 2019 12:54:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2423F6E4F1;
 Mon, 12 Aug 2019 12:54:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EFA13A00FE;
 Mon, 12 Aug 2019 12:54:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 12 Aug 2019 12:54:17 -0000
Message-ID: <20190812125417.20589.73897@emeril.freedesktop.org>
References: <20190812091045.29587-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190812091045.29587-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/8=5D_drm/i915/execlists=3A_Avoid_s?=
 =?utf-8?q?ync_calls_during_park_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvOF0g
ZHJtL2k5MTUvZXhlY2xpc3RzOiBBdm9pZCBzeW5jIGNhbGxzIGR1cmluZyBwYXJrIChyZXYyKQpV
UkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjUwODAvClN0
YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBvcmlnaW4vZHJt
LXRpcAphYTA1ZjY3M2E2ODMgZHJtL2k5MTUvZXhlY2xpc3RzOiBBdm9pZCBzeW5jIGNhbGxzIGR1
cmluZyBwYXJrCjU2MzExMzc2ZGYwMCBkcm0vaTkxNS9zZWxmdGVzdHM6IFByZXZlbnQgdGhlIHRp
bWVzbGljZSBleHBpcmluZyBkdXJpbmcgc3VwcHJlc3Npb24gdGVzdHMKMmE2NTU5YzYwZTQwIGRy
bS9pOTE1L2d1YzogVXNlIGEgbG9jYWwgY2FuY2VsX3BvcnRfcmVxdWVzdHMKYzRmNTFiZDMyNDI0
IGRybS9pOTE1OiBQdXNoIHRoZSB3YWtlcmVmLT5jb3VudCBkZWZlcnJhbCB0byB0aGUgYmFja2Vu
ZAoyOTYzYWNhNzQ3ZjIgZHJtL2k5MTUvZ3Q6IFNhdmUvcmVzdG9yZSBpbnRlcnJ1cHRzIGFyb3Vu
ZCBicmVhZGNydW1iIGRpc2FibGUKZjgyMDMzMzQ4MzQ0IGRybS9pOTE1L2d1YzogS2VlcCB0aGUg
ZW5naW5lIGF3YWtlIHVudGlsIHRoZSB0YXNrbGV0IGlzIGlkbGUKMDE4NTY1NDNkMzhlIGRybS9p
OTE1L2d0OiBVc2UgdGhlIGxvY2FsIGVuZ2luZSB3YWtlcmVmIHdoZW4gY2hlY2tpbmcgUklORyBy
ZWdpc3RlcnMKNzhkNzJlYzM5MTFiIGRybS9pOTE1L2V4ZWNsaXN0czogTGlmdCBwcm9jZXNzX2Nz
YigpIG91dCBvZiB0aGUgaXJxLW9mZiBzcGlubG9jawotOjg6IFdBUk5JTkc6Q09NTUlUX0xPR19M
T05HX0xJTkU6IFBvc3NpYmxlIHVud3JhcHBlZCBjb21taXQgZGVzY3JpcHRpb24gKHByZWZlciBh
IG1heGltdW0gNzUgY2hhcnMgcGVyIGxpbmUpCiM4OiAKYWJpbGl0eSB0byBieXBhc3Mga3NvZnRp
cnFkIGludGVycnVwdCBwcm9jZXNzaW5nIG9uIGRpcmVjdCBzdWJtaXNzaW9uIHBhdGhzLAoKdG90
YWw6IDAgZXJyb3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgMjQzIGxpbmVzIGNoZWNrZWQKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
