Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4678FCF5
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 10:05:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 750E76EB03;
	Fri, 16 Aug 2019 08:05:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16CDC6EAF8
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 08:05:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Aug 2019 01:05:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="184851330"
Received: from miyoungj-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.254.105.68])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2019 01:05:22 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Aug 2019 01:04:27 -0700
Message-Id: <20190816080503.28594-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190816080503.28594-1-lucas.demarchi@intel.com>
References: <20190816080503.28594-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/39] drm/i915: Add transcoder restriction to
 PSR2
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpBY2Nv
cmRpbmcgdG8gUFNSMl9DVEwgZGVmaW5pdGlvbiBvbiBCU3BlYyB0aGVyZSBpcyBvbmx5IG9uZSBp
bnN0YW5jZQpvZiBQU1IyX0NUTCBhbHNvIElDTCBkaXNwbGF5IG92ZXJ2aWV3IHN0YXRlIHRoYXQg
UFNSMiBpcyBvbmx5CnN1cHBvcnRlZCBpbiBFRFAgdHJhbnNjb2Rlciwgc28gbm93IHRoYXQgaXMg
cG9zc2libGUgdG8gaGF2ZSBQU1IgaW4KYW55IHRyYW5zY29kZXIgbGV0cyBhZGQgdGhpcyBoYXJk
d2FyZSByZXN0cmljdGlvbi4KCkJTcGVjOiA3NzEzCkJTcGVjOiAyMDU4NApDYzogRGhpbmFrYXJh
biBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5kaXlhbkBpbnRlbC5jb20+CkNjOiBSb2RyaWdvIFZp
dmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA1ICsrKysrCiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKaW5kZXggNzk1
ZTI1ZDQ1MzU3Li5kNGQyZjFmMjcyZmUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYwpAQCAtNTQ1LDYgKzU0NSwxMSBAQCBzdGF0aWMgYm9vbCBpbnRlbF9wc3IyX2Nv
bmZpZ192YWxpZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCWlmICghZGV2X3ByaXYtPnBz
ci5zaW5rX3BzcjJfc3VwcG9ydCkKIAkJcmV0dXJuIGZhbHNlOwogCisJaWYgKGNydGNfc3RhdGUt
PmNwdV90cmFuc2NvZGVyICE9IFRSQU5TQ09ERVJfRURQKSB7CisJCURSTV9ERUJVR19LTVMoIlBT
UjIgaXMgb25seSBzdXBwb3J0ZWQgaW4gRURQIHRyYW5zY29kZXJcbiIpOworCQlyZXR1cm4gZmFs
c2U7CisJfQorCiAJLyoKIAkgKiBEU0MgYW5kIFBTUjIgY2Fubm90IGJlIGVuYWJsZWQgc2ltdWx0
YW5lb3VzbHkuIElmIGEgcmVxdWVzdGVkCiAJICogcmVzb2x1dGlvbiByZXF1aXJlcyBEU0MgdG8g
YmUgZW5hYmxlZCwgcHJpb3JpdHkgaXMgZ2l2ZW4gdG8gRFNDCi0tIAoyLjIxLjAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
