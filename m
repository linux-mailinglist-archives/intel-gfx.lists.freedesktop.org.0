Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A56E557EDB
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 11:01:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2C436E558;
	Thu, 27 Jun 2019 09:01:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAD696E83A
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 09:01:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 02:01:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,423,1557212400"; d="scan'208";a="337518502"
Received: from lswidere-mobl.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.249.140.121])
 by orsmga005.jf.intel.com with ESMTP; 27 Jun 2019 02:01:22 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jun 2019 12:01:16 +0300
Message-Id: <20190627090116.10847-4-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
In-Reply-To: <20190627090116.10847-1-lionel.g.landwerlin@intel.com>
References: <20190627090116.10847-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 3/3] drm/i915/icl: whitelist
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIHNhbWUgdGVzdHMgZmFpbGluZyBvbiBDRkwrIHBsYXRmb3JtcyBhcmUgYWxzbyBmYWlsaW5n
IG9uIElDTC4KRG9jdW1lbnRhdGlvbiBkb2Vzbid0IGxpc3QgdGhlCldhQWxsb3dQTURlcHRoQW5k
SW52b2NhdGlvbkNvdW50QWNjZXNzRnJvbVVNRCB3b3JrYXJvdW5kIGZvciBJQ0wgYnV0CmFwcGx5
aW5nIGl0IGZpeGVzIHRoZSBzYW1lIHRlc3RzIGFzIENGTC4KCnYyOiBVc2Ugb25seSBvbmUgd2hp
dGVsaXN0IGVudHJ5IChMaW9uZWwpCgpTaWduZWQtb2ZmLWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiA8
bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDEzICsrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2Vk
LCAxMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmth
cm91bmRzLmMKaW5kZXggYjExNzU4M2UzOGJiLi5hOTA4ZDgyOWQ2YmQgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwpAQCAtMTEzOCw2ICsxMTM4LDE5IEBA
IHN0YXRpYyB2b2lkIGljbF93aGl0ZWxpc3RfYnVpbGQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
ZW5naW5lKQogCiAJCS8qIFdhRW5hYmxlU3RhdGVDYWNoZVJlZGlyZWN0VG9DUzppY2wgKi8KIAkJ
d2hpdGVsaXN0X3JlZyh3LCBHRU45X1NMSUNFX0NPTU1PTl9FQ09fQ0hJQ0tFTjEpOworCisJCS8q
CisJCSAqIFdhQWxsb3dQTURlcHRoQW5kSW52b2NhdGlvbkNvdW50QWNjZXNzRnJvbVVNRDppY2wK
KwkJICoKKwkJICogVGhpcyBjb3ZlcnMgNCByZWdpc3RlciB3aGljaCBhcmUgbmV4dCB0byBvbmUg
YW5vdGhlciA6CisJCSAqICAgLSBQU19JTlZPQ0FUSU9OX0NPVU5UCisJCSAqICAgLSBQU19JTlZP
Q0FUSU9OX0NPVU5UX1VEVworCQkgKiAgIC0gUFNfREVQVEhfQ09VTlQKKwkJICogICAtIFBTX0RF
UFRIX0NPVU5UX1VEVworCQkgKi8KKwkJd2hpdGVsaXN0X3JlZ19leHQodywgUFNfSU5WT0NBVElP
Tl9DT1VOVCwKKwkJCQkgIFJJTkdfRk9SQ0VfVE9fTk9OUFJJVl9SRCB8CisJCQkJICBSSU5HX0ZP
UkNFX1RPX05PTlBSSVZfUkFOR0VfNCk7CiAJCWJyZWFrOwogCiAJY2FzZSBWSURFT19ERUNPREVf
Q0xBU1M6Ci0tIAoyLjIxLjAuMzkyLmdmOGY2Nzg3MTU5ZQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
