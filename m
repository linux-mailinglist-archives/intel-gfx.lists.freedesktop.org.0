Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87235B149E
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 20:56:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02CDA6EDFB;
	Thu, 12 Sep 2019 18:56:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 243AE6EDFB;
 Thu, 12 Sep 2019 18:56:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1A4DEA00FE;
 Thu, 12 Sep 2019 18:56:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kuoppala" <mika.kuoppala@linux.intel.com>
Date: Thu, 12 Sep 2019 18:56:06 -0000
Message-ID: <20190912185606.12409.47657@emeril.freedesktop.org>
References: <20190912133816.1382-1-mika.kuoppala@linux.intel.com>
X-Patchwork-Hint: ignore
In-Reply-To: <20190912133816.1382-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?q?=E2=9C=97_Fi=2ECI=2ESPARSE=3A_warning_for_s?=
 =?utf-8?q?eries_starting_with_=5B1/4=5D_drm/i915/tgl=3A_Introduce_gen12_f?=
 =?utf-8?q?orcewake_ranges_=28rev2=29?=
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

PT0gU2VyaWVzIERldGFpbHMgPT0KClNlcmllczogc2VyaWVzIHN0YXJ0aW5nIHdpdGggWzEvNF0g
ZHJtL2k5MTUvdGdsOiBJbnRyb2R1Y2UgZ2VuMTIgZm9yY2V3YWtlIHJhbmdlcyAocmV2MikKVVJM
ICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY2NjA4LwpTdGF0
ZSA6IHdhcm5pbmcKCj09IFN1bW1hcnkgPT0KCiQgZGltIHNwYXJzZSBvcmlnaW4vZHJtLXRpcApT
cGFyc2UgdmVyc2lvbjogdjAuNi4wCkNvbW1pdDogZHJtL2k5MTUvdGdsOiBJbnRyb2R1Y2UgZ2Vu
MTIgZm9yY2V3YWtlIHJhbmdlcworLi9pbmNsdWRlL2xpbnV4L3NwaW5sb2NrLmg6MzkzOjk6IHdh
cm5pbmc6IGNvbnRleHQgaW1iYWxhbmNlIGluICdnZW4xMl9md3RhYmxlX3JlYWQxNicgLSBkaWZm
ZXJlbnQgbG9jayBjb250ZXh0cyBmb3IgYmFzaWMgYmxvY2sKKy4vaW5jbHVkZS9saW51eC9zcGlu
bG9jay5oOjM5Mzo5OiB3YXJuaW5nOiBjb250ZXh0IGltYmFsYW5jZSBpbiAnZ2VuMTJfZnd0YWJs
ZV9yZWFkMzInIC0gZGlmZmVyZW50IGxvY2sgY29udGV4dHMgZm9yIGJhc2ljIGJsb2NrCisuL2lu
Y2x1ZGUvbGludXgvc3BpbmxvY2suaDozOTM6OTogd2FybmluZzogY29udGV4dCBpbWJhbGFuY2Ug
aW4gJ2dlbjEyX2Z3dGFibGVfcmVhZDY0JyAtIGRpZmZlcmVudCBsb2NrIGNvbnRleHRzIGZvciBi
YXNpYyBibG9jaworLi9pbmNsdWRlL2xpbnV4L3NwaW5sb2NrLmg6MzkzOjk6IHdhcm5pbmc6IGNv
bnRleHQgaW1iYWxhbmNlIGluICdnZW4xMl9md3RhYmxlX3JlYWQ4JyAtIGRpZmZlcmVudCBsb2Nr
IGNvbnRleHRzIGZvciBiYXNpYyBibG9jaworLi9pbmNsdWRlL2xpbnV4L3NwaW5sb2NrLmg6Mzkz
Ojk6IHdhcm5pbmc6IGNvbnRleHQgaW1iYWxhbmNlIGluICdnZW4xMl9md3RhYmxlX3dyaXRlMTYn
IC0gZGlmZmVyZW50IGxvY2sgY29udGV4dHMgZm9yIGJhc2ljIGJsb2NrCisuL2luY2x1ZGUvbGlu
dXgvc3BpbmxvY2suaDozOTM6OTogd2FybmluZzogY29udGV4dCBpbWJhbGFuY2UgaW4gJ2dlbjEy
X2Z3dGFibGVfd3JpdGUzMicgLSBkaWZmZXJlbnQgbG9jayBjb250ZXh0cyBmb3IgYmFzaWMgYmxv
Y2sKKy4vaW5jbHVkZS9saW51eC9zcGlubG9jay5oOjM5Mzo5OiB3YXJuaW5nOiBjb250ZXh0IGlt
YmFsYW5jZSBpbiAnZ2VuMTJfZnd0YWJsZV93cml0ZTgnIC0gZGlmZmVyZW50IGxvY2sgY29udGV4
dHMgZm9yIGJhc2ljIGJsb2NrCgpDb21taXQ6IGRybS9pOTE1L3RnbDogcy9zcy9ldSBmdXNlIHJl
YWRpbmcgc3VwcG9ydApPa2F5IQoKQ29tbWl0OiBkcm0vaTkxNS90Z2w6IFJlLWVuYWJsZSByYzYK
T2theSEKCkNvbW1pdDogZHJtL2k5MTUvdGdsOiBEaXNhYmxlIHByZWVtcHRpb24gd2hpbGUgYmVp
bmcgZGVidWdnZWQKT2theSEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
