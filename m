Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C42E1ED9F3
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 02:23:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4EAA89998;
	Thu,  4 Jun 2020 00:23:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77B5689998
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 00:23:19 +0000 (UTC)
IronPort-SDR: y7bhHSlUoJi1WMw5Lojb13yP1xnjEtB6nc2v0KczTAKQp4iTrS6ij9M5oqloN5z40XgvPIZeBX
 pJKoL6BvR+RA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2020 17:23:18 -0700
IronPort-SDR: fOYmDE3Pn0HOFF7/SkB09iMLVNU5rQgy7SkG7fSpx5LINki6+L4t14vJfDB2f4P/THwv1HB/Ls
 ojv/TvuEOzOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,470,1583222400"; d="scan'208";a="312749500"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Jun 2020 17:23:18 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jun 2020 17:23:59 -0700
Message-Id: <20200604002359.17128-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/dp: Reset link params on connector
 disconnect
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgaGF2ZSBub3RpY2VkIHRoYXQgd2hlbiBsaW5rIHRyYWluaW5nIGZhaWxzIHRoZSBwYW5lbApz
ZW5kcyBhIGxvbmcgcHVsc2UgaW5kaWNhdGluZyBjb25uZWN0b3IgZGlzY29ubmVjdC4gSW4gdGhp
cyBjYXNlCndlIG5lZWQgdG8gcmVzZXQgdGhlIGxpbmsgcGFyYW1ldGVycyBpbnN0ZWFkIG9mIGNv
bnRpbnVpbmcKdG8gdXNlIHRoZSBmYWxsYmFjayBwYXJhbWV0ZXJzIHNpbmNlIGVsc2UgdGhpcyBs
b25nIHB1bHNlCmJ5IHRoZSBwYW5lbCBmb2xsb3dlZCBieSBhIG1vZGVzZXQgcmVxdWVzdCB3aGlj
aCB3YXMgdHJpZ2dlcmVkIGJ5IHRoZSB1c2Vyc3BhY2UKYmVmb3JlIGdldHRpbmcgdGhlIGNvbm5l
Y3RvciBzdGF0dXMgYXMgZGlzY29ubmVjdGVkLCB3aWxsCnJlc3VsdCBpbnRvIGEgbW9kZXNldCBu
b3cgdXNpbmcgbG93ZXIgbGluayByYXRlL2xhbmUgY291bnQgdmFsdWVzLgoKQ2xvc2VzOiBodHRw
czovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzEzODUKQ2M6IEph
bmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYW5hc2kg
TmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDI4ICsrKysrKysrKysrKysrKysrLS0tLS0tLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwppbmRleCA1NWZkYTA3NGMwYWQuLmY3YWYzNzI2
NDdkZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwpAQCAtNjExMSw2
ICs2MTExLDE4IEBAIGludGVsX2RwX3Vuc2V0X2VkaWQoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCkKIAlpbnRlbF9kcC0+ZWRpZF9xdWlya3MgPSAwOwogfQogCitzdGF0aWMgdm9pZAoraW50ZWxf
ZHBfcmVzZXRfbGlua19wYXJhbXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKK3sKKwkvKiBJ
bml0aWFsIG1heCBsaW5rIGxhbmUgY291bnQgKi8KKwlpbnRlbF9kcC0+bWF4X2xpbmtfbGFuZV9j
b3VudCA9IGludGVsX2RwX21heF9jb21tb25fbGFuZV9jb3VudChpbnRlbF9kcCk7CisKKwkvKiBJ
bml0aWFsIG1heCBsaW5rIHJhdGUgKi8KKwlpbnRlbF9kcC0+bWF4X2xpbmtfcmF0ZSA9IGludGVs
X2RwX21heF9jb21tb25fcmF0ZShpbnRlbF9kcCk7CisKKwlpbnRlbF9kcC0+cmVzZXRfbGlua19w
YXJhbXMgPSBmYWxzZTsKK30KKwogc3RhdGljIGludAogaW50ZWxfZHBfZGV0ZWN0KHN0cnVjdCBk
cm1fY29ubmVjdG9yICpjb25uZWN0b3IsCiAJCXN0cnVjdCBkcm1fbW9kZXNldF9hY3F1aXJlX2N0
eCAqY3R4LApAQCAtNjEzOSw2ICs2MTUxLDExIEBAIGludGVsX2RwX2RldGVjdChzdHJ1Y3QgZHJt
X2Nvbm5lY3RvciAqY29ubmVjdG9yLAogCQltZW1zZXQoJmludGVsX2RwLT5jb21wbGlhbmNlLCAw
LCBzaXplb2YoaW50ZWxfZHAtPmNvbXBsaWFuY2UpKTsKIAkJbWVtc2V0KGludGVsX2RwLT5kc2Nf
ZHBjZCwgMCwgc2l6ZW9mKGludGVsX2RwLT5kc2NfZHBjZCkpOwogCisJCS8qUmVzZXQgdGhlIGlt
bXV0YWJsZSBWUlIgQ2FwYWJsZSBwcm9wZXJ0eSAqLworCQlkcm1fY29ubmVjdG9yX3NldF92cnJf
Y2FwYWJsZV9wcm9wZXJ0eShjb25uZWN0b3IsCisJCQkJCQkgICAgICAgZmFsc2UpOworCQlpbnRl
bF9kcF9yZXNldF9saW5rX3BhcmFtcyhpbnRlbF9kcCk7CisKIAkJaWYgKGludGVsX2RwLT5pc19t
c3QpIHsKIAkJCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLAogCQkJCSAgICAiTVNUIGRldmlj
ZSBtYXkgaGF2ZSBkaXNhcHBlYXJlZCAlZCB2cyAlZFxuIiwKQEAgLTYxNTIsMTUgKzYxNjksOCBA
QCBpbnRlbF9kcF9kZXRlY3Qoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwKIAkJZ290
byBvdXQ7CiAJfQogCi0JaWYgKGludGVsX2RwLT5yZXNldF9saW5rX3BhcmFtcykgewotCQkvKiBJ
bml0aWFsIG1heCBsaW5rIGxhbmUgY291bnQgKi8KLQkJaW50ZWxfZHAtPm1heF9saW5rX2xhbmVf
Y291bnQgPSBpbnRlbF9kcF9tYXhfY29tbW9uX2xhbmVfY291bnQoaW50ZWxfZHApOwotCi0JCS8q
IEluaXRpYWwgbWF4IGxpbmsgcmF0ZSAqLwotCQlpbnRlbF9kcC0+bWF4X2xpbmtfcmF0ZSA9IGlu
dGVsX2RwX21heF9jb21tb25fcmF0ZShpbnRlbF9kcCk7Ci0KLQkJaW50ZWxfZHAtPnJlc2V0X2xp
bmtfcGFyYW1zID0gZmFsc2U7Ci0JfQorCWlmIChpbnRlbF9kcC0+cmVzZXRfbGlua19wYXJhbXMp
CisJCWludGVsX2RwX3Jlc2V0X2xpbmtfcGFyYW1zKGludGVsX2RwKTsKIAogCWludGVsX2RwX3By
aW50X3JhdGVzKGludGVsX2RwKTsKIAotLSAKMi4xOS4xCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
