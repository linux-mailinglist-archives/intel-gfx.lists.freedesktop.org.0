Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45414E8CED
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 17:42:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB9EA6E46E;
	Tue, 29 Oct 2019 16:42:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 707F16E46E
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 16:42:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 09:42:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,244,1569308400"; d="scan'208";a="399849642"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.135])
 by fmsmga005.fm.intel.com with ESMTP; 29 Oct 2019 09:42:41 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Oct 2019 09:43:25 -0700
Message-Id: <20191029164326.6329-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <87tv7sjacd.fsf@intel.com>
References: <87tv7sjacd.fsf@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 1/2] drm/i915/vbt: Parse panel options
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
dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyB8IDI3ICsrKysrKysrKysrKysrKy0tLS0tLS0tCiAx
IGZpbGUgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCmluZGV4IDU2Y2U5NzNhOTJhYi4uMmQy
YzlkODJlODA1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Jpb3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwpA
QCAtMjAyLDE3ICsyMDIsMTIgQEAgZ2V0X2x2ZHNfZnBfdGltaW5nKGNvbnN0IHN0cnVjdCBiZGJf
aGVhZGVyICpiZGIsCiAJcmV0dXJuIChjb25zdCBzdHJ1Y3QgbHZkc19mcF90aW1pbmcgKikoKGNv
bnN0IHU4ICopYmRiICsgb2ZzKTsKIH0KIAotLyogVHJ5IHRvIGZpbmQgaW50ZWdyYXRlZCBwYW5l
bCBkYXRhICovCisvKiBQYXJzZSBnZW5lcmFsIHBhbmVsIG9wdGlvbnMgKi8KIHN0YXRpYyB2b2lk
Ci1wYXJzZV9sZnBfcGFuZWxfZGF0YShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
Ci0JCSAgICAgY29uc3Qgc3RydWN0IGJkYl9oZWFkZXIgKmJkYikKK3BhcnNlX3BhbmVsX29wdGlv
bnMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAorCQkgICAgY29uc3Qgc3RydWN0
IGJkYl9oZWFkZXIgKmJkYikKIHsKIAljb25zdCBzdHJ1Y3QgYmRiX2x2ZHNfb3B0aW9ucyAqbHZk
c19vcHRpb25zOwotCWNvbnN0IHN0cnVjdCBiZGJfbHZkc19sZnBfZGF0YSAqbHZkc19sZnBfZGF0
YTsKLQljb25zdCBzdHJ1Y3QgYmRiX2x2ZHNfbGZwX2RhdGFfcHRycyAqbHZkc19sZnBfZGF0YV9w
dHJzOwotCWNvbnN0IHN0cnVjdCBsdmRzX2R2b190aW1pbmcgKnBhbmVsX2R2b190aW1pbmc7Ci0J
Y29uc3Qgc3RydWN0IGx2ZHNfZnBfdGltaW5nICpmcF90aW1pbmc7Ci0Jc3RydWN0IGRybV9kaXNw
bGF5X21vZGUgKnBhbmVsX2ZpeGVkX21vZGU7CiAJaW50IHBhbmVsX3R5cGU7CiAJaW50IGRycnNf
bW9kZTsKIAlpbnQgcmV0OwpAQCAtMjYxLDYgKzI1NiwxOSBAQCBwYXJzZV9sZnBfcGFuZWxfZGF0
YShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCURSTV9ERUJVR19LTVMoIkRS
UlMgbm90IHN1cHBvcnRlZCAoVkJUIGlucHV0KVxuIik7CiAJCWJyZWFrOwogCX0KK30KKworLyog
VHJ5IHRvIGZpbmQgaW50ZWdyYXRlZCBwYW5lbCB0aW1pbmcgZGF0YSAqLworc3RhdGljIHZvaWQK
K3BhcnNlX2xmcF9wYW5lbF9kdGQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAor
CQkgICAgY29uc3Qgc3RydWN0IGJkYl9oZWFkZXIgKmJkYikKK3sKKwljb25zdCBzdHJ1Y3QgYmRi
X2x2ZHNfbGZwX2RhdGEgKmx2ZHNfbGZwX2RhdGE7CisJY29uc3Qgc3RydWN0IGJkYl9sdmRzX2xm
cF9kYXRhX3B0cnMgKmx2ZHNfbGZwX2RhdGFfcHRyczsKKwljb25zdCBzdHJ1Y3QgbHZkc19kdm9f
dGltaW5nICpwYW5lbF9kdm9fdGltaW5nOworCWNvbnN0IHN0cnVjdCBsdmRzX2ZwX3RpbWluZyAq
ZnBfdGltaW5nOworCXN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICpwYW5lbF9maXhlZF9tb2RlOwor
CWludCBwYW5lbF90eXBlID0gZGV2X3ByaXYtPnZidC5wYW5lbF90eXBlOwogCiAJbHZkc19sZnBf
ZGF0YSA9IGZpbmRfc2VjdGlvbihiZGIsIEJEQl9MVkRTX0xGUF9EQVRBKTsKIAlpZiAoIWx2ZHNf
bGZwX2RhdGEpCkBAIC0xODc0LDcgKzE4ODIsOCBAQCB2b2lkIGludGVsX2Jpb3NfaW5pdChzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJLyogR3JhYiB1c2VmdWwgZ2VuZXJhbCBk
ZWZpbml0aW9ucyAqLwogCXBhcnNlX2dlbmVyYWxfZmVhdHVyZXMoZGV2X3ByaXYsIGJkYik7CiAJ
cGFyc2VfZ2VuZXJhbF9kZWZpbml0aW9ucyhkZXZfcHJpdiwgYmRiKTsKLQlwYXJzZV9sZnBfcGFu
ZWxfZGF0YShkZXZfcHJpdiwgYmRiKTsKKwlwYXJzZV9wYW5lbF9vcHRpb25zKGRldl9wcml2LCBi
ZGIpOworCXBhcnNlX2xmcF9wYW5lbF9kdGQoZGV2X3ByaXYsIGJkYik7CiAJcGFyc2VfbGZwX2Jh
Y2tsaWdodChkZXZfcHJpdiwgYmRiKTsKIAlwYXJzZV9zZHZvX3BhbmVsX2RhdGEoZGV2X3ByaXYs
IGJkYik7CiAJcGFyc2VfZHJpdmVyX2ZlYXR1cmVzKGRldl9wcml2LCBiZGIpOwotLSAKMi4yMS4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
