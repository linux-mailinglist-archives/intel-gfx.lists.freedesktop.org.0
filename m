Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D75062555D7
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Aug 2020 10:00:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DACC6EC2E;
	Fri, 28 Aug 2020 08:00:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D7DB6EBA2;
 Fri, 28 Aug 2020 08:00:03 +0000 (UTC)
IronPort-SDR: U5O4fK/3RaoJiZ9eZIcAXRAgP7k5Jf6UgBxLbXBJ20x8VFeLLVaqmEgfbBK+f7A260IoeOsNSs
 TEaS0+T7rYuw==
X-IronPort-AV: E=McAfee;i="6000,8403,9726"; a="241440822"
X-IronPort-AV: E=Sophos;i="5.76,363,1592895600"; d="scan'208";a="241440822"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2020 01:00:01 -0700
IronPort-SDR: kucofsQ10AtvjSAqMifPPZMMD15AplYrSrLVrJZaYOLP+dOw+u2LqBZqR080nIybAwkU+nojLJ
 12ne4yklcy4w==
X-IronPort-AV: E=Sophos;i="5.76,362,1592895600"; d="scan'208";a="444755861"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2020 00:59:55 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 28 Aug 2020 09:59:12 +0200
Message-Id: <20200828075927.17061-7-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200828075927.17061-1-janusz.krzysztofik@linux.intel.com>
References: <20200828075927.17061-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v5 06/21] tests/core_hotunplug: Maintain a
 single data structure instance
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

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHRvIHRoZSB0ZXN0IGFyZSBwbGFubmVkOgotIGF2b2lkIGds
b2JhbCB2YXJpYWJsZXMgaWYgcG9zc2libGUsCi0gcHJlcGFyZSBpbnZhcmlhbnQgZGF0YSBvbmx5
IG9uY2UgcGVyIHRlc3QgcnVuLAotIHNraXAgc3Vic2VxdWVudCBzdWJ0ZXN0cyBhZnRlciBkZXZp
Y2UgY2xvc2UgZXJyb3JzLAotIGFsbG93IHN1YnRlc3RzIHRvIGZhaWwgb24gZXJyb3JzIGFuZCB0
cnkgdG8gcmVjb3ZlciBmcm9tIHRob3NlCiAgZmFpbHVyZXMgaW4gZm9sbG93IHVwIGlndCBkaXh0
dXJlIHNlY3Rpb25zIGluc3RlYWQgb2YgYWJvcnRpbmcuCkZvciB0aGF0IHRvIGJlIHBvc3NpYmxl
LCBtYWludGFpbiBhIHNpbmdsZSBpbnN0YW5jZSBvZiBob3R1bnBsdWcKc3RydWN0dXJlIGF0IGln
dF9tYWluIGxldmVsIGFuZCBwYXNzIGl0IGRvd24gdG8gc3VidGVzdHMuCgp2MjogQ29tbWl0IGRl
c2NyaXB0aW9uIHJlZnJlc2hlZC4KClNpZ25lZC1vZmYtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8
amFudXN6LmtyenlzenRvZmlrQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1pY2hhxYIg
V2luaWFyc2tpIDxtaWNoYWwud2luaWFyc2tpQGludGVsLmNvbT4KLS0tCiB0ZXN0cy9jb3JlX2hv
dHVucGx1Zy5jIHwgNTYgKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKSwgMzAgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvdGVzdHMvY29yZV9ob3R1bnBsdWcuYyBiL3Rlc3RzL2NvcmVfaG90dW5wbHVnLmMK
aW5kZXggNDZmOWFkMTE4Li45NWQzMjZlZTkgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2NvcmVfaG90dW5w
bHVnLmMKKysrIGIvdGVzdHMvY29yZV9ob3R1bnBsdWcuYwpAQCAtMTk4LDY4ICsxOTgsNjIgQEAg
c3RhdGljIHZvaWQgc2V0X2ZpbHRlcl9mcm9tX2RldmljZShpbnQgZmQpCiAKIC8qIFN1YnRlc3Rz
ICovCiAKLXN0YXRpYyB2b2lkIHVuYmluZF9yZWJpbmQodm9pZCkKK3N0YXRpYyB2b2lkIHVuYmlu
ZF9yZWJpbmQoc3RydWN0IGhvdHVucGx1ZyAqcHJpdikKIHsKLQlzdHJ1Y3QgaG90dW5wbHVnIHBy
aXY7CiAJY2hhciBidWZbUEFUSF9NQVhdOwogCi0JcHJlcGFyZSgmcHJpdiwgYnVmLCBzaXplb2Yo
YnVmKSk7CisJcHJlcGFyZShwcml2LCBidWYsIHNpemVvZihidWYpKTsKIAogCWlndF9kZWJ1Zygi
Y2xvc2luZyB0aGUgZGV2aWNlXG4iKTsKLQljbG9zZShwcml2LmZkLmRybSk7CisJY2xvc2UocHJp
di0+ZmQuZHJtKTsKIAotCWRyaXZlcl91bmJpbmQocHJpdi5mZC5zeXNmc19kcnYsIHByaXYuZGV2
X2J1c19hZGRyLCAiIik7CisJZHJpdmVyX3VuYmluZChwcml2LT5mZC5zeXNmc19kcnYsIHByaXYt
PmRldl9idXNfYWRkciwgIiIpOwogCi0JZHJpdmVyX2JpbmQocHJpdi5mZC5zeXNmc19kcnYsIHBy
aXYuZGV2X2J1c19hZGRyKTsKKwlkcml2ZXJfYmluZChwcml2LT5mZC5zeXNmc19kcnYsIHByaXYt
PmRldl9idXNfYWRkcik7CiAKIAloZWFsdGhjaGVjaygpOwogfQogCi1zdGF0aWMgdm9pZCB1bnBs
dWdfcmVzY2FuKHZvaWQpCitzdGF0aWMgdm9pZCB1bnBsdWdfcmVzY2FuKHN0cnVjdCBob3R1bnBs
dWcgKnByaXYpCiB7Ci0Jc3RydWN0IGhvdHVucGx1ZyBwcml2OwotCi0JcHJlcGFyZSgmcHJpdiwg
TlVMTCwgMCk7CisJcHJlcGFyZShwcml2LCBOVUxMLCAwKTsKIAogCWlndF9kZWJ1ZygiY2xvc2lu
ZyB0aGUgZGV2aWNlXG4iKTsKLQljbG9zZShwcml2LmZkLmRybSk7CisJY2xvc2UocHJpdi0+ZmQu
ZHJtKTsKIAotCWRldmljZV91bnBsdWcocHJpdi5mZC5zeXNmc19kZXYsICIiKTsKKwlkZXZpY2Vf
dW5wbHVnKHByaXYtPmZkLnN5c2ZzX2RldiwgIiIpOwogCi0JYnVzX3Jlc2Nhbihwcml2LmZkLnN5
c2ZzX2J1cyk7CisJYnVzX3Jlc2Nhbihwcml2LT5mZC5zeXNmc19idXMpOwogCiAJaGVhbHRoY2hl
Y2soKTsKIH0KIAotc3RhdGljIHZvaWQgaG90dW5iaW5kX2xhdGVjbG9zZSh2b2lkKQorc3RhdGlj
IHZvaWQgaG90dW5iaW5kX2xhdGVjbG9zZShzdHJ1Y3QgaG90dW5wbHVnICpwcml2KQogewotCXN0
cnVjdCBob3R1bnBsdWcgcHJpdjsKIAljaGFyIGJ1ZltQQVRIX01BWF07CiAKLQlwcmVwYXJlKCZw
cml2LCBidWYsIHNpemVvZihidWYpKTsKKwlwcmVwYXJlKHByaXYsIGJ1Ziwgc2l6ZW9mKGJ1Zikp
OwogCi0JZHJpdmVyX3VuYmluZChwcml2LmZkLnN5c2ZzX2RydiwgcHJpdi5kZXZfYnVzX2FkZHIs
ICJob3QgIik7CisJZHJpdmVyX3VuYmluZChwcml2LT5mZC5zeXNmc19kcnYsIHByaXYtPmRldl9i
dXNfYWRkciwgImhvdCAiKTsKIAotCWRyaXZlcl9iaW5kKHByaXYuZmQuc3lzZnNfZHJ2LCBwcml2
LmRldl9idXNfYWRkcik7CisJZHJpdmVyX2JpbmQocHJpdi0+ZmQuc3lzZnNfZHJ2LCBwcml2LT5k
ZXZfYnVzX2FkZHIpOwogCiAJaWd0X2RlYnVnKCJsYXRlIGNsb3NpbmcgdGhlIHVuYm91bmQgZGV2
aWNlIGluc3RhbmNlXG4iKTsKLQljbG9zZShwcml2LmZkLmRybSk7CisJY2xvc2UocHJpdi0+ZmQu
ZHJtKTsKIAogCWhlYWx0aGNoZWNrKCk7CiB9CiAKLXN0YXRpYyB2b2lkIGhvdHVucGx1Z19sYXRl
Y2xvc2Uodm9pZCkKK3N0YXRpYyB2b2lkIGhvdHVucGx1Z19sYXRlY2xvc2Uoc3RydWN0IGhvdHVu
cGx1ZyAqcHJpdikKIHsKLQlzdHJ1Y3QgaG90dW5wbHVnIHByaXY7Ci0KLQlwcmVwYXJlKCZwcml2
LCBOVUxMLCAwKTsKKwlwcmVwYXJlKHByaXYsIE5VTEwsIDApOwogCi0JZGV2aWNlX3VucGx1Zyhw
cml2LmZkLnN5c2ZzX2RldiwgImhvdCAiKTsKKwlkZXZpY2VfdW5wbHVnKHByaXYtPmZkLnN5c2Zz
X2RldiwgImhvdCAiKTsKIAotCWJ1c19yZXNjYW4ocHJpdi5mZC5zeXNmc19idXMpOworCWJ1c19y
ZXNjYW4ocHJpdi0+ZmQuc3lzZnNfYnVzKTsKIAogCWlndF9kZWJ1ZygibGF0ZSBjbG9zaW5nIHRo
ZSByZW1vdmVkIGRldmljZSBpbnN0YW5jZVxuIik7Ci0JY2xvc2UocHJpdi5mZC5kcm0pOworCWNs
b3NlKHByaXYtPmZkLmRybSk7CiAKIAloZWFsdGhjaGVjaygpOwogfQpAQCAtMjY4LDYgKzI2Miw4
IEBAIHN0YXRpYyB2b2lkIGhvdHVucGx1Z19sYXRlY2xvc2Uodm9pZCkKIAogaWd0X21haW4KIHsK
KwlzdHJ1Y3QgaG90dW5wbHVnIHByaXY7CisKIAlpZ3RfZml4dHVyZSB7CiAJCWludCBmZF9kcm07
CiAKQEAgLTI4NywyOCArMjgzLDI4IEBAIGlndF9tYWluCiAKIAlpZ3RfZGVzY3JpYmUoIkNoZWNr
IGlmIHRoZSBkcml2ZXIgY2FuIGJlIGNsZWFubHkgdW5ib3VuZCBmcm9tIGEgZGV2aWNlIGJlbGll
dmVkIHRvIGJlIGNsb3NlZCIpOwogCWlndF9zdWJ0ZXN0KCJ1bmJpbmQtcmViaW5kIikKLQkJdW5i
aW5kX3JlYmluZCgpOworCQl1bmJpbmRfcmViaW5kKCZwcml2KTsKIAogCWlndF9maXh0dXJlCiAJ
CWlndF9hYm9ydF9vbl9mKGZhaWx1cmUsICIlc1xuIiwgZmFpbHVyZSk7CiAKIAlpZ3RfZGVzY3Jp
YmUoIkNoZWNrIGlmIGEgZGV2aWNlIGJlbGlldmVkIHRvIGJlIGNsb3NlZCBjYW4gYmUgY2xlYW5s
eSB1bnBsdWdnZWQiKTsKIAlpZ3Rfc3VidGVzdCgidW5wbHVnLXJlc2NhbiIpCi0JCXVucGx1Z19y
ZXNjYW4oKTsKKwkJdW5wbHVnX3Jlc2NhbigmcHJpdik7CiAKIAlpZ3RfZml4dHVyZQogCQlpZ3Rf
YWJvcnRfb25fZihmYWlsdXJlLCAiJXNcbiIsIGZhaWx1cmUpOwogCiAJaWd0X2Rlc2NyaWJlKCJD
aGVjayBpZiB0aGUgZHJpdmVyIGNhbiBiZSBjbGVhbmx5IHVuYm91bmQgZnJvbSBhIHN0aWxsIG9w
ZW4gZGV2aWNlLCB0aGVuIHJlbGVhc2VkIik7CiAJaWd0X3N1YnRlc3QoImhvdHVuYmluZC1sYXRl
Y2xvc2UiKQotCQlob3R1bmJpbmRfbGF0ZWNsb3NlKCk7CisJCWhvdHVuYmluZF9sYXRlY2xvc2Uo
JnByaXYpOwogCiAJaWd0X2ZpeHR1cmUKIAkJaWd0X2Fib3J0X29uX2YoZmFpbHVyZSwgIiVzXG4i
LCBmYWlsdXJlKTsKIAogCWlndF9kZXNjcmliZSgiQ2hlY2sgaWYgYSBzdGlsbCBvcGVuIGRldmlj
ZSBjYW4gYmUgY2xlYW5seSB1bnBsdWdnZWQsIHRoZW4gcmVsZWFzZWQiKTsKIAlpZ3Rfc3VidGVz
dCgiaG90dW5wbHVnLWxhdGVjbG9zZSIpCi0JCWhvdHVucGx1Z19sYXRlY2xvc2UoKTsKKwkJaG90
dW5wbHVnX2xhdGVjbG9zZSgmcHJpdik7CiAKIAlpZ3RfZml4dHVyZQogCQlpZ3RfYWJvcnRfb25f
ZihmYWlsdXJlLCAiJXNcbiIsIGZhaWx1cmUpOwotLSAKMi4yMS4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
