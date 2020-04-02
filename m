Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 150AE19BEAE
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 11:30:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DBFD6EA2A;
	Thu,  2 Apr 2020 09:30:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CA0D36EA29;
 Thu,  2 Apr 2020 09:30:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A0288A0071;
 Thu,  2 Apr 2020 09:30:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 02 Apr 2020 09:30:52 -0000
Message-ID: <158581985262.24296.7530712710206216680@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200402080805.20292-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200402080805.20292-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/gt=3A_Add_one_more_rcu=5Fbarrier=28=29_after_draining_t?=
 =?utf-8?q?he_ppGTT_freelist?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3Q6IEFkZCBvbmUgbW9yZSBy
Y3VfYmFycmllcigpIGFmdGVyIGRyYWluaW5nIHRoZSBwcEdUVCBmcmVlbGlzdApVUkwgICA6IGh0
dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNzU0MDIvClN0YXRlIDogZmFp
bHVyZQoKPT0gU3VtbWFyeSA9PQoKQ0FMTCAgICBzY3JpcHRzL2NoZWNrc3lzY2FsbHMuc2gKICBD
QUxMICAgIHNjcmlwdHMvYXRvbWljL2NoZWNrLWF0b21pY3Muc2gKICBERVNDRU5EICBvYmp0b29s
CiAgQ0hLICAgICBpbmNsdWRlL2dlbmVyYXRlZC9jb21waWxlLmgKICBDQyBbTV0gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2dndHQubwpkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9nZ3R0LmM6IEluIGZ1bmN0aW9uIOKAmGdndHRfY2xlYW51cF9od+KAmToKZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZ2d0dC5jOjY4ODoxMTogZXJyb3I6IHZvaWQgdmFsdWUgbm90IGln
bm9yZWQgYXMgaXQgb3VnaHQgdG8gYmUKICB9IHdoaWxlIChmbHVzaF93b3JrcXVldWUoZ2d0dC0+
dm0uaTkxNS0+d3EpKTsKICAgICAgICAgICBefn5+fn5+fn5+fn5+fn4Kc2NyaXB0cy9NYWtlZmls
ZS5idWlsZDoyNjc6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9nZ3R0Lm8nIGZhaWxlZAptYWtlWzRdOiAqKiogW2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2dndHQub10gRXJyb3IgMQpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjUwNTogcmVjaXBl
IGZvciB0YXJnZXQgJ2RyaXZlcnMvZ3B1L2RybS9pOTE1JyBmYWlsZWQKbWFrZVszXTogKioqIFtk
cml2ZXJzL2dwdS9kcm0vaTkxNV0gRXJyb3IgMgpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjUwNTog
cmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMvZ3B1L2RybScgZmFpbGVkCm1ha2VbMl06ICoqKiBb
ZHJpdmVycy9ncHUvZHJtXSBFcnJvciAyCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NTA1OiByZWNp
cGUgZm9yIHRhcmdldCAnZHJpdmVycy9ncHUnIGZhaWxlZAptYWtlWzFdOiAqKiogW2RyaXZlcnMv
Z3B1XSBFcnJvciAyCk1ha2VmaWxlOjE2ODM6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzJyBm
YWlsZWQKbWFrZTogKioqIFtkcml2ZXJzXSBFcnJvciAyCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
