Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 034A4E259C
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 23:44:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62F486E057;
	Wed, 23 Oct 2019 21:44:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CD1716E04B;
 Wed, 23 Oct 2019 21:44:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C5D78A0088;
 Wed, 23 Oct 2019 21:44:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 23 Oct 2019 21:44:44 -0000
Message-ID: <20191023214444.3024.79716@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191023122151.5017-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191023122151.5017-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5BCI=2C1/4=5D_drm/i915/gt=3A_Try_to_mo?=
 =?utf-8?q?re_gracefully_quiesce_the_system_before_resets?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggW0NJLDEv
NF0gZHJtL2k5MTUvZ3Q6IFRyeSB0byBtb3JlIGdyYWNlZnVsbHkgcXVpZXNjZSB0aGUgc3lzdGVt
IGJlZm9yZSByZXNldHMKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcv
c2VyaWVzLzY4NDU3LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNr
cGF0Y2ggb3JpZ2luL2RybS10aXAKMTM5YWE3Njc5Njk2IGRybS9pOTE1L2d0OiBUcnkgdG8gbW9y
ZSBncmFjZWZ1bGx5IHF1aWVzY2UgdGhlIHN5c3RlbSBiZWZvcmUgcmVzZXRzCi06NTg6IEVSUk9S
OklOX0FUT01JQzogZG8gbm90IHVzZSBpbl9hdG9taWMgaW4gZHJpdmVycwojNTg6IEZJTEU6IGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jOjg4MzoKKwlpZiAoaW5fYXRv
bWljKCkgfHwgaXJxc19kaXNhYmxlZCgpKSAvKiBpbnNpZGUgYXRvbWljIHByZWVtcHQtcmVzZXQ/
ICovCgp0b3RhbDogMSBlcnJvcnMsIDAgd2FybmluZ3MsIDAgY2hlY2tzLCA2MiBsaW5lcyBjaGVj
a2VkCmRlN2Y3MDM5NTFlMiBkcm0vaTkxNS9leGVjbGlzdHM6IEZvcmNlIHByZWVtcHRpb24KNTQz
MjI2NmRjZDY4IGRybS9pOTE1L2V4ZWNsaXN0czogQ2FuY2VsIGJhbm5lZCBjb250ZXh0cyBvbiBz
Y2hlZHVsZS1vdXQKYzVhZTc0NTg5ZTllIGRybS9pOTE1L2dlbTogQ2FuY2VsIGNvbnRleHRzIHdo
ZW4gaGFuZ2NoZWNraW5nIGlzIGRpc2FibGVkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
