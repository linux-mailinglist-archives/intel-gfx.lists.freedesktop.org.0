Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D9B24C100
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Aug 2020 16:53:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C58376E952;
	Thu, 20 Aug 2020 14:53:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D0056E944;
 Thu, 20 Aug 2020 14:53:07 +0000 (UTC)
IronPort-SDR: hD9kDr+Z6VH3IpHu5Q2xmygLEq8MgxmPZFuJehOhY4qRT7LjFIajq15bDBNkMjZlw1UdNBmFeP
 084z5brX3LqQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9718"; a="240136212"
X-IronPort-AV: E=Sophos;i="5.76,333,1592895600"; d="scan'208";a="240136212"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2020 07:53:06 -0700
IronPort-SDR: M0VcYyoZ19v+Ti3LHvWXieJz9+iq5ldZY2LRVSmfy/cBXU7gL3d13bCQafRMshCs/y9cHyuVZC
 JDI3rrmfc0+g==
X-IronPort-AV: E=Sophos;i="5.76,333,1592895600"; d="scan'208";a="472679740"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2020 07:53:04 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 20 Aug 2020 16:52:06 +0200
Message-Id: <20200820145215.13238-11-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200820145215.13238-1-janusz.krzysztofik@linux.intel.com>
References: <20200820145215.13238-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v3 10/19] tests/core_hotunplug: Skip
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
IG9ubHkgYWZmZWN0ZWQgc3VidGVzdHMgaWYgdGhhdApoYXBwZW5zLgoKdjM6IFJlZnJlc2guCgpT
aWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BsaW51
eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBNaWNoYcWCIFdpbmlhcnNraSA8bWljaGFsLndpbmlh
cnNraUBpbnRlbC5jb20+Ci0tLQogdGVzdHMvY29yZV9ob3R1bnBsdWcuYyB8IDQgKystLQogMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS90ZXN0cy9jb3JlX2hvdHVucGx1Zy5jIGIvdGVzdHMvY29yZV9ob3R1bnBsdWcuYwppbmRleCA4
NDlhNzc0ZmYuLjYwMmE5MWNmOCAxMDA2NDQKLS0tIGEvdGVzdHMvY29yZV9ob3R1bnBsdWcuYwor
KysgYi90ZXN0cy9jb3JlX2hvdHVucGx1Zy5jCkBAIC0xMDksNyArMTA5LDYgQEAgc3RhdGljIHZv
aWQgcHJlcGFyZShzdHJ1Y3QgaG90dW5wbHVnICpwcml2KQogCWlndF9hc3NlcnRfZmQocHJpdi0+
ZmQuc3lzZnNfYnVzKTsKIAogCXByaXYtPmZkLnN5c2ZzX2RldiA9IGNsb3NlX3N5c2ZzKHByaXYt
PmZkLnN5c2ZzX2Rldik7Ci0JaWd0X2Fzc2VydF9lcShwcml2LT5mZC5zeXNmc19kZXYsIC0xKTsK
IH0KIAogLyogVW5iaW5kIHRoZSBkcml2ZXIgZnJvbSB0aGUgZGV2aWNlICovCkBAIC0xMzksNiAr
MTM4LDggQEAgc3RhdGljIHZvaWQgZHJpdmVyX2JpbmQoc3RydWN0IGhvdHVucGx1ZyAqcHJpdikK
IC8qIFJlbW92ZSAodmlydHVhbGx5IHVucGx1ZykgdGhlIGRldmljZSBmcm9tIGl0cyBidXMgKi8K
IHN0YXRpYyB2b2lkIGRldmljZV91bnBsdWcoc3RydWN0IGhvdHVucGx1ZyAqcHJpdiwgY29uc3Qg
Y2hhciAqcHJlZml4KQogeworCWlndF9yZXF1aXJlKHByaXYtPmZkLnN5c2ZzX2RldiA9PSAtMSk7
CisKIAlwcml2LT5mZC5zeXNmc19kZXYgPSBvcGVuYXQocHJpdi0+ZmQuc3lzZnNfYnVzLCBwcml2
LT5kZXZfYnVzX2FkZHIsCiAJCQkJICAgIE9fRElSRUNUT1JZKTsKIAlpZ3RfYXNzZXJ0X2ZkKHBy
aXYtPmZkLnN5c2ZzX2Rldik7CkBAIC0xOTQsNyArMTk1LDYgQEAgc3RhdGljIHZvaWQgcG9zdF9o
ZWFsdGhjaGVjayhzdHJ1Y3QgaG90dW5wbHVnICpwcml2KQogCWlndF9hYm9ydF9vbl9mKHByaXYt
PmZhaWx1cmUsICIlc1xuIiwgcHJpdi0+ZmFpbHVyZSk7CiAKIAlpZ3RfcmVxdWlyZShwcml2LT5m
ZC5kcm0gPT0gLTEpOwotCWlndF9yZXF1aXJlKHByaXYtPmZkLnN5c2ZzX2RldiA9PSAtMSk7CiB9
CiAKIHN0YXRpYyB2b2lkIHNldF9maWx0ZXJfZnJvbV9kZXZpY2UoaW50IGZkKQotLSAKMi4yMS4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
