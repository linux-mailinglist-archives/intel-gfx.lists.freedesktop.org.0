Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBC378CC96
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Aug 2019 09:23:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A15286E27E;
	Wed, 14 Aug 2019 07:23:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40F966E27E
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Aug 2019 07:23:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Aug 2019 00:23:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,384,1559545200"; d="scan'208";a="376604058"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.30.104])
 by fmsmga006.fm.intel.com with ESMTP; 14 Aug 2019 00:23:37 -0700
MIME-Version: 1.0
To: "Yang, Dong" <dong.yang@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
In-Reply-To: <CFEFE6A4B6B19549BBA2CEC86E99FAA0361A0793@SHSMSX104.ccr.corp.intel.com>
References: <20190812023616.6194-1-dong.yang@intel.com>
 <156570039130.5501.3990807001128210261@jlahtine-desk.ger.corp.intel.com>
 <CFEFE6A4B6B19549BBA2CEC86E99FAA0361A0793@SHSMSX104.ccr.corp.intel.com>
Message-ID: <156576741598.5083.15924981398874459906@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.7
Date: Wed, 14 Aug 2019 10:23:36 +0300
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove i915 ggtt WA since GT E
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

UXVvdGluZyBZYW5nLCBEb25nICgyMDE5LTA4LTE0IDAzOjQzOjQ0KQo+IGNvbW1lbnRzIHVwZGF0
ZWQsIHBsZWFzZSByZXZpZXcgYWdhaW4uCgpZb3Ugc2VlbSB0byBoYXZlIG1pc3NlZCB0aGUgY29t
bWVudHMgdG8gdGhlIGNvZGUgaXRzZWxmLgoKUmVnYXJkcywgSm9vbmFzCgo+IAo+IC0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tCj4gRnJvbTogSm9vbmFzIExhaHRpbmVuIFttYWlsdG86am9vbmFz
LmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbV0gCj4gU2VudDogVHVlc2RheSwgQXVndXN0IDEzLCAy
MDE5IDg6NDcgUE0KPiBUbzogWWFuZywgRG9uZyA8ZG9uZy55YW5nQGludGVsLmNvbT47IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBDYzogWWFuZ0BmcmVlZGVza3RvcC5vcmcKPiBT
dWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW1BBVENIXSBkcm0vaTkxNTogUmVtb3ZlIGk5MTUgZ2d0
dCBXQSBzaW5jZSBHVCBFCj4gCj4gUXVvdGluZyBEb25nIFlhbmcgKDIwMTktMDgtMTIgMDU6MzY6
MTYpCj4gPiBGcm9tOiAiWWFuZywgRG9uZyIgPGRvbmcueWFuZ0BpbnRlbC5jb20+Cj4gPiAKPiA+
IFRoZSBBUEwgYWxyZWFkeSBmaXhlZCB0aGlzIGJ1ZyBzaW5jZSBHVCBFLCBidWcgZXhpc3QgZnJv
bQo+ID4gMCB0byBELCBhcHBseSBXQSBhY2NvcmRpbmcgR1Qgc3RlcHBpbmcuCj4gCj4gIkJyb3h0
b24gc3RlcHBpbmdzIHN0YXJ0aW5nIGZyb20gRTAgaGF2ZSBmaXhlZCB0aGUgYnVnLiIKPiAKPiA+
IFNpZ25lZC1vZmYtYnk6IFlhbmcsIERvbmcgPGRvbmcueWFuZ0BpbnRlbC5jb20+Cj4gCj4gWW91
IHByb2JhYmx5IHdhbnQgdG8gdXNlICIiIGhlcmUgdG9vLiBPciBqdXN0IHN3YXAgb3JkZXIuCj4g
Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIHwgNCArKystCj4g
PiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4gCj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAKPiA+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBpbmRleCA1ZjNlNWMxM2ZiYWEuLmVlMzg0YzI4
MTc0YSAKPiA+IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
aAo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+ID4gQEAgLTIxNDEs
NiArMjE0MSw4IEBAIElTX1NVQlBMQVRGT1JNKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1LAo+ID4gICNkZWZpbmUgQlhUX1JFVklEX0IwICAgICAgICAgICAweDMKPiA+ICAjZGVm
aW5lIEJYVF9SRVZJRF9CX0xBU1QgICAgICAgMHg4Cj4gPiAgI2RlZmluZSBCWFRfUkVWSURfQzAg
ICAgICAgICAgIDB4OQo+ID4gKyNkZWZpbmUgQlhUX1JFVklEX0QwICAgICAgICAgICAweEMKPiAK
PiAjZGVmaW5lIEJYVF9SRVZJRF9EX0xBU1QgICAgICAgIDB4Qwo+IAo+ID4gKyNkZWZpbmUgQlhU
X1JFVklEX0UwICAgICAgICAgICAweEQKPiA+ICAKPiA+ICAjZGVmaW5lIElTX0JYVF9SRVZJRChk
ZXZfcHJpdiwgc2luY2UsIHVudGlsKSBcCj4gPiAgICAgICAgIChJU19CUk9YVE9OKGRldl9wcml2
KSAmJiBJU19SRVZJRChkZXZfcHJpdiwgc2luY2UsIHVudGlsKSkgQEAgCj4gPiAtMjM1Nyw3ICsy
MzU5LDcgQEAgc3RhdGljIGlubGluZSBib29sIAo+ID4gaW50ZWxfc2Nhbm91dF9uZWVkc192dGRf
d2Eoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KSAgc3RhdGljIAo+ID4gaW5saW5l
IGJvb2wgIGludGVsX2dndHRfdXBkYXRlX25lZWRzX3Z0ZF93YShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAKPiA+ICpkZXZfcHJpdikgIHsKPiA+IC0gICAgICAgcmV0dXJuIElTX0JST1hUT04oZGV2
X3ByaXYpICYmIGludGVsX3Z0ZF9hY3RpdmUoKTsKPiA+ICsgICAgICAgcmV0dXJuIHJldHVybiBJ
U19CWFRfUkVWSUQoZGV2X3ByaXYsIDAsIEJYVF9SRVZJRF9EMCkgJiYgCj4gPiArIGludGVsX3Z0
ZF9hY3RpdmUoKTsKPiAKPiAgICAgICAgIHJldHVybiBJU19CWFRfUkVWSUQoZGV2X3ByaXYsIDAs
IEJYVF9SRVZJRF9EX0xBU1QpICYmCj4gICAgICAgICAgICAgICAgaW50ZWxfdnRkX2FjdGl2ZSgp
Owo+IAo+IFJlZ2FyZHMsIEpvb25hcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
