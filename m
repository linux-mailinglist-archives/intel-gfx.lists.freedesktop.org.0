Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BB7138E56
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 10:57:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9FAD89CB8;
	Mon, 13 Jan 2020 09:57:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43B9589CB8
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2020 09:57:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 01:57:38 -0800
X-IronPort-AV: E=Sophos;i="5.69,428,1571727600"; d="scan'208";a="217363271"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 01:57:37 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: =?utf-8?Q?Jos=C3=A9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200110235045.176640-1-jose.souza@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200110235045.176640-1-jose.souza@intel.com>
Date: Mon, 13 Jan 2020 11:57:34 +0200
Message-ID: <87wo9vn0fl.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/vbt: Rename BDB_LVDS_POWER to
 BDB_LFP_POWER
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

T24gRnJpLCAxMCBKYW4gMjAyMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+IHdyb3RlOgo+IFJlbmFtaW5nIHRvIG1hdGNoIHRoZSBCU3BlYyBhbmQgc3RydWN0
IG5hbWUuCj4KPiBCU3BlYzogMjAxNTAKPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGlu
dGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNv
dXphQGludGVsLmNvbT4KClJldmlld2VkLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50
ZWwuY29tPgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9z
LmMgICAgIHwgMiArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9k
ZWZzLmggfCAyICstCj4gIDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYmlvcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKPiBp
bmRleCA4YmVhYzA2ZTNmMTAuLjlhODkxZWY3MjExOCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCj4gQEAgLTY4Niw3ICs2ODYsNyBAQCBwYXJzZV9wb3dl
cl9jb25zZXJ2YXRpb25fZmVhdHVyZXMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2
LAo+ICAJaWYgKGJkYi0+dmVyc2lvbiA8IDIyOCkKPiAgCQlyZXR1cm47Cj4gIAo+IC0JcG93ZXIg
PSBmaW5kX3NlY3Rpb24oYmRiLCBCREJfTFZEU19QT1dFUik7Cj4gKwlwb3dlciA9IGZpbmRfc2Vj
dGlvbihiZGIsIEJEQl9MRlBfUE9XRVIpOwo+ICAJaWYgKCFwb3dlcikKPiAgCQlyZXR1cm47Cj4g
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9k
ZWZzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmgKPiBp
bmRleCA0ZDBjMjNiMjkyNDguLjA1YzdjYmUzMmViNCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmgKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmgKPiBAQCAtMTExLDcgKzExMSw3IEBAIGVu
dW0gYmRiX2Jsb2NrX2lkIHsKPiAgCUJEQl9MVkRTX0xGUF9EQVRBX1BUUlMJCT0gNDEsCj4gIAlC
REJfTFZEU19MRlBfREFUQQkJPSA0MiwKPiAgCUJEQl9MVkRTX0JBQ0tMSUdIVAkJPSA0MywKPiAt
CUJEQl9MVkRTX1BPV0VSCQkJPSA0NCwKPiArCUJEQl9MRlBfUE9XRVIJCQk9IDQ0LAo+ICAJQkRC
X01JUElfQ09ORklHCQkJPSA1MiwKPiAgCUJEQl9NSVBJX1NFUVVFTkNFCQk9IDUzLAo+ICAJQkRC
X0NPTVBSRVNTSU9OX1BBUkFNRVRFUlMJPSA1NiwKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3Bl
biBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
