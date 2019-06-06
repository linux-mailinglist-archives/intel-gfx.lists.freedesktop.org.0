Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 489A1368C9
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 02:37:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0302989623;
	Thu,  6 Jun 2019 00:37:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A3B0A894D4;
 Thu,  6 Jun 2019 00:37:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9D382A0071;
 Thu,  6 Jun 2019 00:37:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vivek Kasireddy" <vivek.kasireddy@intel.com>
Date: Thu, 06 Jun 2019 00:37:30 -0000
Message-ID: <20190606003730.10845.62146@emeril.freedesktop.org>
References: <20190605190556.10842.99420@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
In-Reply-To: <20190605190556.10842.99420@emeril.freedesktop.org>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/?=
 =?utf-8?q?i915/ehl=3A_Add_support_for_DPLL4_=28v6=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZWhsOiBBZGQgc3VwcG9ydCBm
b3IgRFBMTDQgKHY2KQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9z
ZXJpZXMvNjE2OTYvClN0YXRlIDogZmFpbHVyZQoKPT0gU3VtbWFyeSA9PQoKQ0FMTCAgICBzY3Jp
cHRzL2NoZWNrc3lzY2FsbHMuc2gKICBDQUxMICAgIHNjcmlwdHMvYXRvbWljL2NoZWNrLWF0b21p
Y3Muc2gKICBERVNDRU5EICBvYmp0b29sCiAgQ0hLICAgICBpbmNsdWRlL2dlbmVyYXRlZC9jb21w
aWxlLmgKICBDQyBbTV0gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2hlYWRlcl90ZXN0X2ludGVsX2Rw
bGxfbWdyLm8KSW4gZmlsZSBpbmNsdWRlZCBmcm9tIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2hlYWRl
cl90ZXN0X2ludGVsX2RwbGxfbWdyLmM6MTowOgpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9k
cGxsX21nci5oOjMxOToyOiBlcnJvcjogdW5rbm93biB0eXBlIG5hbWUg4oCYaW50ZWxfd2FrZXJl
Zl904oCZCiAgaW50ZWxfd2FrZXJlZl90IHdha2VyZWZzW1BPV0VSX0RPTUFJTl9OVU1dOwogIF5+
fn5+fn5+fn5+fn5+fgpkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcGxsX21nci5oOjMxOToy
NzogZXJyb3I6IOKAmFBPV0VSX0RPTUFJTl9OVU3igJkgdW5kZWNsYXJlZCBoZXJlIChub3QgaW4g
YSBmdW5jdGlvbikKICBpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZnNbUE9XRVJfRE9NQUlOX05VTV07
CiAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn4Kc2NyaXB0cy9NYWtl
ZmlsZS5idWlsZDoyNzg6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0vaTkxNS9o
ZWFkZXJfdGVzdF9pbnRlbF9kcGxsX21nci5vJyBmYWlsZWQKbWFrZVs0XTogKioqIFtkcml2ZXJz
L2dwdS9kcm0vaTkxNS9oZWFkZXJfdGVzdF9pbnRlbF9kcGxsX21nci5vXSBFcnJvciAxCnNjcmlw
dHMvTWFrZWZpbGUuYnVpbGQ6NDg5OiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUvZHJt
L2k5MTUnIGZhaWxlZAptYWtlWzNdOiAqKiogW2RyaXZlcnMvZ3B1L2RybS9pOTE1XSBFcnJvciAy
CnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NDg5OiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9n
cHUvZHJtJyBmYWlsZWQKbWFrZVsyXTogKioqIFtkcml2ZXJzL2dwdS9kcm1dIEVycm9yIDIKc2Ny
aXB0cy9NYWtlZmlsZS5idWlsZDo0ODk6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdScg
ZmFpbGVkCm1ha2VbMV06ICoqKiBbZHJpdmVycy9ncHVdIEVycm9yIDIKTWFrZWZpbGU6MTA3MTog
cmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMnIGZhaWxlZAptYWtlOiAqKiogW2RyaXZlcnNdIEVy
cm9yIDIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
