Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7BF59DDF
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 16:36:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39B296E934;
	Fri, 28 Jun 2019 14:36:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F41756E934
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2019 14:36:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jun 2019 07:36:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,428,1557212400"; d="scan'208";a="165079326"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga003.jf.intel.com with ESMTP; 28 Jun 2019 07:36:44 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jun 2019 17:36:14 +0300
Message-Id: <20190628143635.22066-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190628143635.22066-1-imre.deak@intel.com>
References: <20190628143635.22066-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 02/23] drm/i915: Tune down WARNs about TBT
 AUX power well enabling
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

VGhlIEhXIGNvbXBsZXRpb24gZmxhZyBmb3IgdGhlIFRCVCBBVVggcG93ZXIgd2VsbCBlbmFibGlu
Zy9kaXNhYmxpbmcKZ2V0cyBzdHVjayBpZiB0aGUgZmlybXdhcmUgdGVhcnMgZG93biB0aGUgVEJU
IERQIHR1bm5lbCBiZWZvcmUgdGhlCmNvbXBsZXRpb24uCgpXZSBzaG91bGRuJ3QgY29tcGxhaW4g
YWJvdXQgdGhlIHRpbWVvdXQsIHNpbmNlIGl0J3MgZXhwZWN0ZWQgdG8gaGFwcGVuCmFuZCBkb2Vz
bid0IGNhdXNlIGZ1cnRoZXIgaXNzdWVzLiBXZSBzdXBwcmVzcyB0aGUgZGlzYWJsaW5nIHRpbWVv
dXQKYWxyZWFkeSwgZG8gdGhlIHNhbWUgZm9yIGVuYWJsaW5nLgoKdjI6Ci0gTWFrZSB0aGUgZGVi
dWcgbWVzc2FnZSBtb3JlIHByZWNpc2UuIChKb3PDqSkKCkNjOiBKb3PDqSBSb2JlcnRvIGRlIFNv
dXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZp
QGludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+ClNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KUmV2
aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgot
LS0KIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgICB8IDE2
ICsrKysrKysrKysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCA1IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV9wb3dlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3Bvd2VyLmMKaW5kZXggYzkzYWQ1MTIwMTRjLi4yMTc3ODdkMTA3MTggMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCkBA
IC0yNjksMTEgKzI2OSwxNyBAQCBzdGF0aWMgdm9pZCBoc3dfd2FpdF9mb3JfcG93ZXJfd2VsbF9l
bmFibGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCWludCBwd19pZHggPSBw
b3dlcl93ZWxsLT5kZXNjLT5oc3cuaWR4OwogCiAJLyogVGltZW91dCBmb3IgUFcxOjEwIHVzLCBB
VVg6bm90IHNwZWNpZmllZCwgb3RoZXIgUFdzOjIwIHVzLiAqLwotCVdBUk5fT04oaW50ZWxfd2Fp
dF9mb3JfcmVnaXN0ZXIoJmRldl9wcml2LT51bmNvcmUsCi0JCQkJCXJlZ3MtPmRyaXZlciwKLQkJ
CQkJSFNXX1BXUl9XRUxMX0NUTF9TVEFURShwd19pZHgpLAotCQkJCQlIU1dfUFdSX1dFTExfQ1RM
X1NUQVRFKHB3X2lkeCksCi0JCQkJCTEpKTsKKwlpZiAoaW50ZWxfd2FpdF9mb3JfcmVnaXN0ZXIo
JmRldl9wcml2LT51bmNvcmUsCisJCQkJICAgIHJlZ3MtPmRyaXZlciwKKwkJCQkgICAgSFNXX1BX
Ul9XRUxMX0NUTF9TVEFURShwd19pZHgpLAorCQkJCSAgICBIU1dfUFdSX1dFTExfQ1RMX1NUQVRF
KHB3X2lkeCksCisJCQkJICAgIDEpKSB7CisJCURSTV9ERUJVR19LTVMoIiVzIHBvd2VyIHdlbGwg
ZW5hYmxlIHRpbWVvdXRcbiIsCisJCQkgICAgICBwb3dlcl93ZWxsLT5kZXNjLT5uYW1lKTsKKwor
CQkvKiBBbiBBVVggdGltZW91dCBpcyBleHBlY3RlZCBpZiB0aGUgVEJUIERQIHR1bm5lbCBpcyBk
b3duLiAqLworCQlXQVJOX09OKCFwb3dlcl93ZWxsLT5kZXNjLT5oc3cuaXNfdGNfdGJ0KTsKKwl9
CiB9CiAKIHN0YXRpYyB1MzIgaHN3X3Bvd2VyX3dlbGxfcmVxdWVzdGVycyhzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
