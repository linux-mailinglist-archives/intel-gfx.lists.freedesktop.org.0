Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA04265DE9
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Sep 2020 12:31:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49EB96EA09;
	Fri, 11 Sep 2020 10:31:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D9A06EA05;
 Fri, 11 Sep 2020 10:31:19 +0000 (UTC)
IronPort-SDR: V/Lwsz21LTTeMzpj39u3tjd3M0HSXedqazU3oBPg2b1mqL1veXZr7UXzhr3l/N9jZ5TP5Oqb3k
 u7etMTq482rQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9740"; a="146463308"
X-IronPort-AV: E=Sophos;i="5.76,414,1592895600"; d="scan'208";a="146463308"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 03:31:19 -0700
IronPort-SDR: +VvzT55ZBtV2tAvDRv0okKZaaz7JcMm/8Z44v4JknBdJTyANrzEWP0VFYMaNtUNo5+ZMbv9nSw
 jot+h+QRj9cg==
X-IronPort-AV: E=Sophos;i="5.76,414,1592895600"; d="scan'208";a="334474802"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 03:31:17 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 11 Sep 2020 12:30:29 +0200
Message-Id: <20200911103039.4574-15-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200911103039.4574-1-janusz.krzysztofik@linux.intel.com>
References: <20200911103039.4574-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v6 14/24] tests/core_hotunplug: Process
 return values of sysfs operations
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

