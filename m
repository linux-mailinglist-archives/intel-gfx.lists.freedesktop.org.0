Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C34723EA3B
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 11:22:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 202726E98F;
	Fri,  7 Aug 2020 09:22:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 614B16E990;
 Fri,  7 Aug 2020 09:22:07 +0000 (UTC)
IronPort-SDR: s5RgdEHG0Jfq7pzDGx8AweYPw71CeudLO+AmDHSz+cIv5QImIQdUmwnxXd/O0XKU+4FdcwnAbR
 CGqItRSVflvw==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="171106950"
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="171106950"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 02:22:06 -0700
IronPort-SDR: nlFdy6dj93Wq2We3gsp/tYsgRc9EUkgU+0koAL9TePmdTYrB0C3Al3e7g23bH0Ouca6XLLQVPO
 fXGsoUOENTNQ==
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="333492189"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 02:22:05 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  7 Aug 2020 11:20:00 +0200
Message-Id: <20200807092002.32350-15-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200807092002.32350-1-janusz.krzysztofik@linux.intel.com>
References: <20200807092002.32350-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2 14/16] tests/core_hotunplug: Assert
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
Cc: intel-gfx@lists.freedesktop.org,
 =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RG9uJ3QgcmVseSBvbiBzdWNjZXNzZnVsIHdyaXRlIHRvIHN5c2ZzIGNvbnRyb2wgZmlsZXMsIGFz
c2VydCBleGlzdGVuY2UKLyBub24tZXhpc3RlbmNlIG9mIGEgcmVzcGVjdGl2ZSBkZXZpY2Ugc3lz
ZnMgbm9kZSBhcyB3ZWxsLgoKdjI6IFJlYmFzZSBvbiBjdXJyZW50IHVwc3RyZWFtIG1hc3Rlci4K
ClNpZ25lZC1vZmYtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8amFudXN6LmtyenlzenRvZmlrQGxp
bnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IE1pY2hhxYIgV2luaWFyc2tpIDxtaWNoYWwud2lu
aWFyc2tpQGludGVsLmNvbT4KLS0tCiB0ZXN0cy9jb3JlX2hvdHVucGx1Zy5jIHwgMTQgKysrKysr
KysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEv
dGVzdHMvY29yZV9ob3R1bnBsdWcuYyBiL3Rlc3RzL2NvcmVfaG90dW5wbHVnLmMKaW5kZXggNDhh
ZmZjZTliLi5lOGQwNGY4YTcgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2NvcmVfaG90dW5wbHVnLmMKKysr
IGIvdGVzdHMvY29yZV9ob3R1bnBsdWcuYwpAQCAtOTksNiArOTksOSBAQCBzdGF0aWMgdm9pZCBk
cml2ZXJfdW5iaW5kKHN0cnVjdCBob3R1bnBsdWcgKnByaXYsIGNvbnN0IGNoYXIgKnByZWZpeCkK
IAkJCQkgICBwcml2LT5kZXZfYnVzX2FkZHIpLAogCQkgICAgICJEcml2ZXIgdW5iaW5kIGZhaWx1
cmUhXG4iKTsKIAlpZ3RfcmVzZXRfdGltZW91dCgpOworCisJaWd0X2Fzc2VydF9mKGZhY2Nlc3Nh
dChwcml2LT5mZC5zeXNmc19kcnYsIHByaXYtPmRldl9idXNfYWRkciwgRl9PSywgMCksCisJCSAg
ICAgIlVuYm91bmQgZGV2aWNlIHN0aWxsIHByZXNlbnRcbiIpOwogfQogCiAvKiBSZS1iaW5kIHRo
ZSBkcml2ZXIgdG8gdGhlIGRldmljZSAqLwpAQCAtMTExLDYgKzExNCwxMCBAQCBzdGF0aWMgdm9p
ZCBkcml2ZXJfYmluZChzdHJ1Y3QgaG90dW5wbHVnICpwcml2KQogCQkJCSAgIHByaXYtPmRldl9i
dXNfYWRkciksCiAJCSAgICAgIkRyaXZlciByZS1iaW5kIGZhaWx1cmVcbiEiKTsKIAlpZ3RfcmVz
ZXRfdGltZW91dCgpOworCisJaWd0X2ZhaWxfb25fZihmYWNjZXNzYXQocHJpdi0+ZmQuc3lzZnNf
ZHJ2LCBwcml2LT5kZXZfYnVzX2FkZHIsCisJCQkJRl9PSywgMCksCisJCSAgICAgICJSZWJvdW5k
IGRldmljZSBub3QgcHJlc2VudCFcbiIpOwogfQogCiAvKiBSZW1vdmUgKHZpcnR1YWxseSB1bnBs
dWcpIHRoZSBkZXZpY2UgZnJvbSBpdHMgYnVzICovCkBAIC0xMzMsNiArMTQwLDkgQEAgc3RhdGlj
IHZvaWQgZGV2aWNlX3VucGx1ZyhzdHJ1Y3QgaG90dW5wbHVnICpwcml2LCBjb25zdCBjaGFyICpw
cmVmaXgpCiAJcHJpdi0+ZmQuc3lzZnNfZGV2ID0gbG9jYWxfY2xvc2UocHJpdi0+ZmQuc3lzZnNf
ZGV2KTsKIAlpZ3RfYXNzZXJ0X2YocHJpdi0+ZmQuc3lzZnNfZGV2ID09IC0xLAogCQkgICAgICJE
ZXZpY2Ugc3lzZnMgbm9kZSBjbG9zZSBmYWlsZWRcbiIpOworCisJaWd0X2Fzc2VydF9mKGZhY2Nl
c3NhdChwcml2LT5mZC5zeXNmc19idXMsIHByaXYtPmRldl9idXNfYWRkciwgRl9PSywgMCksCisJ
CSAgICAgIlVucGx1Z2dlZCBkZXZpY2Ugc3RpbGwgcHJlc2VudFxuIik7CiB9CiAKIC8qIFJlLWRp
c2NvdmVyIHRoZSBkZXZpY2UgYnkgcmVzY2FubmluZyBpdHMgYnVzICovCkBAIC0xNDQsNiArMTU0
LDEwIEBAIHN0YXRpYyB2b2lkIGJ1c19yZXNjYW4oc3RydWN0IGhvdHVucGx1ZyAqcHJpdikKIAlp
Z3RfYXNzZXJ0X2YoaWd0X3N5c2ZzX3NldChwcml2LT5mZC5zeXNmc19idXMsICIuLi9yZXNjYW4i
LCAiMSIpLAogCQkgICAgICAgIkJ1cyByZXNjYW4gZmFpbHVyZSFcbiIpOwogCWlndF9yZXNldF90
aW1lb3V0KCk7CisKKwlpZ3RfZmFpbF9vbl9mKGZhY2Nlc3NhdChwcml2LT5mZC5zeXNmc19idXMs
IHByaXYtPmRldl9idXNfYWRkciwKKwkJCQlGX09LLCAwKSwKKwkJICAgICAgIkZha2VseSB1bnBs
dWdnZWQgZGV2aWNlIG5vdCByZWRpc2NvdmVyZWQhXG4iKTsKIH0KIAogc3RhdGljIHZvaWQgY2xl
YW51cChzdHJ1Y3QgaG90dW5wbHVnICpwcml2KQotLSAKMi4yMS4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
