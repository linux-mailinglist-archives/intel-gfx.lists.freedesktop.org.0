Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FCBA23EA3A
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 11:22:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 359586E990;
	Fri,  7 Aug 2020 09:22:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3FE56E9A2;
 Fri,  7 Aug 2020 09:22:05 +0000 (UTC)
IronPort-SDR: R47qZmtaOENKpIKAdSdxpmicamiF7Z8h2Np4PHrMYYwxhSM2HHNyNNvNDRkoTWWNb3DmfbXr/N
 E9xSpbh5aXjQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="171106941"
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="171106941"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 02:22:05 -0700
IronPort-SDR: 4Gv9oreMlteAmQUlhXWTDutsHQ9nJ0V11IMkAntuvxGLogyXjd1yJ8PLDBl7fn8NS/vhDZNE9k
 ntsgVWWitM0Q==
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="333492173"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 02:22:03 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  7 Aug 2020 11:19:59 +0200
Message-Id: <20200807092002.32350-14-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200807092002.32350-1-janusz.krzysztofik@linux.intel.com>
References: <20200807092002.32350-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2 13/16] tests/core_hotunplug: Process
 return values of sysfs operations
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

UmV0dXJuIHZhbHVlcyBvZiBkcml2ZXIgYmluZC91bmJpbmQgLyBkZXZpY2UgcmVtb3ZlL3JlY292
ZXIgc3lzZnMKb3BlcmF0aW9ucyBhcmUgbm93IGlnbm9yZWQuICBBc3NlcnQgdGhlaXIgY29ycmVj
dG5lc3MuCgp2MjogQWRkIHRyYWlsaW5nIG5ld2xpbmVzIG1pc3NpbmcgZnJvbSBpZ3RfYXNzZXJ0
IG1lc3NhZ2VzLAogIC0gcmViYXNlIG9uIGN1cnJlbnQgdXBzdHJlYW0gbWFzdGVyLgoKU2lnbmVk
LW9mZi1ieTogSmFudXN6IEtyenlzenRvZmlrIDxqYW51c3oua3J6eXN6dG9maWtAbGludXguaW50
ZWwuY29tPgpSZXZpZXdlZC1ieTogTWljaGHFgiBXaW5pYXJza2kgPG1pY2hhbC53aW5pYXJza2lA
aW50ZWwuY29tPgotLS0KIHRlc3RzL2NvcmVfaG90dW5wbHVnLmMgfCAxNCArKysrKysrKysrLS0t
LQogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvdGVzdHMvY29yZV9ob3R1bnBsdWcuYyBiL3Rlc3RzL2NvcmVfaG90dW5wbHVnLmMK
aW5kZXggYTQ5MDJlYmEyLi40OGFmZmNlOWIgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2NvcmVfaG90dW5w
bHVnLmMKKysrIGIvdGVzdHMvY29yZV9ob3R1bnBsdWcuYwpAQCAtOTUsNyArOTUsOSBAQCBzdGF0
aWMgdm9pZCBkcml2ZXJfdW5iaW5kKHN0cnVjdCBob3R1bnBsdWcgKnByaXYsIGNvbnN0IGNoYXIg
KnByZWZpeCkKIAlpZ3RfZGVidWcoIiVzdW5iaW5kaW5nIHRoZSBkcml2ZXIgZnJvbSB0aGUgZGV2
aWNlXG4iLCBwcmVmaXgpOwogCiAJaWd0X3NldF90aW1lb3V0KDYwLCAiRHJpdmVyIHVuYmluZCB0
aW1lb3V0ISIpOwotCWlndF9zeXNmc19zZXQocHJpdi0+ZmQuc3lzZnNfZHJ2LCAidW5iaW5kIiwg
cHJpdi0+ZGV2X2J1c19hZGRyKTsKKwlpZ3RfYXNzZXJ0X2YoaWd0X3N5c2ZzX3NldChwcml2LT5m
ZC5zeXNmc19kcnYsICJ1bmJpbmQiLAorCQkJCSAgIHByaXYtPmRldl9idXNfYWRkciksCisJCSAg
ICAgIkRyaXZlciB1bmJpbmQgZmFpbHVyZSFcbiIpOwogCWlndF9yZXNldF90aW1lb3V0KCk7CiB9
CiAKQEAgLTEwNSw3ICsxMDcsOSBAQCBzdGF0aWMgdm9pZCBkcml2ZXJfYmluZChzdHJ1Y3QgaG90
dW5wbHVnICpwcml2KQogCWlndF9kZWJ1ZygicmViaW5kaW5nIHRoZSBkcml2ZXIgdG8gdGhlIGRl
dmljZVxuIik7CiAKIAlpZ3Rfc2V0X3RpbWVvdXQoNjAsICJEcml2ZXIgcmUtYmluZCB0aW1lb3V0
ISIpOwotCWlndF9zeXNmc19zZXQocHJpdi0+ZmQuc3lzZnNfZHJ2LCAiYmluZCIsIHByaXYtPmRl
dl9idXNfYWRkcik7CisJaWd0X2Fzc2VydF9mKGlndF9zeXNmc19zZXQocHJpdi0+ZmQuc3lzZnNf
ZHJ2LCAiYmluZCIsCisJCQkJICAgcHJpdi0+ZGV2X2J1c19hZGRyKSwKKwkJICAgICAiRHJpdmVy
IHJlLWJpbmQgZmFpbHVyZVxuISIpOwogCWlndF9yZXNldF90aW1lb3V0KCk7CiB9CiAKQEAgLTEy
Miw3ICsxMjYsOCBAQCBzdGF0aWMgdm9pZCBkZXZpY2VfdW5wbHVnKHN0cnVjdCBob3R1bnBsdWcg
KnByaXYsIGNvbnN0IGNoYXIgKnByZWZpeCkKIAlpZ3RfZGVidWcoIiVzdW5wbHVnZ2luZyB0aGUg
ZGV2aWNlXG4iLCBwcmVmaXgpOwogCiAJaWd0X3NldF90aW1lb3V0KDYwLCAiRGV2aWNlIHVucGx1
ZyB0aW1lb3V0ISIpOwotCWlndF9zeXNmc19zZXQocHJpdi0+ZmQuc3lzZnNfZGV2LCAicmVtb3Zl
IiwgIjEiKTsKKwlpZ3RfYXNzZXJ0X2YoaWd0X3N5c2ZzX3NldChwcml2LT5mZC5zeXNmc19kZXYs
ICJyZW1vdmUiLCAiMSIpLAorCQkgICAgICJEZXZpY2UgdW5wbHVnIGZhaWx1cmVcbiEiKTsKIAlp
Z3RfcmVzZXRfdGltZW91dCgpOwogCiAJcHJpdi0+ZmQuc3lzZnNfZGV2ID0gbG9jYWxfY2xvc2Uo
cHJpdi0+ZmQuc3lzZnNfZGV2KTsKQEAgLTEzNiw3ICsxNDEsOCBAQCBzdGF0aWMgdm9pZCBidXNf
cmVzY2FuKHN0cnVjdCBob3R1bnBsdWcgKnByaXYpCiAJaWd0X2RlYnVnKCJyZWNvdmVyaW5nIHRo
ZSBkZXZpY2VcbiIpOwogCiAJaWd0X3NldF90aW1lb3V0KDYwLCAiQnVzIHJlc2NhbiB0aW1lb3V0
ISIpOwotCWlndF9zeXNmc19zZXQocHJpdi0+ZmQuc3lzZnNfYnVzLCAiLi4vcmVzY2FuIiwgIjEi
KTsKKwlpZ3RfYXNzZXJ0X2YoaWd0X3N5c2ZzX3NldChwcml2LT5mZC5zeXNmc19idXMsICIuLi9y
ZXNjYW4iLCAiMSIpLAorCQkgICAgICAgIkJ1cyByZXNjYW4gZmFpbHVyZSFcbiIpOwogCWlndF9y
ZXNldF90aW1lb3V0KCk7CiB9CiAKLS0gCjIuMjEuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
