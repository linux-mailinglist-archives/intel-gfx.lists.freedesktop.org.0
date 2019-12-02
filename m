Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8506010E631
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2019 07:55:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA4C089F73;
	Mon,  2 Dec 2019 06:55:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 943E389F73
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2019 06:55:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Dec 2019 22:55:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,268,1571727600"; d="scan'208";a="411660485"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga006.fm.intel.com with ESMTP; 01 Dec 2019 22:55:30 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Matthew Auld <matthew.auld@intel.com>
Date: Mon,  2 Dec 2019 12:24:57 +0530
Message-Id: <20191202065458.9477-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 1/2] drm/i915: lookup for mem_region of a
 mem_type
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

TG9va3VwIGZ1bmN0aW9uIHRvIHJldHJpZXZlIHRoZSBwb2ludGVyIHRvIGEgbWVtb3J5IHJlZ2lv
biBvZgphIG1lbV90eXBlLgoKU2lnbmVkLW9mZi1ieTogUmFtYWxpbmdhbSBDIDxyYW1hbGluZ2Ft
LmNAaW50ZWwuY29tPgpjYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uYyB8IDEyICsrKysr
KysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfbWVtb3J5X3JlZ2lvbi5oIHwgIDMg
KysrCiAyIGZpbGVzIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmMKaW5kZXggYmFhZWFlY2M2NGFmLi5hZTg5OWRmN2Ex
YzIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24u
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmMKQEAgLTE2
LDYgKzE2LDE4IEBAIGNvbnN0IHUzMiBpbnRlbF9yZWdpb25fbWFwW10gPSB7CiAJW0lOVEVMX1JF
R0lPTl9TVE9MRU5dID0gUkVHSU9OX01BUChJTlRFTF9NRU1PUllfU1RPTEVOLCAwKSwKIH07CiAK
K3N0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICoKK2ludGVsX21lbW9yeV9yZWdpb25fbG9va3Vw
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAorCQkJICAgZW51bSBpbnRlbF9tZW1vcnlf
dHlwZSBtZW1fdHlwZSkKK3sKKwllbnVtIGludGVsX3JlZ2lvbl9pZCBpZDsKKworCWZvciAoaWQg
PSBJTlRFTF9SRUdJT05fU01FTTsgaWQgPCBJTlRFTF9SRUdJT05fVU5LTk9XTjsgaWQrKykKKwkJ
aWYgKGk5MTUtPm1tLnJlZ2lvbnNbaWRdLT50eXBlID09IG1lbV90eXBlKQorCQkJcmV0dXJuIGk5
MTUtPm1tLnJlZ2lvbnNbaWRdOworCXJldHVybiBOVUxMOworfQorCiBzdGF0aWMgdTY0CiBpbnRl
bF9tZW1vcnlfcmVnaW9uX2ZyZWVfcGFnZXMoc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1l
bSwKIAkJCSAgICAgICBzdHJ1Y3QgbGlzdF9oZWFkICpibG9ja3MpCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmgKaW5kZXggMjM4NzIyMDA5Njc3Li5kMjEwOTM2YzRk
NzIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24u
aAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmgKQEAgLTEy
NSw1ICsxMjUsOCBAQCB2b2lkIGludGVsX21lbW9yeV9yZWdpb25fcHV0KHN0cnVjdCBpbnRlbF9t
ZW1vcnlfcmVnaW9uICptZW0pOwogCiBpbnQgaW50ZWxfbWVtb3J5X3JlZ2lvbnNfaHdfcHJvYmUo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwogdm9pZCBpbnRlbF9tZW1vcnlfcmVnaW9u
c19kcml2ZXJfcmVsZWFzZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7CitzdHJ1Y3Qg
aW50ZWxfbWVtb3J5X3JlZ2lvbiAqCitpbnRlbF9tZW1vcnlfcmVnaW9uX2xvb2t1cChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKKwkJCSAgIGVudW0gaW50ZWxfbWVtb3J5X3R5cGUgbWVt
X3R5cGUpOwogCiAjZW5kaWYKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
