Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC5E1DC3DC
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 02:38:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6EB46E8E4;
	Thu, 21 May 2020 00:38:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 789526E8CB
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2020 00:38:08 +0000 (UTC)
IronPort-SDR: aOZJ8ThCVH8qq4M4i9dEyrO67yMfuQ6NOwQKe3d24CNrUEWOYGzVfAzByW9IxA0uXlP/xPWkC1
 nNj4sOLczuYw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 17:38:08 -0700
IronPort-SDR: ObkSc3GPhgaJq2gtfrjm9t4lP5eULy2h1SxroUMRxJuw58Sw+VA8ULlkI+HuVhFkTQWSwswSeg
 Q5qqthoLsw1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,415,1583222400"; d="scan'208";a="466720868"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga006.fm.intel.com with ESMTP; 20 May 2020 17:38:07 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 May 2020 17:37:32 -0700
Message-Id: <20200521003803.18936-7-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200521003803.18936-1-lucas.demarchi@intel.com>
References: <20200521003803.18936-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/37] drm/i915/rkl: Handle comp master/slave
 relationships for PHYs
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
Cc: fernando.pacheco@intel.com, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KCkNlcnRhaW4gY29t
Ym8gUEhZcyBhY3QgYXMgYSBjb21wZW5zYXRpb24gbWFzdGVyIHRvIG90aGVyIFBIWXMgYW5kIG5l
ZWQKdG8gYmUgaW5pdGlhbGl6ZWQgd2l0aCBhIHNwZWNpYWwgaXJlZmdlbiBiaXQgaW4gdGhlIFBP
UlRfQ09NUF9EVzgKcmVnaXN0ZXIuICBQcmV2aW91c2x5IFBIWSBBIHdhcyB0aGUgb25seSBjb21w
ZW5zYXRpb24gbWFzdGVyIChmb3IgUEhZcwpCICYgQyksIGJ1dCBSS0wgYWRkcyBhIGZvdXJ0aCBQ
SFkgd2hpY2ggaXMgc2xhdmVkIHRvIFBIWSBDIGluc3RlYWQuCgpCc3BlYzogNDkyOTEKQ2M6IEx1
Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpDYzogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CkNjOiBBZGl0eWEgU3dhcnVwIDxhZGl0
eWEuc3dhcnVwQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5k
LnJvcGVyQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEFudXNoYSBTcml2YXRzYSA8YW51c2hhLnNy
aXZhdHNhQGludGVsLmNvbT4KTGluazogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3BhdGNoL21zZ2lkLzIwMjAwNTA0MjI1MjI3LjQ2NDY2Ni0xOS1tYXR0aGV3LmQucm9wZXJAaW50
ZWwuY29tCi0tLQogLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbWJvX3BoeS5jICAg
IHwgMjUgKysrKysrKysrKysrKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDIzIGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jb21ib19waHkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY29tYm9fcGh5LmMKaW5kZXggNDNkODc4NGY2ZmEwLi43N2IwNGJiM2VjNjIgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29tYm9fcGh5LmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb21ib19waHkuYwpAQCAtMjM0LDYg
KzIzNCwyNyBAQCBzdGF0aWMgYm9vbCBlaGxfdmJ0X2RkaV9kX3ByZXNlbnQoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUpCiAJcmV0dXJuIGZhbHNlOwogfQogCitzdGF0aWMgYm9vbCBwaHlf
aXNfbWFzdGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwaHkgcGh5
KQoreworCS8qCisJICogQ2VydGFpbiBQSFlzIGFyZSBjb25uZWN0ZWQgdG8gY29tcGVuc2F0aW9u
IHJlc2lzdG9ycyBhbmQgYWN0CisJICogYXMgbWFzdGVycyB0byBvdGhlciBQSFlzLgorCSAqCisJ
ICogSUNMLFRHTDoKKwkgKiAgIEEobWFzdGVyKSAtPiBCKHNsYXZlKSwgQyhzbGF2ZSkKKwkgKiBS
S0w6CisJICogICBBKG1hc3RlcikgLT4gQihzbGF2ZSkKKwkgKiAgIEMobWFzdGVyKSAtPiBEKHNs
YXZlKQorCSAqCisJICogV2UgbXVzdCBzZXQgdGhlIElSRUZHRU4gYml0IGZvciBhbnkgUEhZIGFj
dGluZyBhcyBhIG1hc3RlcgorCSAqIHRvIGFub3RoZXIgUEhZLgorCSAqLworCWlmIChJU19ST0NL
RVRMQUtFKGRldl9wcml2KSAmJiBwaHkgPT0gUEhZX0MpCisJCXJldHVybiB0cnVlOworCisJcmV0
dXJuIHBoeSA9PSBQSFlfQTsKK30KKwogc3RhdGljIGJvb2wgaWNsX2NvbWJvX3BoeV92ZXJpZnlf
c3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCQkJCSAgICAgICBlbnVt
IHBoeSBwaHkpCiB7CkBAIC0yNDUsNyArMjY2LDcgQEAgc3RhdGljIGJvb2wgaWNsX2NvbWJvX3Bo
eV92ZXJpZnlfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCiAJcmV0
ID0gY25sX3ZlcmlmeV9wcm9jbW9uX3JlZl92YWx1ZXMoZGV2X3ByaXYsIHBoeSk7CiAKLQlpZiAo
cGh5ID09IFBIWV9BKSB7CisJaWYgKHBoeV9pc19tYXN0ZXIoZGV2X3ByaXYsIHBoeSkpIHsKIAkJ
cmV0ICY9IGNoZWNrX3BoeV9yZWcoZGV2X3ByaXYsIHBoeSwgSUNMX1BPUlRfQ09NUF9EVzgocGh5
KSwKIAkJCQkgICAgIElSRUZHRU4sIElSRUZHRU4pOwogCkBAIC0zNTYsNyArMzc3LDcgQEAgc3Rh
dGljIHZvaWQgaWNsX2NvbWJvX3BoeXNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYpCiBza2lwX3BoeV9taXNjOgogCQljbmxfc2V0X3Byb2Ntb25fcmVmX3ZhbHVlcyhkZXZf
cHJpdiwgcGh5KTsKIAotCQlpZiAocGh5ID09IFBIWV9BKSB7CisJCWlmIChwaHlfaXNfbWFzdGVy
KGRldl9wcml2LCBwaHkpKSB7CiAJCQl2YWwgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBJQ0xf
UE9SVF9DT01QX0RXOChwaHkpKTsKIAkJCXZhbCB8PSBJUkVGR0VOOwogCQkJaW50ZWxfZGVfd3Jp
dGUoZGV2X3ByaXYsIElDTF9QT1JUX0NPTVBfRFc4KHBoeSksIHZhbCk7Ci0tIAoyLjI2LjIKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
