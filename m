Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 270966C0C9
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 20:06:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 560286E294;
	Wed, 17 Jul 2019 18:06:47 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA32C6E293
 for <Intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 18:06:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 11:06:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,275,1559545200"; d="scan'208";a="343110858"
Received: from esulliva-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.94.109])
 by orsmga005.jf.intel.com with ESMTP; 17 Jul 2019 11:06:36 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jul 2019 19:06:24 +0100
Message-Id: <20190717180624.20354-7-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190717180624.20354-1-tvrtko.ursulin@linux.intel.com>
References: <20190717180624.20354-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/6] drm/i915/icl: Add Wa_1409178092
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCldlIHdlcmUg
bWlzc2luZyB0aGlzIHdvcmthcm91bmQgd2hpY2ggY2FuIGNhdXNlIGhhbmdzIGlmIGZpbmUgZ3Jh
aW5lZApjb2hlcmVuY3kgd2FzIHVzZWQuCgpTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3dvcmthcm91bmRzLmMgfCA2ICsrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaCAgICAgICAgICAgICB8IDMgKysrCiAyIGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygr
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRz
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCmluZGV4IGZm
NTMyZmY1ZDU3NC4uNzA0YWNlMDFlN2Y1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3dvcmthcm91bmRzLmMKQEAgLTEyOTcsNiArMTI5NywxMiBAQCByY3NfZW5naW5lX3dhX2lu
aXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3
YWwpCiAJCXdhX3dyaXRlX29yKHdhbCwKIAkJCSAgICBHRU43X1NBUkNIS01ELAogCQkJICAgIEdF
TjdfRElTQUJMRV9TQU1QTEVSX1BSRUZFVENIKTsKKworCQkvKiBXYV8xNDA5MTc4MDkyOmljbCAq
LworCQl3YV93cml0ZV9tYXNrZWRfb3Iod2FsLAorCQkJCSAgIEdFTjExX1NDUkFUQ0gyLAorCQkJ
CSAgIEdFTjExX0NPSEVSRU5UX1BBUlRJQUxfV1JJVEVfTUVSR0VfRU5BQkxFLAorCQkJCSAgIDAp
OwogCX0KIAogCWlmIChJU19HRU5fUkFOR0UoaTkxNSwgOSwgMTEpKSB7CmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaAppbmRleCBmZGQ5YmMwMWU2OTQuLjI0ZjJhNTJhMmI0MiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oCkBAIC03NzIxLDYgKzc3MjEsOSBAQCBlbnVtIHsKICNkZWZpbmUgR0VON19MM1NR
Q1JFRzQJCQkJX01NSU8oMHhiMDM0KQogI2RlZmluZSAgTDNTUV9VUkJfUkVBRF9DQU1fTUFUQ0hf
RElTQUJMRQkoMSA8PCAyNykKIAorI2RlZmluZSBHRU4xMV9TQ1JBVENIMgkJCQkJX01NSU8oMHhi
MTQwKQorI2RlZmluZSAgR0VOMTFfQ09IRVJFTlRfUEFSVElBTF9XUklURV9NRVJHRV9FTkFCTEUJ
KDEgPDwgMTkpCisKICNkZWZpbmUgR0VOOF9MM1NRQ1JFRzQJCQkJX01NSU8oMHhiMTE4KQogI2Rl
ZmluZSAgR0VOMTFfTFFTQ19DTEVBTl9FVklDVF9ESVNBQkxFCQkoMSA8PCA2KQogI2RlZmluZSAg
R0VOOF9MUVNDX1JPX1BFUkZfRElTCQkJKDEgPDwgMjcpCi0tIAoyLjIwLjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
