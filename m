Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 261E859A0A
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 14:07:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B128D6E8F0;
	Fri, 28 Jun 2019 12:07:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 974656E8EF
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 12:07:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jun 2019 05:07:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,427,1557212400"; d="scan'208";a="153354899"
Received: from akamins1-mobl.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.249.139.35])
 by orsmga007.jf.intel.com with ESMTP; 28 Jun 2019 05:07:25 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jun 2019 15:07:20 +0300
Message-Id: <20190628120720.21682-4-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
In-Reply-To: <20190628120720.21682-1-lionel.g.landwerlin@intel.com>
References: <20190628120720.21682-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 3/3] drm/i915/icl: whitelist
 PS_(DEPTH|INVOCATION)_COUNT
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIHNhbWUgdGVzdHMgZmFpbGluZyBvbiBDRkwrIHBsYXRmb3JtcyBhcmUgYWxzbyBmYWlsaW5n
IG9uIElDTC4KRG9jdW1lbnRhdGlvbiBkb2Vzbid0IGxpc3QgdGhlCldhQWxsb3dQTURlcHRoQW5k
SW52b2NhdGlvbkNvdW50QWNjZXNzRnJvbVVNRCB3b3JrYXJvdW5kIGZvciBJQ0wgYnV0CmFwcGx5
aW5nIGl0IGZpeGVzIHRoZSBzYW1lIHRlc3RzIGFzIENGTC4KCnYyOiBVc2Ugb25seSBvbmUgd2hp
dGVsaXN0IGVudHJ5IChMaW9uZWwpCgpTaWduZWQtb2ZmLWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiA8
bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+ClRlc3RlZC1ieTogIEFudWogUGhvZ2F0IDxh
bnVqLnBob2dhdEBnbWFpbC5jb20+CkNjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCi0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDEzICsrKysrKysrKysr
KysKIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKaW5kZXggYjExNzU4M2UzOGJiLi5hOTA4ZDgyOWQ2
YmQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRz
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwpAQCAt
MTEzOCw2ICsxMTM4LDE5IEBAIHN0YXRpYyB2b2lkIGljbF93aGl0ZWxpc3RfYnVpbGQoc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCiAJCS8qIFdhRW5hYmxlU3RhdGVDYWNoZVJlZGly
ZWN0VG9DUzppY2wgKi8KIAkJd2hpdGVsaXN0X3JlZyh3LCBHRU45X1NMSUNFX0NPTU1PTl9FQ09f
Q0hJQ0tFTjEpOworCisJCS8qCisJCSAqIFdhQWxsb3dQTURlcHRoQW5kSW52b2NhdGlvbkNvdW50
QWNjZXNzRnJvbVVNRDppY2wKKwkJICoKKwkJICogVGhpcyBjb3ZlcnMgNCByZWdpc3RlciB3aGlj
aCBhcmUgbmV4dCB0byBvbmUgYW5vdGhlciA6CisJCSAqICAgLSBQU19JTlZPQ0FUSU9OX0NPVU5U
CisJCSAqICAgLSBQU19JTlZPQ0FUSU9OX0NPVU5UX1VEVworCQkgKiAgIC0gUFNfREVQVEhfQ09V
TlQKKwkJICogICAtIFBTX0RFUFRIX0NPVU5UX1VEVworCQkgKi8KKwkJd2hpdGVsaXN0X3JlZ19l
eHQodywgUFNfSU5WT0NBVElPTl9DT1VOVCwKKwkJCQkgIFJJTkdfRk9SQ0VfVE9fTk9OUFJJVl9S
RCB8CisJCQkJICBSSU5HX0ZPUkNFX1RPX05PTlBSSVZfUkFOR0VfNCk7CiAJCWJyZWFrOwogCiAJ
Y2FzZSBWSURFT19ERUNPREVfQ0xBU1M6Ci0tIAoyLjIxLjAuMzkyLmdmOGY2Nzg3MTU5ZQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
