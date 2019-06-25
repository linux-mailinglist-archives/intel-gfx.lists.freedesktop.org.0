Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA9055121
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 16:09:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE8DF6E114;
	Tue, 25 Jun 2019 14:09:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C18136E114
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 14:09:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 07:09:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,416,1557212400"; d="scan'208";a="182898617"
Received: from triedme-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.35.180])
 by fmsmga001.fm.intel.com with ESMTP; 25 Jun 2019 07:09:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <1561087486-19339-1-git-send-email-shawn.c.lee@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <1561087486-19339-1-git-send-email-shawn.c.lee@intel.com>
Date: Tue, 25 Jun 2019 17:11:42 +0300
Message-ID: <87y31poiu9.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Refine eDP aux backlight
 enable/disable sequence
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
Cc: Cooper Chiou <cooper.chiou@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMCBKdW4gMjAxOSwgTGVlIFNoYXduIEMgPHNoYXduLmMubGVlQGludGVsLmNvbT4g
d3JvdGU6Cj4gTW9kaWZ5IGF1eCBiYWNrbGlnaHQgZW5hYmxlL2Rpc2FibGUgc2VxdWVuY2UganVz
dCBsaWtlIHdoYXQgd2UKPiBkaWQgZm9yIGdlbmVybmFsIGVEUCBwYW5lbC4KPiAxLiBTZXR1cCBQ
V00gZnJlcSBhbmQgYnJpZ2h0bmVzcyBsZXZlbCBiZWZvcmUgZW5hYmxlIGRpc3BsYXkgYmFja2xp
Z2h0Lgo+IDIuIFNldCBQV00gdG8gMCBhZnRlciBiYWNrbGlnaHQgZW5hYmxlIHdhcyBvZmYuCgpJ
dCB0b29rIG1lIGEgd2hpbGUgdG8gcmVhbGl6ZSB3aHkgd2UgZG8gdGhpcyBpbiB0aGlzIG9yZGVy
LgoKZURQIHYxLjRiIHNheXMgYWJvdXQgRFBDRCBhZGRyZXNzZXMgMDA3MjJoLTAwNzIzaAppLmUu
IEVEUF9CQUNLTElHSFRfQlJJR0hUTkVTUyBNU0IgYW5kIExTQjoKCiIiIgpXcml0ZXMgYXJlIGln
bm9yZWQgaWY6CgpbLi4uXQoKLSBCQUNLTElHSFRfRU5BQkxFIGJpdCBpbiB0aGUgRURQX0RJU1BM
QVlfQ09OVFJPTCByZWdpc3RlciAoRFBDRCBBZGRyZXNzCiAgMDA3MjBoLCBiaXQgMCkgaXMgY2xl
YXJlZCB0byAwIgoiIiIKCmkuZS4gcGVyIHRoZSBzcGVjIHRoaXMgY2hhbmdlIG1ha2VzIHRoZSBi
cmlnaHRuZXNzIHVwZGF0ZXMgbm8tb3BzLgoKRG8geW91IGhhdmUgYSBwYW5lbCB3aGVyZSB0aGlz
IHBhdGNoIG1ha2VzIGEgZGlmZmVyZW5jZT8KCkJSLApKYW5pLgoKCj4KPiBDYzogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBDYzogSmFuaSBOaWt1bGEg
PGphbmkubmlrdWxhQGludGVsLmNvbT4KPiBDYzogSm9zZSBSb2JlcnRvIGRlIFNvdXphIDxqb3Nl
LnNvdXphQGludGVsLmNvbT4KPiBDYzogQ29vcGVyIENoaW91IDxjb29wZXIuY2hpb3VAaW50ZWwu
Y29tPgo+Cj4gU2lnbmVkLW9mZi1ieTogTGVlIFNoYXduIEMgPHNoYXduLmMubGVlQGludGVsLmNv
bT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXhfYmFj
a2xpZ2h0LmMgfCAzICsrLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcF9hdXhfYmFja2xpZ2h0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwX2F1eF9iYWNrbGlnaHQuYwo+IGluZGV4IDZiMGI3MzQ3OWZiOC4uYmJjNTc5NzM0MjM4
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4
X2JhY2tsaWdodC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cF9hdXhfYmFja2xpZ2h0LmMKPiBAQCAtMjE2LDEzICsyMTYsMTQgQEAgc3RhdGljIHZvaWQgaW50
ZWxfZHBfYXV4X2VuYWJsZV9iYWNrbGlnaHQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUg
KmNydGNfc3QKPiAgCQl9Cj4gIAl9Cj4gIAo+IC0Jc2V0X2F1eF9iYWNrbGlnaHRfZW5hYmxlKGlu
dGVsX2RwLCB0cnVlKTsKPiAgCWludGVsX2RwX2F1eF9zZXRfYmFja2xpZ2h0KGNvbm5fc3RhdGUs
IGNvbm5lY3Rvci0+cGFuZWwuYmFja2xpZ2h0LmxldmVsKTsKPiArCXNldF9hdXhfYmFja2xpZ2h0
X2VuYWJsZShpbnRlbF9kcCwgdHJ1ZSk7Cj4gIH0KPiAgCj4gIHN0YXRpYyB2b2lkIGludGVsX2Rw
X2F1eF9kaXNhYmxlX2JhY2tsaWdodChjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAq
b2xkX2Nvbm5fc3RhdGUpCj4gIHsKPiAgCXNldF9hdXhfYmFja2xpZ2h0X2VuYWJsZShlbmNfdG9f
aW50ZWxfZHAob2xkX2Nvbm5fc3RhdGUtPmJlc3RfZW5jb2RlciksIGZhbHNlKTsKPiArCWludGVs
X2RwX2F1eF9zZXRfYmFja2xpZ2h0KG9sZF9jb25uX3N0YXRlLCAwKTsKPiAgfQo+ICAKPiAgc3Rh
dGljIGludCBpbnRlbF9kcF9hdXhfc2V0dXBfYmFja2xpZ2h0KHN0cnVjdCBpbnRlbF9jb25uZWN0
b3IgKmNvbm5lY3RvciwKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhp
Y3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
