Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D262115A0
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 00:09:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D696A6E4BB;
	Wed,  1 Jul 2020 22:09:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C83446E4BB
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 22:09:17 +0000 (UTC)
IronPort-SDR: YnPK9s20rrzL9oKqclBPakXABRYnslYHdagvlm9lSV+NPBq5si/n4OYOZPUj5WbLZEIgcbpjuV
 K77mt0jkoUSQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="134175870"
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="134175870"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 15:09:16 -0700
IronPort-SDR: opdg3CgzgL742V7n63TMhjE+YGYpfCoGkhyb/bzns7lFng9Njf7729omZ4evUOZlORd5klV8kZ
 IEDF2d5BxQ4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="387142851"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga001.fm.intel.com with ESMTP; 01 Jul 2020 15:09:16 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jul 2020 15:10:52 -0700
Message-Id: <20200701221052.8946-2-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200701221052.8946-1-manasi.d.navare@intel.com>
References: <20200701221052.8946-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 2/2] drm/i915/dp: Helper to check for DDI BUF
 status to get active
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QmFzZWQgb24gdGhlIHBsYXRmb3JtLCBCc3BlYyBleHBlY3RzIHVzIHRvIHdhaXQgb3IgcG9sbCB3
aXRoCnRpbWVvdXQgZm9yIERESSBCVUYgSURMRSBiaXQgdG8gYmUgc2V0IHRvIDAgKG5vbiBpZGxl
KSBvciBnZXQgYWN0aXZlCmFmdGVyIGVuYWJsaW5nIERESV9CVUZfQ1RMLgoKdjI6CiogQmFzZWQg
b24gcGxhdGZvcm0sIGZpeGVkIGRlbGF5IG9yIHBvbGwgKFZpbGxlKQoqIFVzZSBhIGhlbHBlciB0
byBkbyB0aGlzIChJbXJlLCBWaWxsZSkKdjM6CiogQWRkIGEgbmV3IGZ1bmN0aW9uIF9hY3RpdmUg
Zm9yIERESSBCVUYgQ1RMIHRvIGJlIG5vbiBpZGxlIChWaWxsZSkKdjQ6CiogVXNlIHRoZSB0aW1l
b3V0IGZvciBHTEsgKFZpbGxlKQp2NToKKiBBZGQgYnNwZWMgcXVvdGUsIGNoYW5nZSB0aW1lb3V0
IHRvIDUwMHVzIChWaWxsZSkKCkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPgpDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgpTaWduZWQt
b2ZmLWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgpSZXZpZXdl
ZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgMTcgKysrKysrKysr
KysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKaW5kZXggYTdkZTEzNDRk
YjY5Li40Zjg5YWQ5MGFiMDcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYwpAQCAtMTE5NSw2ICsxMTk1LDIxIEBAIHN0YXRpYyB2b2lkIGludGVsX3dhaXRfZGRpX2J1
Zl9pZGxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCXBvcnRfbmFtZShw
b3J0KSk7CiB9CiAKK3N0YXRpYyB2b2lkIGludGVsX3dhaXRfZGRpX2J1Zl9hY3RpdmUoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAorCQkJCSAgICAgIGVudW0gcG9ydCBwb3J0KQor
eworCS8qIFdhaXQgPiA1MTggdXNlY3MgZm9yIERESV9CVUZfQ1RMIHRvIGJlIG5vbiBpZGxlICov
CisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPCAxMCAmJiAhSVNfR0VNSU5JTEFLRShkZXZfcHJp
dikpIHsKKwkJdXNsZWVwX3JhbmdlKDUxOCwgMTAwMCk7CisJCXJldHVybjsKKwl9CisKKwlpZiAo
d2FpdF9mb3JfdXMoIShpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBERElfQlVGX0NUTChwb3J0KSkg
JgorCQkJICBERElfQlVGX0lTX0lETEUpLCA1MDApKQorCQlkcm1fZXJyKCZkZXZfcHJpdi0+ZHJt
LCAiVGltZW91dCB3YWl0aW5nIGZvciBEREkgQlVGICVjIHRvIGdldCBhY3RpdmVcbiIsCisJCQlw
b3J0X25hbWUocG9ydCkpOworfQorCiBzdGF0aWMgdTMyIGhzd19wbGxfdG9fZGRpX3BsbF9zZWwo
Y29uc3Qgc3RydWN0IGludGVsX3NoYXJlZF9kcGxsICpwbGwpCiB7CiAJc3dpdGNoIChwbGwtPmlu
Zm8tPmlkKSB7CkBAIC00MDE5LDcgKzQwMzQsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfcHJl
cGFyZV9saW5rX3JldHJhaW4oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAlpbnRlbF9kZV93
cml0ZShkZXZfcHJpdiwgRERJX0JVRl9DVEwocG9ydCksIGludGVsX2RwLT5EUCk7CiAJaW50ZWxf
ZGVfcG9zdGluZ19yZWFkKGRldl9wcml2LCBERElfQlVGX0NUTChwb3J0KSk7CiAKLQl1ZGVsYXko
NjAwKTsKKwlpbnRlbF93YWl0X2RkaV9idWZfYWN0aXZlKGRldl9wcml2LCBwb3J0KTsKIH0KIAog
c3RhdGljIHZvaWQgaW50ZWxfZGRpX3NldF9saW5rX3RyYWluKHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHAsCi0tIAoyLjE5LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
