Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6F5F457E
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2019 12:14:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25DC36F93F;
	Fri,  8 Nov 2019 11:14:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6A946F93F
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Nov 2019 11:14:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 03:14:07 -0800
X-IronPort-AV: E=Sophos;i="5.68,281,1569308400"; d="scan'208";a="196872893"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 03:14:05 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191108003602.33526-4-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191108003602.33526-1-lucas.demarchi@intel.com>
 <20191108003602.33526-4-lucas.demarchi@intel.com>
Date: Fri, 08 Nov 2019 13:14:03 +0200
Message-ID: <87eeyi62o4.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/bios: do not discard address
 space
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

T24gVGh1LCAwNyBOb3YgMjAxOSwgTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+IHdyb3RlOgo+IFdoZW4gd2UgYXJlIG1hcHBpbmcgdGhlIFZCVCB0aHJvdWdoIHBjaV9t
YXBfcm9tKCkgd2UgbWF5IG5vdCBiZSBhbGxvd2VkCj4gdG8gc2ltcGx5IGRpc2NhcmQgdGhlIGFk
ZHJlc3Mgc3BhY2UgYW5kIGdvIG9uIHJlYWRpbmcgdGhlIG1lbW9yeS4gQWZ0ZXIKPiBjaGVja2lu
ZyBvbiBteSB0ZXN0IHN5c3RlbSB0aGF0IGR1bXBpbmcgdGhlIHJvbSB2aWEgc3lzZnMgSSBjb3Vs
ZAo+IGFjdHVhbGx5IGdldCB0aGUgY29ycmVjdCB2YnQsIEkgZGVjaWRlZCB0byBjaGFuZ2UgdGhl
IGltcGxlbWVudGF0aW9uIHRvCj4gdXNlIHRoZSBzYW1lIGFwcHJvYWNoLCBieSBjYWxsaW5nIG1l
bWNweV9mcm9taW8oKS4KPgo+IEluIG9yZGVyIHRvIGF2b2lkIGNvcHlpbmcgdGhlIGVudGlyZSBv
cHJvbSB0aGlzIGltcGxlbWVudHMgYSBzaW1wbGUKPiBtZW1tZW0oKSBzZWFyY2hpbmcgZm9yICIk
VkJUIi4gQ29udHJhcnkgdG8gdGhlIHByZXZpb3VzIGltcGxlbWVudGF0aW9uCj4gdGhpcyBhbHNv
IHRha2VzIGNhcmUgb2Ygbm90IGlzc3VpbmcgdW5hbGlnbmVkIFBDSSByZWFkcyB0aGF0IHdvdWxk
Cj4gb3RoZXJ3aXNlIGdldCB0cmFuc2xhdGVkIGludG8gbW9yZSBldmVuIG1vcmUgcmVhZHMuIEkg
YWxzbyB2YWd1ZWx5Cj4gcmVtZW1iZXIgdW5hbGlnbmVkIHJlYWRzIGZhaWxpbmcgaW4gdGhlIHBh
c3Qgd2l0aCBzb21lIGRldmljZXMuCj4KPiBBbHNvIG1ha2Ugc3VyZSB3ZSBjb3B5IG9ubHkgdGhl
IFZCVCBhbmQgbm90IHRoZSBlbnRpcmUgb3Byb20gdGhhdCBpcwo+IHVzdWFsbHkgbXVjaCBsYXJn
ZXIuCgpTbyB5b3UgaGF2ZQoKMS4gYSBmaXggdG8gdW5hbGlnbmVkIHJlYWRzCgoyLiBhbiBvcHRp
bWl6YXRpb24gdG8gYXZvaWQgcmVhZGluZyBpbmRpdmlkdWFsIGJ5dGVzIGZvdXIgdGltZXMKCjMu
IHJlc3BlY3RpbmcgX19pb21lbSBhbmQgY29weWluZyAoSSBndWVzcyB0aGVzZSBhcmUgdGllZCB0
b2dldGhlcikKClNlZW1zIHRvIG1lIHRoYXQgcmVhbGx5IHNob3VsZCBiZSBhdCBsZWFzdCB0aHJl
ZSBwYXRjaGVzLiBOb3QKbmVjZXNzYXJpbHkgaW4gdGhlIGFib3ZlIG9yZGVyLgoKRm9sbG93LXVw
OiBzdG9yZSBwb2ludGVyIHRvIHRoZSBvcHJvbSB2YnQgc29tZXdoZXJlIHVuZGVyIGk5MTUtPnZi
dCwgYW5kCmhhdmUgZGVidWdmcyBpOTE1X3ZidCgpIGhhbmRsZSB0aGF0IHByb3Blcmx5LgoKPgo+
IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29t
Pgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYyB8IDk1
ICsrKysrKysrKysrKysrKysrKystLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA3OSBpbnNlcnRpb25z
KCspLCAxNiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Jpb3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYmlvcy5jCj4gaW5kZXggNjcxYmJjZTZiYTViLi5jNDAxZTkwYjdjZjEgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwo+IEBAIC0xODA2LDMxICsxODA2
LDg4IEBAIGJvb2wgaW50ZWxfYmlvc19pc192YWxpZF92YnQoY29uc3Qgdm9pZCAqYnVmLCBzaXpl
X3Qgc2l6ZSkKPiAgCXJldHVybiB2YnQ7Cj4gIH0KPiAgCj4gLXN0YXRpYyBjb25zdCBzdHJ1Y3Qg
dmJ0X2hlYWRlciAqZmluZF92YnQodm9pZCBfX2lvbWVtICpvcHJvbSwgc2l6ZV90IHNpemUpCj4g
K3ZvaWQgX19pb21lbSAqZmluZF92YnQodm9pZCBfX2lvbWVtICpvcHJvbSwgc2l6ZV90IHNpemUp
Cj4gIHsKPiAtCXNpemVfdCBpOwo+ICsJY29uc3QgdTMyIE1BR0lDID0gKigoY29uc3QgdTMyICop
IiRWQlQiKTsKPiArCXNpemVfdCBkb25lID0gMCwgY3VyID0gMDsKPiArCXZvaWQgX19pb21lbSAq
cDsKPiArCXU4IGJ1ZlsxMjhdOwo+ICsJdTMyIHZhbDsKPiAgCj4gLQkvKiBTY291ciBtZW1vcnkg
bG9va2luZyBmb3IgdGhlIFZCVCBzaWduYXR1cmUuICovCj4gLQlmb3IgKGkgPSAwOyBpICsgNCA8
IHNpemU7IGkrKykgewo+IC0JCXZvaWQgKnZidDsKPiArCS8qCj4gKwkgKiBwb29yJ3MgbWFuIG1l
bW1lbSgpIHdpdGggc2l6ZW9mKGJ1Zikgd2luZG93IHRvIGF2b2lkIGZyZXF1ZW50Cj4gKwkgKiB3
cmFwLWFyb3VuZHMgYW5kIHVzaW5nIHUzMiBmb3IgY29tcGFyaXNvbi4gVGhpcyBnaXZlcyB1cyA0
Cj4gKwkgKiBjb21wYXJpc29ucyBwZXIgaW9yZWFkMzIoKSBhbmQgYXZvaWRzIHVuYWxpZ25lZCBp
byByZWFkcyAoYWx0aG91Z2ggaXQKPiArCSAqIHN0aWxsIGRvZXMgdW5hbGlnbmVkIGNwdSBhY2Nl
c3MpLgo+ICsJICovCgpJZiB3ZSdyZSByZWFsbHkgd29ycmllZCBhYm91dCBwZXJmb3JtYW5jZSBo
ZXJlLCBhbmQgdXNlIGEgbG9jYWwgYnVmZmVyCnRvIG9wdGltaXplIHRoZSB3cmFwYXJvdW5kcywg
d291bGQgaXQgYWN0dWFsbHkgYmUgbW9yZSBlZmZpY2llbnQgdG8gdXNlCm1lbWNweV9mcm9taW8o
KSB3aGljaCBoYXMgYW4gYXJjaCBzcGVjaWZpYyBpbXBsZW1lbnRhdGlvbiBpbiBhc20/CgpJbiBh
bnkgY2FzZSBtYWtlcyB5b3UgdGhpbmsgeW91IHNob3VsZCBmaXJzdCBoYXZlIHRoZSBwYXRjaCB0
aGF0IHRoZQpwYXRjaCBzdWJqZWN0IGNsYWltcywgZml4IHVuYWxpZ25lZCByZWFkcyBhbmQgYWRk
IG9wdGltaXphdGlvbnMKbmV4dC4gVGhpcyBvbmUgZG9lcyB0b28gbXVjaC4KCkJSLApKYW5pLgoK
Cgo+ICsJZm9yIChwID0gb3Byb207IHAgPCBvcHJvbSArIHNpemU7IHAgKz0gNCkgewo+ICsJCSoo
dTMyICopKCZidWZbZG9uZV0pID0gaW9yZWFkMzIocCk7Cj4gKwkJZG9uZSArPSA0Owo+ICAKPiAt
CQlpZiAoaW9yZWFkMzIob3Byb20gKyBpKSAhPSAqKChjb25zdCB1MzIgKikiJFZCVCIpKQo+IC0J
CQljb250aW51ZTsKPiArCQl3aGlsZSAoY3VyICsgNCA8PSBkb25lKSB7Cj4gKwkJCXZhbCA9ICoo
dTMyICopKGJ1ZiArIGN1cik7Cj4gKwkJCWlmICh2YWwgPT0gTUFHSUMpCj4gKwkJCQlyZXR1cm4g
cCAtIChkb25lIC0gY3VyKSArIDQ7Cj4gIAo+IC0JCS8qCj4gLQkJICogVGhpcyBpcyB0aGUgb25l
IHBsYWNlIHdoZXJlIHdlIGV4cGxpY2l0bHkgZGlzY2FyZCB0aGUgYWRkcmVzcwo+IC0JCSAqIHNw
YWNlIChfX2lvbWVtKSBvZiB0aGUgQklPUy9WQlQuCj4gLQkJICovCj4gLQkJdmJ0ID0gKHZvaWQg
X19mb3JjZSAqKW9wcm9tICsgaTsKPiAtCQlpZiAoaW50ZWxfYmlvc19pc192YWxpZF92YnQodmJ0
LCBzaXplIC0gaSkpCj4gLQkJCXJldHVybiB2YnQ7Cj4gKwkJCWN1cisrOwo+ICsJCX0KPiAgCj4g
LQkJYnJlYWs7Cj4gKwkJLyogd3JhcC1hcm91bmQgKi8KPiArCQlpZiAoZG9uZSArIDQgPj0gc2l6
ZW9mKGJ1ZikpIHsKPiArCQkJYnVmWzBdID0gYnVmW2RvbmUgLSAzXTsKPiArCQkJYnVmWzFdID0g
YnVmW2RvbmUgLSAyXTsKPiArCQkJYnVmWzJdID0gYnVmW2RvbmUgLSAxXTsKPiArCQkJY3VyID0g
MDsKPiArCQkJZG9uZSA9IDM7Cj4gKwkJfQo+ICAJfQo+ICAKPiArCS8qIFJlYWQgdGhlIGVudGly
ZSBvcHJvbSBhbmQgbm8gVkJUIGZvdW5kICovCj4gIAlyZXR1cm4gTlVMTDsKPiAgfQo+ICAKPiAr
LyoKPiArICogQ29weSB2YnQgdG8gYSBuZXcgYWxsb2NhdGVkIGJ1ZmZlciBhbmQgdXBkYXRlIEBw
c2l6ZSB0byBtYXRjaCB0aGUgVkJUCj4gKyAqIHNpemUKPiArICovCj4gK3N0YXRpYyBzdHJ1Y3Qg
dmJ0X2hlYWRlciAqY29weV92YnQodm9pZCBfX2lvbWVtICpvcHJvbSwgc2l6ZV90ICpwc2l6ZSkK
PiArewo+ICsJb2ZmX3QgdmJ0X3NpemVfb2Zmc2V0ID0gb2Zmc2V0b2Yoc3RydWN0IHZidF9oZWFk
ZXIsIHZidF9zaXplKTsKPiArCXN0cnVjdCB2YnRfaGVhZGVyICp2YnQ7Cj4gKwl2b2lkIF9faW9t
ZW0gKnA7Cj4gKwl1MTYgdmJ0X3NpemU7Cj4gKwlzaXplX3Qgc2l6ZTsKPiArCj4gKwlzaXplID0g
KnBzaXplOwo+ICsJcCA9IGZpbmRfdmJ0KG9wcm9tLCBzaXplKTsKPiArCWlmICghcCkKPiArCQly
ZXR1cm4gTlVMTDsKPiArCj4gKwlzaXplIC09IHAgLSBvcHJvbTsKPiArCj4gKwkvKgo+ICsJICog
V2UgbmVlZCB0byBhdCBsZWFzdCBiZSBhYmxlIHRvIHJlYWQgdGhlIHNpemUgYW5kIG1ha2Ugc3Vy
ZSBpdCBkb2Vzbid0Cj4gKwkgKiBvdmVyZmxvdyB0aGUgb3Byb20uIFRoZSByZXN0IHdpbGwgYmUg
dmFsaWRhdGVkIGxhdGVyLgo+ICsJICovCj4gKwlpZiAoc2l6ZW9mKCp2YnQpID4gc2l6ZSkgewo+
ICsJCURSTV9ERUJVR19EUklWRVIoIlZCVCBoZWFkZXIgaW5jb21wbGV0ZVxuIik7Cj4gKwkJcmV0
dXJuIE5VTEw7Cj4gKwl9Cj4gKwo+ICsJdmJ0X3NpemUgPSBpb3JlYWQxNihwICsgdmJ0X3NpemVf
b2Zmc2V0KTsKPiArCWlmICh2YnRfc2l6ZSA+IHNpemUpIHsKPiArCQlEUk1fREVCVUdfRFJJVkVS
KCJWQlQgaW5jb21wbGV0ZVxuIik7Cj4gKwkJcmV0dXJuIE5VTEw7Cj4gKwl9Cj4gKwo+ICsJdmJ0
ID0ga21hbGxvYyh2YnRfc2l6ZSwgR0ZQX0tFUk5FTCk7Cj4gKwltZW1jcHlfZnJvbWlvKHZidCwg
cCwgdmJ0X3NpemUpOwo+ICsKPiArCSpwc2l6ZSA9IHZidF9zaXplOwo+ICsKPiArCXJldHVybiB2
YnQ7Cj4gK30KPiArCj4gIC8qKgo+ICAgKiBpbnRlbF9iaW9zX2luaXQgLSBmaW5kIFZCVCBhbmQg
aW5pdGlhbGl6ZSBzZXR0aW5ncyBmcm9tIHRoZSBCSU9TCj4gICAqIEBkZXZfcHJpdjogaTkxNSBk
ZXZpY2UgaW5zdGFuY2UKPiBAQCAtMTg2MSwxMCArMTkxOCwxMyBAQCB2b2lkIGludGVsX2Jpb3Nf
aW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gIAkJaWYgKCFvcHJvbSkK
PiAgCQkJZ290byBvdXQ7Cj4gIAo+IC0JCXZidCA9IGZpbmRfdmJ0KG9wcm9tLCBzaXplKTsKPiAr
CQl2YnQgPSBjb3B5X3ZidChvcHJvbSwgJnNpemUpOwo+ICAJCWlmICghdmJ0KQo+ICAJCQlnb3Rv
IG91dDsKPiAgCj4gKwkJaWYgKCFpbnRlbF9iaW9zX2lzX3ZhbGlkX3ZidCh2YnQsIHNpemUpKQo+
ICsJCQlnb3RvIG91dDsKPiArCj4gIAkJRFJNX0RFQlVHX0tNUygiRm91bmQgdmFsaWQgVkJUIGlu
IFBDSSBST01cbiIpOwo+ICAJfQo+ICAKPiBAQCAtMTg5Nyw2ICsxOTU3LDkgQEAgdm9pZCBpbnRl
bF9iaW9zX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICAKPiAgCWlm
IChvcHJvbSkKPiAgCQlwY2lfdW5tYXBfcm9tKHBkZXYsIG9wcm9tKTsKPiArCj4gKwlpZiAodmJ0
ICE9IGRldl9wcml2LT5vcHJlZ2lvbi52YnQpCj4gKwkJa2ZyZWUodmJ0KTsKPiAgfQo+ICAKPiAg
LyoqCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
