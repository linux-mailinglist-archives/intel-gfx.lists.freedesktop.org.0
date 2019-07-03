Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE0D5ECD0
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 21:36:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F169B6E1BE;
	Wed,  3 Jul 2019 19:36:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0036F6E1BD;
 Wed,  3 Jul 2019 19:36:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EC20DA00EF;
 Wed,  3 Jul 2019 19:36:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 03 Jul 2019 19:36:28 -0000
Message-ID: <20190703193628.7777.4695@emeril.freedesktop.org>
References: <20190703171913.16585-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190703171913.16585-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5Bv2=5D_drm/i915/gem=3A_Defer_obj-=3Eb?=
 =?utf-8?q?ase=2Eresv_fini_until_RCU_callback_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW3YyXSBk
cm0vaTkxNS9nZW06IERlZmVyIG9iai0+YmFzZS5yZXN2IGZpbmkgdW50aWwgUkNVIGNhbGxiYWNr
IChyZXYyKQpVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMv
NjMxNjAvClN0YXRlIDogd2FybmluZwoKPT0gU3VtbWFyeSA9PQoKJCBkaW0gY2hlY2twYXRjaCBv
cmlnaW4vZHJtLXRpcApjZDVmZjlhYzA5NWUgZHJtL2k5MTUvZ2VtOiBEZWZlciBvYmotPmJhc2Uu
cmVzdiBmaW5pIHVudGlsIFJDVSBjYWxsYmFjawo0NmNhMDc4ZmFkMTYgZHJtL2k5MTUvZ3R0OiBE
ZWZlciB0aGUgZnJlZSBmb3IgYWxsb2MgZXJyb3IgcGF0aHMKLToxMTogV0FSTklORzpDT01NSVRf
TE9HX0xPTkdfTElORTogUG9zc2libGUgdW53cmFwcGVkIGNvbW1pdCBkZXNjcmlwdGlvbiAocHJl
ZmVyIGEgbWF4aW11bSA3NSBjaGFycyBwZXIgbGluZSkKIzExOiAKPDM+IFs0MTQuMzYzNzk1XSBC
VUc6IHNsZWVwaW5nIGZ1bmN0aW9uIGNhbGxlZCBmcm9tIGludmFsaWQgY29udGV4dCBhdCBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYzo0NzIKCnRvdGFsOiAwIGVycm9ycywgMSB3
YXJuaW5ncywgMCBjaGVja3MsIDE4IGxpbmVzIGNoZWNrZWQKYzJiZGJiNTBjOWM3IGRybS9pOTE1
OiBGbHVzaCB0aGUgd29ya3F1ZXVlIGJlZm9yZSBkcmFpbmluZwoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
