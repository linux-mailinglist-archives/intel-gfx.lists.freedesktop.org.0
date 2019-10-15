Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD6DD7A54
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 17:46:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 968566E83E;
	Tue, 15 Oct 2019 15:46:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB20789B61
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 15:45:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 08:45:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,300,1566889200"; d="scan'208";a="220463011"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by fmsmga004.fm.intel.com with ESMTP; 15 Oct 2019 08:45:22 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 1871E84079B; Tue, 15 Oct 2019 18:44:51 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 18:44:48 +0300
Message-Id: <20191015154449.10338-10-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191015154449.10338-1-mika.kuoppala@linux.intel.com>
References: <20191015154449.10338-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 10/11] drm/i915/tgl: Wa_1607030317, Wa_1607186500,
 Wa_1607297627
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

RGlzYWJsZSBzZW1hcGhvcmUgaWRsZSBtZXNzYWdlcyBhbmQgd2FpdCBmb3IgZXZlbnQKcG93ZXIg
ZG93bnMuCgpTaWduZWQtb2ZmLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4
LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5k
cy5jIHwgOCArKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAg
ICAgICB8IDEgKwogMiBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwppbmRleCAzYmFjZjNkOTY4NGUuLjcz
ZmMxNjhkN2Y2MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29y
a2Fyb3VuZHMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5k
cy5jCkBAIC0xMjgxLDYgKzEyODEsMTQgQEAgcmNzX2VuZ2luZV93YV9pbml0KHN0cnVjdCBpbnRl
bF9lbmdpbmVfY3MgKmVuZ2luZSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQogCQl3YV93cml0
ZV9vcih3YWwsCiAJCQkgICAgR0VOOV9DVFhfUFJFRU1QVF9SRUcsCiAJCQkgICAgR0VOMTJfRElT
QUJMRV9QT1NIX0JVU1lfRkZfRE9QX0NHKTsKKworCQkvKiBXYV8xNjA3MDMwMzE3OnRnbCAqLwor
CQkvKiBXYV8xNjA3MTg2NTAwOnRnbCAqLworCQkvKiBXYV8xNjA3Mjk3NjI3OnRnbCAqLworCQl3
YV9tYXNrZWRfZW4od2FsLAorCQkJICAgICBHRU42X1JDX1NMRUVQX1BTTUlfQ09OVFJPTCwKKwkJ
CSAgICAgR0VOMTJfV0FJVF9GT1JfRVZFTlRfUE9XRVJfRE9XTl9ESVNBQkxFIHwKKwkJCSAgICAg
R0VOOF9SQ19TRU1BX0lETEVfTVNHX0RJU0FCTEUpOwogCX0KIAogCWlmIChJU19HRU4oaTkxNSwg
MTEpKSB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAppbmRleCAxOWFjMDEwNTc1MjguLmI1MGVjODc4
YTBiNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCkBAIC0yODg1LDYgKzI4ODUsNyBAQCBzdGF0
aWMgaW5saW5lIGJvb2wgaTkxNV9tbWlvX3JlZ192YWxpZChpOTE1X3JlZ190IHJlZykKIAogI2Rl
ZmluZSBHRU42X1JDX1NMRUVQX1BTTUlfQ09OVFJPTAlfTU1JTygweDIwNTApCiAjZGVmaW5lICAg
R0VONl9QU01JX1NMRUVQX01TR19ESVNBQkxFCSgxIDw8IDApCisjZGVmaW5lICAgR0VOMTJfV0FJ
VF9GT1JfRVZFTlRfUE9XRVJfRE9XTl9ESVNBQkxFICgxIDw8IDcpCiAjZGVmaW5lICAgR0VOOF9S
Q19TRU1BX0lETEVfTVNHX0RJU0FCTEUJKDEgPDwgMTIpCiAjZGVmaW5lICAgR0VOOF9GRl9ET1Bf
Q0xPQ0tfR0FURV9ESVNBQkxFCSgxIDw8IDEwKQogCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
