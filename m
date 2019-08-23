Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 770C09B80D
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 23:13:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 270096ED45;
	Fri, 23 Aug 2019 21:13:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D93D6ED43
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 21:13:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 14:13:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,422,1559545200"; d="scan'208";a="191060701"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga002.jf.intel.com with ESMTP; 23 Aug 2019 14:13:43 -0700
To: intel-gfx@lists.freedesktop.org
References: <20190820012327.36443-1-daniele.ceraolospurio@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <44457f37-8a15-44a3-9567-66e0ae0e2fb9@intel.com>
Date: Fri, 23 Aug 2019 14:13:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190820012327.36443-1-daniele.ceraolospurio@intel.com>
Content-Language: en-US
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhhbmtzIGZvciB0aGUgcmV2aWV3cyBhbmQgdGhlIHRlc3RpbmcsIHB1c2hlZC4KCkRhbmllbGUK
Ck9uIDgvMTkvMTkgNjoyMyBQTSwgRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyB3cm90ZToKPiBGaXJz
dCB1YyBmaXJtd2FyZSByZWxlYXNlIGZvciBFSEwuCj4gCj4gU2lnbmVkLW9mZi1ieTogRGFuaWVs
ZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiBDYzog
TWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KPiBDYzogQW51c2hhIFNyaXZh
dHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgo+IENjOiBNaWNoYWwgV2FqZGVjemtvIDxt
aWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX3VjX2Z3LmMgfCAxMyArKysrKysrLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdl
ZCwgNyBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfdWNfZncuYwo+IGluZGV4IGJkMjJiZjExYWRhZC4uMjk2YTgyNjAzYmUw
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jCj4gQEAgLTM5
LDEyICszOSwxMyBAQCB2b2lkIGludGVsX3VjX2Z3X2NoYW5nZV9zdGF0dXMoc3RydWN0IGludGVs
X3VjX2Z3ICp1Y19mdywKPiAgICAqIE11c3QgYmUgb3JkZXJlZCBiYXNlZCBvbiBwbGF0Zm9ybSAr
IHJldmlkLCBmcm9tIG5ld2VyIHRvIG9sZGVyLgo+ICAgICovCj4gICAjZGVmaW5lIElOVEVMX1VD
X0ZJUk1XQVJFX0RFRlMoZndfZGVmLCBndWNfZGVmLCBodWNfZGVmKSBcCj4gLQlmd19kZWYoSUNF
TEFLRSwgICAgMCwgZ3VjX2RlZihpY2wsIDMzLCAwLCAwKSwgaHVjX2RlZihpY2wsICA4LCAgNCwg
MzIzOCkpIFwKPiAtCWZ3X2RlZihDT0ZGRUVMQUtFLCAwLCBndWNfZGVmKGtibCwgMzMsIDAsIDAp
LCBodWNfZGVmKGtibCwgMDIsIDAwLCAxODEwKSkgXAo+IC0JZndfZGVmKEdFTUlOSUxBS0UsIDAs
IGd1Y19kZWYoZ2xrLCAzMywgMCwgMCksIGh1Y19kZWYoZ2xrLCAwMywgMDEsIDI4OTMpKSBcCj4g
LQlmd19kZWYoS0FCWUxBS0UsICAgMCwgZ3VjX2RlZihrYmwsIDMzLCAwLCAwKSwgaHVjX2RlZihr
YmwsIDAyLCAwMCwgMTgxMCkpIFwKPiAtCWZ3X2RlZihCUk9YVE9OLCAgICAwLCBndWNfZGVmKGJ4
dCwgMzMsIDAsIDApLCBodWNfZGVmKGJ4dCwgMDEsICA4LCAyODkzKSkgXAo+IC0JZndfZGVmKFNL
WUxBS0UsICAgIDAsIGd1Y19kZWYoc2tsLCAzMywgMCwgMCksIGh1Y19kZWYoc2tsLCAwMSwgMDcs
IDEzOTgpKQo+ICsJZndfZGVmKEVMS0hBUlRMQUtFLCAwLCBndWNfZGVmKGVobCwgMzMsIDAsIDQp
LCBodWNfZGVmKGVobCwgIDksICAwLCAgICAwKSkgXAo+ICsJZndfZGVmKElDRUxBS0UsICAgICAw
LCBndWNfZGVmKGljbCwgMzMsIDAsIDApLCBodWNfZGVmKGljbCwgIDgsICA0LCAzMjM4KSkgXAo+
ICsJZndfZGVmKENPRkZFRUxBS0UsICAwLCBndWNfZGVmKGtibCwgMzMsIDAsIDApLCBodWNfZGVm
KGtibCwgMDIsIDAwLCAxODEwKSkgXAo+ICsJZndfZGVmKEdFTUlOSUxBS0UsICAwLCBndWNfZGVm
KGdsaywgMzMsIDAsIDApLCBodWNfZGVmKGdsaywgMDMsIDAxLCAyODkzKSkgXAo+ICsJZndfZGVm
KEtBQllMQUtFLCAgICAwLCBndWNfZGVmKGtibCwgMzMsIDAsIDApLCBodWNfZGVmKGtibCwgMDIs
IDAwLCAxODEwKSkgXAo+ICsJZndfZGVmKEJST1hUT04sICAgICAwLCBndWNfZGVmKGJ4dCwgMzMs
IDAsIDApLCBodWNfZGVmKGJ4dCwgMDEsICA4LCAyODkzKSkgXAo+ICsJZndfZGVmKFNLWUxBS0Us
ICAgICAwLCBndWNfZGVmKHNrbCwgMzMsIDAsIDApLCBodWNfZGVmKHNrbCwgMDEsIDA3LCAxMzk4
KSkKPiAgIAo+ICAgI2RlZmluZSBfX01BS0VfVUNfRldfUEFUSChwcmVmaXhfLCBuYW1lXywgc2Vw
YXJhdG9yXywgbWFqb3JfLCBtaW5vcl8sIHBhdGNoXykgXAo+ICAgCSJpOTE1LyIgXAo+IApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
