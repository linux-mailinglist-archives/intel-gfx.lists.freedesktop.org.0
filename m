Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3B266B9A
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 13:27:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0323C6E357;
	Fri, 12 Jul 2019 11:27:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0389B6E357
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 11:27:42 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 04:27:42 -0700
X-IronPort-AV: E=Sophos;i="5.63,482,1557212400"; d="scan'208";a="168912123"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga003-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Jul 2019 04:27:42 -0700
Date: Fri, 12 Jul 2019 04:28:18 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <20190712112818.GC12992@intel.com>
References: <20190712111445.21040-1-michal.wajdeczko@intel.com>
 <20190712111445.21040-2-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712111445.21040-2-michal.wajdeczko@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/guc: Don't enable GuC/HuC in
 auto mode on pre-Gen11
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKdWwgMTIsIDIwMTkgYXQgMTE6MTQ6NDRBTSArMDAwMCwgTWljaGFsIFdhamRlY3pr
byB3cm90ZToKPiBXZSBhcmUgYWJvdXQgdG8gY2hhbmdlIGRlZmF1bHQgc2V0dGluZyBvZiAiZW5h
YmxlX2d1YyIgbW9kcGFyYW0KPiBmcm9tIDAoZGlzYWJsZWQpIHRvIC0xKGF1dG8pLiBBcyB3ZSBv
bmx5IHdhbnQgdG8gdHVybiBvbgo+IEd1Qy9IdUMgb24gR2VuMTErLCBrZWVwIGl0IG9mZiBmb3Ig
b2xkZXIgZ2Vucy4KPiAKPiBOb3RlIHRoYXQgaXQgd291bGQgYmUgc3RpbGwgcG9zc2libGUgdG8g
ZW5hYmxlIEd1Qy9IdUMgb24gdGhlc2UKPiBvbGQgcGxhdGZvcm1zIHVzaW5nIGV4cGxpY2l0ICJl
bmFibGVfZ3VjPTIiIG1vZHBhcmFtLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBXYWpkZWN6
a28gPG1pY2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAaW50ZWwuY29tPgo+IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBs
aW51eC5pbnRlbC5jb20+Cj4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNv
bT4KPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IERh
bmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+CgpS
ZXZpZXdlZC1ieTogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgoKPiAtLS0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYyB8IDEwICsrKysrKystLS0KPiAgMSBm
aWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3VjLmMKPiBpbmRleCBmZGYwMGYxZWJiNTcuLjcyYmJjYjI1OTdmZCAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91Yy5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfdWMuYwo+IEBAIC01OCwxMiArNTgsMTYgQEAgc3RhdGljIGludCBf
X2dldF9wbGF0Zm9ybV9lbmFibGVfZ3VjKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+
ICAJc3RydWN0IGludGVsX3VjX2Z3ICpodWNfZncgPSAmaTkxNS0+aHVjLmZ3Owo+ICAJaW50IGVu
YWJsZV9ndWMgPSAwOwo+ICAKPiAtCS8qIERlZmF1bHQgaXMgdG8gdXNlIEh1QyBpZiB3ZSBrbm93
IEd1QyBhbmQgSHVDIGZpcm13YXJlcyAqLwo+ICsJaWYgKCFIQVNfR1VDKGk5MTUpKQo+ICsJCXJl
dHVybiAwOwo+ICsKPiArCS8qIFdlIGRvbid0IHdhbnQgdG8gZW5hYmxlIEd1Qy9IdUMgb24gcHJl
LUdlbjExIGJ5IGRlZmF1bHQgKi8KPiArCWlmIChJTlRFTF9HRU4oaTkxNSkgPCAxMSkKPiArCQly
ZXR1cm4gMDsKPiArCj4gIAlpZiAoaW50ZWxfdWNfZndfaXNfc2VsZWN0ZWQoZ3VjX2Z3KSAmJiBp
bnRlbF91Y19md19pc19zZWxlY3RlZChodWNfZncpKQo+ICAJCWVuYWJsZV9ndWMgfD0gRU5BQkxF
X0dVQ19MT0FEX0hVQzsKPiAgCj4gLQkvKiBBbnkgcGxhdGZvcm0gc3BlY2lmaWMgZmluZS10dW5p
bmcgY2FuIGJlIGRvbmUgaGVyZSAqLwo+IC0KPiAgCXJldHVybiBlbmFibGVfZ3VjOwo+ICB9Cj4g
IAo+IC0tIAo+IDIuMTkuMgo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
