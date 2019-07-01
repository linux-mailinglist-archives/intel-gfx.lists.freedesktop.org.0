Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1CBA5B63A
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 10:01:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 166A389FA9;
	Mon,  1 Jul 2019 08:01:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4459C89FA7;
 Mon,  1 Jul 2019 08:01:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Jul 2019 01:00:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,438,1557212400"; d="scan'208";a="163610525"
Received: from ovasilev-desk1.fi.intel.com ([10.237.72.57])
 by fmsmga008.fm.intel.com with ESMTP; 01 Jul 2019 01:00:58 -0700
From: Oleg Vasilev <oleg.vasilev@intel.com>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Mon,  1 Jul 2019 11:00:22 +0300
Message-Id: <20190701080022.9415-2-oleg.vasilev@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190701080022.9415-1-oleg.vasilev@intel.com>
References: <20190701080022.9415-1-oleg.vasilev@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: utilize subconnector property for
 DP
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2luY2UgRFAtc3BlY2lmaWMgaW5mb3JtYXRpb24gaXMgc3RvcmVkIGluIGRyaXZlcidzIHN0cnVj
dHVyZXMsIGV2ZXJ5CmRyaXZlciBuZWVkcyB0byBpbXBsZW1lbnQgc3ViY29ubmVjdG9yIHByb3Bl
cnR5IGJ5IGl0c2VsZi4KClNpZ25lZC1vZmYtYnk6IE9sZWcgVmFzaWxldiA8b2xlZy52YXNpbGV2
QGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMg
fCAxNSArKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCmluZGV4IDQzMzZkZjQ2ZmU3OC4u
NjQzNmMxNGQ5YjQxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBA
IC01NTMyLDYgKzU1MzIsNyBAQCBpbnRlbF9kcF91bnNldF9lZGlkKHN0cnVjdCBpbnRlbF9kcCAq
aW50ZWxfZHApCiAJaW50ZWxfZHAtPmhhc19hdWRpbyA9IGZhbHNlOwogfQogCisKIHN0YXRpYyBp
bnQKIGludGVsX2RwX2RldGVjdChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAogCQlz
dHJ1Y3QgZHJtX21vZGVzZXRfYWNxdWlyZV9jdHggKmN0eCwKQEAgLTU1NDIsNiArNTU0Myw3IEBA
IGludGVsX2RwX2RldGVjdChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAogCXN0cnVj
dCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0gZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHAp
OwogCXN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyID0gJmRpZ19wb3J0LT5iYXNlOwogCWVu
dW0gZHJtX2Nvbm5lY3Rvcl9zdGF0dXMgc3RhdHVzOworCWVudW0gZHJtX21vZGVfc3ViY29ubmVj
dG9yIHN1YmNvbm5lY3RvciA9IERSTV9NT0RFX1NVQkNPTk5FQ1RPUl9Vbmtub3duOwogCiAJRFJN
X0RFQlVHX0tNUygiW0NPTk5FQ1RPUjolZDolc11cbiIsCiAJCSAgICAgIGNvbm5lY3Rvci0+YmFz
ZS5pZCwgY29ubmVjdG9yLT5uYW1lKTsKQEAgLTU2MzMsNiArNTYzNSwxNCBAQCBpbnRlbF9kcF9k
ZXRlY3Qoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwKIAlpZiAoc3RhdHVzICE9IGNv
bm5lY3Rvcl9zdGF0dXNfY29ubmVjdGVkICYmICFpbnRlbF9kcC0+aXNfbXN0KQogCQlpbnRlbF9k
cF91bnNldF9lZGlkKGludGVsX2RwKTsKIAorCWlmIChzdGF0dXMgPT0gY29ubmVjdG9yX3N0YXR1
c19jb25uZWN0ZWQpCisJCXN1YmNvbm5lY3RvciA9IGRybV9kcF9kb3duc3RyZWFtX3N1YmNvbm5l
Y3Rvcl90eXBlKAorCQkJCWludGVsX2RwLT5kcGNkLCBpbnRlbF9kcC0+ZG93bnN0cmVhbV9wb3J0
cyk7CisKKwlkcm1fb2JqZWN0X3Byb3BlcnR5X3NldF92YWx1ZSgmY29ubmVjdG9yLT5iYXNlLAor
CQkJCSAgICAgIGNvbm5lY3Rvci0+ZGV2LT4KKwkJCQkgICAgICBtb2RlX2NvbmZpZy5kcF9zdWJj
b25uZWN0b3JfcHJvcGVydHksCisJCQkJICAgICAgc3ViY29ubmVjdG9yKTsKIAlyZXR1cm4gc3Rh
dHVzOwogfQogCkBAIC02NTI5LDYgKzY1MzksMTEgQEAgaW50ZWxfZHBfYWRkX3Byb3BlcnRpZXMo
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3QK
IAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNvbm5lY3Rvci0+
ZGV2KTsKIAllbnVtIHBvcnQgcG9ydCA9IGRwX3RvX2RpZ19wb3J0KGludGVsX2RwKS0+YmFzZS5w
b3J0OwogCisJZHJtX21vZGVfY3JlYXRlX2RwX3Byb3BlcnRpZXMoY29ubmVjdG9yLT5kZXYpOwor
CWRybV9vYmplY3RfYXR0YWNoX3Byb3BlcnR5KCZjb25uZWN0b3ItPmJhc2UsCisJCQkJICAgY29u
bmVjdG9yLT5kZXYtPm1vZGVfY29uZmlnLmRwX3N1YmNvbm5lY3Rvcl9wcm9wZXJ0eSwKKwkJCQkg
ICBEUk1fTU9ERV9TVUJDT05ORUNUT1JfVW5rbm93bik7CisKIAlpZiAoIUlTX0c0WChkZXZfcHJp
dikgJiYgcG9ydCAhPSBQT1JUX0EpCiAJCWludGVsX2F0dGFjaF9mb3JjZV9hdWRpb19wcm9wZXJ0
eShjb25uZWN0b3IpOwogCi0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
