Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18FAB8575C
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 03:00:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C7B16E0A2;
	Thu,  8 Aug 2019 01:00:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D8E526E0A2;
 Thu,  8 Aug 2019 01:00:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D0519A00FE;
 Thu,  8 Aug 2019 01:00:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Thu, 08 Aug 2019 01:00:08 -0000
Message-ID: <20190808010008.24672.91880@emeril.freedesktop.org>
References: <20190808004935.1787-1-jose.souza@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190808004935.1787-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5Bv4=2C1/2=5D_drm/i915=3A_Get_transcod?=
 =?utf-8?q?er_power_domain_before_reading_its_register?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW3Y0LDEv
Ml0gZHJtL2k5MTU6IEdldCB0cmFuc2NvZGVyIHBvd2VyIGRvbWFpbiBiZWZvcmUgcmVhZGluZyBp
dHMgcmVnaXN0ZXIKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2Vy
aWVzLzY0ODc3LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0
Y2ggb3JpZ2luL2RybS10aXAKZDU4NmQ5NzJiZTAzIGRybS9pOTE1OiBHZXQgdHJhbnNjb2RlciBw
b3dlciBkb21haW4gYmVmb3JlIHJlYWRpbmcgaXRzIHJlZ2lzdGVyCi06NDQ6IFdBUk5JTkc6TE9O
R19MSU5FOiBsaW5lIG92ZXIgMTAwIGNoYXJhY3RlcnMKIzQ0OiBGSUxFOiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jOjIwMjE6CisJCQkJCQkJCSAgIFBPV0VSX0RPTUFJ
Tl9UUkFOU0NPREVSKGNwdV90cmFuc2NvZGVyKSk7Cgp0b3RhbDogMCBlcnJvcnMsIDEgd2Fybmlu
Z3MsIDAgY2hlY2tzLCAyMCBsaW5lcyBjaGVja2VkCjBjYjA4YThiMGZmYyBkcm0vaTkxNS90Z2w6
IEZpeCB0aGUgcmVhZCBvZiB0aGUgRERJIHRoYXQgdHJhbnNjb2RlciBpcyBhdHRhY2hlZCB0bwot
OjU2OiBXQVJOSU5HOkxPTkdfTElORTogbGluZSBvdmVyIDEwMCBjaGFyYWN0ZXJzCiM1NjogRklM
RTogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaDo5NDM1OgorI2RlZmluZSAgVFJBTlNf
RERJX0ZVTkNfQ1RMX1ZBTF9UT19QT1JUKHZhbCkJICgoKHZhbCkgJiBUUkFOU19ERElfUE9SVF9N
QVNLKSA+PiBUUkFOU19ERElfUE9SVF9TSElGVCkKCi06NTc6IFdBUk5JTkc6TE9OR19MSU5FOiBs
aW5lIG92ZXIgMTAwIGNoYXJhY3RlcnMKIzU3OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oOjk0MzY6CisjZGVmaW5lICBUR0xfVFJBTlNfRERJX0ZVTkNfQ1RMX1ZBTF9UT19Q
T1JUKHZhbCkgKCgodmFsKSAmIFRHTF9UUkFOU19ERElfUE9SVF9NQVNLID4+IFRHTF9UUkFOU19E
RElfUE9SVF9TSElGVCkgLSAxKQoKdG90YWw6IDAgZXJyb3JzLCAyIHdhcm5pbmdzLCAwIGNoZWNr
cywgMjAgbGluZXMgY2hlY2tlZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
