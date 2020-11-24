Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 101E02C340C
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 23:32:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2F646E40C;
	Tue, 24 Nov 2020 22:32:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C44A16E409;
 Tue, 24 Nov 2020 22:32:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BA9C5A882F;
 Tue, 24 Nov 2020 22:32:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 24 Nov 2020 22:32:04 -0000
Message-ID: <160625712473.10864.15250093985773083005@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201123145551.13222-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201123145551.13222-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915/display=3A_Record_the_plane_update_times_for_debugging_?=
 =?utf-8?b?KHJldjMp?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTUvZGlzcGxheTogUmVjb3JkIHRo
ZSBwbGFuZSB1cGRhdGUgdGltZXMgZm9yIGRlYnVnZ2luZyAocmV2MykKVVJMICAgOiBodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzg0MTc0LwpTdGF0ZSA6IGZhaWx1cmUK
Cj09IFN1bW1hcnkgPT0KCkNBTEwgICAgc2NyaXB0cy9jaGVja3N5c2NhbGxzLnNoCiAgQ0FMTCAg
ICBzY3JpcHRzL2F0b21pYy9jaGVjay1hdG9taWNzLnNoCiAgREVTQ0VORCAgb2JqdG9vbAogIENI
SyAgICAgaW5jbHVkZS9nZW5lcmF0ZWQvY29tcGlsZS5oCiAgQ0MgW01dICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5vCmRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmM6IEluIGZ1bmN0aW9uIOKAmGNydGNf
dmJsYW5rX2luZm/igJk6CmRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9kZWJ1Z2ZzLmM6OTA3OjY6IGVycm9yOiDigJhWQkxBTktfRVZBU0lPTl9USU1FX1VT4oCZIHVu
ZGVjbGFyZWQgKGZpcnN0IHVzZSBpbiB0aGlzIGZ1bmN0aW9uKTsgZGlkIHlvdSBtZWFuIOKAmERN
QVJfT1BFUkFUSU9OX1RJTUVPVVTigJk/CiAgICAgIFZCTEFOS19FVkFTSU9OX1RJTUVfVVMsIGNy
dGMtPmRlYnVnLm92ZXJfdmJsX3RpbWUpOwogICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+CiAg
ICAgIERNQVJfT1BFUkFUSU9OX1RJTUVPVVQKZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X2RlYnVnZnMuYzo5MDc6Njogbm90ZTogZWFjaCB1bmRlY2xhcmVkIGlkZW50
aWZpZXIgaXMgcmVwb3J0ZWQgb25seSBvbmNlIGZvciBlYWNoIGZ1bmN0aW9uIGl0IGFwcGVhcnMg
aW4Kc2NyaXB0cy9NYWtlZmlsZS5idWlsZDoyODM6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5vJyBmYWlsZWQKbWFr
ZVs0XTogKioqIFtkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVi
dWdmcy5vXSBFcnJvciAxCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NTAwOiByZWNpcGUgZm9yIHRh
cmdldCAnZHJpdmVycy9ncHUvZHJtL2k5MTUnIGZhaWxlZAptYWtlWzNdOiAqKiogW2RyaXZlcnMv
Z3B1L2RybS9pOTE1XSBFcnJvciAyCnNjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NTAwOiByZWNpcGUg
Zm9yIHRhcmdldCAnZHJpdmVycy9ncHUvZHJtJyBmYWlsZWQKbWFrZVsyXTogKioqIFtkcml2ZXJz
L2dwdS9kcm1dIEVycm9yIDIKc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo1MDA6IHJlY2lwZSBmb3Ig
dGFyZ2V0ICdkcml2ZXJzL2dwdScgZmFpbGVkCm1ha2VbMV06ICoqKiBbZHJpdmVycy9ncHVdIEVy
cm9yIDIKTWFrZWZpbGU6MTc5OTogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZlcnMnIGZhaWxlZApt
YWtlOiAqKiogW2RyaXZlcnNdIEVycm9yIDIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
