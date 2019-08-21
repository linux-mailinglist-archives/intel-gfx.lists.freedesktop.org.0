Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5406796E05
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 02:05:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A10A16E13B;
	Wed, 21 Aug 2019 00:05:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B74626E13B
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 00:05:52 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 17:05:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,410,1559545200"; d="scan'208";a="178341873"
Received: from mdroper-desk.fm.intel.com (HELO
 mdroper-desk.amr.corp.intel.com) ([10.105.128.126])
 by fmsmga008.fm.intel.com with ESMTP; 20 Aug 2019 17:05:52 -0700
Date: Tue, 20 Aug 2019 17:05:52 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <20190821000552.GD31199@mdroper-desk.amr.corp.intel.com>
References: <20190820012327.36443-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190820012327.36443-1-daniele.ceraolospurio@intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uc: define GuC and HuC FWs for EHL
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

T24gTW9uLCBBdWcgMTksIDIwMTkgYXQgMDY6MjM6MjdQTSAtMDcwMCwgRGFuaWVsZSBDZXJhb2xv
IFNwdXJpbyB3cm90ZToKPiBGaXJzdCB1YyBmaXJtd2FyZSByZWxlYXNlIGZvciBFSEwuCj4gCj4g
U2lnbmVkLW9mZi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1
cmlvQGludGVsLmNvbT4KPiBDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNv
bT4KPiBDYzogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgo+IENj
OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KClRoZSBuZXcg
ZmlybXdhcmVzIGxvYWQgcHJvcGVybHkgd2l0aCB0aGlzIHBhdGNoLgoKVGVzdGVkLWJ5OiBNYXR0
IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTWF0dCBSb3Bl
ciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMgfCAxMyArKysrKysrLS0tLS0tCj4gIDEgZmlsZSBjaGFu
Z2VkLCA3IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jCj4gaW5kZXggYmQyMmJmMTFhZGFkLi4yOTZhODI2MDNi
ZTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMKPiBAQCAt
MzksMTIgKzM5LDEzIEBAIHZvaWQgaW50ZWxfdWNfZndfY2hhbmdlX3N0YXR1cyhzdHJ1Y3QgaW50
ZWxfdWNfZncgKnVjX2Z3LAo+ICAgKiBNdXN0IGJlIG9yZGVyZWQgYmFzZWQgb24gcGxhdGZvcm0g
KyByZXZpZCwgZnJvbSBuZXdlciB0byBvbGRlci4KPiAgICovCj4gICNkZWZpbmUgSU5URUxfVUNf
RklSTVdBUkVfREVGUyhmd19kZWYsIGd1Y19kZWYsIGh1Y19kZWYpIFwKPiAtCWZ3X2RlZihJQ0VM
QUtFLCAgICAwLCBndWNfZGVmKGljbCwgMzMsIDAsIDApLCBodWNfZGVmKGljbCwgIDgsICA0LCAz
MjM4KSkgXAo+IC0JZndfZGVmKENPRkZFRUxBS0UsIDAsIGd1Y19kZWYoa2JsLCAzMywgMCwgMCks
IGh1Y19kZWYoa2JsLCAwMiwgMDAsIDE4MTApKSBcCj4gLQlmd19kZWYoR0VNSU5JTEFLRSwgMCwg
Z3VjX2RlZihnbGssIDMzLCAwLCAwKSwgaHVjX2RlZihnbGssIDAzLCAwMSwgMjg5MykpIFwKPiAt
CWZ3X2RlZihLQUJZTEFLRSwgICAwLCBndWNfZGVmKGtibCwgMzMsIDAsIDApLCBodWNfZGVmKGti
bCwgMDIsIDAwLCAxODEwKSkgXAo+IC0JZndfZGVmKEJST1hUT04sICAgIDAsIGd1Y19kZWYoYnh0
LCAzMywgMCwgMCksIGh1Y19kZWYoYnh0LCAwMSwgIDgsIDI4OTMpKSBcCj4gLQlmd19kZWYoU0tZ
TEFLRSwgICAgMCwgZ3VjX2RlZihza2wsIDMzLCAwLCAwKSwgaHVjX2RlZihza2wsIDAxLCAwNywg
MTM5OCkpCj4gKwlmd19kZWYoRUxLSEFSVExBS0UsIDAsIGd1Y19kZWYoZWhsLCAzMywgMCwgNCks
IGh1Y19kZWYoZWhsLCAgOSwgIDAsICAgIDApKSBcCj4gKwlmd19kZWYoSUNFTEFLRSwgICAgIDAs
IGd1Y19kZWYoaWNsLCAzMywgMCwgMCksIGh1Y19kZWYoaWNsLCAgOCwgIDQsIDMyMzgpKSBcCj4g
Kwlmd19kZWYoQ09GRkVFTEFLRSwgIDAsIGd1Y19kZWYoa2JsLCAzMywgMCwgMCksIGh1Y19kZWYo
a2JsLCAwMiwgMDAsIDE4MTApKSBcCj4gKwlmd19kZWYoR0VNSU5JTEFLRSwgIDAsIGd1Y19kZWYo
Z2xrLCAzMywgMCwgMCksIGh1Y19kZWYoZ2xrLCAwMywgMDEsIDI4OTMpKSBcCj4gKwlmd19kZWYo
S0FCWUxBS0UsICAgIDAsIGd1Y19kZWYoa2JsLCAzMywgMCwgMCksIGh1Y19kZWYoa2JsLCAwMiwg
MDAsIDE4MTApKSBcCj4gKwlmd19kZWYoQlJPWFRPTiwgICAgIDAsIGd1Y19kZWYoYnh0LCAzMywg
MCwgMCksIGh1Y19kZWYoYnh0LCAwMSwgIDgsIDI4OTMpKSBcCj4gKwlmd19kZWYoU0tZTEFLRSwg
ICAgIDAsIGd1Y19kZWYoc2tsLCAzMywgMCwgMCksIGh1Y19kZWYoc2tsLCAwMSwgMDcsIDEzOTgp
KQo+ICAKPiAgI2RlZmluZSBfX01BS0VfVUNfRldfUEFUSChwcmVmaXhfLCBuYW1lXywgc2VwYXJh
dG9yXywgbWFqb3JfLCBtaW5vcl8sIHBhdGNoXykgXAo+ICAJImk5MTUvIiBcCj4gLS0gCj4gMi4y
Mi4wCj4gCgotLSAKTWF0dCBSb3BlcgpHcmFwaGljcyBTb2Z0d2FyZSBFbmdpbmVlcgpWVFQtT1NH
QyBQbGF0Zm9ybSBFbmFibGVtZW50CkludGVsIENvcnBvcmF0aW9uCig5MTYpIDM1Ni0yNzk1Cl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
