Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB840D1955
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 22:02:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 342466EA57;
	Wed,  9 Oct 2019 20:02:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68D556EA57;
 Wed,  9 Oct 2019 20:02:35 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 13:02:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,277,1566889200"; d="scan'208";a="192977094"
Received: from jausmus-gentoo-dev6.jf.intel.com ([10.54.75.43])
 by fmsmga008.fm.intel.com with ESMTP; 09 Oct 2019 13:02:34 -0700
Date: Wed, 9 Oct 2019 13:03:27 -0700
From: James Ausmus <james.ausmus@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20191009200327.GB19531@jausmus-gentoo-dev6.jf.intel.com>
References: <20190916233251.387-1-matthew.d.roper@intel.com>
 <20f4641a-8811-5753-efad-42b8acb22a98@ubuntu.com>
 <20191009172943.GJ10780@mdroper-desk1.amr.corp.intel.com>
 <20191009200007.GA25267@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009200007.GA25267@intel.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/cml: Add second PCH ID for CMP
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
Cc: drm-intel-fixes@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBPY3QgMDksIDIwMTkgYXQgMDE6MDA6MDdQTSAtMDcwMCwgUm9kcmlnbyBWaXZpIHdy
b3RlOgo+IE9uIFdlZCwgT2N0IDA5LCAyMDE5IGF0IDEwOjI5OjQzQU0gLTA3MDAsIE1hdHQgUm9w
ZXIgd3JvdGU6Cj4gPiBPbiBXZWQsIE9jdCAwOSwgMjAxOSBhdCAxMDowMzozMUFNICswMzAwLCBU
aW1vIEFhbHRvbmVuIHdyb3RlOgo+ID4gPiBPbiAxNy45LjIwMTkgMi4zMiwgTWF0dCBSb3BlciB3
cm90ZToKPiA+ID4gPiBUaGUgQ01QIFBDSCBJRCB3ZSBoYXZlIGluIHRoZSBkcml2ZXIgaXMgY29y
cmVjdCBmb3IgdGhlIENNTC1VIG1hY2hpbmVzIHdlIGhhdmUKPiA+ID4gPiBpbiBvdXIgQ0kgc3lz
dGVtLCBidXQgdGhlIENNTC1TIGFuZCBDTUwtSCBDSSBtYWNoaW5lcyBhcHBlYXIgdG8gdXNlIGEK
PiA+ID4gPiBkaWZmZXJlbnQgUENIIElELCBsZWFkaW5nIG91ciBkcml2ZXIgdG8gZGV0ZWN0IG5v
IFBDSCBmb3IgdGhlbS4KPiA+ID4gPiAKPiA+ID4gPiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdv
LnZpdmlAaW50ZWwuY29tPgo+ID4gPiA+IENjOiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2
YXRzYUBpbnRlbC5jb20+Cj4gPiA+ID4gUmVmZXJlbmNlczogNzI5YWUzMzBhMGYyZTIgKCJkcm0v
aTkxNS9jbWw6IEludHJvZHVjZSBDb21ldCBMYWtlIFBDSCIpCj4gPiA+ID4gQnVnemlsbGE6IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTQ2MQo+ID4gPiA+
IFNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4g
PiAKPiA+IENjOiBkcm0taW50ZWwtZml4ZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gCj4gSSBk
b24ndCBiZWxpZXZlIHRoaXMgbGlzdCBldmVuIGV4aXN0IGFueW1vcmUuCj4gCj4gVGhlIHJpZ2h0
IHdheSB3b3VsZCBiZToKPiAKPiBGaXhlczogNzI5YWUzMzBhMGYyZTIgKCJkcm0vaTkxNS9jbWw6
IEludHJvZHVjZSBDb21ldCBMYWtlIFBDSCIpCgpIbW0gLSBqdXN0IGN1cmlvdXMgb24gdGhlIHNl
bWFudGljcywgYXMgdGhlICJGaXhlcyIgdGFnIGltcGxpZXMgdGhhdCB0aGUKb3JpZ2luYWwgcGF0
Y2ggd2FzIGJyb2tlbiwgYnV0IGl0IHdhc24ndCAtIGp1c3QgbmV3IFBDSCBJRHMgaGF2ZSBiZWVu
CmFkZGVkIHNpbmNlLgoKLUphbWVzCgo+IAo+IGluc3RlYWQgb2YgUmVmZXJlbmNlcy4uLi4KPiAK
PiA+IAo+ID4gPiA+IC0tLQo+ID4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2gu
YyB8IDEgKwo+ID4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guaCB8IDEgKwo+
ID4gPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+ID4gPiA+IAo+ID4gPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3BjaC5jCj4gPiA+ID4gaW5kZXggZmE4NjRkOGYyYjczLi4xNWY4
YmZmMTQxZjkgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cGNoLmMKPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guYwo+ID4g
PiA+IEBAIC02OSw2ICs2OSw3IEBAIGludGVsX3BjaF90eXBlKGNvbnN0IHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwgdW5zaWduZWQgc2hvcnQgaWQpCj4gPiA+ID4gIAkJV0FSTl9P
TighSVNfQ0FOTk9OTEFLRShkZXZfcHJpdikgJiYgIUlTX0NPRkZFRUxBS0UoZGV2X3ByaXYpKTsK
PiA+ID4gPiAgCQlyZXR1cm4gUENIX0NOUDsKPiA+ID4gPiAgCWNhc2UgSU5URUxfUENIX0NNUF9E
RVZJQ0VfSURfVFlQRToKPiA+ID4gPiArCWNhc2UgSU5URUxfUENIX0NNUDJfREVWSUNFX0lEX1RZ
UEU6Cj4gPiA+ID4gIAkJRFJNX0RFQlVHX0tNUygiRm91bmQgQ29tZXQgTGFrZSBQQ0ggKENNUClc
biIpOwo+ID4gPiA+ICAJCVdBUk5fT04oIUlTX0NPRkZFRUxBS0UoZGV2X3ByaXYpKTsKPiA+ID4g
PiAgCQkvKiBDb21ldFBvaW50IGlzIENOUCBDb21wYXRpYmxlICovCj4gPiA+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcGNoLmgKPiA+ID4gPiBpbmRleCBlNmEyZDY1ZjE5YzYuLmMyOWM4MWVjNzk3MSAx
MDA2NDQKPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guaAo+ID4g
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5oCj4gPiA+ID4gQEAgLTQx
LDYgKzQxLDcgQEAgZW51bSBpbnRlbF9wY2ggewo+ID4gPiA+ICAjZGVmaW5lIElOVEVMX1BDSF9D
TlBfREVWSUNFX0lEX1RZUEUJCTB4QTMwMAo+ID4gPiA+ICAjZGVmaW5lIElOVEVMX1BDSF9DTlBf
TFBfREVWSUNFX0lEX1RZUEUJCTB4OUQ4MAo+ID4gPiA+ICAjZGVmaW5lIElOVEVMX1BDSF9DTVBf
REVWSUNFX0lEX1RZUEUJCTB4MDI4MAo+ID4gPiA+ICsjZGVmaW5lIElOVEVMX1BDSF9DTVAyX0RF
VklDRV9JRF9UWVBFCQkweDA2ODAKPiA+ID4gPiAgI2RlZmluZSBJTlRFTF9QQ0hfSUNQX0RFVklD
RV9JRF9UWVBFCQkweDM0ODAKPiA+ID4gPiAgI2RlZmluZSBJTlRFTF9QQ0hfTUNDX0RFVklDRV9J
RF9UWVBFCQkweDRCMDAKPiA+ID4gPiAgI2RlZmluZSBJTlRFTF9QQ0hfTUNDMl9ERVZJQ0VfSURf
VFlQRQkJMHgzODgwCj4gPiA+IAo+ID4gPiBIaSwKPiA+ID4gCj4gPiA+IFBsZWFzZSBhZGQgdGhp
cyBpbiAtZml4ZXMgc28gNS40IHdpbGwgZ2V0IGl0LCB0aGFua3MuCj4gPiA+IAo+ID4gPiAKPiA+
ID4gLS0gCj4gPiA+IHQKPiA+IAo+ID4gLS0gCj4gPiBNYXR0IFJvcGVyCj4gPiBHcmFwaGljcyBT
b2Z0d2FyZSBFbmdpbmVlcgo+ID4gVlRULU9TR0MgUGxhdGZvcm0gRW5hYmxlbWVudAo+ID4gSW50
ZWwgQ29ycG9yYXRpb24KPiA+ICg5MTYpIDM1Ni0yNzk1Cj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
