Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 198F65C880
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 06:44:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BDA589725;
	Tue,  2 Jul 2019 04:44:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D63689725
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 04:44:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Jul 2019 21:44:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,442,1557212400"; d="scan'208";a="157506391"
Received: from vandita-desktop.iind.intel.com ([10.223.74.126])
 by orsmga008.jf.intel.com with ESMTP; 01 Jul 2019 21:44:19 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 Jul 2019 09:48:47 +0530
Message-Id: <20190702041850.4293-2-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20190702041850.4293-1-vandita.kulkarni@intel.com>
References: <20190702041850.4293-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/tgl/dsi: Program TRANS_VBLANK
 register
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UHJvZ3JhbSB2YmxhbmsgcmVnaXN0ZXIgZm9yIG1pcGkgZHNpIGluIHZpZGVvIG1vZGUKb24gVEdM
LgoKU2lnbmVkLW9mZi1ieTogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMgfCA5ICsr
KysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pY2xfZHNpLmMKaW5kZXggYjg2NzNkZWJmOTMyLi41NTZlYmEyNjM2ZmUgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jCkBAIC04NjYsNiArODY2LDE1IEBA
IGdlbjExX2RzaV9zZXRfdHJhbnNjb2Rlcl90aW1pbmdzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyLAogCQlkc2lfdHJhbnMgPSBkc2lfcG9ydF90b190cmFuc2NvZGVyKHBvcnQpOwogCQlJ
OTE1X1dSSVRFKFZTWU5DU0hJRlQoZHNpX3RyYW5zKSwgdnN5bmNfc2hpZnQpOwogCX0KKworCS8q
IHByb2dyYW0gVFJBTlNfVkJMQU5LIHJlZ2lzdGVyLCBzaG91bGQgYmUgc2FtZSBhcyB2dG90YWwg
cHJvZ2FtbWVkICovCisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpIHsKKwkJZm9yX2Vh
Y2hfZHNpX3BvcnQocG9ydCwgaW50ZWxfZHNpLT5wb3J0cykgeworCQkJZHNpX3RyYW5zID0gZHNp
X3BvcnRfdG9fdHJhbnNjb2Rlcihwb3J0KTsKKwkJCUk5MTVfV1JJVEUoVkJMQU5LKGRzaV90cmFu
cyksCisJCQkJICAgKHZhY3RpdmUgLSAxKSB8ICgodnRvdGFsIC0gMSkgPDwgMTYpKTsKKwkJfQor
CX0KIH0KIAogc3RhdGljIHZvaWQgZ2VuMTFfZHNpX2VuYWJsZV90cmFuc2NvZGVyKHN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyKQotLSAKMi4yMS4wLjUuZ2FlYjU4MmEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
