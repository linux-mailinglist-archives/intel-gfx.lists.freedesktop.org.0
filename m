Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1212297261
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 08:40:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2F576E90F;
	Wed, 21 Aug 2019 06:40:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 156186E90A
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 06:40:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 23:40:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,411,1559545200"; d="scan'208";a="195935643"
Received: from amanna.iind.intel.com ([10.223.74.216])
 by fmsmga001.fm.intel.com with ESMTP; 20 Aug 2019 23:40:06 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Aug 2019 12:02:24 +0530
Message-Id: <20190821063236.19705-5-animesh.manna@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190821063236.19705-1-animesh.manna@intel.com>
References: <20190821063236.19705-1-animesh.manna@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 04/15] drm/i915/dsb: Added enum for reg write
 capability.
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RFNCIGNhbiBhY2Nlc3Mgc3BlY2lmaWMgcmVnaXN0ZXIsIFRvIGlkZW50aWZ5IHRob3NlIHJlZ2lz
dGVyCndoaWNoIGNhbiBiZSB3cml0dGVuIHRocm91Z2ggRFNCLCBlbnVtIHJlZ193cml0ZV9jYXAg
aXMgYWRkZWQKdG8gaG9sZCB0aGUgY2FwYWJpbGl0eS4KCkNjOiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAaW50ZWwuY29tPgpDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29t
PgpTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIHwgMTMgKysrKysrKysrKysrLQog
MSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaAppbmRleCAyYWJkMTk5MDkzYzUuLmM0YTE3MDM0ZDRkYyAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oCkBAIC0xNzgsMTEgKzE3OCwyMiBAQAogICovCiAjZGVmaW5lIFJFR19G
SUVMRF9HRVQoX19tYXNrLCBfX3ZhbCkJKCh1MzIpRklFTERfR0VUKF9fbWFzaywgX192YWwpKQog
CisvKgorICogQWRkZWQgZW51bSB0byBob2xkIHRoZSBjYXBhYmlsaXR5IGZvciB0aG9zZSByZWdp
c3RlcnMgd2hpY2ggY2FuIGJlIHdyaXR0ZW4KKyAqIHRocm91Z2ggRFNCLgorICovCitlbnVtIHJl
Z193cml0ZV9jYXAgeworCU1NSU9fV1JJVEUsCisJRFNCX1dSSVRFLAorCURTQl9JTkRFWF9XUklU
RQorfTsKKwogdHlwZWRlZiBzdHJ1Y3QgewogCXUzMiByZWc7CisJZW51bSByZWdfd3JpdGVfY2Fw
IGNhcDsKIH0gaTkxNV9yZWdfdDsKIAotI2RlZmluZSBfTU1JTyhyKSAoKGNvbnN0IGk5MTVfcmVn
X3QpeyAucmVnID0gKHIpIH0pCisjZGVmaW5lIF9NTUlPKHIsIC4uLikgKChjb25zdCBpOTE1X3Jl
Z190KXsgLnJlZyA9IChyKSwgIyNfX1ZBX0FSR1NfX30pCiAKICNkZWZpbmUgSU5WQUxJRF9NTUlP
X1JFRyBfTU1JTygwKQogCi0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
