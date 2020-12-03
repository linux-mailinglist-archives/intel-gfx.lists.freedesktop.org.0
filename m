Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8112CCB5E
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Dec 2020 02:03:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 418626EB25;
	Thu,  3 Dec 2020 01:03:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BB0936EB23;
 Thu,  3 Dec 2020 01:03:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B270AA7525;
 Thu,  3 Dec 2020 01:03:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 03 Dec 2020 01:03:10 -0000
Message-ID: <160695739070.31152.17756364556340392870@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201203005731.18385-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201203005731.18385-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/gt=3A_Clear_the_execlists_timers_before_restarting?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3Q6IENsZWFyIHRoZSBleGVj
bGlzdHMgdGltZXJzIGJlZm9yZSByZXN0YXJ0aW5nClVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsu
ZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy84NDUxNS8KU3RhdGUgOiBmYWlsdXJlCgo9PSBTdW1tYXJ5
ID09CgpDQUxMICAgIHNjcmlwdHMvY2hlY2tzeXNjYWxscy5zaAogIENBTEwgICAgc2NyaXB0cy9h
dG9taWMvY2hlY2stYXRvbWljcy5zaAogIERFU0NFTkQgIG9ianRvb2wKICBDSEsgICAgIGluY2x1
ZGUvZ2VuZXJhdGVkL2NvbXBpbGUuaAogIENDIFtNXSAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfbHJjLm8KZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmM6IEluIGZ1bmN0
aW9uIOKAmGV4ZWNsaXN0c19yZXN1bWXigJk6CmRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2xyYy5jOjQyMDM6MTY6IGVycm9yOiDigJhleGVjbGlzdHPigJkgdW5kZWNsYXJlZCAoZmlyc3Qg
dXNlIGluIHRoaXMgZnVuY3Rpb24pOyBkaWQgeW91IG1lYW4g4oCYZXhlY2xpc3RzX2hvbGTigJk/
CiAgY2FuY2VsX3RpbWVyKCZleGVjbGlzdHMtPnRpbWVyKTsKICAgICAgICAgICAgICAgIF5+fn5+
fn5+fgogICAgICAgICAgICAgICAgZXhlY2xpc3RzX2hvbGQKZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbHJjLmM6NDIwMzoxNjogbm90ZTogZWFjaCB1bmRlY2xhcmVkIGlkZW50aWZpZXIg
aXMgcmVwb3J0ZWQgb25seSBvbmNlIGZvciBlYWNoIGZ1bmN0aW9uIGl0IGFwcGVhcnMgaW4Kc2Ny
aXB0cy9NYWtlZmlsZS5idWlsZDoyODM6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9scmMubycgZmFpbGVkCm1ha2VbNF06ICoqKiBbZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLm9dIEVycm9yIDEKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo1
MDA6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0vaTkxNScgZmFpbGVkCm1ha2Vb
M106ICoqKiBbZHJpdmVycy9ncHUvZHJtL2k5MTVdIEVycm9yIDIKc2NyaXB0cy9NYWtlZmlsZS5i
dWlsZDo1MDA6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0nIGZhaWxlZAptYWtl
WzJdOiAqKiogW2RyaXZlcnMvZ3B1L2RybV0gRXJyb3IgMgpzY3JpcHRzL01ha2VmaWxlLmJ1aWxk
OjUwMDogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMvZ3B1JyBmYWlsZWQKbWFrZVsxXTogKioq
IFtkcml2ZXJzL2dwdV0gRXJyb3IgMgpNYWtlZmlsZToxNzk3OiByZWNpcGUgZm9yIHRhcmdldCAn
ZHJpdmVycycgZmFpbGVkCm1ha2U6ICoqKiBbZHJpdmVyc10gRXJyb3IgMgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
