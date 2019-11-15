Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67FA6FE33E
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 17:50:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE4366E58B;
	Fri, 15 Nov 2019 16:50:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D2186E58B
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 16:50:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 08:50:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,308,1569308400"; d="scan'208";a="203625414"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.135])
 by fmsmga007.fm.intel.com with ESMTP; 15 Nov 2019 08:50:30 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Nov 2019 08:51:31 -0800
Message-Id: <20191115165132.9472-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191115165132.9472-1-matthew.d.roper@intel.com>
References: <20191115165132.9472-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI v5 1/2] drm/i915/vbt: Parse panel options
 separately from timing data
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TmV3ZXIgVkJUIHZlcnNpb25zIHdpbGwgYWRkIGFuIGFsdGVybmF0ZSB3YXkgdG8gcmVhZCBwYW5l
bCBEVEQKaW5mb3JtYXRpb24sIHNvIGxldCdzIHNwbGl0IHBhcnNpbmcgb2YgdGhlIGdlbmVyYWwg
cGFuZWwgaW5mb3JtYXRpb24KZnJvbSB0aGUgdGltaW5nIGRhdGEgaW4gcHJlcGFyYXRpb24uCgpD
YzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0
dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IEplc3NlIEJh
cm5lcyA8anNiYXJuZXNAZ29vZ2xlLmNvbT4KUmV2aWV3ZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5p
Lm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9iaW9zLmMgfCAyNyArKysrKysrKysrKysrKystLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE4
IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Jpb3MuYwppbmRleCA2ZDdiMWE4M2NiMDcuLmQxM2NlMGI3ZGI4YiAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKQEAgLTIwOCwxNyArMjA4LDEy
IEBAIGdldF9sdmRzX2ZwX3RpbWluZyhjb25zdCBzdHJ1Y3QgYmRiX2hlYWRlciAqYmRiLAogCXJl
dHVybiAoY29uc3Qgc3RydWN0IGx2ZHNfZnBfdGltaW5nICopKChjb25zdCB1OCAqKWJkYiArIG9m
cyk7CiB9CiAKLS8qIFRyeSB0byBmaW5kIGludGVncmF0ZWQgcGFuZWwgZGF0YSAqLworLyogUGFy
c2UgZ2VuZXJhbCBwYW5lbCBvcHRpb25zICovCiBzdGF0aWMgdm9pZAotcGFyc2VfbGZwX3BhbmVs
X2RhdGEoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAotCQkgICAgIGNvbnN0IHN0
cnVjdCBiZGJfaGVhZGVyICpiZGIpCitwYXJzZV9wYW5lbF9vcHRpb25zKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwKKwkJICAgIGNvbnN0IHN0cnVjdCBiZGJfaGVhZGVyICpiZGIp
CiB7CiAJY29uc3Qgc3RydWN0IGJkYl9sdmRzX29wdGlvbnMgKmx2ZHNfb3B0aW9uczsKLQljb25z
dCBzdHJ1Y3QgYmRiX2x2ZHNfbGZwX2RhdGEgKmx2ZHNfbGZwX2RhdGE7Ci0JY29uc3Qgc3RydWN0
IGJkYl9sdmRzX2xmcF9kYXRhX3B0cnMgKmx2ZHNfbGZwX2RhdGFfcHRyczsKLQljb25zdCBzdHJ1
Y3QgbHZkc19kdm9fdGltaW5nICpwYW5lbF9kdm9fdGltaW5nOwotCWNvbnN0IHN0cnVjdCBsdmRz
X2ZwX3RpbWluZyAqZnBfdGltaW5nOwotCXN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICpwYW5lbF9m
aXhlZF9tb2RlOwogCWludCBwYW5lbF90eXBlOwogCWludCBkcnJzX21vZGU7CiAJaW50IHJldDsK
QEAgLTI2Nyw2ICsyNjIsMTkgQEAgcGFyc2VfbGZwX3BhbmVsX2RhdGEoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2LAogCQlEUk1fREVCVUdfS01TKCJEUlJTIG5vdCBzdXBwb3J0ZWQg
KFZCVCBpbnB1dClcbiIpOwogCQlicmVhazsKIAl9Cit9CisKKy8qIFRyeSB0byBmaW5kIGludGVn
cmF0ZWQgcGFuZWwgdGltaW5nIGRhdGEgKi8KK3N0YXRpYyB2b2lkCitwYXJzZV9sZnBfcGFuZWxf
ZHRkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKKwkJICAgIGNvbnN0IHN0cnVj
dCBiZGJfaGVhZGVyICpiZGIpCit7CisJY29uc3Qgc3RydWN0IGJkYl9sdmRzX2xmcF9kYXRhICps
dmRzX2xmcF9kYXRhOworCWNvbnN0IHN0cnVjdCBiZGJfbHZkc19sZnBfZGF0YV9wdHJzICpsdmRz
X2xmcF9kYXRhX3B0cnM7CisJY29uc3Qgc3RydWN0IGx2ZHNfZHZvX3RpbWluZyAqcGFuZWxfZHZv
X3RpbWluZzsKKwljb25zdCBzdHJ1Y3QgbHZkc19mcF90aW1pbmcgKmZwX3RpbWluZzsKKwlzdHJ1
Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqcGFuZWxfZml4ZWRfbW9kZTsKKwlpbnQgcGFuZWxfdHlwZSA9
IGRldl9wcml2LT52YnQucGFuZWxfdHlwZTsKIAogCWx2ZHNfbGZwX2RhdGEgPSBmaW5kX3NlY3Rp
b24oYmRiLCBCREJfTFZEU19MRlBfREFUQSk7CiAJaWYgKCFsdmRzX2xmcF9kYXRhKQpAQCAtMTg2
OCw3ICsxODc2LDggQEAgdm9pZCBpbnRlbF9iaW9zX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2KQogCS8qIEdyYWIgdXNlZnVsIGdlbmVyYWwgZGVmaW5pdGlvbnMgKi8KIAlw
YXJzZV9nZW5lcmFsX2ZlYXR1cmVzKGRldl9wcml2LCBiZGIpOwogCXBhcnNlX2dlbmVyYWxfZGVm
aW5pdGlvbnMoZGV2X3ByaXYsIGJkYik7Ci0JcGFyc2VfbGZwX3BhbmVsX2RhdGEoZGV2X3ByaXYs
IGJkYik7CisJcGFyc2VfcGFuZWxfb3B0aW9ucyhkZXZfcHJpdiwgYmRiKTsKKwlwYXJzZV9sZnBf
cGFuZWxfZHRkKGRldl9wcml2LCBiZGIpOwogCXBhcnNlX2xmcF9iYWNrbGlnaHQoZGV2X3ByaXYs
IGJkYik7CiAJcGFyc2Vfc2R2b19wYW5lbF9kYXRhKGRldl9wcml2LCBiZGIpOwogCXBhcnNlX2Ry
aXZlcl9mZWF0dXJlcyhkZXZfcHJpdiwgYmRiKTsKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
