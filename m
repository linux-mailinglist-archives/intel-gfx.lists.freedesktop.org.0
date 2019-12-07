Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B13115E6E
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Dec 2019 21:19:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 013326E227;
	Sat,  7 Dec 2019 20:19:18 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2EFF6E227
 for <Intel-GFX@lists.freedesktop.org>; Sat,  7 Dec 2019 20:19:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Dec 2019 12:19:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,289,1571727600"; d="scan'208";a="209747564"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga007.fm.intel.com with ESMTP; 07 Dec 2019 12:19:15 -0800
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.149.132])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 xB7KJE7I000506; Sat, 7 Dec 2019 20:19:14 GMT
To: Intel-GFX@lists.freedesktop.org, John.C.Harrison@intel.com
References: <20191121002723.33133-1-John.C.Harrison@Intel.com>
 <20191207010155.24943-1-John.C.Harrison@Intel.com>
Date: Sat, 07 Dec 2019 21:19:14 +0100
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.0cf2qcwtxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20191207010155.24943-1-John.C.Harrison@Intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uc: Don't complain about FW
 versions when overridden
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU2F0LCAwNyBEZWMgMjAxOSAwMjowMTo1NSArMDEwMCwgPEpvaG4uQy5IYXJyaXNvbkBpbnRl
bC5jb20+IHdyb3RlOgoKPiBGcm9tOiBKb2huIEhhcnJpc29uIDxKb2huLkMuSGFycmlzb25ASW50
ZWwuY29tPgo+Cj4gSWYgYSBGVyBvdmVycmlkZSBpcyBwcmVzZW50IHRoZW4gYSB2ZXJzaW9uIG1p
cy1tYXRjaCBpcyBhY3R1YWxseQo+IGlnbm9yZWQuIFRoZSB3YXJuaW5nIG5vdGljZSB3YXMgc3Rp
bGwgYmVpbmcgcHJpbnRlZCwgdGhvdWdoLiBXaGljaAo+IGNvdWxkIGNvbmZ1c2UgcGVvcGxlIGJ5
IGltcGx5aW5nIHRoYXQgdGhlIGxvYWQgaGFkIGZhaWxlZCB3aGVuIGl0IGhhZAo+IGFjdHVhbGx5
IHN1Y2NlZWRlZC4gR2l2ZW4gdGhhdCB0aGUgd2hvbGUgcG9pbnQgb2YgdGhlIG92ZXJyaWRlIGlz
IHRvCj4gdXNlIGRpZmZlcmVudCB2ZXJzaW9ucyBvZiBGVywgdGhlcmUgaXNuJ3QgcmVhbGx5IG11
Y2ggcG9pbnQgcmVwb3J0aW5nCj4gdGhlIG1pcy1tYXRjaC4KPgo+IFNvLCBvbmx5IHByaW50IHRo
ZSBub3RpY2Ugd2hlbiBhY3R1YWxseSBmYWlsaW5nIHRoZSBsb2FkIGFuZCBhdm9pZCBhbnkKPiBw
b3RlbnRpYWwgY29uZnVzaW9uLgo+Cj4gdjI6IE9yaWdpbmFsIHBhdGNoIGFkZGVkIGEgbmV3ICdp
Z25vcmUgdGhlIHByZXZpb3VzIG5vdGljZScgbm90aWNlLgo+IE5vdyBpdCBqdXN0IHN1cHByZXNz
ZXMgdGhlIGV4aXN0aW5nIG5vdGljZS4gUmV2aWV3IGZlZWRiYWNrIGZyb20KPiBNaWNoYWwgVy4K
ClRoaXMgaXMgbm90IGV4YWN0bHkgZnJvbSBteSBwcmV2aW91cyBmZWVkYmFjay4gSSdtIG5vdCBz
b2xkIHRoYXQKc3VwcHJlc3NpbmcgbWVzc2FnZSBhdCBmdyBmZXRjaCBzdGVwIGFib3V0IGxvYWRp
bmcgaW5jb21wYXRpYmxlIGZ3Cih0aGF0IG1heSBsYXRlciBmYWlsIHRvIGxvYWQpIGlzIGEgZ29v
ZCBpZGVhLiBOb3RlIHRoYXQgbG9hZGVkIGZ3CnZlcnNpb24gd2lsbCBiZSBvbmx5IHByaW50ZWQg
d2hlbiB3ZSBzdWNjZXNzZnVsbHkgbG9hZCBpdCAoc2VlCmludGVsX3VjX2luaXRfaHcpLiBJbiBj
YXNlIG9mIGFueSBmdyBsb2FkIGZhaWx1cmUgKHdoaWNoIGlzIG5vdwptb3JlIGxpa2VseSB0byBi
ZSBjYXVzZWQgYnkgZncvZHJ2IHZlcnNpb24gbWlzbWF0Y2gpIHdlIHdpbGwgbm90CnByaW50IHdo
aWNoIGZ3IHZlcnNpb24gd2UgYXR0ZW1wdGVkIHRvIGxvYWQgKGV4Y2VwdCBmdyBibG9iIG5hbWUs
CndoaWNoIGlzIG5vdCBndWFyYW50ZWVkIHRvIGZvbGxvdyBtYWpvci5taW5vciBuYW1pbmcgc2No
ZW1hKS4KCk1pY2hhbAoKPgo+IFNpZ25lZC1vZmYtYnk6IEpvaG4gSGFycmlzb24gPEpvaG4uQy5I
YXJyaXNvbkBJbnRlbC5jb20+Cj4gQ0M6IE1pY2hhbCBXYWpkZWN6a28gPG1pY2hhbC53YWpkZWN6
a29AaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91
Y19mdy5jIHwgMTEgKysrKystLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygr
KSwgNiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF91Y19mdy5jICAKPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X3VjX2Z3LmMKPiBpbmRleCA2NmEzMGFiNzA0NGEuLmFhMWI3YWQwMmI1NiAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYwo+IEBAIC0zNTEsMTYgKzM1MSwxNSBA
QCBpbnQgaW50ZWxfdWNfZndfZmV0Y2goc3RydWN0IGludGVsX3VjX2Z3ICp1Y19mdywgIAo+IHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICAJdWNfZnctPm1pbm9yX3Zlcl9mb3VuZCA9
IEZJRUxEX0dFVChDU1NfU1dfVkVSU0lPTl9VQ19NSU5PUiwKPiAgCQkJCQkgICBjc3MtPnN3X3Zl
cnNpb24pOwo+IC0JaWYgKHVjX2Z3LT5tYWpvcl92ZXJfZm91bmQgIT0gdWNfZnctPm1ham9yX3Zl
cl93YW50ZWQgfHwKPiAtCSAgICB1Y19mdy0+bWlub3JfdmVyX2ZvdW5kIDwgdWNfZnctPm1pbm9y
X3Zlcl93YW50ZWQpIHsKPiArCWlmICgodWNfZnctPm1ham9yX3Zlcl9mb3VuZCAhPSB1Y19mdy0+
bWFqb3JfdmVyX3dhbnRlZCB8fAo+ICsJICAgICB1Y19mdy0+bWlub3JfdmVyX2ZvdW5kIDwgdWNf
ZnctPm1pbm9yX3Zlcl93YW50ZWQpICYmCj4gKwkgICAgIWludGVsX3VjX2Z3X2lzX292ZXJyaWRk
ZW4odWNfZncpKSB7Cj4gIAkJZGV2X25vdGljZShkZXYsICIlcyBmaXJtd2FyZSAlczogdW5leHBl
Y3RlZCB2ZXJzaW9uOiAldS4ldSAhPSAgCj4gJXUuJXVcbiIsCj4gIAkJCSAgIGludGVsX3VjX2Z3
X3R5cGVfcmVwcih1Y19mdy0+dHlwZSksIHVjX2Z3LT5wYXRoLAo+ICAJCQkgICB1Y19mdy0+bWFq
b3JfdmVyX2ZvdW5kLCB1Y19mdy0+bWlub3JfdmVyX2ZvdW5kLAo+ICAJCQkgICB1Y19mdy0+bWFq
b3JfdmVyX3dhbnRlZCwgdWNfZnctPm1pbm9yX3Zlcl93YW50ZWQpOwo+IC0JCWlmICghaW50ZWxf
dWNfZndfaXNfb3ZlcnJpZGRlbih1Y19mdykpIHsKPiAtCQkJZXJyID0gLUVOT0VYRUM7Cj4gLQkJ
CWdvdG8gZmFpbDsKPiAtCQl9Cj4gKwkJZXJyID0gLUVOT0VYRUM7Cj4gKwkJZ290byBmYWlsOwo+
ICAJfQo+IAlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3NobWVtX2Zyb21fZGF0YShpOTE1
LCBmdy0+ZGF0YSwgZnctPnNpemUpOwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
