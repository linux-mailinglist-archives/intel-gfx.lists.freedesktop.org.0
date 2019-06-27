Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3A358C4A
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 22:58:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC5EE6E823;
	Thu, 27 Jun 2019 20:58:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F2406E86E
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 20:57:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 13:57:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,425,1557212400"; d="scan'208";a="164455780"
Received: from unknown (HELO mwahaha-bdw.ger.corp.intel.com) ([10.252.4.227])
 by fmsmga007.fm.intel.com with ESMTP; 27 Jun 2019 13:57:10 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jun 2019 21:56:26 +0100
Message-Id: <20190627205633.1143-31-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190627205633.1143-1-matthew.auld@intel.com>
References: <20190627205633.1143-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 30/37] drm/i915/lmem: add helper to get CPU
 accessible offset
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

RnJvbTogQWJkaWVsIEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVAbGludXguaW50ZWwuY29tPgoK
TE1FTSBjYW4gYmUgYWNjZXNzZWQgYnkgdGhlIENQVSB0aHJvdWdoIGEgQkFSLiBUaGUgbWFwcGlu
ZyBpdHNlbGYgc2hvdWxkCmJlIDE6MS4KClNpZ25lZC1vZmYtYnk6IEFiZGllbCBKYW51bGd1ZSA8
YWJkaWVsLmphbnVsZ3VlQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dGhldyBB
dWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMu
bGFodGluZW5AbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3JlZ2lvbl9sbWVtLmMgfCAxNiArKysrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9yZWdpb25fbG1lbS5oIHwgIDMgKysrCiAyIGZpbGVzIGNoYW5nZWQsIDE5IGluc2Vy
dGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9yZWdpb25f
bG1lbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcmVnaW9uX2xtZW0uYwppbmRleCBk
MGE1MzExY2YyMzUuLmNlZWMyYmZmNDY1ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcmVnaW9uX2xtZW0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9y
ZWdpb25fbG1lbS5jCkBAIC0yNDgsNiArMjQ4LDIyIEBAIHZvaWQgX19pb21lbSAqaTkxNV9nZW1f
b2JqZWN0X2xtZW1faW9fbWFwKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJcmV0
dXJuIGlvX21hcHBpbmdfbWFwX3djKCZvYmotPm1lbW9yeV9yZWdpb24tPmlvbWFwLCBvZmZzZXQs
IHNpemUpOwogfQogCityZXNvdXJjZV9zaXplX3QgaTkxNV9nZW1fb2JqZWN0X2xtZW1faW9fb2Zm
c2V0KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCisJCQkJCSAgICAgICB1bnNpZ25l
ZCBsb25nIG4pCit7CisJc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1lbSA9IG9iai0+bWVt
b3J5X3JlZ2lvbjsKKwlkbWFfYWRkcl90IGRhZGRyOworCisJLyoKKwkgKiBYWFg6IEl0J3Mgbm90
IGEgZG1hIGFkZHJlc3MsIG1vcmUgYSBkZXZpY2UgYWRkcmVzcyBvciBwaHlzaWNhbAorCSAqIG9m
ZnNldCwgc28gd2UgYXJlIGNsZWFybHkgYWJ1c2luZyB0aGUgc2VtYW50aWNzIG9mIHRoZSBzZ190
YWJsZQorCSAqIGhlcmUsIGFuZCBlbHNld2hlcmUgbGlrZSBpbiB0aGUgZ3R0IHBhdGhzLgorCSAq
LworCWRhZGRyID0gaTkxNV9nZW1fb2JqZWN0X2dldF9kbWFfYWRkcmVzcyhvYmosIG4pOworCisJ
cmV0dXJuIG1lbS0+aW9fc3RhcnQgKyBkYWRkcjsKK30KKwogYm9vbCBpOTE1X2dlbV9vYmplY3Rf
aXNfbG1lbShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQogewogCXN0cnVjdCBpbnRl
bF9tZW1vcnlfcmVnaW9uICpyZWdpb24gPSBvYmotPm1lbW9yeV9yZWdpb247CmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9yZWdpb25fbG1lbS5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfcmVnaW9uX2xtZW0uaAppbmRleCAyMDA4NGY3YjRiZmYuLjYwOWRlNjky
NDg5ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcmVnaW9uX2xtZW0u
aAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9yZWdpb25fbG1lbS5oCkBAIC0xMiw2
ICsxMiw5IEBAIHZvaWQgX19pb21lbSAqaTkxNV9nZW1fb2JqZWN0X2xtZW1faW9fbWFwKHN0cnVj
dCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiB2b2lkIF9faW9tZW0gKmk5MTVfZ2VtX29iamVj
dF9sbWVtX2lvX21hcF9wYWdlKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCiAJCQkJ
CSAgICAgICB1bnNpZ25lZCBsb25nIG4pOwogCityZXNvdXJjZV9zaXplX3QgaTkxNV9nZW1fb2Jq
ZWN0X2xtZW1faW9fb2Zmc2V0KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCisJCQkJ
CSAgICAgICB1bnNpZ25lZCBsb25nIG4pOworCiBib29sIGk5MTVfZ2VtX29iamVjdF9pc19sbWVt
KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmopOwogCiBzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X29iamVjdCAqCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
