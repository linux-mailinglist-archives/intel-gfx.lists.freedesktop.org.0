Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD9415B1CB
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 21:25:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E3176E102;
	Wed, 12 Feb 2020 20:25:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6C52C6E101;
 Wed, 12 Feb 2020 20:25:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 41628A7525;
 Wed, 12 Feb 2020 20:25:23 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi@etezian.org>
Date: Wed, 12 Feb 2020 20:25:23 -0000
Message-ID: <158153912326.24264.3208475140797523505@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200211181027.5329-1-andi@etezian.org>
In-Reply-To: <20200211181027.5329-1-andi@etezian.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/gt=3A_make_a_gt_sysfs_group_and_move_power_management_f?=
 =?utf-8?q?iles_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZ3Q6IG1ha2UgYSBndCBzeXNm
cyBncm91cCBhbmQgbW92ZSBwb3dlciBtYW5hZ2VtZW50IGZpbGVzIChyZXYyKQpVUkwgICA6IGh0
dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvNzMxOTAvClN0YXRlIDogZmFp
bHVyZQoKPT0gU3VtbWFyeSA9PQoKQ0FMTCAgICBzY3JpcHRzL2NoZWNrc3lzY2FsbHMuc2gKICBD
QUxMICAgIHNjcmlwdHMvYXRvbWljL2NoZWNrLWF0b21pY3Muc2gKICBERVNDRU5EICBvYmp0b29s
CiAgQ0hLICAgICBpbmNsdWRlL2dlbmVyYXRlZC9jb21waWxlLmgKICBDQyBbTV0gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3N5c2ZzX2d0X3BtLm8KZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc3lz
ZnNfZ3RfcG0uYzogSW4gZnVuY3Rpb24g4oCYaW50ZWxfZ3Rfc3lzZnNfZ2V0X2RydmRhdGHigJk6
CmRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3N5c2ZzX2d0X3BtLmM6MjY6NDk6IGVycm9yOiAiLyoi
IHdpdGhpbiBjb21tZW50IFstV2Vycm9yPWNvbW1lbnRdCiAgICogaGFzIGJlZW4gY2FsbGVkLCB3
aGV0aGVyIGl0J3MgY2FsbGVkIGZyb20gZ3QvKiBvciBmcm9tCiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCmNjMTogYWxsIHdhcm5pbmdzIGJlaW5nIHRy
ZWF0ZWQgYXMgZXJyb3JzCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6MjY3OiByZWNpcGUgZm9yIHRh
cmdldCAnZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc3lzZnNfZ3RfcG0ubycgZmFpbGVkCm1ha2Vb
NF06ICoqKiBbZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc3lzZnNfZ3RfcG0ub10gRXJyb3IgMQpz
Y3JpcHRzL01ha2VmaWxlLmJ1aWxkOjUwNTogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMvZ3B1
L2RybS9pOTE1JyBmYWlsZWQKbWFrZVszXTogKioqIFtkcml2ZXJzL2dwdS9kcm0vaTkxNV0gRXJy
b3IgMgpzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjUwNTogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZl
cnMvZ3B1L2RybScgZmFpbGVkCm1ha2VbMl06ICoqKiBbZHJpdmVycy9ncHUvZHJtXSBFcnJvciAy
CnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NTA1OiByZWNpcGUgZm9yIHRhcmdldCAnZHJpdmVycy9n
cHUnIGZhaWxlZAptYWtlWzFdOiAqKiogW2RyaXZlcnMvZ3B1XSBFcnJvciAyCk1ha2VmaWxlOjE2
ODE6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzJyBmYWlsZWQKbWFrZTogKioqIFtkcml2ZXJz
XSBFcnJvciAyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
