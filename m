Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A715BDB1A4
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 17:58:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 925D96EA8D;
	Thu, 17 Oct 2019 15:58:15 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8074E6EA8D
 for <Intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 15:58:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Oct 2019 08:58:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,308,1566889200"; d="scan'208";a="397631739"
Received: from dwiesing-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.31.172])
 by fmsmga006.fm.intel.com with ESMTP; 17 Oct 2019 08:58:13 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 17 Oct 2019 16:58:10 +0100
Message-Id: <20191017155810.21654-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/dsb: Remove PIN_MAPPABLE from the DSB
 object VMA
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkl0IHNvdW5k
cyBsaWtlIHRoZSBoYXJkd2FyZSBvbmx5IG5lZWRzIHRoZSBEU0Igb2JqZWN0IHRvIGJlIGluIGds
b2JhbCBHVFQKYW5kIG5vdCBpbiB0aGUgbWFwcGFibGUgcmVnaW9uLgoKU2lnbmVkLW9mZi1ieTog
VHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KQ2M6IEFuaW1lc2ggTWFu
bmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHNiLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RzYi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYwpp
bmRleCBiYjVhMGU5MWIzNzAuLmQ4YWQ1ZmUxZWZlZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RzYi5jCkBAIC0xMTksNyArMTE5LDcgQEAgaW50ZWxfZHNiX2dldChzdHJ1
Y3QgaW50ZWxfY3J0YyAqY3J0YykKIAkJZ290byBlcnI7CiAJfQogCi0Jdm1hID0gaTkxNV9nZW1f
b2JqZWN0X2dndHRfcGluKG9iaiwgTlVMTCwgMCwgMCwgUElOX01BUFBBQkxFKTsKKwl2bWEgPSBp
OTE1X2dlbV9vYmplY3RfZ2d0dF9waW4ob2JqLCBOVUxMLCAwLCAwLCAwKTsKIAlpZiAoSVNfRVJS
KHZtYSkpIHsKIAkJRFJNX0VSUk9SKCJWbWEgY3JlYXRpb24gZmFpbGVkXG4iKTsKIAkJaTkxNV9n
ZW1fb2JqZWN0X3B1dChvYmopOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
