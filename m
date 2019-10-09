Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90525D1644
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 19:29:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75EC26EA29;
	Wed,  9 Oct 2019 17:29:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34FD66EA29;
 Wed,  9 Oct 2019 17:29:18 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 10:29:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,277,1566889200"; d="scan'208";a="345426047"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.135])
 by orsmga004.jf.intel.com with ESMTP; 09 Oct 2019 10:29:17 -0700
Date: Wed, 9 Oct 2019 10:29:43 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Timo Aaltonen <tjaalton@ubuntu.com>
Message-ID: <20191009172943.GJ10780@mdroper-desk1.amr.corp.intel.com>
References: <20190916233251.387-1-matthew.d.roper@intel.com>
 <20f4641a-8811-5753-efad-42b8acb22a98@ubuntu.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20f4641a-8811-5753-efad-42b8acb22a98@ubuntu.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: intel-gfx@lists.freedesktop.org, drm-intel-fixes@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBPY3QgMDksIDIwMTkgYXQgMTA6MDM6MzFBTSArMDMwMCwgVGltbyBBYWx0b25lbiB3
cm90ZToKPiBPbiAxNy45LjIwMTkgMi4zMiwgTWF0dCBSb3BlciB3cm90ZToKPiA+IFRoZSBDTVAg
UENIIElEIHdlIGhhdmUgaW4gdGhlIGRyaXZlciBpcyBjb3JyZWN0IGZvciB0aGUgQ01MLVUgbWFj
aGluZXMgd2UgaGF2ZQo+ID4gaW4gb3VyIENJIHN5c3RlbSwgYnV0IHRoZSBDTUwtUyBhbmQgQ01M
LUggQ0kgbWFjaGluZXMgYXBwZWFyIHRvIHVzZSBhCj4gPiBkaWZmZXJlbnQgUENIIElELCBsZWFk
aW5nIG91ciBkcml2ZXIgdG8gZGV0ZWN0IG5vIFBDSCBmb3IgdGhlbS4KPiA+IAo+ID4gQ2M6IFJv
ZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPiA+IENjOiBBbnVzaGEgU3JpdmF0
c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+Cj4gPiBSZWZlcmVuY2VzOiA3MjlhZTMzMGEw
ZjJlMiAoImRybS9pOTE1L2NtbDogSW50cm9kdWNlIENvbWV0IExha2UgUENIIikKPiA+IEJ1Z3pp
bGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE0NjEK
PiA+IFNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+
CgpDYzogZHJtLWludGVsLWZpeGVzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwoKPiA+IC0tLQo+ID4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5jIHwgMSArCj4gPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfcGNoLmggfCAxICsKPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cGNoLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guYwo+ID4gaW5kZXggZmE4NjRk
OGYyYjczLi4xNWY4YmZmMTQxZjkgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9wY2guYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmMK
PiA+IEBAIC02OSw2ICs2OSw3IEBAIGludGVsX3BjaF90eXBlKGNvbnN0IHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwgdW5zaWduZWQgc2hvcnQgaWQpCj4gPiAgCQlXQVJOX09OKCFJ
U19DQU5OT05MQUtFKGRldl9wcml2KSAmJiAhSVNfQ09GRkVFTEFLRShkZXZfcHJpdikpOwo+ID4g
IAkJcmV0dXJuIFBDSF9DTlA7Cj4gPiAgCWNhc2UgSU5URUxfUENIX0NNUF9ERVZJQ0VfSURfVFlQ
RToKPiA+ICsJY2FzZSBJTlRFTF9QQ0hfQ01QMl9ERVZJQ0VfSURfVFlQRToKPiA+ICAJCURSTV9E
RUJVR19LTVMoIkZvdW5kIENvbWV0IExha2UgUENIIChDTVApXG4iKTsKPiA+ICAJCVdBUk5fT04o
IUlTX0NPRkZFRUxBS0UoZGV2X3ByaXYpKTsKPiA+ICAJCS8qIENvbWV0UG9pbnQgaXMgQ05QIENv
bXBhdGlibGUgKi8KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9w
Y2guaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BjaC5oCj4gPiBpbmRleCBlNmEyZDY1
ZjE5YzYuLmMyOWM4MWVjNzk3MSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3BjaC5oCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wY2guaAo+
ID4gQEAgLTQxLDYgKzQxLDcgQEAgZW51bSBpbnRlbF9wY2ggewo+ID4gICNkZWZpbmUgSU5URUxf
UENIX0NOUF9ERVZJQ0VfSURfVFlQRQkJMHhBMzAwCj4gPiAgI2RlZmluZSBJTlRFTF9QQ0hfQ05Q
X0xQX0RFVklDRV9JRF9UWVBFCQkweDlEODAKPiA+ICAjZGVmaW5lIElOVEVMX1BDSF9DTVBfREVW
SUNFX0lEX1RZUEUJCTB4MDI4MAo+ID4gKyNkZWZpbmUgSU5URUxfUENIX0NNUDJfREVWSUNFX0lE
X1RZUEUJCTB4MDY4MAo+ID4gICNkZWZpbmUgSU5URUxfUENIX0lDUF9ERVZJQ0VfSURfVFlQRQkJ
MHgzNDgwCj4gPiAgI2RlZmluZSBJTlRFTF9QQ0hfTUNDX0RFVklDRV9JRF9UWVBFCQkweDRCMDAK
PiA+ICAjZGVmaW5lIElOVEVMX1BDSF9NQ0MyX0RFVklDRV9JRF9UWVBFCQkweDM4ODAKPiAKPiBI
aSwKPiAKPiBQbGVhc2UgYWRkIHRoaXMgaW4gLWZpeGVzIHNvIDUuNCB3aWxsIGdldCBpdCwgdGhh
bmtzLgo+IAo+IAo+IC0tIAo+IHQKCi0tIApNYXR0IFJvcGVyCkdyYXBoaWNzIFNvZnR3YXJlIEVu
Z2luZWVyClZUVC1PU0dDIFBsYXRmb3JtIEVuYWJsZW1lbnQKSW50ZWwgQ29ycG9yYXRpb24KKDkx
NikgMzU2LTI3OTUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
