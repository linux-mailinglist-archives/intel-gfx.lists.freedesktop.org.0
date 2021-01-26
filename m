Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D782C30394C
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 10:46:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE30D89804;
	Tue, 26 Jan 2021 09:46:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A75589196
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jan 2021 09:46:45 +0000 (UTC)
IronPort-SDR: StYEaYH5JJ6+lEJqwfJTMQAm1A56y4N5/TxPikhX2T44xeFTsIcuRI/FGVf+VhLRUqooI78NXz
 7WUmjW6NJf8Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="159651580"
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="159651580"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 01:46:45 -0800
IronPort-SDR: jkfg5uBXbJZ+wJfwOhGAwFWo23zbO+3wFpEB5hfvK40RPX9hK8jNwELfOV5+EJXiZcy/TCCLlc
 OMfV6qBny9uA==
X-IronPort-AV: E=Sophos;i="5.79,375,1602572400"; d="scan'208";a="387766467"
Received: from shogg-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.19.250])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2021 01:46:44 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jan 2021 09:46:12 +0000
Message-Id: <20210126094612.163290-7-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210126094612.163290-1-matthew.auld@intel.com>
References: <20210126094612.163290-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/7] drm/i915: allocate cmd ring in lmem
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Michel Thierry <michel.thierry@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWljaGVsIFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KClByZWZlciBh
bGxvY2F0aW5nIHRoZSBjbWQgcmluZyBmcm9tIExNRU0gb24gZGdmeC4KClNpZ25lZC1vZmYtYnk6
IE1pY2hlbCBUaGllcnJ5IDxtaWNoZWwudGhpZXJyeUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6
IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9yaW5nLmMgfCA1ICsrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3JpbmcuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jpbmcu
YwppbmRleCAyOWM4N2IzYzIzYmMuLmFlZTBhNzdjNzdlMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3JpbmcuYwpAQCAtMyw2ICszLDcgQEAKICAqIENvcHlyaWdodCDCqSAyMDE5IEludGVs
IENvcnBvcmF0aW9uCiAgKi8KIAorI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9sbWVtLmgiCiAjaW5j
bHVkZSAiZ2VtL2k5MTVfZ2VtX29iamVjdC5oIgogCiAjaW5jbHVkZSAiaTkxNV9kcnYuaCIKQEAg
LTEwOCw4ICsxMDksOCBAQCBzdGF0aWMgc3RydWN0IGk5MTVfdm1hICpjcmVhdGVfcmluZ192bWEo
c3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCwgaW50IHNpemUpCiAJc3RydWN0IGRybV9pOTE1X2dlbV9v
YmplY3QgKm9iajsKIAlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKIAotCW9iaiA9IEVSUl9QVFIoLUVO
T0RFVik7Ci0JaWYgKGk5MTVfZ2d0dF9oYXNfYXBlcnR1cmUoZ2d0dCkpCisJb2JqID0gaTkxNV9n
ZW1fb2JqZWN0X2NyZWF0ZV9sbWVtKGk5MTUsIHNpemUsIEk5MTVfQk9fQUxMT0NfVk9MQVRJTEUp
OworCWlmIChJU19FUlIob2JqKSAmJiBpOTE1X2dndHRfaGFzX2FwZXJ0dXJlKGdndHQpKQogCQlv
YmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3N0b2xlbihpOTE1LCBzaXplKTsKIAlpZiAoSVNf
RVJSKG9iaikpCiAJCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfaW50ZXJuYWwoaTkxNSwg
c2l6ZSk7Ci0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
