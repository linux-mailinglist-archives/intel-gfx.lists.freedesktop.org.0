Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDBA22555DA
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Aug 2020 10:00:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF1656EB75;
	Fri, 28 Aug 2020 08:00:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C799A6EB70;
 Fri, 28 Aug 2020 08:00:24 +0000 (UTC)
IronPort-SDR: /zqTDbf5+l4rJ9eQP4U8htZLlae5WU+J3n2n450Baefg6Jq4L/09SGsBuW+VQYFMVG8lHzJGyW
 rwPb7l0GYQMg==
X-IronPort-AV: E=McAfee;i="6000,8403,9726"; a="174676549"
X-IronPort-AV: E=Sophos;i="5.76,363,1592895600"; d="scan'208";a="174676549"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2020 01:00:24 -0700
IronPort-SDR: nSZPHu5sbZsErHYUkwY0KOtMdk4lUlmPdY97GPG43Mlk8zs5TUKK8jKyR+DDvi57e/qJyiUJzg
 9u/HiZ33bhmQ==
X-IronPort-AV: E=Sophos;i="5.76,363,1592895600"; d="scan'208";a="444756011"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2020 01:00:09 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 28 Aug 2020 09:59:18 +0200
Message-Id: <20200828075927.17061-13-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200828075927.17061-1-janusz.krzysztofik@linux.intel.com>
References: <20200828075927.17061-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v5 12/21] tests/core_hotunplug: Fail
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
Cc: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2luY2UgaGVhbHRoIGNoZWNrcyBhcmUgbm93IHJ1biBmcm9tIGZvbGxvdy11cCBmaXh0dXJlIHNl
Y3Rpb25zLCBpdCBpcwpzYWZlIHRvIGZhaWwgc3VidGVzdHMgd2l0aG91dCB0aGUgbmVlZCB0byBh
Ym9ydCB0aGUgdGVzdCBleGVjdXRpb24uICBEbwp0aGF0IG9uIGRldmljZSBjbG9zZSBlcnJvcnMg
aW5zdGVhZCBvZiBqdXN0IGVtaXR0aW5nIHdhcm5pbmdzLgoKdjI6IFJlYmFzZSBvbmx5Lgp2Mzog
UmVmcmVzaC4KdjQ6IFJlZnJlc2guCgpTaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsg
PGphbnVzei5rcnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBNaWNoYcWC
IFdpbmlhcnNraSA8bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+Ci0tLQogdGVzdHMvY29yZV9o
b3R1bnBsdWcuYyB8IDMgKysrCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvdGVzdHMvY29yZV9ob3R1bnBsdWcuYyBiL3Rlc3RzL2NvcmVfaG90dW5wbHVnLmMK
aW5kZXggYjcyMzYxOTAwLi5kZDFkYzFmZTAgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2NvcmVfaG90dW5w
bHVnLmMKKysrIGIvdGVzdHMvY29yZV9ob3R1bnBsdWcuYwpAQCAtMTU0LDYgKzE1NCw3IEBAIHN0
YXRpYyB2b2lkIGRldmljZV91bnBsdWcoc3RydWN0IGhvdHVucGx1ZyAqcHJpdiwgY29uc3QgY2hh
ciAqcHJlZml4KQogCWlndF9yZXNldF90aW1lb3V0KCk7CiAKIAlwcml2LT5mZC5zeXNmc19kZXYg
PSBjbG9zZV9zeXNmcyhwcml2LT5mZC5zeXNmc19kZXYpOworCWlndF9hc3NlcnRfZXEocHJpdi0+
ZmQuc3lzZnNfZGV2LCAtMSk7CiB9CiAKIC8qIFJlLWRpc2NvdmVyIHRoZSBkZXZpY2UgYnkgcmVz
Y2FubmluZyBpdHMgYnVzICovCkBAIC0yNzYsNiArMjc3LDcgQEAgc3RhdGljIHZvaWQgaG90dW5i
aW5kX2xhdGVjbG9zZShzdHJ1Y3QgaG90dW5wbHVnICpwcml2KQogCiAJaWd0X2RlYnVnKCJsYXRl
IGNsb3NpbmcgdGhlIHVuYm91bmQgZGV2aWNlIGluc3RhbmNlXG4iKTsKIAlwcml2LT5mZC5kcm0g
PSBjbG9zZV9kZXZpY2UocHJpdi0+ZmQuZHJtKTsKKwlpZ3RfYXNzZXJ0X2VxKHByaXYtPmZkLmRy
bSwgLTEpOwogCiAJaGVhbHRoY2hlY2socHJpdik7CiB9CkBAIC0yOTEsNiArMjkzLDcgQEAgc3Rh
dGljIHZvaWQgaG90dW5wbHVnX2xhdGVjbG9zZShzdHJ1Y3QgaG90dW5wbHVnICpwcml2KQogCiAJ
aWd0X2RlYnVnKCJsYXRlIGNsb3NpbmcgdGhlIHJlbW92ZWQgZGV2aWNlIGluc3RhbmNlXG4iKTsK
IAlwcml2LT5mZC5kcm0gPSBjbG9zZV9kZXZpY2UocHJpdi0+ZmQuZHJtKTsKKwlpZ3RfYXNzZXJ0
X2VxKHByaXYtPmZkLmRybSwgLTEpOwogCiAJaGVhbHRoY2hlY2socHJpdik7CiB9Ci0tIAoyLjIx
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
