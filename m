Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2730153CE2
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 03:09:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C36CD6E29D;
	Thu,  6 Feb 2020 02:08:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 969946E296
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 02:08:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 18:08:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,408,1574150400"; d="scan'208";a="235806463"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.12.242])
 by orsmga006.jf.intel.com with ESMTP; 05 Feb 2020 18:08:54 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Feb 2020 18:08:51 -0800
Message-Id: <20200206020851.337897-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200206020851.337897-1-jose.souza@intel.com>
References: <20200206020851.337897-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/3] drm/i915: Fix redefinition of
 sanitize_watermarks_add_affected
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q29tbWl0IDQ0YTY3NzE5NDk3YiAoImRybS9pOTE1OiBGaXggbW9kZXNldCBsb2NrcyBpbiBzYW5p
dGl6ZV93YXRlcm1hcmtzKCkiKQp0aGF0IGFkZGVkIHRoaXMgZnVuY3Rpb24gaXMgY29ycmVjdGx5
LCB0aGlzIGlzc3VlIHdhcyBpbnRyb2R1Y2VkIHdoZW4KcmVzb2x2aW5nIHRoZSBtZXJnZSBjb25m
bGljdC4KCkZpeGVzOiA5YzY1NGU0MjM1MDcgKCJNZXJnZSByZW1vdGUtdHJhY2tpbmcgYnJhbmNo
ICdkcm0taW50ZWwvZHJtLWludGVsLW5leHQtcXVldWVkJyBpbnRvIGRybS10aXAiKQpDYzogSmFu
aSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmln
by52aXZpQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8
am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMgfCAyNCAtLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDI0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMKaW5kZXggY2RlMTBiNTM2YTkxLi44MGVlYmRjNGM2NzAgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC0xNzY4OCwzMCArMTc2ODgs
NiBAQCBzdGF0aWMgaW50IHNhbml0aXplX3dhdGVybWFya3NfYWRkX2FmZmVjdGVkKHN0cnVjdCBk
cm1fYXRvbWljX3N0YXRlICpzdGF0ZSkKIAlyZXR1cm4gMDsKIH0KIAotc3RhdGljIGludCBzYW5p
dGl6ZV93YXRlcm1hcmtzX2FkZF9hZmZlY3RlZChzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3Rh
dGUpCi17Ci0Jc3RydWN0IGRybV9wbGFuZSAqcGxhbmU7Ci0Jc3RydWN0IGRybV9jcnRjICpjcnRj
OwotCi0JZHJtX2Zvcl9lYWNoX2NydGMoY3J0Yywgc3RhdGUtPmRldikgewotCQlzdHJ1Y3QgZHJt
X2NydGNfc3RhdGUgKmNydGNfc3RhdGU7Ci0KLQkJY3J0Y19zdGF0ZSA9IGRybV9hdG9taWNfZ2V0
X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOwotCQlpZiAoSVNfRVJSKGNydGNfc3RhdGUpKQotCQkJ
cmV0dXJuIFBUUl9FUlIoY3J0Y19zdGF0ZSk7Ci0JfQotCi0JZHJtX2Zvcl9lYWNoX3BsYW5lKHBs
YW5lLCBzdGF0ZS0+ZGV2KSB7Ci0JCXN0cnVjdCBkcm1fcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRl
OwotCi0JCXBsYW5lX3N0YXRlID0gZHJtX2F0b21pY19nZXRfcGxhbmVfc3RhdGUoc3RhdGUsIHBs
YW5lKTsKLQkJaWYgKElTX0VSUihwbGFuZV9zdGF0ZSkpCi0JCQlyZXR1cm4gUFRSX0VSUihwbGFu
ZV9zdGF0ZSk7Ci0JfQotCi0JcmV0dXJuIDA7Ci19Ci0KIC8qCiAgKiBDYWxjdWxhdGUgd2hhdCB3
ZSB0aGluayB0aGUgd2F0ZXJtYXJrcyBzaG91bGQgYmUgZm9yIHRoZSBzdGF0ZSB3ZSd2ZSByZWFk
CiAgKiBvdXQgb2YgdGhlIGhhcmR3YXJlIGFuZCB0aGVuIGltbWVkaWF0ZWx5IHByb2dyYW0gdGhv
c2Ugd2F0ZXJtYXJrcyBzbyB0aGF0Ci0tIAoyLjI1LjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
