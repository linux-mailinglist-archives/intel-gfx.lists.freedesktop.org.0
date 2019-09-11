Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE726B00F1
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 18:07:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4ECD6EB48;
	Wed, 11 Sep 2019 16:07:36 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09F186EB48
 for <Intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 16:07:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 09:07:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="360176134"
Received: from avrahamr-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.3.203])
 by orsmga005.jf.intel.com with ESMTP; 11 Sep 2019 09:07:33 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 11 Sep 2019 17:07:30 +0100
Message-Id: <20190911160730.22687-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/pmu: Skip busyness sampling when and
 where not needed
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClNpbmNlIGQw
YWE2OTRiOTIzOSAoImRybS9pOTE1L3BtdTogQWx3YXlzIHNhbXBsZSBhbiBhY3RpdmUgcmluZ2J1
ZmZlciIpCnRoZSBjb3N0IG9mIHNhbXBsaW5nIHRoZSBlbmdpbmUgc3RhdGUgb24gZXhlY2xpc3Rz
IHBsYXRmb3JtcyBiZWNhbWUgYQpsaXR0bGUgYml0IGhpZ2hlciB3aGVuIGJvdGggZW5naW5lIGJ1
c3luZXNzIGFuZCBvbmUgb2YgdGhlIHdhaXQgc3RhdGVzIGFyZQpiZWluZyBtb25pdG9yZWQuIChQ
cmV2aW91c2x5IHRoZSBidXN5bmVzcyBzYW1wbGluZyBvbiBsZWdhY3kgcGxhdGZvcm1zIHdhcwpk
b25lIHZpYSBzZXFubyBjb21wYXJpc29uIHNvIHRoZXJlIHdhcyBubyBjb3N0IG9mIG1taW8gcmVh
ZC4pCgpXZSBjYW4gYXZvaWQgdGhhdCBieSBza2lwcGluZyBidXN5bmVzcyBzYW1wbGluZyB3aGVu
IGVuZ2luZSBzdXBwb3J0cwpzb2Z0d2FyZSBidXN5IHN0YXRzIGFuZCBzbyBhdm9pZCB0aGUgY29z
dCBvZiBwb3RlbnRpYWwgbW1pbyByZWFkIGFuZApzYW1wbGUgYWNjdW11bGF0aW9uLgoKU2lnbmVk
LW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KQ2M6IENo
cmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcG11LmMgfCA0ICsrKysKIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuYwppbmRleCA4ZTI1MWU3MTkzOTAuLjYyM2FkMzIzMDNh
MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jCkBAIC0xOTQsNiArMTk0LDEwIEBAIGVuZ2luZXNf
c2FtcGxlKHN0cnVjdCBpbnRlbF9ndCAqZ3QsIHVuc2lnbmVkIGludCBwZXJpb2RfbnMpCiAJCWlm
ICh2YWwgJiBSSU5HX1dBSVRfU0VNQVBIT1JFKQogCQkJYWRkX3NhbXBsZSgmcG11LT5zYW1wbGVb
STkxNV9TQU1QTEVfU0VNQV0sIHBlcmlvZF9ucyk7CiAKKwkJLyogTm8gbmVlZCB0byBzYW1wbGUg
d2hlbiBidXN5IHN0YXRzIGFyZSBzdXBwb3J0ZWQuICovCisJCWlmIChpbnRlbF9lbmdpbmVfc3Vw
cG9ydHNfc3RhdHMoZW5naW5lKSkKKwkJCWdvdG8gc2tpcDsKKwogCQkvKgogCQkgKiBXaGlsZSB3
YWl0aW5nIG9uIGEgc2VtYXBob3JlIG9yIGV2ZW50LCBNSV9NT0RFIHJlcG9ydHMgdGhlCiAJCSAq
IHJpbmcgYXMgaWRsZS4gSG93ZXZlciwgcHJldmlvdXNseSB1c2luZyB0aGUgc2Vxbm8sIGFuZCB3
aXRoCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
