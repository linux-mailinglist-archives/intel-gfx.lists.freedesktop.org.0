Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68841ACA6D
	for <lists+intel-gfx@lfdr.de>; Sun,  8 Sep 2019 05:17:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8B1F89D52;
	Sun,  8 Sep 2019 03:17:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E174D89D4B;
 Sun,  8 Sep 2019 03:17:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D96EDA47DD;
 Sun,  8 Sep 2019 03:17:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Sun, 08 Sep 2019 03:17:24 -0000
Message-ID: <20190908031724.17036.67279@emeril.freedesktop.org>
References: <20190907002143.22591-1-matthew.d.roper@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190907002143.22591-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_cd?=
 =?utf-8?q?clk_consolidation_and_rework_for_BXT-TGL_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogY2RjbGsgY29uc29saWRhdGlvbiBhbmQgcmV3
b3JrIGZvciBCWFQtVEdMIChyZXYyKQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNr
dG9wLm9yZy9zZXJpZXMvNjYzNjUvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQ0FM
TCAgICBzY3JpcHRzL2NoZWNrc3lzY2FsbHMuc2gKICBDQUxMICAgIHNjcmlwdHMvYXRvbWljL2No
ZWNrLWF0b21pY3Muc2gKICBERVNDRU5EICBvYmp0b29sCiAgQ0hLICAgICBpbmNsdWRlL2dlbmVy
YXRlZC9jb21waWxlLmgKICBBUiAgICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2J1aWx0LWluLmEK
ICBDQyBbTV0gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsubwpkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmM6IEluIGZ1bmN0aW9uIOKAmGNh
bGNfY2RjbGvigJk6CmRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYzox
MjEwOjIwOiBlcnJvcjogc3VnZ2VzdCBwYXJlbnRoZXNlcyBhcm91bmQg4oCYJibigJkgd2l0aGlu
IOKAmHx84oCZIFstV2Vycm9yPXBhcmVudGhlc2VzXQogICBpZiAocmVmID09IDE5MjAwICYmIHRh
YmxlW2ldLnJhdGlvXzE5ID09IDAgfHwKICAgICAgIH5+fn5+fn5+fn5+fn5efn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+CmRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYzox
MjEyOjIwOiBlcnJvcjogc3VnZ2VzdCBwYXJlbnRoZXNlcyBhcm91bmQg4oCYJibigJkgd2l0aGlu
IOKAmHx84oCZIFstV2Vycm9yPXBhcmVudGhlc2VzXQogICAgICAgcmVmID09IDM4NDAwICYmIHRh
YmxlW2ldLnJhdGlvXzM4ID09IDApCiAgICAgICB+fn5+fn5+fn5+fn5+Xn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fgpjYzE6IGFsbCB3YXJuaW5ncyBiZWluZyB0cmVhdGVkIGFzIGVycm9ycwpzY3Jp
cHRzL01ha2VmaWxlLmJ1aWxkOjI4MDogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsubycgZmFpbGVkCm1ha2VbNF06ICoqKiBbZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5vXSBFcnJvciAxCnNjcmlwdHMvTWFr
ZWZpbGUuYnVpbGQ6NDk3OiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUvZHJtL2k5MTUn
IGZhaWxlZAptYWtlWzNdOiAqKiogW2RyaXZlcnMvZ3B1L2RybS9pOTE1XSBFcnJvciAyCnNjcmlw
dHMvTWFrZWZpbGUuYnVpbGQ6NDk3OiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUvZHJt
JyBmYWlsZWQKbWFrZVsyXTogKioqIFtkcml2ZXJzL2dwdS9kcm1dIEVycm9yIDIKc2NyaXB0cy9N
YWtlZmlsZS5idWlsZDo0OTc6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdScgZmFpbGVk
Cm1ha2VbMV06ICoqKiBbZHJpdmVycy9ncHVdIEVycm9yIDIKTWFrZWZpbGU6MTA4MzogcmVjaXBl
IGZvciB0YXJnZXQgJ2RyaXZlcnMnIGZhaWxlZAptYWtlOiAqKiogW2RyaXZlcnNdIEVycm9yIDIK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
