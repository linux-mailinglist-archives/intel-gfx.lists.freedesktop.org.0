Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 311DF307A2E
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 17:00:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC9106E1F1;
	Thu, 28 Jan 2021 15:59:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E458D6E1F1
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 15:59:55 +0000 (UTC)
IronPort-SDR: ojYnOWGQyv/DE/MnzBQ/JjeSsLqF/KwYRoi2fFfBl1q4Q8Ml39/vtJbyCiKFkCemazDVYAsp7c
 iocHdMM2wOTQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9878"; a="160028420"
X-IronPort-AV: E=Sophos;i="5.79,382,1602572400"; d="scan'208";a="160028420"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2021 07:59:55 -0800
IronPort-SDR: dW2GBBf3u9X43+wFRhxYe7cZ/tkaRtdFj0z1wbvozCxo6rXV6bU3LmkUqgE+R+A64DWHbGXebW
 qwBheWk1W0Lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,382,1602572400"; d="scan'208";a="473879654"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 28 Jan 2021 07:59:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 28 Jan 2021 17:59:52 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Jan 2021 17:59:45 +0200
Message-Id: <20210128155948.13678-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210128155948.13678-1-ville.syrjala@linux.intel.com>
References: <20210128155948.13678-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm/i915: Extract intel_ddi_power_up_lanes()
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJl
ZHVjZSB0aGUgY29weXBhc3RhIGJ5IHB1bGxpbmcgdGhlIGNvbWJvIFBIWSBsYW5lCnBvd2VyIHVw
IHN0dWZmIGludG8gYSBoZWxwZXIuIFdlJ2xsIGhhdmUgYSB0aGlyZCB1c2VyIHNvb24uCgpDYzog
c3RhYmxlQHZnZXIua2VybmVsLm9yZwpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpLmMgfCAzNSArKysrKysrKysrKysrLS0tLS0tLS0tLS0KIDEgZmlsZSBj
aGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwppbmRleCBjOTQ2NTA0ODhkYzEuLjg4Y2M2ZTJmYmU5
MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC0zNjQxLDYg
KzM2NDEsMjMgQEAgc3RhdGljIHZvaWQgaW50ZWxfZGRpX2Rpc2FibGVfZmVjX3N0YXRlKHN0cnVj
dCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCWludGVsX2RlX3Bvc3RpbmdfcmVhZChkZXZfcHJp
diwgZHBfdHBfY3RsX3JlZyhlbmNvZGVyLCBjcnRjX3N0YXRlKSk7CiB9CiAKK3N0YXRpYyB2b2lk
IGludGVsX2RkaV9wb3dlcl91cF9sYW5lcyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwK
KwkJCQkgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQorewor
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRl
dik7CisJc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQgPSBlbmNfdG9fZGlnX3Bv
cnQoZW5jb2Rlcik7CisJZW51bSBwaHkgcGh5ID0gaW50ZWxfcG9ydF90b19waHkoaTkxNSwgZW5j
b2Rlci0+cG9ydCk7CisKKwlpZiAoaW50ZWxfcGh5X2lzX2NvbWJvKGk5MTUsIHBoeSkpIHsKKwkJ
Ym9vbCBsYW5lX3JldmVyc2FsID0KKwkJCWRpZ19wb3J0LT5zYXZlZF9wb3J0X2JpdHMgJiBERElf
QlVGX1BPUlRfUkVWRVJTQUw7CisKKwkJaW50ZWxfY29tYm9fcGh5X3Bvd2VyX3VwX2xhbmVzKGk5
MTUsIHBoeSwgZmFsc2UsCisJCQkJCSAgICAgICBjcnRjX3N0YXRlLT5sYW5lX2NvdW50LAorCQkJ
CQkgICAgICAgbGFuZV9yZXZlcnNhbCk7CisJfQorfQorCiBzdGF0aWMgdm9pZCB0Z2xfZGRpX3By
ZV9lbmFibGVfZHAoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJCQkJICBzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIAkJCQkgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlLApAQCAtMzczMiwxNCArMzc0OSw3IEBAIHN0YXRpYyB2b2lkIHRn
bF9kZGlfcHJlX2VuYWJsZV9kcChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIAkg
KiA3LmYgQ29tYm8gUEhZOiBDb25maWd1cmUgUE9SVF9DTF9EVzEwIFN0YXRpYyBQb3dlciBEb3du
IHRvIHBvd2VyIHVwCiAJICogdGhlIHVzZWQgbGFuZXMgb2YgdGhlIERESS4KIAkgKi8KLQlpZiAo
aW50ZWxfcGh5X2lzX2NvbWJvKGRldl9wcml2LCBwaHkpKSB7Ci0JCWJvb2wgbGFuZV9yZXZlcnNh
bCA9Ci0JCQlkaWdfcG9ydC0+c2F2ZWRfcG9ydF9iaXRzICYgRERJX0JVRl9QT1JUX1JFVkVSU0FM
OwotCi0JCWludGVsX2NvbWJvX3BoeV9wb3dlcl91cF9sYW5lcyhkZXZfcHJpdiwgcGh5LCBmYWxz
ZSwKLQkJCQkJICAgICAgIGNydGNfc3RhdGUtPmxhbmVfY291bnQsCi0JCQkJCSAgICAgICBsYW5l
X3JldmVyc2FsKTsKLQl9CisJaW50ZWxfZGRpX3Bvd2VyX3VwX2xhbmVzKGVuY29kZXIsIGNydGNf
c3RhdGUpOwogCiAJLyoKIAkgKiA3LmcgQ29uZmlndXJlIGFuZCBlbmFibGUgRERJX0JVRl9DVEwK
QEAgLTM4MzAsMTQgKzM4NDAsNyBAQCBzdGF0aWMgdm9pZCBoc3dfZGRpX3ByZV9lbmFibGVfZHAo
c3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJZWxzZQogCQlpbnRlbF9wcmVwYXJl
X2RwX2RkaV9idWZmZXJzKGVuY29kZXIsIGNydGNfc3RhdGUpOwogCi0JaWYgKGludGVsX3BoeV9p
c19jb21ibyhkZXZfcHJpdiwgcGh5KSkgewotCQlib29sIGxhbmVfcmV2ZXJzYWwgPQotCQkJZGln
X3BvcnQtPnNhdmVkX3BvcnRfYml0cyAmIERESV9CVUZfUE9SVF9SRVZFUlNBTDsKLQotCQlpbnRl
bF9jb21ib19waHlfcG93ZXJfdXBfbGFuZXMoZGV2X3ByaXYsIHBoeSwgZmFsc2UsCi0JCQkJCSAg
ICAgICBjcnRjX3N0YXRlLT5sYW5lX2NvdW50LAotCQkJCQkgICAgICAgbGFuZV9yZXZlcnNhbCk7
Ci0JfQorCWludGVsX2RkaV9wb3dlcl91cF9sYW5lcyhlbmNvZGVyLCBjcnRjX3N0YXRlKTsKIAog
CWludGVsX2RkaV9pbml0X2RwX2J1Zl9yZWcoZW5jb2RlciwgY3J0Y19zdGF0ZSk7CiAJaWYgKCFp
c19tc3QpCi0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
