Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1A5820BD1C
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Jun 2020 01:25:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70BC36E1E5;
	Fri, 26 Jun 2020 23:25:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 686576E1E5
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 23:25:15 +0000 (UTC)
IronPort-SDR: 5a09UAg+D6pjcCSNpeGbPKOW8CmWT4BQQjsBiiIEjRIgY3qu0euGuiQtQECJNcYhSlvg7AOafr
 3ZMXm5OjftOg==
X-IronPort-AV: E=McAfee;i="6000,8403,9664"; a="125694679"
X-IronPort-AV: E=Sophos;i="5.75,285,1589266800"; d="scan'208";a="125694679"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 16:25:14 -0700
IronPort-SDR: FFji8fiayeDsVNWm6o+RcJuxNmdC4qN9jrr++H1Xd0I7yiSYBWMRMMNFcF25vD5WCzFuo92gBl
 iYPJDzmqOv7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,285,1589266800"; d="scan'208";a="424222121"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga004.jf.intel.com with ESMTP; 26 Jun 2020 16:25:14 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Jun 2020 16:26:40 -0700
Message-Id: <20200626232641.4557-1-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 1/2] drm/i915/dp: Helper for checking
 DDI_BUF_CTL Idle status
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

TW9kaWZ5IHRoZSBoZWxwZXIgdG8gYWRkIGEgZml4ZWQgZGVsYXkgb3IgcG9sbCB3aXRoIHRpbWVv
dXQKYmFzZWQgb24gcGxhdGZvcm0gc3BlY2lmaWNhdGlvbiB0byBjaGVjayBmb3IgZWl0aGVyIElk
bGUgYml0CnNldCAoRERJX0JVRl9DVEwgaXMgaWRsZSBmb3IgZGlzYWJsZSBjYXNlKQoKdjM6Ciog
Q2hhbmdlIHRoZSB0aW1lb3V0IHRvIDE2dXNlY3MgKFZpbGxlKQp2MjoKKiBVc2UgMiBzZXBhcmF0
ZSBmdW5jdGlvbnMgb3IgaWRsZSBhbmQgYWN0aXZlIChWaWxsZSkKCkNjOiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogSW1yZSBEZWFrIDxpbXJlLmRl
YWtAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZh
cmVAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmMgfCAxNyArKysrKysrKy0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygr
KSwgOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
YwppbmRleCA4ODRiNTA3YzVmNTUuLjA1MmE3NDYyNWE2MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC0xMTg0LDE2ICsxMTg0LDE1IEBAIHN0YXRpYyB2b2lk
IGludGVsX3ByZXBhcmVfaGRtaV9kZGlfYnVmZmVycyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5j
b2RlciwKIHN0YXRpYyB2b2lkIGludGVsX3dhaXRfZGRpX2J1Zl9pZGxlKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCQkgICAgZW51bSBwb3J0IHBvcnQpCiB7Ci0JaTkxNV9y
ZWdfdCByZWcgPSBERElfQlVGX0NUTChwb3J0KTsKLQlpbnQgaTsKLQotCWZvciAoaSA9IDA7IGkg
PCAxNjsgaSsrKSB7Ci0JCXVkZWxheSgxKTsKLQkJaWYgKGludGVsX2RlX3JlYWQoZGV2X3ByaXYs
IHJlZykgJiBERElfQlVGX0lTX0lETEUpCi0JCQlyZXR1cm47CisJaWYgKElTX0JST1hUT04oZGV2
X3ByaXYpKSB7CisJCXVkZWxheSgxNik7CisJCXJldHVybjsKIAl9Ci0JZHJtX2VycigmZGV2X3By
aXYtPmRybSwgIlRpbWVvdXQgd2FpdGluZyBmb3IgRERJIEJVRiAlYyBpZGxlIGJpdFxuIiwKLQkJ
cG9ydF9uYW1lKHBvcnQpKTsKKworCWlmICh3YWl0X2Zvcl91cygoaW50ZWxfZGVfcmVhZChkZXZf
cHJpdiwgRERJX0JVRl9DVEwocG9ydCkpICYKKwkJCSBERElfQlVGX0lTX0lETEUpLCAxNikpCisJ
CWRybV9lcnIoJmRldl9wcml2LT5kcm0sICJUaW1lb3V0IHdhaXRpbmcgZm9yIERESSBCVUYgJWMg
dG8gZ2V0IGlkbGVcbiIsCisJCQlwb3J0X25hbWUocG9ydCkpOwogfQogCiBzdGF0aWMgdTMyIGhz
d19wbGxfdG9fZGRpX3BsbF9zZWwoY29uc3Qgc3RydWN0IGludGVsX3NoYXJlZF9kcGxsICpwbGwp
Ci0tIAoyLjE5LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
