Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7907B23EA21
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 11:21:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94CA06E99F;
	Fri,  7 Aug 2020 09:21:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 092CD6E994;
 Fri,  7 Aug 2020 09:21:51 +0000 (UTC)
IronPort-SDR: KsgYjusgdPRU4XmjsHjQT1QR+QnE+wv9mMP88q4/iBOLlh/dUvQvhu6RDcbQxZcKMlTKRINRqu
 goX5z4RRKDJw==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="171106872"
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="171106872"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 02:21:49 -0700
IronPort-SDR: aBCriUWNsMlkRq7VwKq/4XIo5Z/6P5g14qGQt4JJiR0I8sI7FbhbkFIq88tmn0nfa9qGXF0vH/
 9bc3vuGepEDQ==
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="333492103"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 02:21:47 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  7 Aug 2020 11:19:51 +0200
Message-Id: <20200807092002.32350-6-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200807092002.32350-1-janusz.krzysztofik@linux.intel.com>
References: <20200807092002.32350-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2 05/16] tests/core_hotunplug: Fix
 missing newline
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

QSB0cmFpbGluZyBuZXdsaW5lIGlzIG1pc3NpbmcgZnJvbSBvbmUgb2YgZmF0YWwgZXJyb3IgbWVz
c2FnZXMsIGZpeCBpdC4KCnYyOiBSZWJhc2Ugb24gY3VycmVudCB1cHN0cmVhbSBtYXN0ZXIuCgpT
aWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BsaW51
eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBNaWNoYcWCIFdpbmlhcnNraSA8bWljaGFsLndpbmlh
cnNraUBpbnRlbC5jb20+Ci0tLQogdGVzdHMvY29yZV9ob3R1bnBsdWcuYyB8IDIgKy0KIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3Rl
c3RzL2NvcmVfaG90dW5wbHVnLmMgYi90ZXN0cy9jb3JlX2hvdHVucGx1Zy5jCmluZGV4IDZjZWIz
MjVhZC4uY2FjODhjMmYzIDEwMDY0NAotLS0gYS90ZXN0cy9jb3JlX2hvdHVucGx1Zy5jCisrKyBi
L3Rlc3RzL2NvcmVfaG90dW5wbHVnLmMKQEAgLTE1NSw3ICsxNTUsNyBAQCBzdGF0aWMgdm9pZCBo
ZWFsdGhjaGVjayh2b2lkKQogCiAJaWd0X2RlYnVnKCJyZW9wZW5pbmcgdGhlIGRldmljZVxuIik7
CiAJZmRfZHJtID0gX19kcm1fb3Blbl9kcml2ZXIoRFJJVkVSX0FOWSk7Ci0JaWd0X2Fib3J0X29u
X2YoZmRfZHJtIDwgMCwgIkRldmljZSByZW9wZW4gZmFpbHVyZSIpOworCWlndF9hYm9ydF9vbl9m
KGZkX2RybSA8IDAsICJEZXZpY2UgcmVvcGVuIGZhaWx1cmVcbiIpOwogCiAJaWYgKGlzX2k5MTVf
ZGV2aWNlKGZkX2RybSkpIHsKIAkJZmFpbHVyZSA9ICJHRU0gZmFpbHVyZSI7Ci0tIAoyLjIxLjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
