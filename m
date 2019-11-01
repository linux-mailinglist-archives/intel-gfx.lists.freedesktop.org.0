Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80064EBE1E
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 07:46:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3F1C6E17B;
	Fri,  1 Nov 2019 06:46:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B846F6E17B
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2019 06:46:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Oct 2019 23:46:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,254,1569308400"; d="scan'208";a="190883505"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.9])
 by orsmga007.jf.intel.com with ESMTP; 31 Oct 2019 23:46:45 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Nov 2019 22:45:36 +0800
Message-Id: <20191101144536.23558-1-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191031111407.12493-1-jani.nikula@intel.com>
References: <20191031111407.12493-1-jani.nikula@intel.com>
Subject: [Intel-gfx] [PATCH v2] drm/i915: update rawclk also on resume
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2luY2UgQ05QIGl0J3MgcG9zc2libGUgZm9yIHJhd2NsayB0byBoYXZlIHR3byBkaWZmZXJlbnQg
dmFsdWVzLCAxOS4yCmFuZCAyNCBNSHouIElmIHRoZSB2YWx1ZSBpbmRpY2F0ZWQgYnkgU0ZVU0Vf
U1RSQVAgcmVnaXN0ZXIgaXMgZGlmZmVyZW50CmZyb20gdGhlIHBvd2VyIG9uIGRlZmF1bHQgZm9y
IFBDSF9SQVdDTEtfRlJFUSwgd2UnbGwgZW5kIHVwIGhhdmluZyBhCm1pc21hdGNoIGJldHdlZW4g
dGhlIHJhd2NsayBoYXJkd2FyZSBhbmQgc29mdHdhcmUgc3RhdGVzIGFmdGVyCnN1c3BlbmQvcmVz
dW1lLiBPbiBwcmV2aW91cyBwbGF0Zm9ybXMgdGhpcyB1c2VkIHRvIHdvcmsgYnkgYWNjaWRlbnQs
CmJlY2F1c2UgdGhlIHBvd2VyIG9uIGRlZmF1bHRzIHdvcmtlZCBqdXN0IGZpbmUuCgpVcGRhdGUg
dGhlIHJhd2NsayBhbHNvIG9uIHJlc3VtZS4gVGhlIG5hdHVyYWwgcGxhY2UgdG8gZG8gdGhpcyBp
cwppbnRlbF9tb2Rlc2V0X2luaXRfaHcoKSwgaG93ZXZlciBWTFYvQ0hWIG5lZWQgaXQgZG9uZSBi
ZWZvcmUKaW50ZWxfcG93ZXJfZG9tYWluc19pbml0X2h3KCkuIFNwbGl0IHRoZSB1cGRhdGUgYWNj
b3JkaW5nbHksIGV2ZW4gaWYKdGhhdCdzIHNsaWdobHkgdWdseS4gVGhpcyBtZWFucyBtb3Zpbmcg
dGhlIHVwZGF0ZSBsYXRlciBmb3Igbm9uLVZMVi9DSFYKcGxhdGZvcm1zIGluIHByb2JlLgoKdjI6
IERvIGludGVsX3VwZGF0ZV9yYXdjbGsoKSBhdCBpbnRlbF9wb3dlcl9kb21haW5zX2luaXRfaHco
KS4gUmF3Y2xrIHdpbGwKYmUgY29uZmlndXJlZCB3aXRoIHByb3BlciBzZXR0aW5nIGFuZCBleGVj
dXRlZCBiZWZvcmUgaW50ZWxfbW9kZXNldF9pbml0X2h3KCkuCgpSZXBvcnRlZC1ieTogU2hhd24g
TGVlIDxzaGF3bi5jLmxlZUBpbnRlbC5jb20+CkNjOiBTaGF3biBMZWUgPHNoYXduLmMubGVlQGlu
dGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmphbGEgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgpTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgpTaWdu
ZWQtb2ZmLWJ5OiBMZWUgU2hhd24gQyA8c2hhd24uYy5sZWVAaW50ZWwuY29tPgotLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIHwgNiArKysrKysK
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgICAgICAgICAgICAgICAgICAgIHwgMyAt
LS0KIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dl
ci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMK
aW5kZXggZGQyYTUwYjhiYTBhLi4wODliYTZjYmIzNDggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCkBAIC00OTE0LDYgKzQ5MTQs
MTIgQEAgdm9pZCBpbnRlbF9wb3dlcl9kb21haW5zX2luaXRfaHcoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUsIGJvb2wgcmVzdW1lKQogCiAJcG93ZXJfZG9tYWlucy0+aW5pdGlhbGl6aW5n
ID0gdHJ1ZTsKIAorCS8qCisJICogTXVzdCBoYXBwZW4gYmVmb3JlIHBvd2VyIGRvbWFpbiBpbml0
IG9uIFZMVi9DSFYsIHRoZSByZXN0IHVwZGF0ZQorCSAqIHJhd2NsayBjYW4gYmUgZG9uZSBoZXJl
IGFzIHdlbGwuCisJICovCisJaW50ZWxfdXBkYXRlX3Jhd2NsayhpOTE1KTsKKwogCWlmIChJTlRF
TF9HRU4oaTkxNSkgPj0gMTEpIHsKIAkJaWNsX2Rpc3BsYXlfY29yZV9pbml0KGk5MTUsIHJlc3Vt
ZSk7CiAJfSBlbHNlIGlmIChJU19DQU5OT05MQUtFKGk5MTUpKSB7CmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuYwppbmRleCBmMmQzZDc1NGFmMzcuLjFmMzZlM2MzZjk2NyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5jCkBAIC03MTYsOSArNzE2LDYgQEAgc3RhdGljIGludCBpOTE1X2RyaXZlcl9tb2Rlc2V0
X3Byb2JlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCiAJaWYgKHJldCkKIAkJZ290byBjbGVhbnVw
X3ZnYV9jbGllbnQ7CiAKLQkvKiBtdXN0IGhhcHBlbiBiZWZvcmUgaW50ZWxfcG93ZXJfZG9tYWlu
c19pbml0X2h3KCkgb24gVkxWL0NIViAqLwotCWludGVsX3VwZGF0ZV9yYXdjbGsoZGV2X3ByaXYp
OwotCiAJaW50ZWxfcG93ZXJfZG9tYWluc19pbml0X2h3KGRldl9wcml2LCBmYWxzZSk7CiAKIAlp
bnRlbF9jc3JfdWNvZGVfaW5pdChkZXZfcHJpdik7Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
