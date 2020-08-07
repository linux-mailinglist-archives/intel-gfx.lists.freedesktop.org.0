Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A696A23EA35
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 11:22:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 269D46E997;
	Fri,  7 Aug 2020 09:22:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 958536E994;
 Fri,  7 Aug 2020 09:21:59 +0000 (UTC)
IronPort-SDR: KK+kfQjKg/twdnvJx8Qf+WyOGK+92DFv02rtpBmbH8b5y2wJYbAzaGZBN8huSx4+c6Ffu0tW7b
 eneqXN8Vq+BA==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="171106906"
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="171106906"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 02:21:59 -0700
IronPort-SDR: JbMqfUXVlT4RGkF+z80xEsLTO+rSVOVMiWjmne0tUUIqOg9riOCxuEy/+hxTsH5ViHgjszofZP
 uxKl4zLNgOwg==
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="333492133"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 02:21:57 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  7 Aug 2020 11:19:56 +0200
Message-Id: <20200807092002.32350-11-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200807092002.32350-1-janusz.krzysztofik@linux.intel.com>
References: <20200807092002.32350-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2 10/16] tests/core_hotunplug: Skip
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
Cc: intel-gfx@lists.freedesktop.org,
 =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2luY2Ugd2Ugbm8gbG9uZ2VyIG9wZW4gYSBkZXZpY2UgRFJNIHN5c2ZzIG5vZGUsIG9ubHkgYSBQ
Q0kgb25lLCBkcml2ZXIKdW5iaW5kIG9wZXJhdGlvbnMgYXJlIG5vIGxvbmdlciBhZmZlY3RlZCBi
eSBtaXNzZWQgb3IgdW5zdWNjZXNzZnVsCnN5c2ZzIGZpbGUgY2xvc2UgYXR0ZW1wdHMuICBTa2lw
IG9ubHkgYWZmZWN0ZWQgc3VidGVzdHMgaWYgdGhhdApoYXBwZW5zLgoKdjI6IFJlYmFzZSBvbiBj
dXJyZW50IHVwc3RyZWFtIG1hc3Rlci4KClNpZ25lZC1vZmYtYnk6IEphbnVzeiBLcnp5c3p0b2Zp
ayA8amFudXN6LmtyenlzenRvZmlrQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1pY2hh
xYIgV2luaWFyc2tpIDxtaWNoYWwud2luaWFyc2tpQGludGVsLmNvbT4KLS0tCiB0ZXN0cy9jb3Jl
X2hvdHVucGx1Zy5jIHwgOSArKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMo
KyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdGVzdHMvY29yZV9ob3R1bnBsdWcuYyBi
L3Rlc3RzL2NvcmVfaG90dW5wbHVnLmMKaW5kZXggNzFhYzRkMTY5Li5iOTk4MmIzMzAgMTAwNjQ0
Ci0tLSBhL3Rlc3RzL2NvcmVfaG90dW5wbHVnLmMKKysrIGIvdGVzdHMvY29yZV9ob3R1bnBsdWcu
YwpAQCAtODIsOCArODIsOCBAQCBzdGF0aWMgdm9pZCBwcmVwYXJlKHN0cnVjdCBob3R1bnBsdWcg
KnByaXYpCiAJaWd0X2Fzc2VydF9mZChwcml2LT5mZC5zeXNmc19idXMpOwogCiAJcHJpdi0+ZmQu
c3lzZnNfZGV2ID0gbG9jYWxfY2xvc2UocHJpdi0+ZmQuc3lzZnNfZGV2KTsKLQlpZ3RfYXNzZXJ0
X2YocHJpdi0+ZmQuc3lzZnNfZGV2ID09IC0xLAotCQkgICAgICJEZXZpY2Ugc3lzZnMgbm9kZSBj
bG9zZSBmYWlsZWRcbiIpOworCWlndF93YXJuX29uX2YocHJpdi0+ZmQuc3lzZnNfZGV2ICE9IC0x
LAorCQkgICAgICAiRGV2aWNlIHN5c2ZzIG5vZGUgY2xvc2UgZmFpbGVkXG4iKTsKIH0KIAogLyog
VW5iaW5kIHRoZSBkcml2ZXIgZnJvbSB0aGUgZGV2aWNlICovCkBAIC0xMTMsNiArMTEzLDkgQEAg
c3RhdGljIHZvaWQgZHJpdmVyX2JpbmQoc3RydWN0IGhvdHVucGx1ZyAqcHJpdikKIC8qIFJlbW92
ZSAodmlydHVhbGx5IHVucGx1ZykgdGhlIGRldmljZSBmcm9tIGl0cyBidXMgKi8KIHN0YXRpYyB2
b2lkIGRldmljZV91bnBsdWcoc3RydWN0IGhvdHVucGx1ZyAqcHJpdiwgY29uc3QgY2hhciAqcHJl
Zml4KQogeworCWlndF9yZXF1aXJlX2YocHJpdi0+ZmQuc3lzZnNfZGV2ID09IC0xLAorCQkgICAg
ICAiRGV2aWNlIHN5c2ZzIG5vZGUgbm90IGNsb3NlZCBwcm9wZXJseVxuIik7CisKIAlwcml2LT5m
ZC5zeXNmc19kZXYgPSBvcGVuYXQocHJpdi0+ZmQuc3lzZnNfYnVzLCBwcml2LT5kZXZfYnVzX2Fk
ZHIsCiAJCQkJICAgIE9fRElSRUNUT1JZKTsKIAlpZ3RfYXNzZXJ0X2ZkKHByaXYtPmZkLnN5c2Zz
X2Rldik7CkBAIC0xNzEsOCArMTc0LDYgQEAgc3RhdGljIHZvaWQgcG9zdF9oZWFsdGhjaGVjayhz
dHJ1Y3QgaG90dW5wbHVnICpwcml2KQogCWlndF9hYm9ydF9vbl9mKHByaXYtPmZhaWx1cmUsICIl
c1xuIiwgcHJpdi0+ZmFpbHVyZSk7CiAKIAlpZ3RfcmVxdWlyZV9mKHByaXYtPmZkLmRybSA9PSAt
MSwgIkRldmljZSBub3QgY2xvc2VkIHByb3Blcmx5XG4iKTsKLQlpZ3RfcmVxdWlyZV9mKHByaXYt
PmZkLnN5c2ZzX2RldiA9PSAtMSwKLQkJICAgICAgIkRldmljZSBzeXNmcyBub2RlIG5vdCBjbG9z
ZWQgcHJvcGVybHlcbiIpOwogfQogCiBzdGF0aWMgdm9pZCBzZXRfZmlsdGVyX2Zyb21fZGV2aWNl
KGludCBmZCkKLS0gCjIuMjEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
