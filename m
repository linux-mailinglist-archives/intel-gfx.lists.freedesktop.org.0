Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0488249D81
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 14:10:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 651076E2CF;
	Wed, 19 Aug 2020 12:10:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C1F806E2CF;
 Wed, 19 Aug 2020 12:10:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B67E0A008A;
 Wed, 19 Aug 2020 12:10:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andy Shevchenko" <andriy.shevchenko@linux.intel.com>
Date: Wed, 19 Aug 2020 12:10:12 -0000
Message-ID: <159783901274.23597.5042413850001613807@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200819115353.59592-1-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20200819115353.59592-1-andriy.shevchenko@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/gt=3A_convert_tasklets_to_use_new_tasklet=5Fsetup=28=29?=
 =?utf-8?q?_API?=
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3Q6IGNvbnZlcnQgdGFza2xl
dHMgdG8gdXNlIG5ldyB0YXNrbGV0X3NldHVwKCkgQVBJClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdv
cmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy84MDgwMS8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1t
YXJ5ID09CgpDQUxMICAgIHNjcmlwdHMvY2hlY2tzeXNjYWxscy5zaAogIENBTEwgICAgc2NyaXB0
cy9hdG9taWMvY2hlY2stYXRvbWljcy5zaAogIERFU0NFTkQgIG9ianRvb2wKICBDSEsgICAgIGlu
Y2x1ZGUvZ2VuZXJhdGVkL2NvbXBpbGUuaAogIENDIFtNXSAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbHJjLm8KZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmM6IEluIGZ1
bmN0aW9uIOKAmGludGVsX2V4ZWNsaXN0c19zZXRfZGVmYXVsdF9zdWJtaXNzaW9u4oCZOgpkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYzo0OTk0OjMzOiBlcnJvcjogYXNzaWdubWVu
dCBmcm9tIGluY29tcGF0aWJsZSBwb2ludGVyIHR5cGUgWy1XZXJyb3I9aW5jb21wYXRpYmxlLXBv
aW50ZXItdHlwZXNdCiAgZW5naW5lLT5leGVjbGlzdHMudGFza2xldC5mdW5jID0gZXhlY2xpc3Rz
X3N1Ym1pc3Npb25fdGFza2xldDsKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXgpk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYzogSW4gZnVuY3Rpb24g4oCYaW50ZWxf
ZXhlY2xpc3RzX2NyZWF0ZV92aXJ0dWFs4oCZOgpkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9scmMuYzo1NzYzOjM5OiBlcnJvcjogY29tcGFyaXNvbiBvZiBkaXN0aW5jdCBwb2ludGVyIHR5
cGVzIGxhY2tzIGEgY2FzdCBbLVdlcnJvcl0KICAgaWYgKHNpYmxpbmctPmV4ZWNsaXN0cy50YXNr
bGV0LmZ1bmMgIT0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn4KY2Mx
OiBhbGwgd2FybmluZ3MgYmVpbmcgdHJlYXRlZCBhcyBlcnJvcnMKc2NyaXB0cy9NYWtlZmlsZS5i
dWlsZDoyODM6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9scmMubycgZmFpbGVkCm1ha2VbNF06ICoqKiBbZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLm9dIEVycm9yIDEKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo1MDA6IHJlY2lwZSBmb3Ig
dGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0vaTkxNScgZmFpbGVkCm1ha2VbM106ICoqKiBbZHJpdmVy
cy9ncHUvZHJtL2k5MTVdIEVycm9yIDIKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo1MDA6IHJlY2lw
ZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0nIGZhaWxlZAptYWtlWzJdOiAqKiogW2RyaXZl
cnMvZ3B1L2RybV0gRXJyb3IgMgpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjUwMDogcmVjaXBlIGZv
ciB0YXJnZXQgJ2RyaXZlcnMvZ3B1JyBmYWlsZWQKbWFrZVsxXTogKioqIFtkcml2ZXJzL2dwdV0g
RXJyb3IgMgpNYWtlZmlsZToxNzg5OiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycycgZmFpbGVk
Cm1ha2U6ICoqKiBbZHJpdmVyc10gRXJyb3IgMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
