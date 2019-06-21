Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B954EA50
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 16:13:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1F596E8CE;
	Fri, 21 Jun 2019 14:13:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B0BBA6E8C4;
 Fri, 21 Jun 2019 14:13:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A95E8A00A0;
 Fri, 21 Jun 2019 14:13:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 21 Jun 2019 14:13:24 -0000
Message-ID: <20190621141324.9268.99627@emeril.freedesktop.org>
References: <20190621135246.20683-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20190621135246.20683-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_drm/i915=3A_Prevent_dereference_of_engine_before_NULL_check_?=
 =?utf-8?q?in_error_capture?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogZHJtL2k5MTU6IFByZXZlbnQgZGVyZWZlcmVu
Y2Ugb2YgZW5naW5lIGJlZm9yZSBOVUxMIGNoZWNrIGluIGVycm9yIGNhcHR1cmUKVVJMICAgOiBo
dHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzYyNTI4LwpTdGF0ZSA6IHdh
cm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKN2Nj
NTA3YjE3ZjA2IGRybS9pOTE1OiBQcmV2ZW50IGRlcmVmZXJlbmNlIG9mIGVuZ2luZSBiZWZvcmUg
TlVMTCBjaGVjayBpbiBlcnJvciBjYXB0dXJlCi06NzogV0FSTklORzpDT01NSVRfTE9HX0xPTkdf
TElORTogUG9zc2libGUgdW53cmFwcGVkIGNvbW1pdCBkZXNjcmlwdGlvbiAocHJlZmVyIGEgbWF4
aW11bSA3NSBjaGFycyBwZXIgbGluZSkKIzc6IApkcml2ZXJzL2dwdS9kcm0vaTkxNS8vaTkxNV9n
cHVfZXJyb3IuYzoxNDE4IGdlbV9yZWNvcmRfcmluZ3MoKSB3YXJuOiB2YXJpYWJsZSBkZXJlZmVy
ZW5jZWQgYmVmb3JlIGNoZWNrICdlbmdpbmUnIChzZWUgbGluZSAxNDEzKQoKdG90YWw6IDAgZXJy
b3JzLCAxIHdhcm5pbmdzLCAwIGNoZWNrcywgMTUgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
