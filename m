Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E827E8CDD
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 17:39:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E49666E4AB;
	Tue, 29 Oct 2019 16:39:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E10EC6EC4B
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 16:39:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 09:38:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,244,1569308400"; d="scan'208";a="211808010"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by orsmga002.jf.intel.com with ESMTP; 29 Oct 2019 09:38:48 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id BAC52843CC8; Tue, 29 Oct 2019 18:38:47 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Oct 2019 18:38:41 +0200
Message-Id: <20191029163841.5224-2-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029163841.5224-1-mika.kuoppala@linux.intel.com>
References: <20191029163841.5224-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: Add gam instdone
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBoYXMgYmVlbiBhc2tlZCBmcm9tIHVzIGFscmVhZHkuIFByZXBhcmUgZm9yIHRoZSBuZXh0
CnRpbWUuCgpTaWduZWQtb2ZmLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4
LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jIHwg
NCArKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5oIHwgMSArCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgIHwgMSArCiAzIGZpbGVzIGNoYW5nZWQs
IDYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z3B1X2Vycm9yLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jCmluZGV4
IDgyOThlN2NhMmY3MS4uZThiNjdmNWU1MjFkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dwdV9lcnJvci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1
X2Vycm9yLmMKQEAgLTc0Niw2ICs3NDYsOCBAQCBzdGF0aWMgdm9pZCBfX2Vycl9wcmludF90b19z
Z2woc3RydWN0IGRybV9pOTE1X2Vycm9yX3N0YXRlX2J1ZiAqbSwKIAkJZm9yIChpID0gMDsgaSA8
IEdFTjEyX1NGQ19ET05FX01BWDsgaSsrKQogCQkJZXJyX3ByaW50ZihtLCAiICBTRkNfRE9ORVsl
ZF06IDB4JTA4eFxuIiwgaSwKIAkJCQkgICBlcnJvci0+c2ZjX2RvbmVbaV0pOworCisJCWVycl9w
cmludGYobSwgIiAgR0FNX0RPTkU6IDB4JTA4eFxuIiwgZXJyb3ItPmdhbV9kb25lKTsKIAl9CiAK
IAlmb3IgKGVlID0gZXJyb3ItPmVuZ2luZTsgZWU7IGVlID0gZWUtPm5leHQpCkBAIC0xNjEyLDYg
KzE2MTQsOCBAQCBzdGF0aWMgdm9pZCBjYXB0dXJlX3JlZ19zdGF0ZShzdHJ1Y3QgaTkxNV9ncHVf
c3RhdGUgKmVycm9yKQogCQkJZXJyb3ItPnNmY19kb25lW2ldID0KIAkJCQlpbnRlbF91bmNvcmVf
cmVhZCh1bmNvcmUsIEdFTjEyX1NGQ19ET05FKGkpKTsKIAkJfQorCisJCWVycm9yLT5nYW1fZG9u
ZSA9IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgR0VOMTJfR0FNX0RPTkUpOwogCX0KIAogCS8q
IDQ6IEV2ZXJ5dGhpbmcgZWxzZSAqLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9ncHVfZXJyb3IuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmgK
aW5kZXggMGZlZGU3MDBlOTIwLi41ZDJjMzM3MmZmOTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9ncHVfZXJyb3IuaApAQCAtNzYsNiArNzYsNyBAQCBzdHJ1Y3QgaTkxNV9ncHVfc3RhdGUgewog
CXUzMiBndHRfY2FjaGU7CiAJdTMyIGF1eF9lcnI7IC8qIGdlbjEyICovCiAJdTMyIHNmY19kb25l
W0dFTjEyX1NGQ19ET05FX01BWF07IC8qIGdlbjEyICovCisJdTMyIGdhbV9kb25lOyAvKiBnZW4x
MiAqLwogCiAJdTMyIG5mZW5jZTsKIAl1NjQgZmVuY2VbSTkxNV9NQVhfTlVNX0ZFTkNFU107CmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCBiOGZiNzkzYTMwMTguLjE4N2JkMzU0NWE4MCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC0yNTYxLDYgKzI1NjEsNyBAQCBzdGF0aWMgaW5saW5l
IGJvb2wgaTkxNV9tbWlvX3JlZ192YWxpZChpOTE1X3JlZ190IHJlZykKICNkZWZpbmUgICBSSU5H
X0ZBVUxUX0ZBVUxUX1RZUEUoeCkgKCgoeCkgPj4gMSkgJiAweDMpCiAjZGVmaW5lICAgUklOR19G
QVVMVF9WQUxJRAkoMSA8PCAwKQogI2RlZmluZSBET05FX1JFRwkJX01NSU8oMHg0MGIwKQorI2Rl
ZmluZSBHRU4xMl9HQU1fRE9ORQkJX01NSU8oMHhjZjY4KQogI2RlZmluZSBHRU44X1BSSVZBVEVf
UEFUX0xPCV9NTUlPKDB4NDBlMCkKICNkZWZpbmUgR0VOOF9QUklWQVRFX1BBVF9ISQlfTU1JTygw
eDQwZTAgKyA0KQogI2RlZmluZSBHRU4xMF9QQVRfSU5ERVgoaW5kZXgpCV9NTUlPKDB4NDBlMCAr
IChpbmRleCkgKiA0KQotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
