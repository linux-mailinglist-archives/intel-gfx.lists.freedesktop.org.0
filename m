Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA6229D2AB
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 22:34:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13B5B6E5B6;
	Wed, 28 Oct 2020 21:34:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA73D6E5B4
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Oct 2020 21:34:01 +0000 (UTC)
IronPort-SDR: tJ6YQuFc1Xho/T6W1U4RGaDcdfaqaV/tF7seu1uz7u9U65T5rcgpq1uluQuZIZYkEti53IA/xt
 jvRUs0khRAxw==
X-IronPort-AV: E=McAfee;i="6000,8403,9788"; a="168471011"
X-IronPort-AV: E=Sophos;i="5.77,428,1596524400"; d="scan'208";a="168471011"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 14:34:01 -0700
IronPort-SDR: f7qYdlyk+uTmacFWUGb4HWy+4xIY8/tQffvNO3TgJ3suXFvYEdYzQNmL+mDhzj+1WvsFLslbSv
 QwVl/qy3CgDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,428,1596524400"; d="scan'208";a="323489381"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 28 Oct 2020 14:33:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 28 Oct 2020 23:33:58 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Oct 2020 23:33:16 +0200
Message-Id: <20201028213323.5423-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201028213323.5423-1-ville.syrjala@linux.intel.com>
References: <20201028213323.5423-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 12/19] drm/i915: Relocate intel_hpd_{enabled,
 hotplug}_irqs()
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1v
dmUgaW50ZWxfaHBkX3tlbmFibGVkLGhvdHBsdWd9X2lycXMoKSBjbG9zZXMgdG8gdGhlIGJlZ2lu
bmluZyBvZgp0aGUgZmlsZSBzbyB3ZSBjYW4gdXNlIHRoZW0gaW4gbW9yZSBwbGFjZXMuIE5vIGZ1
bmN0aW9uYWwgY2hhbmdlcy4KClJldmlld2VkLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRl
bWFyY2hpQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2ly
cS5jIHwgNTAgKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgMjUgaW5zZXJ0aW9ucygrKSwgMjUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJx
LmMKaW5kZXggNzBhMzdkNGNhOWU1Li5iMzU1ZTAzMDdhOGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9p
cnEuYwpAQCAtMTIwNSw2ICsxMjA1LDMxIEBAIHN0YXRpYyB2b2lkIGludGVsX2dldF9ocGRfcGlu
cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAKIH0KIAorc3RhdGljIHUzMiBp
bnRlbF9ocGRfZW5hYmxlZF9pcnFzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwK
KwkJCQkgIGNvbnN0IHUzMiBocGRbSFBEX05VTV9QSU5TXSkKK3sKKwlzdHJ1Y3QgaW50ZWxfZW5j
b2RlciAqZW5jb2RlcjsKKwl1MzIgZW5hYmxlZF9pcnFzID0gMDsKKworCWZvcl9lYWNoX2ludGVs
X2VuY29kZXIoJmRldl9wcml2LT5kcm0sIGVuY29kZXIpCisJCWlmIChkZXZfcHJpdi0+aG90cGx1
Zy5zdGF0c1tlbmNvZGVyLT5ocGRfcGluXS5zdGF0ZSA9PSBIUERfRU5BQkxFRCkKKwkJCWVuYWJs
ZWRfaXJxcyB8PSBocGRbZW5jb2Rlci0+aHBkX3Bpbl07CisKKwlyZXR1cm4gZW5hYmxlZF9pcnFz
OworfQorCitzdGF0aWMgdTMyIGludGVsX2hwZF9ob3RwbHVnX2lycXMoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2LAorCQkJCSAgY29uc3QgdTMyIGhwZFtIUERfTlVNX1BJTlNdKQor
eworCXN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyOworCXUzMiBob3RwbHVnX2lycXMgPSAw
OworCisJZm9yX2VhY2hfaW50ZWxfZW5jb2RlcigmZGV2X3ByaXYtPmRybSwgZW5jb2RlcikKKwkJ
aG90cGx1Z19pcnFzIHw9IGhwZFtlbmNvZGVyLT5ocGRfcGluXTsKKworCXJldHVybiBob3RwbHVn
X2lycXM7Cit9CisKIHN0YXRpYyB2b2lkIGdtYnVzX2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdikKIHsKIAl3YWtlX3VwX2FsbCgmZGV2X3ByaXYtPmdtYnVzX3dh
aXRfcXVldWUpOwpAQCAtMzE0NSwzMSArMzE3MCw2IEBAIHN0YXRpYyB2b2lkIGNoZXJyeXZpZXdf
aXJxX3Jlc2V0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAlzcGluX3VubG9j
a19pcnEoJmRldl9wcml2LT5pcnFfbG9jayk7CiB9CiAKLXN0YXRpYyB1MzIgaW50ZWxfaHBkX2Vu
YWJsZWRfaXJxcyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCi0JCQkJICBjb25z
dCB1MzIgaHBkW0hQRF9OVU1fUElOU10pCi17Ci0Jc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29k
ZXI7Ci0JdTMyIGVuYWJsZWRfaXJxcyA9IDA7Ci0KLQlmb3JfZWFjaF9pbnRlbF9lbmNvZGVyKCZk
ZXZfcHJpdi0+ZHJtLCBlbmNvZGVyKQotCQlpZiAoZGV2X3ByaXYtPmhvdHBsdWcuc3RhdHNbZW5j
b2Rlci0+aHBkX3Bpbl0uc3RhdGUgPT0gSFBEX0VOQUJMRUQpCi0JCQllbmFibGVkX2lycXMgfD0g
aHBkW2VuY29kZXItPmhwZF9waW5dOwotCi0JcmV0dXJuIGVuYWJsZWRfaXJxczsKLX0KLQotc3Rh
dGljIHUzMiBpbnRlbF9ocGRfaG90cGx1Z19pcnFzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiwKLQkJCQkgIGNvbnN0IHUzMiBocGRbSFBEX05VTV9QSU5TXSkKLXsKLQlzdHJ1Y3Qg
aW50ZWxfZW5jb2RlciAqZW5jb2RlcjsKLQl1MzIgaG90cGx1Z19pcnFzID0gMDsKLQotCWZvcl9l
YWNoX2ludGVsX2VuY29kZXIoJmRldl9wcml2LT5kcm0sIGVuY29kZXIpCi0JCWhvdHBsdWdfaXJx
cyB8PSBocGRbZW5jb2Rlci0+aHBkX3Bpbl07Ci0KLQlyZXR1cm4gaG90cGx1Z19pcnFzOwotfQot
CiBzdGF0aWMgdm9pZCBpYnhfaHBkX2RldGVjdGlvbl9zZXR1cChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpCiB7CiAJdTMyIGhvdHBsdWc7Ci0tIAoyLjI2LjIKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
