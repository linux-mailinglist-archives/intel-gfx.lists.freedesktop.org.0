Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C63DB28F08B
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Oct 2020 13:00:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BECD86EC5C;
	Thu, 15 Oct 2020 11:00:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B2016EC5D;
 Thu, 15 Oct 2020 11:00:17 +0000 (UTC)
IronPort-SDR: 1ChGFR+nyxyXd/MrtvtdxDQT2vKUhZnZBK2//xl5nKcagxFc12digTg+3O6U40MTMbV8T8urcu
 wldpwb9oyzkg==
X-IronPort-AV: E=McAfee;i="6000,8403,9774"; a="163686092"
X-IronPort-AV: E=Sophos;i="5.77,378,1596524400"; d="scan'208";a="163686092"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 04:00:16 -0700
IronPort-SDR: hDJzkSvCQdFnIJD5NZ/j9jNWYntE2yzaWUMvncgSG/5pLhY+/fphGsKIU1QlyZNjlHATFYsiC5
 5YLjq/1Xms7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,378,1596524400"; d="scan'208";a="356949682"
Received: from linux-akn.iind.intel.com ([10.223.34.148])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Oct 2020 04:00:15 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Oct 2020 16:22:53 +0530
Message-Id: <20201015105259.27934-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201015105259.27934-1-ankit.k.nautiyal@intel.com>
References: <20201015105259.27934-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 07/13] drm/dp_helper: Add support for link status
 and link recovery
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogU3dhdGkgU2hhcm1hIDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4KClRoaXMgcGF0Y2gg
YWRkcyBzdXBwb3J0IGZvciBsaW5rIHN0YXR1cyBhbmQgbGluayByZWNvdmVyeS4gVGhlcmUKYXJl
IHNwZWNpZmljIERQQ0TigJlzIGRlZmluZWQgZm9yIGxpbmsgc3RhdHVzIGNoZWNrIGFuZCByZWNv
dmVyeSBpbgpjYXNlIG9mIGFueSBpc3N1ZXMuIFBDT04gd2lsbCBjb21tdW5pY2F0ZSB0aGUgc2Ft
ZSB1c2luZyBhbiBJUlFfSFBECnRvIHNvdXJjZS4gSERNSSBzaW5rIHdvdWxkIGhhdmUgaW5kaWNh
dGVkIHRoZSBzYW1lIHRvIFBDT04gdXNpbmcKU0NEQyBpbnRlcnJ1cHQgbWVjaGFuaXNtLiBXaGls
ZSBzb3VyY2UgY2FuIGFsd2F5cyByZWFkIGZpbmFsIEhETUkKc2lua+KAmXMgc3RhdHVzIHVzaW5n
IEkyQyBvdmVyIEFVWCwgaXTigJlzIGVhc2llciBhbmQgZmFzdGVyIHRvIHJlYWQKdGhlIFBDT07i
gJlzIGFscmVhZHkgcmVhZCBIRE1JIHNpbmvigJlzIHN0YXR1cyByZWdpc3RlcnMuCgpTaWduZWQt
b2ZmLWJ5OiBTd2F0aSBTaGFybWEgPHN3YXRpMi5zaGFybWFAaW50ZWwuY29tPgpTaWduZWQtb2Zm
LWJ5OiBBbmtpdCBOYXV0aXlhbCA8YW5raXQuay5uYXV0aXlhbEBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2RybV9kcF9oZWxwZXIuYyB8IDMzICsrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKwogaW5jbHVkZS9kcm0vZHJtX2RwX2hlbHBlci5oICAgICB8IDE2ICsrKysrKysr
KysrKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgNDkgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBfaGVscGVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2Rw
X2hlbHBlci5jCmluZGV4IGRmODU4NTMzZGJmNy4uMzNhNGFjMmZiMjI1IDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vZHJtX2RwX2hlbHBlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1f
ZHBfaGVscGVyLmMKQEAgLTI4OTYsMyArMjg5NiwzNiBAQCBpbnQgZHJtX2RwX3Bjb25faGRtaV9s
aW5rX21vZGUoc3RydWN0IGRybV9kcF9hdXggKmF1eCwgdTggKmZybF90cmFpbmVkX21hc2spCiAJ
cmV0dXJuIG1vZGU7CiB9CiBFWFBPUlRfU1lNQk9MKGRybV9kcF9wY29uX2hkbWlfbGlua19tb2Rl
KTsKKwordm9pZCBkcm1fZHBfcGNvbl9oZG1pX2ZybF9saW5rX2Vycm9yX2NvdW50KHN0cnVjdCBk
cm1fZHBfYXV4ICphdXgsCisJCQkJCSAgIHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3Ip
Cit7CisJdTggYnVmLCBlcnJvcl9jb3VudDsKKwlpbnQgaSwgbnVtX2Vycm9yOworCXN0cnVjdCBk
cm1faGRtaV9pbmZvICpoZG1pID0gJmNvbm5lY3Rvci0+ZGlzcGxheV9pbmZvLmhkbWk7CisKKwlm
b3IgKGkgPSAwOyBpIDwgaGRtaS0+bWF4X2xhbmVzOyBpKyspCisJeworCQlpZiAoZHJtX2RwX2Rw
Y2RfcmVhZGIoYXV4LCBEUF9QQ09OX0hETUlfRVJST1JfU1RBVFVTX0xOMCArIGkgLCAmYnVmKSA8
IDApCisJCQlyZXR1cm47CisKKwkJZXJyb3JfY291bnQgPSBidWYgJiBEUF9QQ09OX0hETUlfRVJS
T1JfQ09VTlRfTUFTSzsKKworCXN3aXRjaChlcnJvcl9jb3VudCkgeworCWNhc2UgRFBfUENPTl9I
RE1JX0VSUk9SX0NPVU5UX0hVTkRSRURfUExVUzoKKwkJbnVtX2Vycm9yID0gMTAwOworCQlicmVh
azsKKwljYXNlIERQX1BDT05fSERNSV9FUlJPUl9DT1VOVF9URU5fUExVUzoKKwkJbnVtX2Vycm9y
ID0gMTA7CisJCWJyZWFrOworCWNhc2UgRFBfUENPTl9IRE1JX0VSUk9SX0NPVU5UX1RIUkVFX1BM
VVM6CisJCW51bV9lcnJvciA9IDM7CisJCWJyZWFrOworCWRlZmF1bHQ6CisJCW51bV9lcnJvciA9
IDA7CisJfQorCisJCURSTV9FUlJPUigiTW9yZSB0aGFuICVkIGVycm9ycyBzaW5jZSB0aGUgbGFz
dCByZWFkIGZvciBsYW5lICVkIiwgbnVtX2Vycm9yLCBpKTsKKwl9Cit9CitFWFBPUlRfU1lNQk9M
KGRybV9kcF9wY29uX2hkbWlfZnJsX2xpbmtfZXJyb3JfY291bnQpOwpkaWZmIC0tZ2l0IGEvaW5j
bHVkZS9kcm0vZHJtX2RwX2hlbHBlci5oIGIvaW5jbHVkZS9kcm0vZHJtX2RwX2hlbHBlci5oCmlu
ZGV4IGQ2Zjc5YjJkMTI4Ny4uZWIyNmM4NmRjOGNhIDEwMDY0NAotLS0gYS9pbmNsdWRlL2RybS9k
cm1fZHBfaGVscGVyLmgKKysrIGIvaW5jbHVkZS9kcm0vZHJtX2RwX2hlbHBlci5oCkBAIC05NDYs
NiArOTQ2LDExIEBAIHN0cnVjdCBkcm1fZGV2aWNlOwogIyBkZWZpbmUgRFBfQ0VDX0lSUSAgICAg
ICAgICAgICAgICAgICAgICAgICAgKDEgPDwgMikKIAogI2RlZmluZSBEUF9MSU5LX1NFUlZJQ0Vf
SVJRX1ZFQ1RPUl9FU0kwICAgICAweDIwMDUgICAvKiAxLjIgKi8KKyMgZGVmaW5lIFJYX0NBUF9D
SEFOR0VEICAgICAgICAgICAgICAgICAgICAgICgxIDw8IDApCisjIGRlZmluZSBMSU5LX1NUQVRV
U19DSEFOR0VEICAgICAgICAgICAgICAgICAoMSA8PCAxKQorIyBkZWZpbmUgU1RSRUFNX1NUQVRV
U19DSEFOR0VEICAgICAgICAgICAgICAgKDEgPDwgMikKKyMgZGVmaW5lIEhETUlfTElOS19TVEFU
VVNfQ0hBTkdFRCAgICAgICAgICAgICgxIDw8IDMpCisjIGRlZmluZSBDT05ORUNURURfT0ZGX0VO
VFJZX1JFUVVFU1RFRCAgICAgICAoMSA8PCA0KQogCiAjZGVmaW5lIERQX1BTUl9FUlJPUl9TVEFU
VVMgICAgICAgICAgICAgICAgIDB4MjAwNiAgLyogWFhYIDEuMj8gKi8KICMgZGVmaW5lIERQX1BT
Ul9MSU5LX0NSQ19FUlJPUiAgICAgICAgICAgICAgKDEgPDwgMCkKQEAgLTExMzAsNiArMTEzNSwx
NiBAQCBzdHJ1Y3QgZHJtX2RldmljZTsKICNkZWZpbmUgRFBfUFJPVE9DT0xfQ09OVkVSVEVSX0NP
TlRST0xfMgkJMHgzMDUyIC8qIERQIDEuMyAqLwogIyBkZWZpbmUgRFBfQ09OVkVSU0lPTl9UT19Z
Q0JDUjQyMl9FTkFCTEUJKDEgPDwgMCkgLyogRFAgMS4zICovCiAKKy8qIFBDT04gRG93bnN0cmVh
bSBIRE1JIEVSUk9SIFN0YXR1cyBwZXIgTGFuZSAqLworI2RlZmluZSBEUF9QQ09OX0hETUlfRVJS
T1JfU1RBVFVTX0xOMCAgICAgICAgICAweDMwMzcKKyNkZWZpbmUgRFBfUENPTl9IRE1JX0VSUk9S
X1NUQVRVU19MTjEgICAgICAgICAgMHgzMDM4CisjZGVmaW5lIERQX1BDT05fSERNSV9FUlJPUl9T
VEFUVVNfTE4yICAgICAgICAgIDB4MzAzOQorI2RlZmluZSBEUF9QQ09OX0hETUlfRVJST1JfU1RB
VFVTX0xOMyAgICAgICAgICAweDMwM0EKKyMgZGVmaW5lIERQX1BDT05fSERNSV9FUlJPUl9DT1VO
VF9NQVNLICAgICAgICAgKDB4NyA8PCAwKQorIyBkZWZpbmUgRFBfUENPTl9IRE1JX0VSUk9SX0NP
VU5UX1RIUkVFX1BMVVMgICAoMSA8PCAwKQorIyBkZWZpbmUgRFBfUENPTl9IRE1JX0VSUk9SX0NP
VU5UX1RFTl9QTFVTICAgICAoMSA8PCAxKQorIyBkZWZpbmUgRFBfUENPTl9IRE1JX0VSUk9SX0NP
VU5UX0hVTkRSRURfUExVUyAoMSA8PCAyKQorCiAvKiBIRENQIDEuMyBhbmQgSERDUCAyLjIgKi8K
ICNkZWZpbmUgRFBfQVVYX0hEQ1BfQktTVgkJMHg2ODAwMAogI2RlZmluZSBEUF9BVVhfSERDUF9S
SV9QUklNRQkJMHg2ODAwNQpAQCAtMjA0Nyw0ICsyMDYyLDUgQEAgaW50IGRybV9kcF9wY29uX2Zy
bF9lbmFibGUoc3RydWN0IGRybV9kcF9hdXggKmF1eCk7CiAKIGJvb2wgZHJtX2RwX3Bjb25faGRt
aV9saW5rX2FjdGl2ZShzdHJ1Y3QgZHJtX2RwX2F1eCAqYXV4KTsKIGludCBkcm1fZHBfcGNvbl9o
ZG1pX2xpbmtfbW9kZShzdHJ1Y3QgZHJtX2RwX2F1eCAqYXV4LCB1OCAqZnJsX3RyYWluZWRfbWFz
ayk7Cit2b2lkIGRybV9kcF9wY29uX2hkbWlfZnJsX2xpbmtfZXJyb3JfY291bnQoc3RydWN0IGRy
bV9kcF9hdXggKmF1eCwgc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3Rvcik7CiAjZW5kaWYg
LyogX0RSTV9EUF9IRUxQRVJfSF8gKi8KLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
