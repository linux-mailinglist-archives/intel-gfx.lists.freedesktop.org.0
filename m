Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E32104A58
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 06:44:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A21AE6EAC2;
	Thu, 21 Nov 2019 05:44:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BEA46EAC2
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2019 05:44:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 21:44:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,224,1571727600"; d="scan'208";a="197117049"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by orsmga007.jf.intel.com with ESMTP; 20 Nov 2019 21:44:46 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Date: Thu, 21 Nov 2019 11:14:06 +0530
Message-Id: <20191121054406.25605-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191120173155.20168-3-ramalingam.c@intel.com>
References: <20191120173155.20168-3-ramalingam.c@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Skip the Wa_1604555607
 verification
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

QXQgVEdMIEEwIHN0ZXBwaW5nLCBGRl9NT0RFMiByZWdpc3RlciByZWFkIGJhY2sgaXMgYnJva2Vu
LCBoZW5jZQpkaXNhYmxpbmcgdGhlIFdBIHZlcmlmaWNhdGlvbi4KCkhlbHBlciBmdW5jdGlvbiBj
YWxsZWQgd2Ffd3JpdGVfbWFza2VkX29yX25vX3ZlcmlmeSBpcyBkZWZpbmVkIGZvciB0aGUKc2Ft
ZSBwdXJwb3NlLgoKdjI6CiAgaTkxNSBwdHIgcmV0cmlldmVkIGZyb20gZW5naW5lLiBbVHZydGtv
XQoKU2lnbmVkLW9mZi1ieTogUmFtYWxpbmdhbSBDIDxyYW1hbGluZ2FtLmNAaW50ZWwuY29tPgpj
YzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGxpbnV4LmludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgMjAgKysrKysrKysr
KysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3Vu
ZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKaW5kZXgg
OTNlZmVmYTIwNWQ2Li4wNTA4Njg0MDk1MWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfd29ya2Fyb3VuZHMuYwpAQCAtMTYwLDYgKzE2MCwyMCBAQCB3YV93cml0ZV9tYXNrZWRf
b3Ioc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsLCBpOTE1X3JlZ190IHJlZywgdTMyIG1hc2ssCiAJ
X3dhX2FkZCh3YWwsICZ3YSk7CiB9CiAKK3N0YXRpYyB2b2lkCit3YV93cml0ZV9tYXNrZWRfb3Jf
bm9fdmVyaWZ5KHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCwgaTkxNV9yZWdfdCByZWcsIHUzMiBt
YXNrLAorCQkgICB1MzIgdmFsKQoreworCXN0cnVjdCBpOTE1X3dhIHdhID0geworCQkucmVnICA9
IHJlZywKKwkJLm1hc2sgPSBtYXNrLAorCQkudmFsICA9IHZhbCwKKwkJLnJlYWQgPSAwLAorCX07
CisKKwlfd2FfYWRkKHdhbCwgJndhKTsKK30KKwogc3RhdGljIHZvaWQKIHdhX21hc2tlZF9lbihz
dHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwsIGk5MTVfcmVnX3QgcmVnLCB1MzIgdmFsKQogewpAQCAt
NTc4LDcgKzU5MiwxMSBAQCBzdGF0aWMgdm9pZCB0Z2xfY3R4X3dvcmthcm91bmRzX2luaXQoc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAogCXZhbCA9IGludGVsX3VuY29yZV9yZWFkKGVu
Z2luZS0+dW5jb3JlLCBGRl9NT0RFMik7CiAJdmFsICY9IH5GRl9NT0RFMl9URFNfVElNRVJfTUFT
SzsKIAl2YWwgfD0gRkZfTU9ERTJfVERTX1RJTUVSXzEyODsKLQl3YV93cml0ZV9tYXNrZWRfb3Io
d2FsLCBGRl9NT0RFMiwgRkZfTU9ERTJfVERTX1RJTUVSX01BU0ssIHZhbCk7CisJaWYgKElTX1RH
TF9SRVZJRChlbmdpbmUtPmk5MTUsIDAsIFRHTF9SRVZJRF9BMCkpCisJCXdhX3dyaXRlX21hc2tl
ZF9vcl9ub192ZXJpZnkod2FsLCBGRl9NT0RFMiwKKwkJCQkJICAgICBGRl9NT0RFMl9URFNfVElN
RVJfTUFTSywgdmFsKTsKKwllbHNlCisJCXdhX3dyaXRlX21hc2tlZF9vcih3YWwsIEZGX01PREUy
LCBGRl9NT0RFMl9URFNfVElNRVJfTUFTSywgdmFsKTsKIH0KIAogc3RhdGljIHZvaWQKLS0gCjIu
MjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
