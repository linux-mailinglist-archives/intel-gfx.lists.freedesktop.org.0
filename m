Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6100A265DE5
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Sep 2020 12:31:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B7CE89A83;
	Fri, 11 Sep 2020 10:31:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96CB36E9FF;
 Fri, 11 Sep 2020 10:31:11 +0000 (UTC)
IronPort-SDR: deHy9dE8fvqaKwjg0jCw8zyVyJInYZR9aRTqxYCCqaJidrW1xmwAwcFDkoKVHYXAh8/Z7Vm+6e
 1jKYZC155NzQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9740"; a="146463247"
X-IronPort-AV: E=Sophos;i="5.76,414,1592895600"; d="scan'208";a="146463247"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 03:31:11 -0700
IronPort-SDR: RNocfXiY+8D89xZDkh17vNJui1CJuGyWjDsZv58Ppg5lLBTC3mhccDr8hUDjZjy2NQvvev//WM
 vDP2lxAEmNcA==
X-IronPort-AV: E=Sophos;i="5.76,414,1592895600"; d="scan'208";a="334474766"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 03:31:09 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 11 Sep 2020 12:30:25 +0200
Message-Id: <20200911103039.4574-11-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200911103039.4574-1-janusz.krzysztofik@linux.intel.com>
References: <20200911103039.4574-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v6 10/24] tests/core_hotunplug: Skip
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
Lgp2MzogUmVmcmVzaC4KdjQ6IFJlZnJlc2guCgpTaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6
dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBN
aWNoYcWCIFdpbmlhcnNraSA8bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+Ci0tLQogdGVzdHMv
Y29yZV9ob3R1bnBsdWcuYyB8IDUgKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdGVzdHMvY29yZV9ob3R1bnBsdWcuYyBi
L3Rlc3RzL2NvcmVfaG90dW5wbHVnLmMKaW5kZXggN2Y1ZTgwMGM2Li5kNTE1MjYwMjkgMTAwNjQ0
Ci0tLSBhL3Rlc3RzL2NvcmVfaG90dW5wbHVnLmMKKysrIGIvdGVzdHMvY29yZV9ob3R1bnBsdWcu
YwpAQCAtMTExLDcgKzExMSw2IEBAIHN0YXRpYyB2b2lkIHByZXBhcmUoc3RydWN0IGhvdHVucGx1
ZyAqcHJpdikKIAlpZ3RfYXNzZXJ0X2ZkKHByaXYtPmZkLnN5c2ZzX2J1cyk7CiAKIAlwcml2LT5m
ZC5zeXNmc19kZXYgPSBjbG9zZV9zeXNmcyhwcml2LT5mZC5zeXNmc19kZXYpOwotCWlndF9hc3Nl
cnRfZXEocHJpdi0+ZmQuc3lzZnNfZGV2LCAtMSk7CiB9CiAKIC8qIFVuYmluZCB0aGUgZHJpdmVy
IGZyb20gdGhlIGRldmljZSAqLwpAQCAtMTQxLDcgKzE0MCw4IEBAIHN0YXRpYyB2b2lkIGRyaXZl
cl9iaW5kKHN0cnVjdCBob3R1bnBsdWcgKnByaXYpCiAvKiBSZW1vdmUgKHZpcnR1YWxseSB1bnBs
dWcpIHRoZSBkZXZpY2UgZnJvbSBpdHMgYnVzICovCiBzdGF0aWMgdm9pZCBkZXZpY2VfdW5wbHVn
KHN0cnVjdCBob3R1bnBsdWcgKnByaXYsIGNvbnN0IGNoYXIgKnByZWZpeCkKIHsKLQlpZ3RfYXNz
ZXJ0X2VxKHByaXYtPmZkLnN5c2ZzX2RldiwgLTEpOworCWlndF9yZXF1aXJlKHByaXYtPmZkLnN5
c2ZzX2RldiA9PSAtMSk7CisKIAlwcml2LT5mZC5zeXNmc19kZXYgPSBvcGVuYXQocHJpdi0+ZmQu
c3lzZnNfYnVzLCBwcml2LT5kZXZfYnVzX2FkZHIsCiAJCQkJICAgIE9fRElSRUNUT1JZKTsKIAlp
Z3RfYXNzZXJ0X2ZkKHByaXYtPmZkLnN5c2ZzX2Rldik7CkBAIC0yMDAsNyArMjAwLDYgQEAgc3Rh
dGljIHZvaWQgcG9zdF9oZWFsdGhjaGVjayhzdHJ1Y3QgaG90dW5wbHVnICpwcml2KQogCWlndF9h
Ym9ydF9vbl9mKHByaXYtPmZhaWx1cmUsICIlc1xuIiwgcHJpdi0+ZmFpbHVyZSk7CiAKIAlpZ3Rf
cmVxdWlyZShwcml2LT5mZC5kcm0gPT0gLTEpOwotCWlndF9yZXF1aXJlKHByaXYtPmZkLnN5c2Zz
X2RldiA9PSAtMSk7CiB9CiAKIHN0YXRpYyB2b2lkIHNldF9maWx0ZXJfZnJvbV9kZXZpY2UoaW50
IGZkKQotLSAKMi4yMS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
