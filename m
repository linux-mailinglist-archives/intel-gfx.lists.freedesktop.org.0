Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3935324C0FB
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Aug 2020 16:52:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 608946E946;
	Thu, 20 Aug 2020 14:52:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9891D6E946;
 Thu, 20 Aug 2020 14:52:55 +0000 (UTC)
IronPort-SDR: Py2mIFFFLzpzuuAFT43A4y0Tq6TBe84b3YhLAAaP7E347uRGz/e6lcdnnr8mf9KowKP1y1H6ue
 6XM2zodInxxQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9718"; a="240136133"
X-IronPort-AV: E=Sophos;i="5.76,333,1592895600"; d="scan'208";a="240136133"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2020 07:52:55 -0700
IronPort-SDR: jQF+eAI4iJXY/Ga2AyhV/0OLY2AVtvBdXR9s36cc39qzd7sfMGq3Pf8aeo1r4JH/up1HISULpI
 ofGynNLPX3ig==
X-IronPort-AV: E=Sophos;i="5.76,333,1592895600"; d="scan'208";a="472679673"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2020 07:52:52 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 20 Aug 2020 16:52:02 +0200
Message-Id: <20200820145215.13238-7-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200820145215.13238-1-janusz.krzysztofik@linux.intel.com>
References: <20200820145215.13238-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v3 06/19] tests/core_hotunplug: Maintain a
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
b2JhbCB2YXJpYWJsZXMsCi0gc2tpcCBzdWJ0ZXN0IGFmdGVyIGRldmljZSBjbG9zZSBlcnJvcnMs
Ci0gcHJlcGFyZSBpbnZhcmlhbnQgZGF0YSBvbmx5IG9uY2UgcGVyIHRlc3QgcnVuLAotIG1vdmUg
ZGV2aWNlIGhlYWx0aCBjaGVja3MgdG8gaWd0X2ZpeHR1cmUgc2VjdGlvbnMsCi0gdHJ5IHRvIHJl
Y292ZXIgZnJvbSBzdWJ0ZXN0IGZhaWx1cmVzIGluc3RlYWQgb2YgYWJvcnRpbmcuCkZvciB0aGF0
IHRvIGJlIHBvc3NpYmxlLCBtYWludGFpbiBhIHNpbmdsZSBpbnN0YW5jZSBvZiBob3R1bnBsdWcK
c3RydWN0dXJlIGF0IGlndF9tYWluIGxldmVsIGFuZCBwYXNzIGl0IGRvd24gdG8gc3VidGVzdHMu
CgpTaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0Bs
aW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBNaWNoYcWCIFdpbmlhcnNraSA8bWljaGFsLndp
bmlhcnNraUBpbnRlbC5jb20+Ci0tLQogdGVzdHMvY29yZV9ob3R1bnBsdWcuYyB8IDU2ICsrKysr
KysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDI2
IGluc2VydGlvbnMoKyksIDMwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2NvcmVf
aG90dW5wbHVnLmMgYi90ZXN0cy9jb3JlX2hvdHVucGx1Zy5jCmluZGV4IDQ2ZjlhZDExOC4uOTVk
MzI2ZWU5IDEwMDY0NAotLS0gYS90ZXN0cy9jb3JlX2hvdHVucGx1Zy5jCisrKyBiL3Rlc3RzL2Nv
cmVfaG90dW5wbHVnLmMKQEAgLTE5OCw2OCArMTk4LDYyIEBAIHN0YXRpYyB2b2lkIHNldF9maWx0
ZXJfZnJvbV9kZXZpY2UoaW50IGZkKQogCiAvKiBTdWJ0ZXN0cyAqLwogCi1zdGF0aWMgdm9pZCB1
bmJpbmRfcmViaW5kKHZvaWQpCitzdGF0aWMgdm9pZCB1bmJpbmRfcmViaW5kKHN0cnVjdCBob3R1
bnBsdWcgKnByaXYpCiB7Ci0Jc3RydWN0IGhvdHVucGx1ZyBwcml2OwogCWNoYXIgYnVmW1BBVEhf
TUFYXTsKIAotCXByZXBhcmUoJnByaXYsIGJ1Ziwgc2l6ZW9mKGJ1ZikpOworCXByZXBhcmUocHJp
diwgYnVmLCBzaXplb2YoYnVmKSk7CiAKIAlpZ3RfZGVidWcoImNsb3NpbmcgdGhlIGRldmljZVxu
Iik7Ci0JY2xvc2UocHJpdi5mZC5kcm0pOworCWNsb3NlKHByaXYtPmZkLmRybSk7CiAKLQlkcml2
ZXJfdW5iaW5kKHByaXYuZmQuc3lzZnNfZHJ2LCBwcml2LmRldl9idXNfYWRkciwgIiIpOworCWRy
aXZlcl91bmJpbmQocHJpdi0+ZmQuc3lzZnNfZHJ2LCBwcml2LT5kZXZfYnVzX2FkZHIsICIiKTsK
IAotCWRyaXZlcl9iaW5kKHByaXYuZmQuc3lzZnNfZHJ2LCBwcml2LmRldl9idXNfYWRkcik7CisJ
ZHJpdmVyX2JpbmQocHJpdi0+ZmQuc3lzZnNfZHJ2LCBwcml2LT5kZXZfYnVzX2FkZHIpOwogCiAJ
aGVhbHRoY2hlY2soKTsKIH0KIAotc3RhdGljIHZvaWQgdW5wbHVnX3Jlc2Nhbih2b2lkKQorc3Rh
dGljIHZvaWQgdW5wbHVnX3Jlc2NhbihzdHJ1Y3QgaG90dW5wbHVnICpwcml2KQogewotCXN0cnVj
dCBob3R1bnBsdWcgcHJpdjsKLQotCXByZXBhcmUoJnByaXYsIE5VTEwsIDApOworCXByZXBhcmUo
cHJpdiwgTlVMTCwgMCk7CiAKIAlpZ3RfZGVidWcoImNsb3NpbmcgdGhlIGRldmljZVxuIik7Ci0J
Y2xvc2UocHJpdi5mZC5kcm0pOworCWNsb3NlKHByaXYtPmZkLmRybSk7CiAKLQlkZXZpY2VfdW5w
bHVnKHByaXYuZmQuc3lzZnNfZGV2LCAiIik7CisJZGV2aWNlX3VucGx1Zyhwcml2LT5mZC5zeXNm
c19kZXYsICIiKTsKIAotCWJ1c19yZXNjYW4ocHJpdi5mZC5zeXNmc19idXMpOworCWJ1c19yZXNj
YW4ocHJpdi0+ZmQuc3lzZnNfYnVzKTsKIAogCWhlYWx0aGNoZWNrKCk7CiB9CiAKLXN0YXRpYyB2
b2lkIGhvdHVuYmluZF9sYXRlY2xvc2Uodm9pZCkKK3N0YXRpYyB2b2lkIGhvdHVuYmluZF9sYXRl
Y2xvc2Uoc3RydWN0IGhvdHVucGx1ZyAqcHJpdikKIHsKLQlzdHJ1Y3QgaG90dW5wbHVnIHByaXY7
CiAJY2hhciBidWZbUEFUSF9NQVhdOwogCi0JcHJlcGFyZSgmcHJpdiwgYnVmLCBzaXplb2YoYnVm
KSk7CisJcHJlcGFyZShwcml2LCBidWYsIHNpemVvZihidWYpKTsKIAotCWRyaXZlcl91bmJpbmQo
cHJpdi5mZC5zeXNmc19kcnYsIHByaXYuZGV2X2J1c19hZGRyLCAiaG90ICIpOworCWRyaXZlcl91
bmJpbmQocHJpdi0+ZmQuc3lzZnNfZHJ2LCBwcml2LT5kZXZfYnVzX2FkZHIsICJob3QgIik7CiAK
LQlkcml2ZXJfYmluZChwcml2LmZkLnN5c2ZzX2RydiwgcHJpdi5kZXZfYnVzX2FkZHIpOworCWRy
aXZlcl9iaW5kKHByaXYtPmZkLnN5c2ZzX2RydiwgcHJpdi0+ZGV2X2J1c19hZGRyKTsKIAogCWln
dF9kZWJ1ZygibGF0ZSBjbG9zaW5nIHRoZSB1bmJvdW5kIGRldmljZSBpbnN0YW5jZVxuIik7Ci0J
Y2xvc2UocHJpdi5mZC5kcm0pOworCWNsb3NlKHByaXYtPmZkLmRybSk7CiAKIAloZWFsdGhjaGVj
aygpOwogfQogCi1zdGF0aWMgdm9pZCBob3R1bnBsdWdfbGF0ZWNsb3NlKHZvaWQpCitzdGF0aWMg
dm9pZCBob3R1bnBsdWdfbGF0ZWNsb3NlKHN0cnVjdCBob3R1bnBsdWcgKnByaXYpCiB7Ci0Jc3Ry
dWN0IGhvdHVucGx1ZyBwcml2OwotCi0JcHJlcGFyZSgmcHJpdiwgTlVMTCwgMCk7CisJcHJlcGFy
ZShwcml2LCBOVUxMLCAwKTsKIAotCWRldmljZV91bnBsdWcocHJpdi5mZC5zeXNmc19kZXYsICJo
b3QgIik7CisJZGV2aWNlX3VucGx1Zyhwcml2LT5mZC5zeXNmc19kZXYsICJob3QgIik7CiAKLQli
dXNfcmVzY2FuKHByaXYuZmQuc3lzZnNfYnVzKTsKKwlidXNfcmVzY2FuKHByaXYtPmZkLnN5c2Zz
X2J1cyk7CiAKIAlpZ3RfZGVidWcoImxhdGUgY2xvc2luZyB0aGUgcmVtb3ZlZCBkZXZpY2UgaW5z
dGFuY2VcbiIpOwotCWNsb3NlKHByaXYuZmQuZHJtKTsKKwljbG9zZShwcml2LT5mZC5kcm0pOwog
CiAJaGVhbHRoY2hlY2soKTsKIH0KQEAgLTI2OCw2ICsyNjIsOCBAQCBzdGF0aWMgdm9pZCBob3R1
bnBsdWdfbGF0ZWNsb3NlKHZvaWQpCiAKIGlndF9tYWluCiB7CisJc3RydWN0IGhvdHVucGx1ZyBw
cml2OworCiAJaWd0X2ZpeHR1cmUgewogCQlpbnQgZmRfZHJtOwogCkBAIC0yODcsMjggKzI4Mywy
OCBAQCBpZ3RfbWFpbgogCiAJaWd0X2Rlc2NyaWJlKCJDaGVjayBpZiB0aGUgZHJpdmVyIGNhbiBi
ZSBjbGVhbmx5IHVuYm91bmQgZnJvbSBhIGRldmljZSBiZWxpZXZlZCB0byBiZSBjbG9zZWQiKTsK
IAlpZ3Rfc3VidGVzdCgidW5iaW5kLXJlYmluZCIpCi0JCXVuYmluZF9yZWJpbmQoKTsKKwkJdW5i
aW5kX3JlYmluZCgmcHJpdik7CiAKIAlpZ3RfZml4dHVyZQogCQlpZ3RfYWJvcnRfb25fZihmYWls
dXJlLCAiJXNcbiIsIGZhaWx1cmUpOwogCiAJaWd0X2Rlc2NyaWJlKCJDaGVjayBpZiBhIGRldmlj
ZSBiZWxpZXZlZCB0byBiZSBjbG9zZWQgY2FuIGJlIGNsZWFubHkgdW5wbHVnZ2VkIik7CiAJaWd0
X3N1YnRlc3QoInVucGx1Zy1yZXNjYW4iKQotCQl1bnBsdWdfcmVzY2FuKCk7CisJCXVucGx1Z19y
ZXNjYW4oJnByaXYpOwogCiAJaWd0X2ZpeHR1cmUKIAkJaWd0X2Fib3J0X29uX2YoZmFpbHVyZSwg
IiVzXG4iLCBmYWlsdXJlKTsKIAogCWlndF9kZXNjcmliZSgiQ2hlY2sgaWYgdGhlIGRyaXZlciBj
YW4gYmUgY2xlYW5seSB1bmJvdW5kIGZyb20gYSBzdGlsbCBvcGVuIGRldmljZSwgdGhlbiByZWxl
YXNlZCIpOwogCWlndF9zdWJ0ZXN0KCJob3R1bmJpbmQtbGF0ZWNsb3NlIikKLQkJaG90dW5iaW5k
X2xhdGVjbG9zZSgpOworCQlob3R1bmJpbmRfbGF0ZWNsb3NlKCZwcml2KTsKIAogCWlndF9maXh0
dXJlCiAJCWlndF9hYm9ydF9vbl9mKGZhaWx1cmUsICIlc1xuIiwgZmFpbHVyZSk7CiAKIAlpZ3Rf
ZGVzY3JpYmUoIkNoZWNrIGlmIGEgc3RpbGwgb3BlbiBkZXZpY2UgY2FuIGJlIGNsZWFubHkgdW5w
bHVnZ2VkLCB0aGVuIHJlbGVhc2VkIik7CiAJaWd0X3N1YnRlc3QoImhvdHVucGx1Zy1sYXRlY2xv
c2UiKQotCQlob3R1bnBsdWdfbGF0ZWNsb3NlKCk7CisJCWhvdHVucGx1Z19sYXRlY2xvc2UoJnBy
aXYpOwogCiAJaWd0X2ZpeHR1cmUKIAkJaWd0X2Fib3J0X29uX2YoZmFpbHVyZSwgIiVzXG4iLCBm
YWlsdXJlKTsKLS0gCjIuMjEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