UmV0dXJuIHZhbHVlcyBvZiBkcml2ZXIgYmluZC91bmJpbmQgLyBkZXZpY2UgcmVtb3ZlL3JlY292
ZXIgc3lzZnMKb3BlcmF0aW9ucyBhcmUgbm93IGlnbm9yZWQuICBBc3NlcnQgdGhlaXIgY29ycmVj
dG5lc3MuCgp2MjogQWRkIHRyYWlsaW5nIG5ld2xpbmVzIG1pc3NpbmcgZnJvbSBpZ3RfYXNzZXJ0
IG1lc3NhZ2VzLgoKU2lnbmVkLW9mZi1ieTogSmFudXN6IEtyenlzenRvZmlrIDxqYW51c3oua3J6
eXN6dG9maWtAbGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTWljaGHFgiBXaW5pYXJza2kg
PG1pY2hhbC53aW5pYXJza2lAaW50ZWwuY29tPgotLS0KIHRlc3RzL2NvcmVfaG90dW5wbHVnLmMg
fCAxNCArKysrKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDQg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdGVzdHMvY29yZV9ob3R1bnBsdWcuYyBiL3Rlc3Rz
L2NvcmVfaG90dW5wbHVnLmMKaW5kZXggNjExMjcwNGY0Li5kNWI4YzVlZDMgMTAwNjQ0Ci0tLSBh
L3Rlc3RzL2NvcmVfaG90dW5wbHVnLmMKKysrIGIvdGVzdHMvY29yZV9ob3R1bnBsdWcuYwpAQCAt
MTI3LDcgKzEyNyw5IEBAIHN0YXRpYyB2b2lkIGRyaXZlcl91bmJpbmQoc3RydWN0IGhvdHVucGx1
ZyAqcHJpdiwgY29uc3QgY2hhciAqcHJlZml4LAogCXByaXYtPmZhaWx1cmUgPSAiRHJpdmVyIHVu
YmluZCBmYWlsdXJlISI7CiAKIAlpZ3Rfc2V0X3RpbWVvdXQodGltZW91dCwgIkRyaXZlciB1bmJp
bmQgdGltZW91dCEiKTsKLQlpZ3Rfc3lzZnNfc2V0KHByaXYtPmZkLnN5c2ZzX2RydiwgInVuYmlu
ZCIsIHByaXYtPmRldl9idXNfYWRkcik7CisJaWd0X2Fzc2VydF9mKGlndF9zeXNmc19zZXQocHJp
di0+ZmQuc3lzZnNfZHJ2LCAidW5iaW5kIiwKKwkJCQkgICBwcml2LT5kZXZfYnVzX2FkZHIpLAor
CQkgICAgICJEcml2ZXIgdW5iaW5kIGZhaWx1cmUhXG4iKTsKIAlpZ3RfcmVzZXRfdGltZW91dCgp
OwogfQogCkBAIC0xMzgsNyArMTQwLDkgQEAgc3RhdGljIHZvaWQgZHJpdmVyX2JpbmQoc3RydWN0
IGhvdHVucGx1ZyAqcHJpdiwgaW50IHRpbWVvdXQpCiAJcHJpdi0+ZmFpbHVyZSA9ICJEcml2ZXIg
cmUtYmluZCBmYWlsdXJlISI7CiAKIAlpZ3Rfc2V0X3RpbWVvdXQodGltZW91dCwgIkRyaXZlciBy
ZS1iaW5kIHRpbWVvdXQhIik7Ci0JaWd0X3N5c2ZzX3NldChwcml2LT5mZC5zeXNmc19kcnYsICJi
aW5kIiwgcHJpdi0+ZGV2X2J1c19hZGRyKTsKKwlpZ3RfYXNzZXJ0X2YoaWd0X3N5c2ZzX3NldChw
cml2LT5mZC5zeXNmc19kcnYsICJiaW5kIiwKKwkJCQkgICBwcml2LT5kZXZfYnVzX2FkZHIpLAor
CQkgICAgICJEcml2ZXIgcmUtYmluZCBmYWlsdXJlXG4hIik7CiAJaWd0X3Jlc2V0X3RpbWVvdXQo
KTsKIH0KIApAQCAtMTU2LDcgKzE2MCw4IEBAIHN0YXRpYyB2b2lkIGRldmljZV91bnBsdWcoc3Ry
dWN0IGhvdHVucGx1ZyAqcHJpdiwgY29uc3QgY2hhciAqcHJlZml4LAogCXByaXYtPmZhaWx1cmUg
PSAiRGV2aWNlIHVucGx1ZyBmYWlsdXJlISI7CiAKIAlpZ3Rfc2V0X3RpbWVvdXQodGltZW91dCwg
IkRldmljZSB1bnBsdWcgdGltZW91dCEiKTsKLQlpZ3Rfc3lzZnNfc2V0KHByaXYtPmZkLnN5c2Zz
X2RldiwgInJlbW92ZSIsICIxIik7CisJaWd0X2Fzc2VydF9mKGlndF9zeXNmc19zZXQocHJpdi0+
ZmQuc3lzZnNfZGV2LCAicmVtb3ZlIiwgIjEiKSwKKwkJICAgICAiRGV2aWNlIHVucGx1ZyBmYWls
dXJlXG4hIik7CiAJaWd0X3Jlc2V0X3RpbWVvdXQoKTsKIAogCXByaXYtPmZkLnN5c2ZzX2RldiA9
IGNsb3NlX3N5c2ZzKHByaXYtPmZkLnN5c2ZzX2Rldik7CkBAIC0xNzAsNyArMTc1LDggQEAgc3Rh
dGljIHZvaWQgYnVzX3Jlc2NhbihzdHJ1Y3QgaG90dW5wbHVnICpwcml2LCBpbnQgdGltZW91dCkK
IAlwcml2LT5mYWlsdXJlID0gIkJ1cyByZXNjYW4gZmFpbHVyZSEiOwogCiAJaWd0X3NldF90aW1l
b3V0KHRpbWVvdXQsICJCdXMgcmVzY2FuIHRpbWVvdXQhIik7Ci0JaWd0X3N5c2ZzX3NldChwcml2
LT5mZC5zeXNmc19idXMsICIuLi9yZXNjYW4iLCAiMSIpOworCWlndF9hc3NlcnRfZihpZ3Rfc3lz
ZnNfc2V0KHByaXYtPmZkLnN5c2ZzX2J1cywgIi4uL3Jlc2NhbiIsICIxIiksCisJCSAgICAgICAi
QnVzIHJlc2NhbiBmYWlsdXJlIVxuIik7CiAJaWd0X3Jlc2V0X3RpbWVvdXQoKTsKIH0KIAotLSAK
Mi4yMS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
