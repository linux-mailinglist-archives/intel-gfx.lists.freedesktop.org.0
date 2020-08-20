Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5BF24C0F5
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Aug 2020 16:52:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F3EA6E58A;
	Thu, 20 Aug 2020 14:52:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA8CE6E378;
 Thu, 20 Aug 2020 14:52:43 +0000 (UTC)
IronPort-SDR: r1TebQdLg/1QAg5zIiiyng9eAWDrAx1B6i4s5CROCK0EGp3eFRqgY9QVYQSepTR3/t61T5CR4F
 BqmfjVAdaZxQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9718"; a="240136050"
X-IronPort-AV: E=Sophos;i="5.76,333,1592895600"; d="scan'208";a="240136050"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2020 07:52:42 -0700
IronPort-SDR: fkOoJB/Eytgo3HJCuC95nvY2hc2tmZDsAvE9QPrSn6B+Esoj7eY2ubr+90OOwSzrGnAXmZH3lE
 7pT7SyuX49+g==
X-IronPort-AV: E=Sophos;i="5.76,333,1592895600"; d="scan'208";a="472679581"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2020 07:52:39 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 20 Aug 2020 16:51:57 +0200
Message-Id: <20200820145215.13238-2-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200820145215.13238-1-janusz.krzysztofik@linux.intel.com>
References: <20200820145215.13238-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v3 01/19] tests/core_hotunplug: Use
 igt_assert_fd()
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

VGhlcmUgaXMgYSBuZXcgbGlicmFyeSBoZWxwZXIgdGhhdCBhc3NlcnRzIHZhbGlkaXR5IG9mIG9w
ZW4gZmlsZQpkZXNjcmlwdG9ycy4gIFVzZSBpdCBpbnN0ZWFkIG9mIG9wZW4gY29kaW5nLgoKU2ln
bmVkLW9mZi1ieTogSmFudXN6IEtyenlzenRvZmlrIDxqYW51c3oua3J6eXN6dG9maWtAbGludXgu
aW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTWljaGHFgiBXaW5pYXJza2kgPG1pY2hhbC53aW5pYXJz
a2lAaW50ZWwuY29tPgotLS0KIHRlc3RzL2NvcmVfaG90dW5wbHVnLmMgfCAxMCArKysrKy0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL3Rlc3RzL2NvcmVfaG90dW5wbHVnLmMgYi90ZXN0cy9jb3JlX2hvdHVucGx1Zy5jCmlu
ZGV4IGUwM2YzYjk0NS4uNzQzMTM0NmIxIDEwMDY0NAotLS0gYS90ZXN0cy9jb3JlX2hvdHVucGx1
Zy5jCisrKyBiL3Rlc3RzL2NvcmVfaG90dW5wbHVnLmMKQEAgLTU3LDcgKzU3LDcgQEAgc3RhdGlj
IHZvaWQgcHJlcGFyZV9mb3JfdW5iaW5kKHN0cnVjdCBob3R1bnBsdWcgKnByaXYsIGNoYXIgKmJ1
ZiwgaW50IGJ1ZmxlbikKIAogCXByaXYtPmZkLnN5c2ZzX2RydiA9IG9wZW5hdChwcml2LT5mZC5z
eXNmc19kZXYsICJkZXZpY2UvZHJpdmVyIiwKIAkJCQkgICAgT19ESVJFQ1RPUlkpOwotCWlndF9h
c3NlcnQocHJpdi0+ZmQuc3lzZnNfZHJ2ID49IDApOworCWlndF9hc3NlcnRfZmQocHJpdi0+ZmQu
c3lzZnNfZHJ2KTsKIAogCWxlbiA9IHJlYWRsaW5rYXQocHJpdi0+ZmQuc3lzZnNfZGV2LCAiZGV2
aWNlIiwgYnVmLCBidWZsZW4gLSAxKTsKIAlidWZbbGVuXSA9ICdcMCc7CkBAIC03MiwxMCArNzIs
MTAgQEAgc3RhdGljIHZvaWQgcHJlcGFyZShzdHJ1Y3QgaG90dW5wbHVnICpwcml2LCBjaGFyICpi
dWYsIGludCBidWZsZW4pCiB7CiAJaWd0X2RlYnVnKCJvcGVuaW5nIGRldmljZVxuIik7CiAJcHJp
di0+ZmQuZHJtID0gX19kcm1fb3Blbl9kcml2ZXIoRFJJVkVSX0FOWSk7Ci0JaWd0X2Fzc2VydChw
cml2LT5mZC5kcm0gPj0gMCk7CisJaWd0X2Fzc2VydF9mZChwcml2LT5mZC5kcm0pOwogCiAJcHJp
di0+ZmQuc3lzZnNfZGV2ID0gaWd0X3N5c2ZzX29wZW4ocHJpdi0+ZmQuZHJtKTsKLQlpZ3RfYXNz
ZXJ0KHByaXYtPmZkLnN5c2ZzX2RldiA+PSAwKTsKKwlpZ3RfYXNzZXJ0X2ZkKHByaXYtPmZkLnN5
c2ZzX2Rldik7CiAKIAlpZiAoYnVmKSB7CiAJCXByZXBhcmVfZm9yX3VuYmluZChwcml2LCBidWYs
IGJ1Zmxlbik7CkBAIC04Myw3ICs4Myw3IEBAIHN0YXRpYyB2b2lkIHByZXBhcmUoc3RydWN0IGhv
dHVucGx1ZyAqcHJpdiwgY2hhciAqYnVmLCBpbnQgYnVmbGVuKQogCQkvKiBwcmVwYXJlIGZvciBi
dXMgcmVzY2FuICovCiAJCXByaXYtPmZkLnN5c2ZzX2J1cyA9IG9wZW5hdChwcml2LT5mZC5zeXNm
c19kZXYsCiAJCQkJCSAgICAiZGV2aWNlL3N1YnN5c3RlbSIsIE9fRElSRUNUT1JZKTsKLQkJaWd0
X2Fzc2VydChwcml2LT5mZC5zeXNmc19idXMgPj0gMCk7CisJCWlndF9hc3NlcnRfZmQocHJpdi0+
ZmQuc3lzZnNfYnVzKTsKIAl9CiB9CiAKQEAgLTI2MSw3ICsyNjEsNyBAQCBpZ3RfbWFpbgogCQkg
KiBhIGRldmljZSBmaWxlIGRlc2NyaXB0b3Igb3BlbiBmb3IgZXhpdCBoYW5kbGVyIHVzZS4KIAkJ
ICovCiAJCWZkX2RybSA9IF9fZHJtX29wZW5fZHJpdmVyKERSSVZFUl9BTlkpOwotCQlpZ3RfYXNz
ZXJ0KGZkX2RybSA+PSAwKTsKKwkJaWd0X2Fzc2VydF9mZChmZF9kcm0pOwogCiAJCWlmIChpc19p
OTE1X2RldmljZShmZF9kcm0pKQogCQkJaWd0X3JlcXVpcmVfZ2VtKGZkX2RybSk7Ci0tIAoyLjIx
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
