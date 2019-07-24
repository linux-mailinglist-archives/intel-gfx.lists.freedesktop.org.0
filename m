Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C23372C10
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2019 12:07:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8D376E4F4;
	Wed, 24 Jul 2019 10:07:26 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C790C6E4F0
 for <Intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2019 10:07:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jul 2019 03:07:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,302,1559545200"; d="scan'208";a="197448630"
Received: from jsartini-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.0.141])
 by fmsmga002.fm.intel.com with ESMTP; 24 Jul 2019 03:07:20 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 24 Jul 2019 11:07:14 +0100
Message-Id: <20190724100716.10731-3-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190724100716.10731-1-tvrtko.ursulin@linux.intel.com>
References: <20190724100716.10731-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/i915: Make wait_for_timelines take
 struct intel_gt
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClRpbWVsaW5l
cyBsaXZlIGluIHN0cnVjdCBpbnRlbF9ndCBzbyBtYWtlIHdhaXRfZm9yX3RpbWVsaW5lcyB0YWtl
CmV4YWN0bHkgd2hhdCBpdCBuZWVkcy4KClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0
dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW0uYyB8IDI3ICsrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE0
IGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCmlu
ZGV4IDI3MmUwMDhjNTVlZi4uOWE1NjcyMDVlMzJhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMK
QEAgLTkwNiwyMSArOTA2LDIwIEBAIHN0YXRpYyBpbnQgd2FpdF9mb3JfZW5naW5lcyhzdHJ1Y3Qg
aW50ZWxfZ3QgKmd0KQogfQogCiBzdGF0aWMgbG9uZwotd2FpdF9mb3JfdGltZWxpbmVzKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1LAotCQkgICB1bnNpZ25lZCBpbnQgZmxhZ3MsIGxvbmcg
dGltZW91dCkKK3dhaXRfZm9yX3RpbWVsaW5lcyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCB1bnNpZ25l
ZCBpbnQgZmxhZ3MsIGxvbmcgdGltZW91dCkKIHsKLQlzdHJ1Y3QgaW50ZWxfZ3RfdGltZWxpbmVz
ICpndCA9ICZpOTE1LT5ndC50aW1lbGluZXM7CisJc3RydWN0IGludGVsX2d0X3RpbWVsaW5lcyAq
dGltZWxpbmVzID0gJmd0LT50aW1lbGluZXM7CiAJc3RydWN0IGludGVsX3RpbWVsaW5lICp0bDsK
IAotCW11dGV4X2xvY2soJmd0LT5tdXRleCk7Ci0JbGlzdF9mb3JfZWFjaF9lbnRyeSh0bCwgJmd0
LT5hY3RpdmVfbGlzdCwgbGluaykgeworCW11dGV4X2xvY2soJnRpbWVsaW5lcy0+bXV0ZXgpOwor
CWxpc3RfZm9yX2VhY2hfZW50cnkodGwsICZ0aW1lbGluZXMtPmFjdGl2ZV9saXN0LCBsaW5rKSB7
CiAJCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOwogCiAJCXJxID0gaTkxNV9hY3RpdmVfcmVxdWVz
dF9nZXRfdW5sb2NrZWQoJnRsLT5sYXN0X3JlcXVlc3QpOwogCQlpZiAoIXJxKQogCQkJY29udGlu
dWU7CiAKLQkJbXV0ZXhfdW5sb2NrKCZndC0+bXV0ZXgpOworCQltdXRleF91bmxvY2soJnRpbWVs
aW5lcy0+bXV0ZXgpOwogCiAJCS8qCiAJCSAqICJSYWNlLXRvLWlkbGUiLgpAQCAtOTQwLDEwICs5
MzksMTAgQEAgd2FpdF9mb3JfdGltZWxpbmVzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
LAogCQkJcmV0dXJuIHRpbWVvdXQ7CiAKIAkJLyogcmVzdGFydCBhZnRlciByZWFjcXVpcmluZyB0
aGUgbG9jayAqLwotCQltdXRleF9sb2NrKCZndC0+bXV0ZXgpOwotCQl0bCA9IGxpc3RfZW50cnko
Jmd0LT5hY3RpdmVfbGlzdCwgdHlwZW9mKCp0bCksIGxpbmspOworCQltdXRleF9sb2NrKCZ0aW1l
bGluZXMtPm11dGV4KTsKKwkJdGwgPSBsaXN0X2VudHJ5KCZ0aW1lbGluZXMtPmFjdGl2ZV9saXN0
LCB0eXBlb2YoKnRsKSwgbGluayk7CiAJfQotCW11dGV4X3VubG9jaygmZ3QtPm11dGV4KTsKKwlt
dXRleF91bmxvY2soJnRpbWVsaW5lcy0+bXV0ZXgpOwogCiAJcmV0dXJuIHRpbWVvdXQ7CiB9CkBA
IC05NTEsMTYgKzk1MCwxOCBAQCB3YWl0X2Zvcl90aW1lbGluZXMoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUsCiBpbnQgaTkxNV9nZW1fd2FpdF9mb3JfaWRsZShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSwKIAkJCSAgIHVuc2lnbmVkIGludCBmbGFncywgbG9uZyB0aW1lb3V0KQog
eworCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSAmaTkxNS0+Z3Q7CisKIAkvKiBJZiB0aGUgZGV2aWNl
IGlzIGFzbGVlcCwgd2UgaGF2ZSBubyByZXF1ZXN0cyBvdXRzdGFuZGluZyAqLwotCWlmICghUkVB
RF9PTkNFKGk5MTUtPmd0LmF3YWtlKSkKKwlpZiAoIVJFQURfT05DRShndC0+YXdha2UpKQogCQly
ZXR1cm4gMDsKIAogCUdFTV9UUkFDRSgiZmxhZ3M9JXggKCVzKSwgdGltZW91dD0lbGQlcywgYXdh
a2U/PSVzXG4iLAogCQkgIGZsYWdzLCBmbGFncyAmIEk5MTVfV0FJVF9MT0NLRUQgPyAibG9ja2Vk
IiA6ICJ1bmxvY2tlZCIsCiAJCSAgdGltZW91dCwgdGltZW91dCA9PSBNQVhfU0NIRURVTEVfVElN
RU9VVCA/ICIgKGZvcmV2ZXIpIiA6ICIiLAotCQkgIHllc25vKGk5MTUtPmd0LmF3YWtlKSk7CisJ
CSAgeWVzbm8oZ3QtPmF3YWtlKSk7CiAKLQl0aW1lb3V0ID0gd2FpdF9mb3JfdGltZWxpbmVzKGk5
MTUsIGZsYWdzLCB0aW1lb3V0KTsKKwl0aW1lb3V0ID0gd2FpdF9mb3JfdGltZWxpbmVzKGd0LCBm
bGFncywgdGltZW91dCk7CiAJaWYgKHRpbWVvdXQgPCAwKQogCQlyZXR1cm4gdGltZW91dDsKIApA
QCAtOTY5LDcgKzk3MCw3IEBAIGludCBpOTE1X2dlbV93YWl0X2Zvcl9pZGxlKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1LAogCiAJCWxvY2tkZXBfYXNzZXJ0X2hlbGQoJmk5MTUtPmRybS5z
dHJ1Y3RfbXV0ZXgpOwogCi0JCWVyciA9IHdhaXRfZm9yX2VuZ2luZXMoJmk5MTUtPmd0KTsKKwkJ
ZXJyID0gd2FpdF9mb3JfZW5naW5lcyhndCk7CiAJCWlmIChlcnIpCiAJCQlyZXR1cm4gZXJyOwog
Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
