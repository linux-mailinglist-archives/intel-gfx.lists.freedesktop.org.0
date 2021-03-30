Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D654A34EDAE
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Mar 2021 18:24:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 483186E93F;
	Tue, 30 Mar 2021 16:24:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D9676E951
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Mar 2021 16:24:22 +0000 (UTC)
IronPort-SDR: 0Hk9bfZIaA0dTVl0DlawPqKMcOrcHs5r5vAeM31l8VVw0j3rWeJxOs3LRG01jccnCjdBu73dta
 DqxohbfSTLQg==
X-IronPort-AV: E=McAfee;i="6000,8403,9939"; a="212021404"
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="212021404"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2021 09:24:22 -0700
IronPort-SDR: b0i/m50FY6mwed5UsIySbdmW5wiNM74B3WGjuGjwwllq0l/YhWW5Hm1zjlRGFqQICi21bJBjcL
 8H+FIhwMbQNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="415872425"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 30 Mar 2021 09:24:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 30 Mar 2021 19:24:19 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Mar 2021 19:24:16 +0300
Message-Id: <20210330162416.18616-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210330162416.18616-1-ville.syrjala@linux.intel.com>
References: <20210330162416.18616-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Update plane ratio for icl+
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFj
Y29yZGluZyB0byBic3BlYyBpY2wrIG5vIGxvbmdlciBuZWVkIGFueSBleHRyYSBjZGNsayBndWFy
ZGJhbmQKZm9yIDY0YnBwIGZvcm1hdHMuIE1ha2UgaXQgc28uCgpTaWduZWQtb2ZmLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jIHwgMTEgKysrKysrKysr
Ky0KIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5l
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYwpp
bmRleCA1MTI3NDg5YTA0NDYuLjA5ODYzNmM4MTFhOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMKQEAgLTI4Niw2ICsyODYsMTUg
QEAgYm9vbCBpY2xfaXNfaGRyX3BsYW5lKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diwgZW51bSBwbGFuZV9pZCBwbGFuZV9pZCkKIAkJaWNsX2hkcl9wbGFuZV9tYXNrKCkgJiBCSVQo
cGxhbmVfaWQpOwogfQogCitzdGF0aWMgaW50IGljbF9wbGFuZV9taW5fY2RjbGsoY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCisJCQkgICAgICAgY29uc3Qgc3RydWN0
IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSkKK3sKKwl1bnNpZ25lZCBpbnQgcGl4ZWxf
cmF0ZSA9IGludGVsX3BsYW5lX3BpeGVsX3JhdGUoY3J0Y19zdGF0ZSwgcGxhbmVfc3RhdGUpOwor
CisJLyogdHdvIHBpeGVscyBwZXIgY2xvY2sgKi8KKwlyZXR1cm4gRElWX1JPVU5EX1VQKHBpeGVs
X3JhdGUsIDIpOworfQorCiBzdGF0aWMgdm9pZAogZ2xrX3BsYW5lX3JhdGlvKGNvbnN0IHN0cnVj
dCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUsCiAJCXVuc2lnbmVkIGludCAqbnVtLCB1
bnNpZ25lZCBpbnQgKmRlbikKQEAgLTE5ODAsNyArMTk4OSw3IEBAIHNrbF91bml2ZXJzYWxfcGxh
bmVfY3JlYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAkJcGxhbmUtPm1p
bl93aWR0aCA9IGljbF9wbGFuZV9taW5fd2lkdGg7CiAJCXBsYW5lLT5tYXhfd2lkdGggPSBpY2xf
cGxhbmVfbWF4X3dpZHRoOwogCQlwbGFuZS0+bWF4X2hlaWdodCA9IGljbF9wbGFuZV9tYXhfaGVp
Z2h0OwotCQlwbGFuZS0+bWluX2NkY2xrID0gZ2xrX3BsYW5lX21pbl9jZGNsazsKKwkJcGxhbmUt
Pm1pbl9jZGNsayA9IGljbF9wbGFuZV9taW5fY2RjbGs7CiAJfSBlbHNlIGlmIChESVNQTEFZX1ZF
UihkZXZfcHJpdikgPj0gMTApIHsKIAkJcGxhbmUtPm1heF93aWR0aCA9IGdsa19wbGFuZV9tYXhf
d2lkdGg7CiAJCXBsYW5lLT5tYXhfaGVpZ2h0ID0gc2tsX3BsYW5lX21heF9oZWlnaHQ7Ci0tIAoy
LjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
