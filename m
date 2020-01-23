Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D77EA1469AD
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 14:49:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24B676FCC1;
	Thu, 23 Jan 2020 13:49:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DD986FCC1
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 13:49:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 05:49:37 -0800
X-IronPort-AV: E=Sophos;i="5.70,354,1574150400"; d="scan'208";a="216262714"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 05:49:35 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200123132659.725-3-anshuman.gupta@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200123132659.725-1-anshuman.gupta@intel.com>
 <20200123132659.725-3-anshuman.gupta@intel.com>
Date: Thu, 23 Jan 2020 15:49:33 +0200
Message-ID: <87tv4mcmfm.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC 2/6] drm/i915: Remove (pipe == crtc->index)
 asummption
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMyBKYW4gMjAyMCwgQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVs
LmNvbT4gd3JvdGU6Cj4gd2UgY2FuJ3QgaGF2ZSAocGlwZSA9PSBjcnRjLT5pbmRleCkgYXNzdW1w
dGlvbiBpbgo+IGRyaXZlciBpbiBvcmRlciB0byBzdXBwb3J0IDMgbm9uLWNvbnRpZ3VvdXMKPiBk
aXNwbGF5IHBpcGUgc3lzdGVtLgo+Cj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogQW5zaHVtYW4gR3VwdGEgPGFuc2h1
bWFuLmd1cHRhQGludGVsLmNvbT4KClJldmlld2VkLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1
bGFAaW50ZWwuY29tPgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMgfCAxMCArKysrLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlv
bnMoKyksIDYgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYwo+IGluZGV4IDg3OGQzMzFiOWU4Yy4uYWZkOGQ0MzE2MGM2IDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBAQCAt
MTQwNzAsMTEgKzE0MDcwLDExIEBAIHZlcmlmeV9zaW5nbGVfZHBsbF9zdGF0ZShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gIAlpZiAobmV3X2NydGNfc3RhdGUtPmh3LmFjdGl2
ZSkKPiAgCQlJOTE1X1NUQVRFX1dBUk4oIShwbGwtPmFjdGl2ZV9tYXNrICYgY3J0Y19tYXNrKSwK
PiAgCQkJCSJwbGwgYWN0aXZlIG1pc21hdGNoIChleHBlY3RlZCBwaXBlICVjIGluIGFjdGl2ZSBt
YXNrIDB4JTAyeClcbiIsCj4gLQkJCQlwaXBlX25hbWUoZHJtX2NydGNfaW5kZXgoJmNydGMtPmJh
c2UpKSwgcGxsLT5hY3RpdmVfbWFzayk7Cj4gKwkJCQlwaXBlX25hbWUoY3J0Yy0+cGlwZSksIHBs
bC0+YWN0aXZlX21hc2spOwo+ICAJZWxzZQo+ICAJCUk5MTVfU1RBVEVfV0FSTihwbGwtPmFjdGl2
ZV9tYXNrICYgY3J0Y19tYXNrLAo+ICAJCQkJInBsbCBhY3RpdmUgbWlzbWF0Y2ggKGRpZG4ndCBl
eHBlY3QgcGlwZSAlYyBpbiBhY3RpdmUgbWFzayAweCUwMngpXG4iLAo+IC0JCQkJcGlwZV9uYW1l
KGRybV9jcnRjX2luZGV4KCZjcnRjLT5iYXNlKSksIHBsbC0+YWN0aXZlX21hc2spOwo+ICsJCQkJ
cGlwZV9uYW1lKGNydGMtPnBpcGUpLCBwbGwtPmFjdGl2ZV9tYXNrKTsKPiAgCj4gIAlJOTE1X1NU
QVRFX1dBUk4oIShwbGwtPnN0YXRlLmNydGNfbWFzayAmIGNydGNfbWFzayksCj4gIAkJCSJwbGwg
ZW5hYmxlZCBjcnRjcyBtaXNtYXRjaCAoZXhwZWN0ZWQgMHgleCBpbiAweCUwMngpXG4iLAo+IEBA
IC0xNDEwMywxMCArMTQxMDMsMTAgQEAgdmVyaWZ5X3NoYXJlZF9kcGxsX3N0YXRlKHN0cnVjdCBp
bnRlbF9jcnRjICpjcnRjLAo+ICAKPiAgCQlJOTE1X1NUQVRFX1dBUk4ocGxsLT5hY3RpdmVfbWFz
ayAmIGNydGNfbWFzaywKPiAgCQkJCSJwbGwgYWN0aXZlIG1pc21hdGNoIChkaWRuJ3QgZXhwZWN0
IHBpcGUgJWMgaW4gYWN0aXZlIG1hc2spXG4iLAo+IC0JCQkJcGlwZV9uYW1lKGRybV9jcnRjX2lu
ZGV4KCZjcnRjLT5iYXNlKSkpOwo+ICsJCQkJcGlwZV9uYW1lKGNydGMtPnBpcGUpKTsKPiAgCQlJ
OTE1X1NUQVRFX1dBUk4ocGxsLT5zdGF0ZS5jcnRjX21hc2sgJiBjcnRjX21hc2ssCj4gIAkJCQki
cGxsIGVuYWJsZWQgY3J0Y3MgbWlzbWF0Y2ggKGZvdW5kICV4IGluIGVuYWJsZWQgbWFzaylcbiIs
Cj4gLQkJCQlwaXBlX25hbWUoZHJtX2NydGNfaW5kZXgoJmNydGMtPmJhc2UpKSk7Cj4gKwkJCQlw
aXBlX25hbWUoY3J0Yy0+cGlwZSkpOwo+ICAJfQo+ICB9Cj4gIAo+IEBAIC0xNjQ4NSw4ICsxNjQ4
NSw2IEBAIHN0YXRpYyBpbnQgaW50ZWxfY3J0Y19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwgZW51bSBwaXBlIHBpcGUpCj4gIAo+ICAJaW50ZWxfY29sb3JfaW5pdChjcnRj
KTsKPiAgCj4gLQlXQVJOX09OKGRybV9jcnRjX2luZGV4KCZjcnRjLT5iYXNlKSAhPSBjcnRjLT5w
aXBlKTsKPiAtCj4gIAlyZXR1cm4gMDsKPiAgCj4gIGZhaWw6CgotLSAKSmFuaSBOaWt1bGEsIElu
dGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
