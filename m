Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49349DA340
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 03:39:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 309C16E9E8;
	Thu, 17 Oct 2019 01:39:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CE93A6E9E7;
 Thu, 17 Oct 2019 01:38:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C6DB3A363E;
 Thu, 17 Oct 2019 01:38:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 17 Oct 2019 01:38:59 -0000
Message-ID: <20191017013859.14699.28129@emeril.freedesktop.org>
References: <20191016183902.13614-1-chris@chris-wilson.co.uk>
X-Patchwork-Hint: ignore
In-Reply-To: <20191016183902.13614-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/2=5D_drm/i915/gvt=3A_Wean_off_stru?=
 =?utf-8?q?ct=5Fmutex?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvMl0g
ZHJtL2k5MTUvZ3Z0OiBXZWFuIG9mZiBzdHJ1Y3RfbXV0ZXgKVVJMICAgOiBodHRwczovL3BhdGNo
d29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY4MTE3LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1
bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2ggb3JpZ2luL2RybS10aXAKZmU5ZDU2MDJjM2I4IGRy
bS9pOTE1L2d2dDogV2VhbiBvZmYgc3RydWN0X211dGV4CmFiMGFlM2M1MjAxZiBkcm0vaTkxNS9n
dnQ6IFdlYW4gZ3Z0IG9mZiBkZXZfcHJpdi0+ZW5naW5lW10KLTo2ODE6IFdBUk5JTkc6TE9OR19M
SU5FOiBsaW5lIG92ZXIgMTAwIGNoYXJhY3RlcnMKIzY4MTogRklMRTogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3Z0L2V4ZWNsaXN0LmM6MTYzOgorCQkJCQkgICAgICAgaHdzcF9ncGEgKyBJOTE1X0hX
U19DU0JfQlVGMF9JTkRFWCAqIDQgKyB3cml0ZV9wb2ludGVyICogOCwKCi06Njg3OiBXQVJOSU5H
OkxPTkdfTElORTogbGluZSBvdmVyIDEwMCBjaGFyYWN0ZXJzCiM2ODc6IEZJTEU6IGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d2dC9leGVjbGlzdC5jOjE2NjoKKwkJCQkJICAgICAgIGh3c3BfZ3BhICsg
aW50ZWxfaHdzX2NzYl93cml0ZV9pbmRleChleGVjbGlzdC0+ZW5naW5lLT5pOTE1KSAqIDQsCgot
OjEyNzk6IENIRUNLOk1VTFRJUExFX0FTU0lHTk1FTlRTOiBtdWx0aXBsZSBhc3NpZ25tZW50cyBz
aG91bGQgYmUgYXZvaWRlZAojMTI3OTogRklMRTogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L21t
aW9fY29udGV4dC5jOjQ5NzoKKwkJCW9sZF92ID0gbW1pby0+dmFsdWUgPQoKdG90YWw6IDAgZXJy
b3JzLCAyIHdhcm5pbmdzLCAxIGNoZWNrcywgMTg4NyBsaW5lcyBjaGVja2VkCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
