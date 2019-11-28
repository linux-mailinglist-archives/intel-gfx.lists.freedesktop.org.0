Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E4510CA17
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 15:05:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCAB06E820;
	Thu, 28 Nov 2019 14:05:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA68F6E826
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 14:05:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Nov 2019 06:05:08 -0800
X-IronPort-AV: E=Sophos;i="5.69,253,1571727600"; d="scan'208";a="203443239"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Nov 2019 06:05:07 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191118163339.16825-1-anshuman.gupta@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191118163339.16825-1-anshuman.gupta@intel.com>
Date: Thu, 28 Nov 2019 16:05:03 +0200
Message-ID: <875zj4m700.fsf@intel.com>
MIME-Version: 1.0
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAxOCBOb3YgMjAxOSwgQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVs
LmNvbT4gd3JvdGU6Cj4gUHV0dGluZyBkb3duIHRoZSBBVVggcG93ZXIgZG9tYWluIHJlZmVyZW5j
ZSBjb3VudCBpbgo+IGVkcCB2ZGQgb2ZmIGFzeW5jIHNlcXVlbmNlIHRha2VzIHRvbyBtdWNoIG9m
IHRpbWUKPiAocmVsYXRpdmUgdG8gcGFuZWwgcG93ZXIgY3ljbGUgZGVsYXkpIHRoZXJlZm9yZSBp
dCBtYWtlIHNlbnNlCj4gdG8gZXhwb3NlIHRoZSBwYW5lbCBwb3dlciBjeWNsZSBkZWxheSB0byBp
OTE1X3BhbmVsX3RpbWluZ3MKPiBhbG9uZyB3aXRoIG90aGVyIGRlbGF5cy4KPiBJdCBjYW4gYmUg
dXNlIGJ5IERDIHN0YXRlIElHVCB0byB3YWl0IGZvciBzdHJpY3QgcG93ZXIgY3ljbGUgZGVsYXkK
PiBpbiBvcmRlciB0byBjaGVjayBmb3IgdmFyaW91cyBEQyBzdGF0ZSBjb3VudGVycy4KCkNhdGNo
aW5nIHVwIG9uIHJldmlldywgYXJlIHlvdSBzdWdnZXN0aW5nIHRvIGxvb2sgYXQgdGhpcyBraW5k
IG9mCmRlYnVnZnMgZmlsZXMgZm9yIHRlc3RzPyBQbGVhc2UgZmluZCBhbm90aGVyIHdheS4KCkkg
ZG9uJ3QgbWluZCBoYXZpbmcgdGhlIGRlYnVnZnMgaW5mbyBwZXIgc2UuCgpCUiwKSmFuaS4KCj4K
PiBDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEFu
c2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIHwgMiArKwo+ICAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
ZWJ1Z2ZzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwo+IGluZGV4IGNh
YjYzMjc5MWY3My4uYzA3NWNjMmI3YmI1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZGVidWdmcy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1
Z2ZzLmMKPiBAQCAtNDQzNiw2ICs0NDM2LDggQEAgc3RhdGljIGludCBpOTE1X3BhbmVsX3Nob3co
c3RydWN0IHNlcV9maWxlICptLCB2b2lkICpkYXRhKQo+ICAJCSAgIGludGVsX2RwLT5wYW5lbF9w
b3dlcl91cF9kZWxheSk7Cj4gIAlzZXFfcHJpbnRmKG0sICJQYW5lbCBwb3dlciBkb3duIGRlbGF5
OiAlZFxuIiwKPiAgCQkgICBpbnRlbF9kcC0+cGFuZWxfcG93ZXJfZG93bl9kZWxheSk7Cj4gKwlz
ZXFfcHJpbnRmKG0sICJQYW5lbCBwb3dlciBjeWNsZSBkZWxheTogJWRcbiIsCj4gKwkJICAgaW50
ZWxfZHAtPnBhbmVsX3Bvd2VyX2N5Y2xlX2RlbGF5KTsKPiAgCXNlcV9wcmludGYobSwgIkJhY2ts
aWdodCBvbiBkZWxheTogJWRcbiIsCj4gIAkJICAgaW50ZWxfZHAtPmJhY2tsaWdodF9vbl9kZWxh
eSk7Cj4gIAlzZXFfcHJpbnRmKG0sICJCYWNrbGlnaHQgb2ZmIGRlbGF5OiAlZFxuIiwKCi0tIApK
YW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
