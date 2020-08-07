Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8DD23EA39
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 11:22:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 806586E9A0;
	Fri,  7 Aug 2020 09:22:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71B2C6E9A0;
 Fri,  7 Aug 2020 09:22:03 +0000 (UTC)
IronPort-SDR: nGM5EgguUjLyKBa10x6mNqJZwa37bkZ4DpULginHVqakiCT7Jq0m8bt/EHboMMKGjhbahVdEz/
 SBZLR+MNqrzg==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="171106931"
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="171106931"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 02:22:03 -0700
IronPort-SDR: T9C992AVEukgJJe1rnsSDonUxz67XWSUBtvsljj5Z9DA2IexBFn9rUXCfuA3nwj0DUq5WMs7TQ
 tYpagpI7k8eQ==
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="333492156"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 02:22:01 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  7 Aug 2020 11:19:58 +0200
Message-Id: <20200807092002.32350-13-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200807092002.32350-1-janusz.krzysztofik@linux.intel.com>
References: <20200807092002.32350-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2 12/16] tests/core_hotunplug: Fail
 subtests on device close errors
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
Cc: intel-gfx@lists.freedesktop.org,
 =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2luY2UgaGVhbHRoIGNoZWNrcyBhcmUgbm93IHJ1biBmcm9tIGZvbGxvdy11cCBmaXh0dXJlIHNl
Y3Rpb25zLCBpdCBpcwpzYWZlIHRvIGZhaWwgc3VidGVzdHMgd2l0aG91dCB0aGUgbmVlZCB0byBh
Ym9ydCB0aGUgdGVzdCBleGVjdXRpb24uICBEbwp0aGF0IG9uIGRldmljZSBjbG9zZSBlcnJvcnMg
aW5zdGVhZCBvZiBlbWl0dGluZyB3YXJuaW5ncy4KCnYyOiBSZWJhc2Ugb24gY3VycmVudCB1cHN0
cmVhbSBtYXN0ZXIuCgpTaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5r
cnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBNaWNoYcWCIFdpbmlhcnNr
aSA8bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+Ci0tLQogdGVzdHMvY29yZV9ob3R1bnBsdWcu
YyB8IDggKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvdGVzdHMvY29yZV9ob3R1bnBsdWcuYyBiL3Rlc3RzL2NvcmVf
aG90dW5wbHVnLmMKaW5kZXggMzEzYzQ0Nzg0Li5hNDkwMmViYTIgMTAwNjQ0Ci0tLSBhL3Rlc3Rz
L2NvcmVfaG90dW5wbHVnLmMKKysrIGIvdGVzdHMvY29yZV9ob3R1bnBsdWcuYwpAQCAtMTI2LDgg
KzEyNiw4IEBAIHN0YXRpYyB2b2lkIGRldmljZV91bnBsdWcoc3RydWN0IGhvdHVucGx1ZyAqcHJp
diwgY29uc3QgY2hhciAqcHJlZml4KQogCWlndF9yZXNldF90aW1lb3V0KCk7CiAKIAlwcml2LT5m
ZC5zeXNmc19kZXYgPSBsb2NhbF9jbG9zZShwcml2LT5mZC5zeXNmc19kZXYpOwotCWlndF93YXJu
X29uX2YocHJpdi0+ZmQuc3lzZnNfZGV2ICE9IC0xLAotCQkgICAgICAiRGV2aWNlIHN5c2ZzIG5v
ZGUgY2xvc2UgZmFpbGVkXG4iKTsKKwlpZ3RfYXNzZXJ0X2YocHJpdi0+ZmQuc3lzZnNfZGV2ID09
IC0xLAorCQkgICAgICJEZXZpY2Ugc3lzZnMgbm9kZSBjbG9zZSBmYWlsZWRcbiIpOwogfQogCiAv
KiBSZS1kaXNjb3ZlciB0aGUgZGV2aWNlIGJ5IHJlc2Nhbm5pbmcgaXRzIGJ1cyAqLwpAQCAtMjQ5
LDcgKzI0OSw3IEBAIHN0YXRpYyB2b2lkIGhvdHVuYmluZF9sYXRlY2xvc2Uoc3RydWN0IGhvdHVu
cGx1ZyAqcHJpdikKIAogCWlndF9kZWJ1ZygibGF0ZSBjbG9zaW5nIHRoZSB1bmJvdW5kIGRldmlj
ZSBpbnN0YW5jZVxuIik7CiAJcHJpdi0+ZmQuZHJtID0gbG9jYWxfY2xvc2UocHJpdi0+ZmQuZHJt
KTsKLQlpZ3Rfd2Fybl9vbl9mKHByaXYtPmZkLmRybSAhPSAtMSwgIkRldmljZSBjbG9zZSBmYWls
ZWRcbiIpOworCWlndF9hc3NlcnRfZihwcml2LT5mZC5kcm0gPT0gLTEsICJEZXZpY2UgY2xvc2Ug
ZmFpbGVkXG4iKTsKIH0KIAogc3RhdGljIHZvaWQgaG90dW5wbHVnX2xhdGVjbG9zZShzdHJ1Y3Qg
aG90dW5wbHVnICpwcml2KQpAQCAtMjY2LDcgKzI2Niw3IEBAIHN0YXRpYyB2b2lkIGhvdHVucGx1
Z19sYXRlY2xvc2Uoc3RydWN0IGhvdHVucGx1ZyAqcHJpdikKIAogCWlndF9kZWJ1ZygibGF0ZSBj
bG9zaW5nIHRoZSByZW1vdmVkIGRldmljZSBpbnN0YW5jZVxuIik7CiAJcHJpdi0+ZmQuZHJtID0g
bG9jYWxfY2xvc2UocHJpdi0+ZmQuZHJtKTsKLQlpZ3Rfd2Fybl9vbl9mKHByaXYtPmZkLmRybSAh
PSAtMSwgIkRldmljZSBjbG9zZSBmYWlsZWRcbiIpOworCWlndF9hc3NlcnRfZihwcml2LT5mZC5k
cm0gPT0gLTEsICJEZXZpY2UgY2xvc2UgZmFpbGVkXG4iKTsKIH0KIAogLyogTWFpbiAqLwotLSAK
Mi4yMS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
