Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6FDD7138
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 10:37:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AF536E788;
	Tue, 15 Oct 2019 08:37:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FD3D6E784
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 08:37:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 01:37:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,298,1566889200"; d="scan'208";a="395460410"
Received: from yanghuib-mobl.ger.corp.intel.com (HELO
 skylake-nuc.ger.corp.intel.com) ([10.249.254.242])
 by fmsmga005.fm.intel.com with ESMTP; 15 Oct 2019 01:37:43 -0700
From: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 11:37:23 +0300
Message-Id: <20191015083724.24390-4-abdiel.janulgue@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191015083724.24390-1-abdiel.janulgue@linux.intel.com>
References: <20191015083724.24390-1-abdiel.janulgue@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 4/5] drm/i915: cpu-map based dumb buffers
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SWYgdGhlcmUgaXMgbm8gYXBlcnR1cmUgd2UgY2FuJ3QgdXNlIG1hcF9ndHQgdG8gbWFwIGR1bWIg
YnVmZmVycywgc28gd2UKbmVlZCBhIGNwdS1tYXAgYmFzZWQgcGF0aCB0byBkbyBpdC4gV2UgcHJl
ZmVyIG1hcF9ndHQgb24gcGxhdGZvcm1zIHRoYXQKZG8gaGF2ZSBhcGVydHVyZS4KClNpZ25lZC1v
ZmYtYnk6IEFiZGllbCBKYW51bGd1ZSA8YWJkaWVsLmphbnVsZ3VlQGxpbnV4LmludGVsLmNvbT4K
Q2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5j
b20+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AbGludXguaW50ZWwuY29tPgpD
YzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMgfCAxMyArKysrKysrKysrKysrCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jICAgICAgICAgIHwgIDEgKwogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICB8ICAyICsrCiAzIGZpbGVzIGNoYW5nZWQsIDE2IGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fbW1hbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYwppbmRl
eCA3NjNmM2JkNzhlNjUuLjVlZTk3YzY0YzZkNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fbW1hbi5jCkBAIC01NjMsNiArNTYzLDE5IEBAIHN0YXRpYyBpbnQgZ2VtX21tYXBf
b2Zmc2V0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsCiAJCQkJCSAgICAgJmFy
Z3MtPm9mZnNldCk7CiB9CiAKK2ludAoraTkxNV9nZW1fbW1hcF9kdW1iKHN0cnVjdCBkcm1fZmls
ZSAqZmlsZSwKKwkJICBzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAorCQkgIHUzMiBoYW5kbGUsCisJ
CSAgdTY0ICpvZmZzZXQpCit7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19p
OTE1KGRldik7CisJZW51bSBpOTE1X21tYXBfdHlwZSBtbWFwX3R5cGUgPSBIQVNfTUFQUEFCTEVf
QVBFUlRVUkUoaTkxNSkgPworCQlJOTE1X01NQVBfVFlQRV9HVFQgOiBJOTE1X01NQVBfVFlQRV9X
QzsKKworCXJldHVybiBfX2Fzc2lnbl9nZW1fb2JqZWN0X21tYXBfZGF0YShmaWxlLCBoYW5kbGUs
IG1tYXBfdHlwZSwgb2Zmc2V0KTsKK30KKwogLyoqCiAgKiBpOTE1X2dlbV9tbWFwX2d0dF9pb2N0
bCAtIHByZXBhcmUgYW4gb2JqZWN0IGZvciBHVFQgbW1hcCdpbmcKICAqIEBkZXY6IERSTSBkZXZp
Y2UKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCmluZGV4IGRjZjIyOTgxZmRmMi4uMzlhZjhiNTMxMGQy
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKQEAgLTI3NTAsNiArMjc1MCw3IEBAIHN0YXRpYyBz
dHJ1Y3QgZHJtX2RyaXZlciBkcml2ZXIgPSB7CiAJLmdldF9zY2Fub3V0X3Bvc2l0aW9uID0gaTkx
NV9nZXRfY3J0Y19zY2Fub3V0cG9zLAogCiAJLmR1bWJfY3JlYXRlID0gaTkxNV9nZW1fZHVtYl9j
cmVhdGUsCisJLmR1bWJfbWFwX29mZnNldCA9IGk5MTVfZ2VtX21tYXBfZHVtYiwKIAkuaW9jdGxz
ID0gaTkxNV9pb2N0bHMsCiAJLm51bV9pb2N0bHMgPSBBUlJBWV9TSVpFKGk5MTVfaW9jdGxzKSwK
IAkuZm9wcyA9ICZpOTE1X2RyaXZlcl9mb3BzLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXgg
YjhlNDk1YTczZDE0Li41NWM2YTI2MDkzZjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAt
MTkzMyw2ICsxOTMzLDggQEAgaTkxNV9tdXRleF9sb2NrX2ludGVycnVwdGlibGUoc3RydWN0IGRy
bV9kZXZpY2UgKmRldikKIGludCBpOTE1X2dlbV9kdW1iX2NyZWF0ZShzdHJ1Y3QgZHJtX2ZpbGUg
KmZpbGVfcHJpdiwKIAkJCSBzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCQkJIHN0cnVjdCBkcm1f
bW9kZV9jcmVhdGVfZHVtYiAqYXJncyk7CitpbnQgaTkxNV9nZW1fbW1hcF9kdW1iKHN0cnVjdCBk
cm1fZmlsZSAqZmlsZV9wcml2LCBzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAorCQkgICAgICB1MzIg
aGFuZGxlLCB1NjQgKm9mZnNldCk7CiBpbnQgaTkxNV9nZW1fbW1hcF9ndHRfdmVyc2lvbih2b2lk
KTsKIAogaW50IF9fbXVzdF9jaGVjayBpOTE1X2dlbV9zZXRfZ2xvYmFsX3NlcW5vKHN0cnVjdCBk
cm1fZGV2aWNlICpkZXYsIHUzMiBzZXFubyk7Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
