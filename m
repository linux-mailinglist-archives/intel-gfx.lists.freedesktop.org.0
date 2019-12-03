Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE26810F7B9
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 07:21:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 000F16E39B;
	Tue,  3 Dec 2019 06:21:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC5CF6E39B
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 06:21:30 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Dec 2019 22:21:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,272,1571727600"; d="scan'208";a="200884154"
Received: from unknown (HELO intel.com) ([10.223.74.120])
 by orsmga007.jf.intel.com with ESMTP; 02 Dec 2019 22:21:28 -0800
Date: Tue, 3 Dec 2019 11:43:16 +0530
From: Anshuamn Gupta <anshuman.gupta@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20191203061315.GA8432@intel.com>
References: <20191118163339.16825-1-anshuman.gupta@intel.com>
 <875zj4m700.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <875zj4m700.fsf@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] i915: Expose panel power cycle delay to
 i915_panel_timings
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0xMS0yOCBhdCAxNjowNTowMyArMDIwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4gT24g
TW9uLCAxOCBOb3YgMjAxOSwgQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNv
bT4gd3JvdGU6Cj4gPiBQdXR0aW5nIGRvd24gdGhlIEFVWCBwb3dlciBkb21haW4gcmVmZXJlbmNl
IGNvdW50IGluCj4gPiBlZHAgdmRkIG9mZiBhc3luYyBzZXF1ZW5jZSB0YWtlcyB0b28gbXVjaCBv
ZiB0aW1lCj4gPiAocmVsYXRpdmUgdG8gcGFuZWwgcG93ZXIgY3ljbGUgZGVsYXkpIHRoZXJlZm9y
ZSBpdCBtYWtlIHNlbnNlCj4gPiB0byBleHBvc2UgdGhlIHBhbmVsIHBvd2VyIGN5Y2xlIGRlbGF5
IHRvIGk5MTVfcGFuZWxfdGltaW5ncwo+ID4gYWxvbmcgd2l0aCBvdGhlciBkZWxheXMuCj4gPiBJ
dCBjYW4gYmUgdXNlIGJ5IERDIHN0YXRlIElHVCB0byB3YWl0IGZvciBzdHJpY3QgcG93ZXIgY3lj
bGUgZGVsYXkKPiA+IGluIG9yZGVyIHRvIGNoZWNrIGZvciB2YXJpb3VzIERDIHN0YXRlIGNvdW50
ZXJzLgo+IAo+IENhdGNoaW5nIHVwIG9uIHJldmlldywgYXJlIHlvdSBzdWdnZXN0aW5nIHRvIGxv
b2sgYXQgdGhpcyBraW5kIG9mCj4gZGVidWdmcyBmaWxlcyBmb3IgdGVzdHM/IFBsZWFzZSBmaW5k
IGFub3RoZXIgd2F5LgpBY3R1YWxseSBvbiBmZXcgcGFuZWxzIHBvd2VyIGN5Y2xlIGRlbGF5IGlz
IHRvbyBtdWNoIHRoYXQgaXQgaXMgcmVxdWlyZWQgCnRvIHdhaXQgZm9yIDYgc2Vjb25kcyBpbiBp
Z3QgZm9yIGFuIHRpbWVvdXQsIGJ1dCB0aGlzIGNvdWxkIHJlYWxseSBhZmZlY3QKQ0kgZXhlY3V0
aW9uIHRpbWUgb24gcGFuZWwgd2l0aCBsZXNzZXIgcG93ZXIgY3ljbGUgZGVsYXkuCihodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY4NDc4LykKRm9yIHRoaXMgc3BlY2lm
aWMgcmVhc29uIGkgdGhvdWdodCBpdCBtYXkgYmUgZ29vZCB0byBleHBvc2UKcGFuZWwgcG93ZXIg
Y3ljbGUgZGVsYXkgd2l0aCBvdGhlciBwYW5lbCBkZWxheSBhbmQgdXNlIHRoYXQKaW4gaWd0LgpU
aGFua3MgLApBbnNodW1hbi4KPiAKPiBJIGRvbid0IG1pbmQgaGF2aW5nIHRoZSBkZWJ1Z2ZzIGlu
Zm8gcGVyIHNlLgo+IAo+IEJSLAo+IEphbmkuCj4gCj4gPgo+ID4gQ2M6IEltcmUgRGVhayA8aW1y
ZS5kZWFrQGludGVsLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IEFuc2h1bWFuIEd1cHRhIDxhbnNo
dW1hbi5ndXB0YUBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2RlYnVnZnMuYyB8IDIgKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
Cj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPiA+IGluZGV4IGNhYjYzMjc5
MWY3My4uYzA3NWNjMmI3YmI1IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kZWJ1Z2ZzLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdm
cy5jCj4gPiBAQCAtNDQzNiw2ICs0NDM2LDggQEAgc3RhdGljIGludCBpOTE1X3BhbmVsX3Nob3co
c3RydWN0IHNlcV9maWxlICptLCB2b2lkICpkYXRhKQo+ID4gIAkJICAgaW50ZWxfZHAtPnBhbmVs
X3Bvd2VyX3VwX2RlbGF5KTsKPiA+ICAJc2VxX3ByaW50ZihtLCAiUGFuZWwgcG93ZXIgZG93biBk
ZWxheTogJWRcbiIsCj4gPiAgCQkgICBpbnRlbF9kcC0+cGFuZWxfcG93ZXJfZG93bl9kZWxheSk7
Cj4gPiArCXNlcV9wcmludGYobSwgIlBhbmVsIHBvd2VyIGN5Y2xlIGRlbGF5OiAlZFxuIiwKPiA+
ICsJCSAgIGludGVsX2RwLT5wYW5lbF9wb3dlcl9jeWNsZV9kZWxheSk7Cj4gPiAgCXNlcV9wcmlu
dGYobSwgIkJhY2tsaWdodCBvbiBkZWxheTogJWRcbiIsCj4gPiAgCQkgICBpbnRlbF9kcC0+YmFj
a2xpZ2h0X29uX2RlbGF5KTsKPiA+ICAJc2VxX3ByaW50ZihtLCAiQmFja2xpZ2h0IG9mZiBkZWxh
eTogJWRcbiIsCj4gCj4gLS0gCj4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBo
aWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
