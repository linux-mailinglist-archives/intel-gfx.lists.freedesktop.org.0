Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C91805B519
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 08:34:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 443FE89F6E;
	Mon,  1 Jul 2019 06:34:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6608F89F6B
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 06:34:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jun 2019 23:34:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,437,1557212400"; d="scan'208";a="153988745"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by orsmga007.jf.intel.com with ESMTP; 30 Jun 2019 23:34:37 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Jul 2019 11:56:29 +0530
Message-Id: <20190701062632.456-13-animesh.manna@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190701062632.456-1-animesh.manna@intel.com>
References: <20190701062632.456-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/15] drm/i915/dsb: Early prepare of dsb
 context.
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

VGhlIGRzYiBnZXQgY2FsbCBhZGRlZCBwYXJ0IG9mIHRoZSBwcmVwYXJlIHNvIHRoYXQgd2UgZG9u
J3QKaGF2ZSB0aGluZ3MgdGhhdCBjYW4gZmFpbCBpbiB0aGUgY29tbWl0IHByb3Blci4KClRoZSBh
bGxvY2F0ZWQgZHNiLWNvbnRleHQgd2lsbCBiZSB0cmFja2VkIHVuZGVyIGludGVsX2NydGNfc3Rh
dGUKaW5zdGVhZCBvZiBpbnRlbF9jcnRjIHBlciBhdG9taWMtY29tbWl0LgoKQ2M6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBKYW5pIE5pa3VsYSA8
amFuaS5uaWt1bGFAaW50ZWwuY29tPgpDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50
ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8
IDE3ICsrKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYuaCAg
ICAgICAgICAgICB8ICAyICsrCiAyIGZpbGVzIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGU1NWJk
NzU1MjhjMS4uNmRlYTYxNjg5MjkwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTM3MDgsNiArMTM3MDgsMjIgQEAgc3RhdGljIHZvaWQgc2ts
X3VwZGF0ZV9jcnRjcyhzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUpCiAJCWljbF9kYnVm
X3NsaWNlc191cGRhdGUoZGV2X3ByaXYsIHJlcXVpcmVkX3NsaWNlcyk7CiB9CiAKK3N0YXRpYyB2
b2lkIGludGVsX3ByZXBhcmVfZHNiKHN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpzdGF0ZSkKK3sK
KwlzdHJ1Y3QgZHJtX2NydGNfc3RhdGUgKmNydGNfc3RhdGU7CisJc3RydWN0IGRybV9jcnRjICpj
cnRjOworCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjb25maWc7CisJaW50IGk7CisKKwlpZiAo
IXN0YXRlKQorCQlyZXR1cm47CisKKwlmb3JfZWFjaF9uZXdfY3J0Y19pbl9zdGF0ZShzdGF0ZSwg
Y3J0YywgY3J0Y19zdGF0ZSwgaSkgeworCQljb25maWcgPSB0b19pbnRlbF9jcnRjX3N0YXRlKGNy
dGNfc3RhdGUpOworCQljb25maWctPmRzYiA9IGludGVsX2RzYl9nZXQodG9faW50ZWxfY3J0Yyhj
cnRjKSk7CisJfQorfQorCiBzdGF0aWMgdm9pZCBpbnRlbF9hdG9taWNfaGVscGVyX2ZyZWVfc3Rh
dGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogewogCXN0cnVjdCBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlLCAqbmV4dDsKQEAgLTE0MDc0LDYgKzE0MDkwLDcgQEAgc3RhdGlj
IGludCBpbnRlbF9hdG9taWNfY29tbWl0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJZGV2X3By
aXYtPndtLmRpc3RydXN0X2Jpb3Nfd20gPSBmYWxzZTsKIAlpbnRlbF9zaGFyZWRfZHBsbF9zd2Fw
X3N0YXRlKHN0YXRlKTsKIAlpbnRlbF9hdG9taWNfdHJhY2tfZmJzKHN0YXRlKTsKKwlpbnRlbF9w
cmVwYXJlX2RzYihzdGF0ZSk7CiAKIAlpZiAoaW50ZWxfc3RhdGUtPm1vZGVzZXQpIHsKIAkJbWVt
Y3B5KGRldl9wcml2LT5taW5fY2RjbGssIGludGVsX3N0YXRlLT5taW5fY2RjbGssCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2Rydi5oCmluZGV4IGEwNWEwNDdkNzhhZi4uYmZlYTBlMjFkZTYzIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kcnYuaApAQCAtOTQ2LDYgKzk0Niw4IEBAIHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlIHsKIAogCS8qIEZvcndhcmQgRXJyb3IgY29ycmVjdGlvbiBTdGF0ZSAqLwogCWJvb2wg
ZmVjX2VuYWJsZTsKKworCXN0cnVjdCBpbnRlbF9kc2IgKmRzYjsKIH07CiAKIHN0cnVjdCBpbnRl
bF9jcnRjIHsKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
