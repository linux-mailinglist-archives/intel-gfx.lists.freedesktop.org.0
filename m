Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 312A227E177
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 08:43:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAE806E516;
	Wed, 30 Sep 2020 06:42:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C780D6E509
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 06:42:53 +0000 (UTC)
IronPort-SDR: 8EnYob8onFpEhF1BP9dJ6qMSl8/pYkqz9crHm/3VvkiY9k0EoMSHpPMdktwMHCroM67+YFoLxY
 wc+HjgUF9IDQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="142387778"
X-IronPort-AV: E=Sophos;i="5.77,321,1596524400"; d="scan'208";a="142387778"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 23:42:53 -0700
IronPort-SDR: rWqdYqGcXltufz711cptpNTnW5whDEv7aMFmz53yhU4pKwnFi/rp9nULaAWT488IH2k31VR6Z0
 eGiPBZrlTPCA==
X-IronPort-AV: E=Sophos;i="5.77,321,1596524400"; d="scan'208";a="312487760"
Received: from cdgarci1-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.213.164.152])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 23:42:53 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Sep 2020 23:42:30 -0700
Message-Id: <20200930064234.85769-21-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200930064234.85769-1-lucas.demarchi@intel.com>
References: <20200930064234.85769-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 20/24] drm/i915/dg1: Load DMC
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

RnJvbTogTWF0dCBBdHdvb2QgPG1hdHRoZXcucy5hdHdvb2RAaW50ZWwuY29tPgoKQWRkIHN1cHBv
cnQgdG8gbG9hZCBETUMgdjIuMC4yIG9uIERHMQoKV2hpbGUgd2UncmUgYXQgaXQsIG1ha2UgVEdM
IHVzZSB0aGUgc2FtZSBHRU4xMiBmaXJtd2FyZSBzaXplIGRlZmluaXRpb24KYW5kIHJlbW92ZSBv
YnNvbGV0ZSBjb21tZW50LgoKQnBlYzogNDkyMzAKCnYyOiBkbyBub3QgcmVwbGFjZSBHRU4xMl9D
U1JfTUFYX0ZXX1NJWkUgKGZyb20gSm9zw6kpCiAgICBhbmQgcmVwbGFjZSBzdGFsZSBjb21tZW50
CgpDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KU2lnbmVkLW9mZi1i
eTogTWF0dCBBdHdvb2QgPG1hdHRoZXcucy5hdHdvb2RAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5
OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nzci5jIHwgMTIgKysrKysrKysrLS0tCiAxIGZp
bGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3NyLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nzci5jCmluZGV4IGQ1ZGIxNjc2NDYxOS4uNjdkYzY0ZGY3
OGE1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nzci5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3NyLmMKQEAgLTQwLDEz
ICs0MCwxNiBAQAogCiAjZGVmaW5lIEdFTjEyX0NTUl9NQVhfRldfU0laRQkJSUNMX0NTUl9NQVhf
RldfU0laRQogCisjZGVmaW5lIERHMV9DU1JfUEFUSAkJCSJpOTE1L2RnMV9kbWNfdmVyMl8wMi5i
aW4iCisjZGVmaW5lIERHMV9DU1JfVkVSU0lPTl9SRVFVSVJFRAlDU1JfVkVSU0lPTigyLCAyKQor
TU9EVUxFX0ZJUk1XQVJFKERHMV9DU1JfUEFUSCk7CisKICNkZWZpbmUgUktMX0NTUl9QQVRICQkJ
Imk5MTUvcmtsX2RtY192ZXIyXzAyLmJpbiIKICNkZWZpbmUgUktMX0NTUl9WRVJTSU9OX1JFUVVJ
UkVECUNTUl9WRVJTSU9OKDIsIDIpCiBNT0RVTEVfRklSTVdBUkUoUktMX0NTUl9QQVRIKTsKIAog
I2RlZmluZSBUR0xfQ1NSX1BBVEgJCQkiaTkxNS90Z2xfZG1jX3ZlcjJfMDguYmluIgogI2RlZmlu
ZSBUR0xfQ1NSX1ZFUlNJT05fUkVRVUlSRUQJQ1NSX1ZFUlNJT04oMiwgOCkKLSNkZWZpbmUgVEdM
X0NTUl9NQVhfRldfU0laRQkJMHg2MDAwCiBNT0RVTEVfRklSTVdBUkUoVEdMX0NTUl9QQVRIKTsK
IAogI2RlZmluZSBJQ0xfQ1NSX1BBVEgJCQkiaTkxNS9pY2xfZG1jX3ZlcjFfMDkuYmluIgpAQCAt
Njg2LDE0ICs2ODksMTcgQEAgdm9pZCBpbnRlbF9jc3JfdWNvZGVfaW5pdChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJICovCiAJaW50ZWxfY3NyX3J1bnRpbWVfcG1fZ2V0KGRl
dl9wcml2KTsKIAotCWlmIChJU19ST0NLRVRMQUtFKGRldl9wcml2KSkgeworCWlmIChJU19ERzEo
ZGV2X3ByaXYpKSB7CisJCWNzci0+ZndfcGF0aCA9IERHMV9DU1JfUEFUSDsKKwkJY3NyLT5yZXF1
aXJlZF92ZXJzaW9uID0gREcxX0NTUl9WRVJTSU9OX1JFUVVJUkVEOworCQljc3ItPm1heF9md19z
aXplID0gR0VOMTJfQ1NSX01BWF9GV19TSVpFOworCX0gZWxzZSBpZiAoSVNfUk9DS0VUTEFLRShk
ZXZfcHJpdikpIHsKIAkJY3NyLT5md19wYXRoID0gUktMX0NTUl9QQVRIOwogCQljc3ItPnJlcXVp
cmVkX3ZlcnNpb24gPSBSS0xfQ1NSX1ZFUlNJT05fUkVRVUlSRUQ7CiAJCWNzci0+bWF4X2Z3X3Np
emUgPSBHRU4xMl9DU1JfTUFYX0ZXX1NJWkU7CiAJfSBlbHNlIGlmIChJTlRFTF9HRU4oZGV2X3By
aXYpID49IDEyKSB7CiAJCWNzci0+ZndfcGF0aCA9IFRHTF9DU1JfUEFUSDsKIAkJY3NyLT5yZXF1
aXJlZF92ZXJzaW9uID0gVEdMX0NTUl9WRVJTSU9OX1JFUVVJUkVEOwotCQkvKiBBbGxvdyB0byBs
b2FkIGZ3IHZpYSBwYXJhbWV0ZXIgdXNpbmcgdGhlIGxhc3Qga25vd24gc2l6ZSAqLwogCQljc3It
Pm1heF9md19zaXplID0gR0VOMTJfQ1NSX01BWF9GV19TSVpFOwogCX0gZWxzZSBpZiAoSVNfR0VO
KGRldl9wcml2LCAxMSkpIHsKIAkJY3NyLT5md19wYXRoID0gSUNMX0NTUl9QQVRIOwotLSAKMi4y
OC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
