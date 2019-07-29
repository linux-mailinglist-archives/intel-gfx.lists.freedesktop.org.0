Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE9979C9F
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 01:11:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2636890BA;
	Mon, 29 Jul 2019 23:11:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EBF18890BA;
 Mon, 29 Jul 2019 23:11:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E51B5A00EA;
 Mon, 29 Jul 2019 23:11:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Mon, 29 Jul 2019 23:11:26 -0000
Message-ID: <20190729231126.26658.1786@emeril.freedesktop.org>
References: <20190729211937.19731-1-lucas.demarchi@intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190729211937.19731-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_f?=
 =?utf-8?q?or_Tiger_Lake=3A_MOCS_table_handling_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogVGlnZXIgTGFrZTogTU9DUyB0YWJsZSBoYW5k
bGluZyAocmV2MikKVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2Vy
aWVzLzY0Mjc1LwpTdGF0ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIGNoZWNrcGF0
Y2ggb3JpZ2luL2RybS10aXAKY2YzNjAxOGMxZGY0IGRybS9pOTE1L3RnbDogTW92ZSBmYXVsdCBy
ZWdpc3RlcnMgdG8gdGhlaXIgbmV3IG9mZnNldAphOGZlMDA4NjVkMTkgZHJtL2k5MTUvdGdsOiBz
dG9wIHVzaW5nIEVSUk9SX0dFTjYgYW5kIERPTkVfUkVHCmZiNzI4ODk0ZWY2MyBkcm0vaTkxNS90
Z2w6IERlZmluZSBNT0NTIGVudHJpZXMgZm9yIFRpZ2VybGFrZQotOjE2OiBXQVJOSU5HOkNPTU1J
VF9MT0dfTE9OR19MSU5FOiBQb3NzaWJsZSB1bndyYXBwZWQgY29tbWl0IGRlc2NyaXB0aW9uIChw
cmVmZXIgYSBtYXhpbXVtIDc1IGNoYXJzIHBlciBsaW5lKQojMTY6IAogICAgdGVybWlub2xvZ3kg
dG8gd2hhdCBpdCBhY3R1YWxseSBpczogTDEgaXMgaW1wbGljaXRseSBlbmFibGVkIChmcm9tIERh
bmllbGUpCgp0b3RhbDogMCBlcnJvcnMsIDEgd2FybmluZ3MsIDAgY2hlY2tzLCA5OSBsaW5lcyBj
aGVja2VkCmNjNWRjNDNkMzIxMiBkcm0vaTkxNS90Z2w6IFRpZ2VybGFrZSBvbmx5IGhhcyBnbG9i
YWwgTU9DUyByZWdpc3RlcnMKMGExMmE4MzAxOGE1IGRybS9pOTE1OiBNb3ZlIE1PQ1Mgc2V0dXAg
dG8gaW50ZWxfbW9jcy5jCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
