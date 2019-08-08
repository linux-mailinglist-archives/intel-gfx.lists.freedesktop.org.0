Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4705F86357
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 15:44:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BE1B6E83B;
	Thu,  8 Aug 2019 13:44:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A7A96E83B
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 13:43:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 06:38:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,361,1559545200"; d="scan'208";a="193158120"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 08 Aug 2019 06:38:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Aug 2019 16:42:41 +0300
Message-Id: <a82d8c4e95496b3b4a9a251b655ea56a35c9d752.1565271681.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1565271681.git.jani.nikula@intel.com>
References: <cover.1565271681.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 02/10] drm/i915: move add_taint_for_CI() to
 i915_utils.h
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2VlbXMgbGlrZSBhIGJldHRlciBmaXQuIFJlZHVjZSBjbHV0dGVyIGluIGk5MTVfZHJ2LmguCgpT
aWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICB8IDExIC0tLS0tLS0tLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxzLmggfCAxMSArKysrKysrKysrKwogMiBmaWxlcyBjaGFu
Z2VkLCAxMSBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaAppbmRleCA0Yjk0NGExMjU4OTMuLjdjNGU5NTE3M2VjNCAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oCkBAIC0yNjUzLDE1ICsyNjUzLDQgQEAgaTkxNV9jb2hlcmVudF9tYXBfdHlwZShzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAlyZXR1cm4gSEFTX0xMQyhpOTE1KSA/IEk5MTVf
TUFQX1dCIDogSTkxNV9NQVBfV0M7CiB9CiAKLXN0YXRpYyBpbmxpbmUgdm9pZCBhZGRfdGFpbnRf
Zm9yX0NJKHVuc2lnbmVkIGludCB0YWludCkKLXsKLQkvKgotCSAqIFRoZSBzeXN0ZW0gaXMgIm9r
IiwganVzdCBhYm91dCBzdXJ2aXZpbmcgZm9yIHRoZSB1c2VyLCBidXQKLQkgKiBDSSByZXN1bHRz
IGFyZSBub3cgdW5yZWxpYWJsZSBhcyB0aGUgSFcgaXMgdmVyeSBzdXNwZWN0LgotCSAqIENJIGNo
ZWNrcyB0aGUgdGFpbnQgc3RhdGUgYWZ0ZXIgZXZlcnkgdGVzdCBhbmQgd2lsbCByZWJvb3QKLQkg
KiB0aGUgbWFjaGluZSBpZiB0aGUga2VybmVsIGlzIHRhaW50ZWQuCi0JICovCi0JYWRkX3RhaW50
KHRhaW50LCBMT0NLREVQX1NUSUxMX09LKTsKLX0KLQogI2VuZGlmCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3V0aWxzLmgKaW5kZXggNDkyMGZmOWFiYTYyLi4wYzBmZGEzNjMzNGQgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3V0aWxzLmgKQEAgLTM4Miw0ICszODIsMTUgQEAgc3RhdGljIGlubGluZSBjb25zdCBj
aGFyICplbmFibGVkZGlzYWJsZWQoYm9vbCB2KQogCXJldHVybiB2ID8gImVuYWJsZWQiIDogImRp
c2FibGVkIjsKIH0KIAorc3RhdGljIGlubGluZSB2b2lkIGFkZF90YWludF9mb3JfQ0kodW5zaWdu
ZWQgaW50IHRhaW50KQoreworCS8qCisJICogVGhlIHN5c3RlbSBpcyAib2siLCBqdXN0IGFib3V0
IHN1cnZpdmluZyBmb3IgdGhlIHVzZXIsIGJ1dAorCSAqIENJIHJlc3VsdHMgYXJlIG5vdyB1bnJl
bGlhYmxlIGFzIHRoZSBIVyBpcyB2ZXJ5IHN1c3BlY3QuCisJICogQ0kgY2hlY2tzIHRoZSB0YWlu
dCBzdGF0ZSBhZnRlciBldmVyeSB0ZXN0IGFuZCB3aWxsIHJlYm9vdAorCSAqIHRoZSBtYWNoaW5l
IGlmIHRoZSBrZXJuZWwgaXMgdGFpbnRlZC4KKwkgKi8KKwlhZGRfdGFpbnQodGFpbnQsIExPQ0tE
RVBfU1RJTExfT0spOworfQorCiAjZW5kaWYgLyogIV9fSTkxNV9VVElMU19IICovCi0tIAoyLjIw
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
