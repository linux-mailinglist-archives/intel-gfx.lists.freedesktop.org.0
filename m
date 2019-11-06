Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE78F1AC7
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 17:08:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF61B6EDBB;
	Wed,  6 Nov 2019 16:08:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 630E96EDBB
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 16:08:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Nov 2019 08:07:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,275,1569308400"; d="scan'208";a="200752626"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga008.fm.intel.com with ESMTP; 06 Nov 2019 08:07:57 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>
Date: Wed,  6 Nov 2019 21:38:18 +0530
Message-Id: <20191106160819.25233-1-ramalingam.c@intel.com>
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
Cc: Matthew Auld <matthew.auld@intel.com>
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
