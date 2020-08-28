Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1AF52555DD
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Aug 2020 10:00:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78E576EB93;
	Fri, 28 Aug 2020 08:00:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09D316EB8D;
 Fri, 28 Aug 2020 08:00:25 +0000 (UTC)
IronPort-SDR: LUWjSuNxsP43BISii8pV88QRNm8oBPGw3C0q4w4mZQNMYgRGalqCXbMW+HRmgaPoUtoZsR5b3/
 1tGDPM1Fvlsw==
X-IronPort-AV: E=McAfee;i="6000,8403,9726"; a="144375148"
X-IronPort-AV: E=Sophos;i="5.76,363,1592895600"; d="scan'208";a="144375148"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2020 01:00:24 -0700
IronPort-SDR: /o85SP2FI3/7zQD7eSvbk2JXqXQt69yUkdiNFkYr6Nt9h/RENQPvNT6S0CqZ7CWn1ufoa158sQ
 GySBO8ZzXgiQ==
X-IronPort-AV: E=Sophos;i="5.76,363,1592895600"; d="scan'208";a="444756018"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2020 01:00:16 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 28 Aug 2020 09:59:21 +0200
Message-Id: <20200828075927.17061-16-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200828075927.17061-1-janusz.krzysztofik@linux.intel.com>
References: <20200828075927.17061-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v5 15/21] tests/core_hotunplug: Assert
 expected device presence/absence
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

RG9uJ3QgcmVseSBvbiBzdWNjZXNzZnVsIHdyaXRlIHRvIHN5c2ZzIGNvbnRyb2wgZmlsZXMsIGFz
c2VydCBleGlzdGVuY2UKLyBub24tZXhpc3RlbmNlIG9mIGEgcmVzcGVjdGl2ZSBkZXZpY2Ugc3lz
ZnMgbm9kZSBhcyB3ZWxsLgoKU2lnbmVkLW9mZi1ieTogSmFudXN6IEtyenlzenRvZmlrIDxqYW51
c3oua3J6eXN6dG9maWtAbGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTWljaGHFgiBXaW5p
YXJza2kgPG1pY2hhbC53aW5pYXJza2lAaW50ZWwuY29tPgotLS0KIHRlc3RzL2NvcmVfaG90dW5w
bHVnLmMgfCAxNCArKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS90ZXN0cy9jb3JlX2hvdHVucGx1Zy5jIGIvdGVzdHMvY29yZV9ob3R1
bnBsdWcuYwppbmRleCBiYmM5ZDMwYjUuLmI1M2M5ZWNkZSAxMDA2NDQKLS0tIGEvdGVzdHMvY29y
ZV9ob3R1bnBsdWcuYworKysgYi90ZXN0cy9jb3JlX2hvdHVucGx1Zy5jCkBAIC0xMjcsNiArMTI3
LDkgQEAgc3RhdGljIHZvaWQgZHJpdmVyX3VuYmluZChzdHJ1Y3QgaG90dW5wbHVnICpwcml2LCBj
b25zdCBjaGFyICpwcmVmaXgsCiAJCQkJICAgcHJpdi0+ZGV2X2J1c19hZGRyKSwKIAkJICAgICAi
RHJpdmVyIHVuYmluZCBmYWlsdXJlIVxuIik7CiAJaWd0X3Jlc2V0X3RpbWVvdXQoKTsKKworCWln
dF9hc3NlcnRfZihmYWNjZXNzYXQocHJpdi0+ZmQuc3lzZnNfZHJ2LCBwcml2LT5kZXZfYnVzX2Fk
ZHIsIEZfT0ssIDApLAorCQkgICAgICJVbmJvdW5kIGRldmljZSBzdGlsbCBwcmVzZW50XG4iKTsK
IH0KIAogLyogUmUtYmluZCB0aGUgZHJpdmVyIHRvIHRoZSBkZXZpY2UgKi8KQEAgLTE0MCw2ICsx
NDMsMTAgQEAgc3RhdGljIHZvaWQgZHJpdmVyX2JpbmQoc3RydWN0IGhvdHVucGx1ZyAqcHJpdiwg
aW50IHRpbWVvdXQpCiAJCQkJICAgcHJpdi0+ZGV2X2J1c19hZGRyKSwKIAkJICAgICAiRHJpdmVy
IHJlLWJpbmQgZmFpbHVyZVxuISIpOwogCWlndF9yZXNldF90aW1lb3V0KCk7CisKKwlpZ3RfZmFp
bF9vbl9mKGZhY2Nlc3NhdChwcml2LT5mZC5zeXNmc19kcnYsIHByaXYtPmRldl9idXNfYWRkciwK
KwkJCQlGX09LLCAwKSwKKwkJICAgICAgIlJlYm91bmQgZGV2aWNlIG5vdCBwcmVzZW50IVxuIik7
CiB9CiAKIC8qIFJlbW92ZSAodmlydHVhbGx5IHVucGx1ZykgdGhlIGRldmljZSBmcm9tIGl0cyBi
dXMgKi8KQEAgLTE2Miw2ICsxNjksOSBAQCBzdGF0aWMgdm9pZCBkZXZpY2VfdW5wbHVnKHN0cnVj
dCBob3R1bnBsdWcgKnByaXYsIGNvbnN0IGNoYXIgKnByZWZpeCwKIAogCXByaXYtPmZkLnN5c2Zz
X2RldiA9IGNsb3NlX3N5c2ZzKHByaXYtPmZkLnN5c2ZzX2Rldik7CiAJaWd0X2Fzc2VydF9lcShw
cml2LT5mZC5zeXNmc19kZXYsIC0xKTsKKworCWlndF9hc3NlcnRfZihmYWNjZXNzYXQocHJpdi0+
ZmQuc3lzZnNfYnVzLCBwcml2LT5kZXZfYnVzX2FkZHIsIEZfT0ssIDApLAorCQkgICAgICJVbnBs
dWdnZWQgZGV2aWNlIHN0aWxsIHByZXNlbnRcbiIpOwogfQogCiAvKiBSZS1kaXNjb3ZlciB0aGUg
ZGV2aWNlIGJ5IHJlc2Nhbm5pbmcgaXRzIGJ1cyAqLwpAQCAtMTc0LDYgKzE4NCwxMCBAQCBzdGF0
aWMgdm9pZCBidXNfcmVzY2FuKHN0cnVjdCBob3R1bnBsdWcgKnByaXYsIGludCB0aW1lb3V0KQog
CWlndF9hc3NlcnRfZihpZ3Rfc3lzZnNfc2V0KHByaXYtPmZkLnN5c2ZzX2J1cywgIi4uL3Jlc2Nh
biIsICIxIiksCiAJCSAgICAgICAiQnVzIHJlc2NhbiBmYWlsdXJlIVxuIik7CiAJaWd0X3Jlc2V0
X3RpbWVvdXQoKTsKKworCWlndF9mYWlsX29uX2YoZmFjY2Vzc2F0KHByaXYtPmZkLnN5c2ZzX2J1
cywgcHJpdi0+ZGV2X2J1c19hZGRyLAorCQkJCUZfT0ssIDApLAorCQkgICAgICAiRmFrZWx5IHVu
cGx1Z2dlZCBkZXZpY2Ugbm90IHJlZGlzY292ZXJlZCFcbiIpOwogfQogCiBzdGF0aWMgdm9pZCBj
bGVhbnVwKHN0cnVjdCBob3R1bnBsdWcgKnByaXYpCi0tIAoyLjIxLjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
