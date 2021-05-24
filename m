Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D55B338F515
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 23:45:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E954F6E977;
	Mon, 24 May 2021 21:44:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B86BB6E964
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 21:44:57 +0000 (UTC)
IronPort-SDR: 5V32BoIeTrJWJPEUVBDWTBefrqkkAovBhzHTnvXWtSNYJZZJ3bNC3XQ4+jh+UdkroA3moxhenQ
 3Z7h1UpbsM3g==
X-IronPort-AV: E=McAfee;i="6200,9189,9994"; a="181677512"
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="181677512"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 14:44:56 -0700
IronPort-SDR: Ap76TbGmM80uTqmu03iMeEZnQXcgcf6rzvPoClaMCM4JXrDAv5uN2V1cT6IVglSkBr4k/fM9SD
 Tu1EU3nX3+ww==
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="546513304"
Received: from xxi2-mobl.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.254.32.238])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 14:44:56 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 May 2021 14:48:05 -0700
Message-Id: <20210524214805.259692-5-jose.souza@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210524214805.259692-1-jose.souza@intel.com>
References: <20210524214805.259692-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/5] drm/i915/display/adl_p: Disable PSR2
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

V2UgYXJlIG1pc3NpbmcgdGhlIGltcGxlbWVudGF0aW9uIG9mIHNvbWUgd29ya2Fyb3VuZHMgdG8g
ZW5hYmxlZCBQU1IyCmluIEFsZGVybGFrZSBQLCBzbyB0byBhdm9pZCBhbnkgQ0kgcmVwb3J0IG9m
IGlzc3VlcyBhcm91bmQgUFNSMgpkaXNhYmxpbmcgaXQgdW50aWwgYWxsIFBTUjIgd29ya2Fyb3Vu
ZHMgYXJlIGltcGxlbWVudGVkLgoKQ2M6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcubXVu
QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5z
b3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYyB8IDEwICsrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKaW5kZXggYzU3MjEwODYyMjA2
Li40NmJkNzc2NjllYWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
YwpAQCAtNzY1LDYgKzc2NSwxNiBAQCBzdGF0aWMgYm9vbCBpbnRlbF9wc3IyX2NvbmZpZ192YWxp
ZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCQlyZXR1cm4gZmFsc2U7CiAJfQogCisJLyoK
KwkgKiBXZSBhcmUgbWlzc2luZyB0aGUgaW1wbGVtZW50YXRpb24gb2Ygc29tZSB3b3JrYXJvdW5k
cyB0byBlbmFibGVkIFBTUjIKKwkgKiBhbHNvIFdpbmRvd3MgdGVhbSBmb3VuZCBpc3N1ZXMgaW4g
dGhpcyBzdGVwcGluZyB0aGF0IGFyZSBjYXVzaW5nCisJICogaXNzdWVzIGluIG1vc3QgUFNSMiBw
YW5lbHMuCisJICovCisJaWYgKElTX0FMREVSTEFLRV9QKGRldl9wcml2KSkgeworCQlkcm1fZGJn
X2ttcygmZGV2X3ByaXYtPmRybSwgIlBTUjIgaXMgbWlzc2luZyB0aGUgaW1wbGVtZW50YXRpb24g
b2Ygd29ya2Fyb3VuZHNcbiIpOworCQlyZXR1cm4gZmFsc2U7CisJfQorCiAJaWYgKCF0cmFuc2Nv
ZGVyX2hhc19wc3IyKGRldl9wcml2LCBjcnRjX3N0YXRlLT5jcHVfdHJhbnNjb2RlcikpIHsKIAkJ
ZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sCiAJCQkgICAgIlBTUjIgbm90IHN1cHBvcnRlZCBp
biB0cmFuc2NvZGVyICVzXG4iLAotLSAKMi4zMS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
