Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F35FF7136
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 10:53:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E14A6E88F;
	Mon, 11 Nov 2019 09:53:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E8626E88F
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 09:53:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 01:53:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,292,1569308400"; d="scan'208";a="202010524"
Received: from mbawadek-mobl.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.252.56.53])
 by fmsmga008.fm.intel.com with ESMTP; 11 Nov 2019 01:53:11 -0800
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Nov 2019 11:53:08 +0200
Message-Id: <20191111095308.2550-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/perf: always consider holding
 preemption a privileged op
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

VGhlIG9yZGVyaW5nIG9mIHRoZSBjaGVja3MgaW4gdGhlIGV4aXN0aW5nIGNvZGUgY2FuIGxlYWQg
dG8gaG9sZGluZwpwcmVlbXB0aW9uIG5vdCBiZWluZyBjb25zaWRlcmVkIGFzIHByaXZpbGVnZWQg
b3AuCgpTaWduZWQtb2ZmLWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdlcmxp
bkBpbnRlbC5jb20+CkZpeGVzOiA5Y2QyMGVmNzgwM2MgKCJkcm0vaTkxNS9wZXJmOiBhbGxvdyBo
b2xkaW5nIHByZWVtcHRpb24gb24gZmlsdGVyZWQgY3R4IikKLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3BlcmYuYyB8IDIwICsrKysrKysrKystLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgMTAgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bl
cmYuYwppbmRleCBhOGMyMzE4ZDNkNWUuLjAwMzE3ZWExOWE0YSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9wZXJmLmMKQEAgLTMzMDcsMTUgKzMzMDcsNiBAQCBpOTE1X3BlcmZfb3Blbl9pb2N0bF9sb2Nr
ZWQoc3RydWN0IGk5MTVfcGVyZiAqcGVyZiwKIAkJfQogCX0KIAotCWlmIChwcm9wcy0+aG9sZF9w
cmVlbXB0aW9uKSB7Ci0JCWlmICghcHJvcHMtPnNpbmdsZV9jb250ZXh0KSB7Ci0JCQlEUk1fREVC
VUcoInByZWVtcHRpb24gZGlzYWJsZSB3aXRoIG5vIGNvbnRleHRcbiIpOwotCQkJcmV0ID0gLUVJ
TlZBTDsKLQkJCWdvdG8gZXJyOwotCQl9Ci0JCXByaXZpbGVnZWRfb3AgPSB0cnVlOwotCX0KLQog
CS8qCiAJICogT24gSGFzd2VsbCB0aGUgT0EgdW5pdCBzdXBwb3J0cyBjbG9jayBnYXRpbmcgb2Zm
IGZvciBhIHNwZWNpZmljCiAJICogY29udGV4dCBhbmQgaW4gdGhpcyBtb2RlIHRoZXJlJ3Mgbm8g
dmlzaWJpbGl0eSBvZiBtZXRyaWNzIGZvciB0aGUKQEAgLTMzMzUsMTIgKzMzMjYsMjEgQEAgaTkx
NV9wZXJmX29wZW5faW9jdGxfbG9ja2VkKHN0cnVjdCBpOTE1X3BlcmYgKnBlcmYsCiAJICogZG9l
c24ndCByZXF1ZXN0IGdsb2JhbCBzdHJlYW0gYWNjZXNzIChpLmUuIHF1ZXJ5IGJhc2VkIHNhbXBs
aW5nCiAJICogdXNpbmcgTUlfUkVDT1JEX1BFUkZfQ09VTlQuCiAJICovCi0JaWYgKElTX0hBU1dF
TEwocGVyZi0+aTkxNSkgJiYgc3BlY2lmaWNfY3R4ICYmICFwcm9wcy0+aG9sZF9wcmVlbXB0aW9u
KQorCWlmIChJU19IQVNXRUxMKHBlcmYtPmk5MTUpICYmIHNwZWNpZmljX2N0eCkKIAkJcHJpdmls
ZWdlZF9vcCA9IGZhbHNlOwogCWVsc2UgaWYgKElTX0dFTihwZXJmLT5pOTE1LCAxMikgJiYgc3Bl
Y2lmaWNfY3R4ICYmCiAJCSAocHJvcHMtPnNhbXBsZV9mbGFncyAmIFNBTVBMRV9PQV9SRVBPUlQp
ID09IDApCiAJCXByaXZpbGVnZWRfb3AgPSBmYWxzZTsKIAorCWlmIChwcm9wcy0+aG9sZF9wcmVl
bXB0aW9uKSB7CisJCWlmICghcHJvcHMtPnNpbmdsZV9jb250ZXh0KSB7CisJCQlEUk1fREVCVUco
InByZWVtcHRpb24gZGlzYWJsZSB3aXRoIG5vIGNvbnRleHRcbiIpOworCQkJcmV0ID0gLUVJTlZB
TDsKKwkJCWdvdG8gZXJyOworCQl9CisJCXByaXZpbGVnZWRfb3AgPSB0cnVlOworCX0KKwogCS8q
IFNpbWlsYXIgdG8gcGVyZidzIGtlcm5lbC5wZXJmX3BhcmFub2lkX2NwdSBzeXNjdGwgb3B0aW9u
CiAJICogd2UgY2hlY2sgYSBkZXYuaTkxNS5wZXJmX3N0cmVhbV9wYXJhbm9pZCBzeXNjdGwgb3B0
aW9uCiAJICogdG8gZGV0ZXJtaW5lIGlmIGl0J3Mgb2sgdG8gYWNjZXNzIHN5c3RlbSB3aWRlIE9B
IGNvdW50ZXJzCi0tIAoyLjI0LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
