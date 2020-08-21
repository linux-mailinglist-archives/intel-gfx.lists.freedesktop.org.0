Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5010824D8D3
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Aug 2020 17:38:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98FED6E210;
	Fri, 21 Aug 2020 15:38:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B725C6E85C;
 Fri, 21 Aug 2020 15:38:41 +0000 (UTC)
IronPort-SDR: 34T6saXyBC0V3hUW5uJOjFBkk0WEh+dyujqnd2sN7ipjP7bu+niaDdeaDfF+pcwoW5YiTA9wMe
 /r8EAdslBQvA==
X-IronPort-AV: E=McAfee;i="6000,8403,9719"; a="240381891"
X-IronPort-AV: E=Sophos;i="5.76,337,1592895600"; d="scan'208";a="240381891"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2020 08:38:41 -0700
IronPort-SDR: 7Qj++afIHaIAj3NqtJrZ15e+/D9uMlYptPD2I70B8zUgw96vvvYDFg8Qa6BZdIavNn7VjlUFRN
 UXa4RXbIZAIA==
X-IronPort-AV: E=Sophos;i="5.76,337,1592895600"; d="scan'208";a="473086637"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2020 08:38:39 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 21 Aug 2020 17:37:57 +0200
Message-Id: <20200821153807.18613-11-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200821153807.18613-1-janusz.krzysztofik@linux.intel.com>
References: <20200821153807.18613-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v4 10/20] tests/core_hotunplug: Skip
 selectively on sysfs close errors
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

U2luY2Ugd2Ugbm8gbG9uZ2VyIG9wZW4gYSBkZXZpY2UgRFJNIHN5c2ZzIG5vZGUsIG9ubHkgYSBQ
Q0kgb25lLCBkcml2ZXIKdW5iaW5kIG9wZXJhdGlvbnMgYXJlIG5vIGxvbmdlciBhZmZlY3RlZCBi
eSBtaXNzZWQgb3IgdW5zdWNjZXNzZnVsCnN5c2ZzIGZpbGUgY2xvc2UgYXR0ZW1wdHMuICBTa2lw
IG9ubHkgYWZmZWN0ZWQgc3VidGVzdHMgaWYgdGhhdApoYXBwZW5zLgoKdjI6IFJlYmFzZSBvbmx5
Lgp2MzogUmVmcmVzaC4KClNpZ25lZC1vZmYtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8amFudXN6
LmtyenlzenRvZmlrQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1pY2hhxYIgV2luaWFy
c2tpIDxtaWNoYWwud2luaWFyc2tpQGludGVsLmNvbT4KLS0tCiB0ZXN0cy9jb3JlX2hvdHVucGx1
Zy5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2NvcmVfaG90dW5wbHVnLmMgYi90ZXN0cy9jb3JlX2hv
dHVucGx1Zy5jCmluZGV4IDg0OWE3NzRmZi4uNjAyYTkxY2Y4IDEwMDY0NAotLS0gYS90ZXN0cy9j
b3JlX2hvdHVucGx1Zy5jCisrKyBiL3Rlc3RzL2NvcmVfaG90dW5wbHVnLmMKQEAgLTEwOSw3ICsx
MDksNiBAQCBzdGF0aWMgdm9pZCBwcmVwYXJlKHN0cnVjdCBob3R1bnBsdWcgKnByaXYpCiAJaWd0
X2Fzc2VydF9mZChwcml2LT5mZC5zeXNmc19idXMpOwogCiAJcHJpdi0+ZmQuc3lzZnNfZGV2ID0g
Y2xvc2Vfc3lzZnMocHJpdi0+ZmQuc3lzZnNfZGV2KTsKLQlpZ3RfYXNzZXJ0X2VxKHByaXYtPmZk
LnN5c2ZzX2RldiwgLTEpOwogfQogCiAvKiBVbmJpbmQgdGhlIGRyaXZlciBmcm9tIHRoZSBkZXZp
Y2UgKi8KQEAgLTEzOSw2ICsxMzgsOCBAQCBzdGF0aWMgdm9pZCBkcml2ZXJfYmluZChzdHJ1Y3Qg
aG90dW5wbHVnICpwcml2KQogLyogUmVtb3ZlICh2aXJ0dWFsbHkgdW5wbHVnKSB0aGUgZGV2aWNl
IGZyb20gaXRzIGJ1cyAqLwogc3RhdGljIHZvaWQgZGV2aWNlX3VucGx1ZyhzdHJ1Y3QgaG90dW5w
bHVnICpwcml2LCBjb25zdCBjaGFyICpwcmVmaXgpCiB7CisJaWd0X3JlcXVpcmUocHJpdi0+ZmQu
c3lzZnNfZGV2ID09IC0xKTsKKwogCXByaXYtPmZkLnN5c2ZzX2RldiA9IG9wZW5hdChwcml2LT5m
ZC5zeXNmc19idXMsIHByaXYtPmRldl9idXNfYWRkciwKIAkJCQkgICAgT19ESVJFQ1RPUlkpOwog
CWlndF9hc3NlcnRfZmQocHJpdi0+ZmQuc3lzZnNfZGV2KTsKQEAgLTE5NCw3ICsxOTUsNiBAQCBz
dGF0aWMgdm9pZCBwb3N0X2hlYWx0aGNoZWNrKHN0cnVjdCBob3R1bnBsdWcgKnByaXYpCiAJaWd0
X2Fib3J0X29uX2YocHJpdi0+ZmFpbHVyZSwgIiVzXG4iLCBwcml2LT5mYWlsdXJlKTsKIAogCWln
dF9yZXF1aXJlKHByaXYtPmZkLmRybSA9PSAtMSk7Ci0JaWd0X3JlcXVpcmUocHJpdi0+ZmQuc3lz
ZnNfZGV2ID09IC0xKTsKIH0KIAogc3RhdGljIHZvaWQgc2V0X2ZpbHRlcl9mcm9tX2RldmljZShp
bnQgZmQpCi0tIAoyLjIxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
