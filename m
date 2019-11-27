Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85D8910B65B
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 20:06:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 194706E5A9;
	Wed, 27 Nov 2019 19:06:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9540B6E48E
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 19:06:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 11:06:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,250,1571727600"; d="scan'208";a="261088978"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 27 Nov 2019 11:06:02 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Nov 2019 21:06:01 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Nov 2019 21:05:51 +0200
Message-Id: <20191127190556.1574-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191127190556.1574-1-ville.syrjala@linux.intel.com>
References: <20191127190556.1574-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/7] drm/i915: Pass dev_priv to
 ilk_disable_lp_wm()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkdl
dCByaWQgb2YgYW5vdGhlciAnZGV2JyB1c2FnZSBieSBwYXNzaW5nIGRldl9wcml2IGluc3RlYWQu
CgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
IHwgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyAgICAgICAgICAgICAgfCA0
ICstLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmggICAgICAgICAgICAgIHwgMiAr
LQogMyBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCBkNTU5Yjdh
ZTExNTEuLjg5YzhmODE4ZjI4OSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKQEAgLTYxNjYsNyArNjE2Niw3IEBAIHN0YXRpYyB2b2lkIGludGVsX3By
ZV9wbGFuZV91cGRhdGUoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlLAog
CSAqCiAJICogV2FDeFNSRGlzYWJsZWRGb3JTcHJpdGVTY2FsaW5nOml2YgogCSAqLwotCWlmIChw
aXBlX2NvbmZpZy0+ZGlzYWJsZV9scF93bSAmJiBpbGtfZGlzYWJsZV9scF93bShkZXYpICYmCisJ
aWYgKHBpcGVfY29uZmlnLT5kaXNhYmxlX2xwX3dtICYmIGlsa19kaXNhYmxlX2xwX3dtKGRldl9w
cml2KSAmJgogCSAgICBvbGRfY3J0Y19zdGF0ZS0+aHcuYWN0aXZlKQogCQlpbnRlbF93YWl0X2Zv
cl92YmxhbmsoZGV2X3ByaXYsIGNydGMtPnBpcGUpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwpp
bmRleCA1YWFkOWQ0OWE1MjguLjhkNjM2NzI0NTJhOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5j
CkBAIC0zNTkyLDEwICszNTkyLDggQEAgc3RhdGljIHZvaWQgaWxrX3dyaXRlX3dtX3ZhbHVlcyhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJZGV2X3ByaXYtPndtLmh3ID0gKnJl
c3VsdHM7CiB9CiAKLWJvb2wgaWxrX2Rpc2FibGVfbHBfd20oc3RydWN0IGRybV9kZXZpY2UgKmRl
dikKK2Jvb2wgaWxrX2Rpc2FibGVfbHBfd20oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2KQogewotCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2
KTsKLQogCXJldHVybiBfaWxrX2Rpc2FibGVfbHBfd20oZGV2X3ByaXYsIFdNX0RJUlRZX0xQX0FM
TCk7CiB9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5oCmluZGV4IGI1NzljNzI0YjkxNS4uYzA2YzZh
ODQ2ZDlhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5oCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmgKQEAgLTU0LDcgKzU0LDcgQEAgdm9pZCBz
a2xfd3JpdGVfcGxhbmVfd20oc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwKIAkJCWNvbnN0IHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKIHZvaWQgc2tsX3dyaXRlX2N1cnNv
cl93bShzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAogCQkJIGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKLWJvb2wgaWxrX2Rpc2FibGVfbHBfd20oc3RydWN0IGRy
bV9kZXZpY2UgKmRldik7Citib29sIGlsa19kaXNhYmxlX2xwX3dtKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdik7CiB2b2lkIGludGVsX2luaXRfaXBjKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdik7CiB2b2lkIGludGVsX2VuYWJsZV9pcGMoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KTsKIAotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
