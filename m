Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BAE591602
	for <lists+intel-gfx@lfdr.de>; Sun, 18 Aug 2019 11:52:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58C0B6E053;
	Sun, 18 Aug 2019 09:52:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E28C06E053
 for <intel-gfx@lists.freedesktop.org>; Sun, 18 Aug 2019 09:52:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Aug 2019 02:52:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,400,1559545200"; d="scan'208";a="189247598"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga002.jf.intel.com with ESMTP; 18 Aug 2019 02:52:17 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.129.244])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x7I9qBYl001582; Sun, 18 Aug 2019 10:52:16 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 18 Aug 2019 09:52:02 +0000
Message-Id: <20190818095204.31568-2-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190818095204.31568-1-michal.wajdeczko@intel.com>
References: <20190818095204.31568-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/guc: Don't open log relay if GuC
 is not running
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

QXMgd2UgcGxhbiB0byBjb250aW51ZSBkcml2ZXIgbG9hZCBhZnRlciBHdUMgaW5pdGlhbGl6YXRp
b24KZmFpbHVyZSwgd2UgY2FuJ3QgYXNzdW1lIHRoYXQgR3VDIGxvZyBkYXRhIHdpbGwgYmUgYXZh
aWxhYmxlCmp1c3QgYmVjYXVzZSBHdUMgd2FzIGluaXRpYWxseSBlbmFibGVkLiBXZSBtdXN0IGNo
ZWNrIHRoYXQKR3VDIGlzIHN0aWxsIHJ1bm5pbmcgaW5zdGVhZC4KClNpZ25lZC1vZmYtYnk6IE1p
Y2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgpDYzogRGFuaWVsZSBD
ZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KQ2M6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX2d1Y19sb2cuYyB8ICA0ICsrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZGVidWdmcy5jICAgICAgICB8IDE3ICsrKysrKysrKy0tLS0tLS0tCiAyIGZpbGVzIGNo
YW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2xvZy5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2xvZy5jCmluZGV4IDU5NzAyZWJjNjhmNi4uMzYzMzIwNjRk
ZTljIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfbG9n
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfZ3VjX2xvZy5jCkBAIC0z
NzIsNiArMzcyLDcgQEAgc3RhdGljIGludCBndWNfbG9nX3JlbGF5X2NyZWF0ZShzdHJ1Y3QgaW50
ZWxfZ3VjX2xvZyAqbG9nKQogCWludCByZXQ7CiAKIAlsb2NrZGVwX2Fzc2VydF9oZWxkKCZsb2ct
PnJlbGF5LmxvY2spOworCUdFTV9CVUdfT04oIWxvZy0+dm1hKTsKIAogCSAvKiBLZWVwIHRoZSBz
aXplIG9mIHN1YiBidWZmZXJzIHNhbWUgYXMgc2hhcmVkIGxvZyBidWZmZXIgKi8KIAlzdWJidWZf
c2l6ZSA9IGxvZy0+dm1hLT5zaXplOwpAQCAtNTU0LDYgKzU1NSw5IEBAIGludCBpbnRlbF9ndWNf
bG9nX3JlbGF5X29wZW4oc3RydWN0IGludGVsX2d1Y19sb2cgKmxvZykKIHsKIAlpbnQgcmV0Owog
CisJaWYgKCFsb2ctPnZtYSkKKwkJcmV0dXJuIC1FTk9ERVY7CisKIAltdXRleF9sb2NrKCZsb2ct
PnJlbGF5LmxvY2spOwogCiAJaWYgKGludGVsX2d1Y19sb2dfcmVsYXlfZW5hYmxlZChsb2cpKSB7
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCmluZGV4IGU3Y2U3MzlmZTU0NS4uYjM5MjI2
ZDdmOGQyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwpAQCAtMjAyOCwxNCArMjAy
OCwxNiBAQCBERUZJTkVfU0lNUExFX0FUVFJJQlVURShpOTE1X2d1Y19sb2dfbGV2ZWxfZm9wcywK
IAogc3RhdGljIGludCBpOTE1X2d1Y19sb2dfcmVsYXlfb3BlbihzdHJ1Y3QgaW5vZGUgKmlub2Rl
LCBzdHJ1Y3QgZmlsZSAqZmlsZSkKIHsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYgPSBpbm9kZS0+aV9wcml2YXRlOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0g
aW5vZGUtPmlfcHJpdmF0ZTsKKwlzdHJ1Y3QgaW50ZWxfZ3VjICpndWMgPSAmaTkxNS0+Z3QudWMu
Z3VjOworCXN0cnVjdCBpbnRlbF9ndWNfbG9nICpsb2cgPSAmZ3VjLT5sb2c7CiAKLQlpZiAoIVVT
RVNfR1VDKGRldl9wcml2KSkKKwlpZiAoIWludGVsX2d1Y19pc19ydW5uaW5nKGd1YykpCiAJCXJl
dHVybiAtRU5PREVWOwogCi0JZmlsZS0+cHJpdmF0ZV9kYXRhID0gJmRldl9wcml2LT5ndC51Yy5n
dWMubG9nOworCWZpbGUtPnByaXZhdGVfZGF0YSA9IGxvZzsKIAotCXJldHVybiBpbnRlbF9ndWNf
bG9nX3JlbGF5X29wZW4oJmRldl9wcml2LT5ndC51Yy5ndWMubG9nKTsKKwlyZXR1cm4gaW50ZWxf
Z3VjX2xvZ19yZWxheV9vcGVuKGxvZyk7CiB9CiAKIHN0YXRpYyBzc2l6ZV90CkBAIC0yMDQ3LDE2
ICsyMDQ5LDE1IEBAIGk5MTVfZ3VjX2xvZ19yZWxheV93cml0ZShzdHJ1Y3QgZmlsZSAqZmlscCwK
IAlzdHJ1Y3QgaW50ZWxfZ3VjX2xvZyAqbG9nID0gZmlscC0+cHJpdmF0ZV9kYXRhOwogCiAJaW50
ZWxfZ3VjX2xvZ19yZWxheV9mbHVzaChsb2cpOwotCiAJcmV0dXJuIGNudDsKIH0KIAogc3RhdGlj
IGludCBpOTE1X2d1Y19sb2dfcmVsYXlfcmVsZWFzZShzdHJ1Y3QgaW5vZGUgKmlub2RlLCBzdHJ1
Y3QgZmlsZSAqZmlsZSkKIHsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBp
bm9kZS0+aV9wcml2YXRlOwotCi0JaW50ZWxfZ3VjX2xvZ19yZWxheV9jbG9zZSgmZGV2X3ByaXYt
Pmd0LnVjLmd1Yy5sb2cpOworCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gaW5vZGUt
PmlfcHJpdmF0ZTsKKwlzdHJ1Y3QgaW50ZWxfZ3VjICpndWMgPSAmaTkxNS0+Z3QudWMuZ3VjOwog
CisJaW50ZWxfZ3VjX2xvZ19yZWxheV9jbG9zZSgmZ3VjLT5sb2cpOwogCXJldHVybiAwOwogfQog
Ci0tIAoyLjE5LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
