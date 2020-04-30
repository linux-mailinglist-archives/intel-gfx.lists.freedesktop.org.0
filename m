Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 203451C0AD0
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 01:06:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C1436EA1C;
	Thu, 30 Apr 2020 23:06:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AC2346EA1D;
 Thu, 30 Apr 2020 23:06:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A99F6A66C9;
 Thu, 30 Apr 2020 23:06:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 30 Apr 2020 23:06:48 -0000
Message-ID: <158828800869.31918.8986958669177775464@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200430194107.7073-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200430194107.7073-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiB3YXJuaW5nIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Implement_vm=5Fops-=3Eaccess_for_gdb_access_into_mma?=
 =?utf-8?b?cHMgKHJldjMp?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEltcGxlbWVudCB2bV9vcHMt
PmFjY2VzcyBmb3IgZ2RiIGFjY2VzcyBpbnRvIG1tYXBzIChyZXYzKQpVUkwgICA6IGh0dHBzOi8v
cGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNzY3ODMvClN0YXRlIDogd2FybmluZwoK
PT0gU3VtbWFyeSA9PQoKQ0FMTCAgICBzY3JpcHRzL2NoZWNrc3lzY2FsbHMuc2gKICBDQUxMICAg
IHNjcmlwdHMvYXRvbWljL2NoZWNrLWF0b21pY3Muc2gKICBDSEsgICAgIGluY2x1ZGUvZ2VuZXJh
dGVkL2NvbXBpbGUuaAogIENDIFtNXSAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X21tYW4ubwpJbiBmaWxlIGluY2x1ZGVkIGZyb20gLi9pbmNsdWRlL2FzbS1nZW5lcmljL2J1Zy5o
OjU6MCwKICAgICAgICAgICAgICAgICBmcm9tIC4vYXJjaC94ODYvaW5jbHVkZS9hc20vYnVnLmg6
ODMsCiAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgvYnVnLmg6NSwKICAgICAg
ICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9tbWRlYnVnLmg6NSwKICAgICAgICAgICAg
ICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9tbS5oOjksCiAgICAgICAgICAgICAgICAgZnJvbSAu
L2luY2x1ZGUvbGludXgvbW1hbi5oOjUsCiAgICAgICAgICAgICAgICAgZnJvbSBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jOjg6CmRyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9zZWxmdGVzdHMvaTkxNV9nZW1fbW1hbi5jOiBJbiBmdW5jdGlvbiDigJhfX2lndF9tbWFwX2Fj
Y2Vzc+KAmToKLi9pbmNsdWRlL2xpbnV4L2Vyci5oOjIyOjQ5OiBlcnJvcjogY2FzdCB0byBwb2lu
dGVyIGZyb20gaW50ZWdlciBvZiBkaWZmZXJlbnQgc2l6ZSBbLVdlcnJvcj1pbnQtdG8tcG9pbnRl
ci1jYXN0XQogI2RlZmluZSBJU19FUlJfVkFMVUUoeCkgdW5saWtlbHkoKHVuc2lnbmVkIGxvbmcp
KHZvaWQgKikoeCkgPj0gKHVuc2lnbmVkIGxvbmcpLU1BWF9FUlJOTykKICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF4KLi9pbmNsdWRlL2xpbnV4L2NvbXBp
bGVyLmg6Nzg6NDI6IG5vdGU6IGluIGRlZmluaXRpb24gb2YgbWFjcm8g4oCYdW5saWtlbHnigJkK
ICMgZGVmaW5lIHVubGlrZWx5KHgpIF9fYnVpbHRpbl9leHBlY3QoISEoeCksIDApCiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF4KZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9tbWFuLmM6OTk2OjY6IG5vdGU6IGluIGV4cGFuc2lvbiBv
ZiBtYWNybyDigJhJU19FUlJfVkFMVUXigJkKICBpZiAoSVNfRVJSX1ZBTFVFKGFkZHIpKQogICAg
ICBefn5+fn5+fn5+fn4KY2MxOiBhbGwgd2FybmluZ3MgYmVpbmcgdHJlYXRlZCBhcyBlcnJvcnMK
c2NyaXB0cy9NYWtlZmlsZS5idWlsZDoyNjY6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5vJyBmYWlsZWQKbWFrZVs0XTogKioqIFtkcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5vXSBFcnJvciAxCnNjcmlwdHMvTWFr
ZWZpbGUuYnVpbGQ6NDg4OiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUvZHJtL2k5MTUn
IGZhaWxlZAptYWtlWzNdOiAqKiogW2RyaXZlcnMvZ3B1L2RybS9pOTE1XSBFcnJvciAyCnNjcmlw
dHMvTWFrZWZpbGUuYnVpbGQ6NDg4OiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUvZHJt
JyBmYWlsZWQKbWFrZVsyXTogKioqIFtkcml2ZXJzL2dwdS9kcm1dIEVycm9yIDIKc2NyaXB0cy9N
YWtlZmlsZS5idWlsZDo0ODg6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdScgZmFpbGVk
Cm1ha2VbMV06ICoqKiBbZHJpdmVycy9ncHVdIEVycm9yIDIKTWFrZWZpbGU6MTcyMjogcmVjaXBl
IGZvciB0YXJnZXQgJ2RyaXZlcnMnIGZhaWxlZAptYWtlOiAqKiogW2RyaXZlcnNdIEVycm9yIDIK
Cj09IExvZ3MgPT0KCkZvciBtb3JlIGRldGFpbHMgc2VlOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNzUzMi9idWlsZF8zMmJpdC5sb2cKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
