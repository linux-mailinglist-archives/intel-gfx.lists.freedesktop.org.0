Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 072A2265DE7
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Sep 2020 12:31:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A8A86E9FE;
	Fri, 11 Sep 2020 10:31:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3CD86E9FE;
 Fri, 11 Sep 2020 10:31:15 +0000 (UTC)
IronPort-SDR: c1aTm5vxka+pCL+fWYvpXBxDjBSJedoz6kLAT1uVULhni792t77enoqvOWgTZzVOw04axUt7rf
 rX/N3uCgw3CQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9740"; a="146463282"
X-IronPort-AV: E=Sophos;i="5.76,414,1592895600"; d="scan'208";a="146463282"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 03:31:15 -0700
IronPort-SDR: Vy73VIlzL/JeH1BbWO8vtlpf/gABiaIOoJtTfDgYOXbP9i6AtulmBxd/IZZabSQq4Bdn28ro0H
 ayUFZ4gWaWNg==
X-IronPort-AV: E=Sophos;i="5.76,414,1592895600"; d="scan'208";a="334474789"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 03:31:13 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 11 Sep 2020 12:30:27 +0200
Message-Id: <20200911103039.4574-13-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200911103039.4574-1-janusz.krzysztofik@linux.intel.com>
References: <20200911103039.4574-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v6 12/24] tests/core_hotunplug: Fail
 subtests on device close errors
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

U2luY2UgaGVhbHRoIGNoZWNrcyBhcmUgbm93IHJ1biBmcm9tIGZvbGxvdy11cCBmaXh0dXJlIHNl
Y3Rpb25zLCBpdCBpcwpzYWZlIHRvIGZhaWwgc3VidGVzdHMgd2l0aG91dCB0aGUgbmVlZCB0byBh
Ym9ydCB0aGUgdGVzdCBleGVjdXRpb24uICBEbwp0aGF0IG9uIGRldmljZSBjbG9zZSBlcnJvcnMg
aW5zdGVhZCBvZiBqdXN0IGVtaXR0aW5nIHdhcm5pbmdzLgoKdjI6IFJlYmFzZSBvbmx5Lgp2Mzog
UmVmcmVzaC4KdjQ6IFJlZnJlc2guCgpTaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsg
PGphbnVzei5rcnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBNaWNoYcWC
IFdpbmlhcnNraSA8bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+Ci0tLQogdGVzdHMvY29yZV9o
b3R1bnBsdWcuYyB8IDMgKysrCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvdGVzdHMvY29yZV9ob3R1bnBsdWcuYyBiL3Rlc3RzL2NvcmVfaG90dW5wbHVnLmMK
aW5kZXggN2ZjNmRmNjg4Li5kMzFmYWYyMTUgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2NvcmVfaG90dW5w
bHVnLmMKKysrIGIvdGVzdHMvY29yZV9ob3R1bnBsdWcuYwpAQCAtMTU4LDYgKzE1OCw3IEBAIHN0
YXRpYyB2b2lkIGRldmljZV91bnBsdWcoc3RydWN0IGhvdHVucGx1ZyAqcHJpdiwgY29uc3QgY2hh
ciAqcHJlZml4KQogCWlndF9yZXNldF90aW1lb3V0KCk7CiAKIAlwcml2LT5mZC5zeXNmc19kZXYg
PSBjbG9zZV9zeXNmcyhwcml2LT5mZC5zeXNmc19kZXYpOworCWlndF9hc3NlcnRfZXEocHJpdi0+
ZmQuc3lzZnNfZGV2LCAtMSk7CiB9CiAKIC8qIFJlLWRpc2NvdmVyIHRoZSBkZXZpY2UgYnkgcmVz
Y2FubmluZyBpdHMgYnVzICovCkBAIC0yNzksNiArMjgwLDcgQEAgc3RhdGljIHZvaWQgaG90dW5i
aW5kX2xhdGVjbG9zZShzdHJ1Y3QgaG90dW5wbHVnICpwcml2KQogCWRyaXZlcl9iaW5kKHByaXYp
OwogCiAJcHJpdi0+ZmQuZHJtID0gY2xvc2VfZGV2aWNlKHByaXYtPmZkLmRybSwgImxhdGUgIiwg
InVuYm91bmQgIik7CisJaWd0X2Fzc2VydF9lcShwcml2LT5mZC5kcm0sIC0xKTsKIAogCWhlYWx0
aGNoZWNrKHByaXYpOwogfQpAQCAtMjkzLDYgKzI5NSw3IEBAIHN0YXRpYyB2b2lkIGhvdHVucGx1
Z19sYXRlY2xvc2Uoc3RydWN0IGhvdHVucGx1ZyAqcHJpdikKIAlidXNfcmVzY2FuKHByaXYpOwog
CiAJcHJpdi0+ZmQuZHJtID0gY2xvc2VfZGV2aWNlKHByaXYtPmZkLmRybSwgImxhdGUgIiwgInJl
bW92ZWQgIik7CisJaWd0X2Fzc2VydF9lcShwcml2LT5mZC5kcm0sIC0xKTsKIAogCWhlYWx0aGNo
ZWNrKHByaXYpOwogfQotLSAKMi4yMS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
