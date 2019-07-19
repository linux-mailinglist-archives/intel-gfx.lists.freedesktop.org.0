Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0C16E775
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jul 2019 16:36:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6913D6E840;
	Fri, 19 Jul 2019 14:36:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 183D96E840
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2019 14:36:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jul 2019 07:36:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,282,1559545200"; d="scan'208";a="252173558"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga001.jf.intel.com with ESMTP; 19 Jul 2019 07:36:45 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6JEaim4030623; Fri, 19 Jul 2019 15:36:44 +0100
To: intel-gfx@lists.freedesktop.org, "Chris Wilson" <chris@chris-wilson.co.uk>
References: <20190719141427.1335-1-chris@chris-wilson.co.uk>
Date: Fri, 19 Jul 2019 16:36:44 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z46iviswxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20190719141427.1335-1-chris@chris-wilson.co.uk>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uc: Acknowledge successful
 firmware load to the user
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

T24gRnJpLCAxOSBKdWwgMjAxOSAxNjoxNDoyNyArMDIwMCwgQ2hyaXMgV2lsc29uICAKPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4gd3JvdGU6Cgo+IExldCB0aGUgdXNlciBrbm93IHRoYXQgd2Ug
aGF2ZSBzdWNjZXNzZnVsbHkgbG9hZGVkIHRoZSBmaXJtd2FyZSBmcm9tIHRoZQo+IGZpbGVzeXN0
ZW0gYW5kIGRvd25sb2FkZWQgaXQgdG8gdGhlIHVDLCB3aXRoIGEgaW5mby1sZXZlbCBtZXNzYWdl
LiBJbgo+IHRoZSBwcm9jZXNzLCB3ZSBjYW4gcmVwbGFjZSB0aGUgcmFuZG9tIHBvaW50ZXIgcHJp
bnQgb3V0IGFuZAo+IHVuaW50ZXJlc3RpbmcgZGVidWcgZXZlbnRzLgo+Cj4gU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1pY2hhbCBX
YWpkZWN6a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+IENjOiBEYW5pZWxlIENlcmFv
bG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jIHwgMTcgKysrKystLS0tLS0tLS0t
LS0KPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCj4K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYyAg
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jCj4gaW5kZXggOGNl
NzIxMDkwN2MwLi5mMDRmYTA1MWUzMzMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfdWNfZncuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX3VjX2Z3LmMKPiBAQCAtNjEsOSArNjEsNiBAQCB2b2lkIGludGVsX3VjX2Z3X2ZldGNo
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICAKPiAqZGV2X3ByaXYsCj4gIAkJCSBpbnRlbF91Y19m
d190eXBlX3JlcHIodWNfZnctPnR5cGUpLCB1Y19mdy0+cGF0aCk7Cj4gCXVjX2Z3LT5mZXRjaF9z
dGF0dXMgPSBJTlRFTF9VQ19GSVJNV0FSRV9QRU5ESU5HOwo+IC0JRFJNX0RFQlVHX0RSSVZFUigi
JXMgZncgZmV0Y2ggJXNcbiIsCj4gLQkJCSBpbnRlbF91Y19md190eXBlX3JlcHIodWNfZnctPnR5
cGUpLAo+IC0JCQkgaW50ZWxfdWNfZndfc3RhdHVzX3JlcHIodWNfZnctPmZldGNoX3N0YXR1cykp
Owo+IAllcnIgPSByZXF1ZXN0X2Zpcm13YXJlKCZmdywgdWNfZnctPnBhdGgsICZwZGV2LT5kZXYp
Owo+ICAJaWYgKGVycikgewo+IEBAIC03Miw5ICs2OSw2IEBAIHZvaWQgaW50ZWxfdWNfZndfZmV0
Y2goc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgIAo+ICpkZXZfcHJpdiwKPiAgCQlnb3RvIGZhaWw7
Cj4gIAl9Cj4gLQlEUk1fREVCVUdfRFJJVkVSKCIlcyBmdyBzaXplICV6dSBwdHIgJXBcbiIsCj4g
LQkJCSBpbnRlbF91Y19md190eXBlX3JlcHIodWNfZnctPnR5cGUpLCBmdy0+c2l6ZSwgZncpOwo+
IC0KPiAgCS8qIENoZWNrIHRoZSBzaXplIG9mIHRoZSBibG9iIGJlZm9yZSBleGFtaW5pbmcgYnVm
ZmVyIGNvbnRlbnRzICovCj4gIAlpZiAoZnctPnNpemUgPCBzaXplb2Yoc3RydWN0IHVjX2Nzc19o
ZWFkZXIpKSB7Cj4gIAkJRFJNX1dBUk4oIiVzOiBVbmV4cGVjdGVkIGZpcm13YXJlIHNpemUgKCV6
dSwgbWluICV6dSlcbiIsCj4gQEAgLTE3MywxOCArMTY3LDE3IEBAIHZvaWQgaW50ZWxfdWNfZndf
ZmV0Y2goc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgIAo+ICpkZXZfcHJpdiwKPiAgCXVjX2Z3LT5v
YmogPSBvYmo7Cj4gIAl1Y19mdy0+c2l6ZSA9IGZ3LT5zaXplOwo+ICAJdWNfZnctPmZldGNoX3N0
YXR1cyA9IElOVEVMX1VDX0ZJUk1XQVJFX1NVQ0NFU1M7Cj4gLQlEUk1fREVCVUdfRFJJVkVSKCIl
cyBmdyBmZXRjaCAlc1xuIiwKPiAtCQkJIGludGVsX3VjX2Z3X3R5cGVfcmVwcih1Y19mdy0+dHlw
ZSksCj4gLQkJCSBpbnRlbF91Y19md19zdGF0dXNfcmVwcih1Y19mdy0+ZmV0Y2hfc3RhdHVzKSk7
Cj4gKwo+ICsJZGV2X2luZm8oZGV2X3ByaXYtPmRybS5kZXYsCj4gKwkJICIlczogTG9hZGVkIGZp
cm13YXJlICclcycsIHYldS4ldVxuIiwKPiArCQkgaW50ZWxfdWNfZndfdHlwZV9yZXByKHVjX2Z3
LT50eXBlKSwgdWNfZnctPnBhdGgsCj4gKwkJIHVjX2Z3LT5tYWpvcl92ZXJfZm91bmQsIHVjX2Z3
LT5taW5vcl92ZXJfZm91bmQpOwoKSGVyZSB3ZSBjYW4gb25seSBjb25maXJtIHRoYXQgZncgd2Fz
ICJmZXRjaGVkIiBidXQgaXQncyB0b28gZmFyCnRvIHNheSBpdCdzICJsb2FkZWQiIGFzIHdlIHdp
bGwgbG9hZCBpdCB0byB0aGUgdWMgaW4gbmV4dCBzdGVwcy4KCmJ0dywgaW4gZnVuY3Rpb24gaW50
ZWxfdWNfZndfdXBsb2FkKCkgd2UgYWxyZWFkeSBoYXZlOgoKCURSTV9JTkZPKCIlczogTG9hZGVk
IGZpcm13YXJlICVzICh2ZXJzaW9uICV1LiV1KVxuIiwKCQkgaW50ZWxfdWNfZndfdHlwZV9yZXBy
KHVjX2Z3LT50eXBlKSwKCQkgdWNfZnctPnBhdGgsCgkJIHVjX2Z3LT5tYWpvcl92ZXJfZm91bmQs
IHVjX2Z3LT5taW5vcl92ZXJfZm91bmQpOwoKd2hhdCBpcyB3cm9uZyB3aXRoIHRoaXMgb25lID8g
KGV4Y2VwdCB0aGF0IGl0IGRvZXNuJ3QgdXNlIGRldl9pbmZvKQoKPiAJcmVsZWFzZV9maXJtd2Fy
ZShmdyk7Cj4gIAlyZXR1cm47Cj4gZmFpbDoKPiAgCXVjX2Z3LT5mZXRjaF9zdGF0dXMgPSBJTlRF
TF9VQ19GSVJNV0FSRV9GQUlMOwo+IC0JRFJNX0RFQlVHX0RSSVZFUigiJXMgZncgZmV0Y2ggJXNc
biIsCj4gLQkJCSBpbnRlbF91Y19md190eXBlX3JlcHIodWNfZnctPnR5cGUpLAo+IC0JCQkgaW50
ZWxfdWNfZndfc3RhdHVzX3JlcHIodWNfZnctPmZldGNoX3N0YXR1cykpOwo+IAlEUk1fV0FSTigi
JXM6IEZhaWxlZCB0byBmZXRjaCBmaXJtd2FyZSAlcyAoZXJyb3IgJWQpXG4iLAo+ICAJCSBpbnRl
bF91Y19md190eXBlX3JlcHIodWNfZnctPnR5cGUpLCB1Y19mdy0+cGF0aCwgZXJyKTsKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
