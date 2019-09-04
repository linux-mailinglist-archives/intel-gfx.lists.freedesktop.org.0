Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7916FA7CF3
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2019 09:43:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4837F8989A;
	Wed,  4 Sep 2019 07:43:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 641E88989A;
 Wed,  4 Sep 2019 07:43:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5878EA47DA;
 Wed,  4 Sep 2019 07:43:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gaurav K Singh" <gaurav.k.singh@intel.com>
Date: Wed, 04 Sep 2019 07:43:33 -0000
Message-ID: <20190904074333.9970.6354@emeril.freedesktop.org>
References: <1567580499-1886-1-git-send-email-gaurav.k.singh@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <1567580499-1886-1-git-send-email-gaurav.k.singh@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBUILD=3A_failure_for_dr?=
 =?utf-8?q?m/i915=3A_Fix_corruption_lines_on_the_screen_on_Gen9_chromebook?=
 =?utf-8?q?s?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IEZpeCBjb3JydXB0aW9uIGxp
bmVzIG9uIHRoZSBzY3JlZW4gb24gR2VuOSBjaHJvbWVib29rcwpVUkwgICA6IGh0dHBzOi8vcGF0
Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNjYxOTYvClN0YXRlIDogZmFpbHVyZQoKPT0g
U3VtbWFyeSA9PQoKQ0FMTCAgICBzY3JpcHRzL2NoZWNrc3lzY2FsbHMuc2gKICBDQUxMICAgIHNj
cmlwdHMvYXRvbWljL2NoZWNrLWF0b21pY3Muc2gKICBERVNDRU5EICBvYmp0b29sCiAgQ0hLICAg
ICBpbmNsdWRlL2dlbmVyYXRlZC9jb21waWxlLmgKICBBUiAgICAgIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2J1aWx0LWluLmEKICBDQyBbTV0gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmJjLm8KZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYzogSW4gZnVu
Y3Rpb24g4oCYaW50ZWxfZmJjX2VuYWJsZeKAmToKZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9mYmMuYzoxMTAwOjg6IGVycm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBmdW5j
dGlvbiDigJhJU19HRU454oCZOyBkaWQgeW91IG1lYW4g4oCYSVNfR0VO4oCZPyBbLVdlcnJvcj1p
bXBsaWNpdC1mdW5jdGlvbi1kZWNsYXJhdGlvbl0KICAgIGlmIChJU19HRU45KGRldl9wcml2KSkK
ICAgICAgICBefn5+fn5+CiAgICAgICAgSVNfR0VOCmNjMTogYWxsIHdhcm5pbmdzIGJlaW5nIHRy
ZWF0ZWQgYXMgZXJyb3JzCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6MjgwOiByZWNpcGUgZm9yIHRh
cmdldCAnZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMubycgZmFpbGVkCm1h
a2VbNF06ICoqKiBbZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMub10gRXJy
b3IgMQpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjQ5NzogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZl
cnMvZ3B1L2RybS9pOTE1JyBmYWlsZWQKbWFrZVszXTogKioqIFtkcml2ZXJzL2dwdS9kcm0vaTkx
NV0gRXJyb3IgMgpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjQ5NzogcmVjaXBlIGZvciB0YXJnZXQg
J2RyaXZlcnMvZ3B1L2RybScgZmFpbGVkCm1ha2VbMl06ICoqKiBbZHJpdmVycy9ncHUvZHJtXSBF
cnJvciAyCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NDk3OiByZWNpcGUgZm9yIHRhcmdldCAnZHJp
dmVycy9ncHUnIGZhaWxlZAptYWtlWzFdOiAqKiogW2RyaXZlcnMvZ3B1XSBFcnJvciAyCk1ha2Vm
aWxlOjEwODM6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzJyBmYWlsZWQKbWFrZTogKioqIFtk
cml2ZXJzXSBFcnJvciAyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
