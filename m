Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAF37E6F5
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 01:54:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64E676E843;
	Thu,  1 Aug 2019 23:54:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 886256E843;
 Thu,  1 Aug 2019 23:54:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 75206A363D;
 Thu,  1 Aug 2019 23:54:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Thu, 01 Aug 2019 23:54:50 -0000
Message-ID: <20190801235450.30398.69213@emeril.freedesktop.org>
References: <20190801232812.28375-1-jose.souza@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190801232812.28375-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_series_starting_with_=5B1/2=5D_drm/i915=3A_Get_transcoder_po?=
 =?utf-8?q?wer_domain_before_reading_its_register?=
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
ZHJtL2k5MTU6IEdldCB0cmFuc2NvZGVyIHBvd2VyIGRvbWFpbiBiZWZvcmUgcmVhZGluZyBpdHMg
cmVnaXN0ZXIKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVz
LzY0NTcxLwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0Y2gg
b3JpZ2luL2RybS10aXAKYmZiNmM4MzgxYjQzIGRybS9pOTE1OiBHZXQgdHJhbnNjb2RlciBwb3dl
ciBkb21haW4gYmVmb3JlIHJlYWRpbmcgaXRzIHJlZ2lzdGVyCi06NDM6IFdBUk5JTkc6TE9OR19M
SU5FOiBsaW5lIG92ZXIgMTAwIGNoYXJhY3RlcnMKIzQzOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jOjIwMjE6CisJCQkJCQkJCSAgIFBPV0VSX0RPTUFJTl9U
UkFOU0NPREVSKGNwdV90cmFuc2NvZGVyKSk7Cgp0b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3Ms
IDAgY2hlY2tzLCAyMCBsaW5lcyBjaGVja2VkCmM4YThmZWYwMDdmZSBkcm0vaTkxNS90Z2w6IEZp
eCB0aGUgcmVhZCBvZiB0aGUgRERJIHRoYXQgdHJhbnNjb2RlciBpcyBhdHRhY2hlZCB0bwoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
