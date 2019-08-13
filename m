Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D37A8BC14
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2019 16:53:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B56B6E171;
	Tue, 13 Aug 2019 14:53:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E6B36E171
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2019 14:53:08 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Aug 2019 07:53:07 -0700
X-IronPort-AV: E=Sophos;i="5.64,381,1559545200"; d="scan'208";a="167074581"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Aug 2019 07:53:05 -0700
Date: Tue, 13 Aug 2019 17:52:15 +0300
From: Imre Deak <imre.deak@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20190813145215.GB21986@ideak-desk.fi.intel.com>
References: <20190809183223.12031-1-anshuman.gupta@intel.com>
 <20190809183223.12031-5-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190809183223.12031-5-anshuman.gupta@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v5 4/9] drm/i915/tgl: mutual exclusive
 handling for DC3CO and DC5/6
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
Reply-To: imre.deak@intel.com
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU2F0LCBBdWcgMTAsIDIwMTkgYXQgMTI6MDI6MThBTSArMDUzMCwgQW5zaHVtYW4gR3VwdGEg
d3JvdGU6Cj4gQXMgcGVyIEIuU3BlY3MgREM1IGFuZCBEQzYgbm90IGFsbG93ZWQgd2hlbiBEQzND
TyBpcyBlbmFibGVkCj4gYW5kIERDM0NPIHNob3VsZCBiZSBlbmFibGVkIG9ubHkgZHVyaW5nIFZJ
REVPIHBsYXliYWNrLgo+IFdoaWNoIGVzc2VudGlhbGx5IG1lYW5zIGJvdGggY2FuIERDNSBhbmQg
REMzQ08gY2FuIG5vdCBiZQo+IGVuYWJsZWQgYXQgc2FtZSB0aW1lLCBpdCBtYWtlcyBEQzNDTyBh
bmQgREM1IG11dHVhbCBleGNsdXNpdmUuCj4gCj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3Vs
YUBpbnRlbC5jb20+Cj4gQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KPiBDYzog
QW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+Cj4gQ2M6IFJvZHJpZ28gVml2
aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBBbnNodW1hbiBHdXB0
YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyB8IDggKysrKysrKysKPiAgMSBmaWxlIGNo
YW5nZWQsIDggaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCj4gaW5kZXggYzllOTJkNDhjZGFiLi4xNjc4
MzkwNjAxNTQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3Bvd2VyLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfcG93ZXIuYwo+IEBAIC05OTYsNiArOTk2LDEwIEBAIHN0YXRpYyB2b2lkIGdl
bjlfZGNfb2ZmX3Bvd2VyX3dlbGxfZW5hYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwKPiAgCj4gIAlnZW45X3NldF9kY19zdGF0ZShkZXZfcHJpdiwgRENfU1RBVEVfRElTQUJM
RSk7Cj4gIAo+ICsJLyogREMzQ08gYW5kIERDNS82IGFyZSBtdXR1YWxseSBleGNsdXNpdmUgKi8K
PiArCWlmIChkZXZfcHJpdi0+Y3NyLmFsbG93ZWRfZGNfbWFzayAmIERDX1NUQVRFX0VOX0RDM0NP
KQo+ICsJCXRnbF9hbGxvd19kYzNjbyhkZXZfcHJpdik7CgpBaCBvaywgaGVyZSBpcyB0aGUgcmUt
ZW5hYmxpbmcgSSB3YXMgbG9va2luZyBmb3IgaW4gdGhlIHByZXZpb3VzIHBhdGNoLgpJIHRoaW5r
IHRoaXMgY2hhbmdlIGNvdWxkJ3ZlIGJlZW4gcGFydCBvZiB0aGUgcHJldmlvdXMgcGF0Y2guIEhv
d2V2ZXIKdGhpcyByZS1lbmFibGVzIERDM0NPIHJlZ2FyZGxlc3Mgb2YgYW55IFBTUjIgY29uZGl0
aW9uLgoKPiArCj4gIAlkZXZfcHJpdi0+ZGlzcGxheS5nZXRfY2RjbGsoZGV2X3ByaXYsICZjZGNs
a19zdGF0ZSk7Cj4gIAkvKiBDYW4ndCByZWFkIG91dCB2b2x0YWdlX2xldmVsIHNvIGNhbid0IHVz
ZSBpbnRlbF9jZGNsa19jaGFuZ2VkKCkgKi8KPiAgCVdBUk5fT04oaW50ZWxfY2RjbGtfbmVlZHNf
bW9kZXNldCgmZGV2X3ByaXYtPmNkY2xrLmh3LCAmY2RjbGtfc3RhdGUpKTsKPiBAQCAtMTAyMCw2
ICsxMDI0LDEwIEBAIHN0YXRpYyB2b2lkIGdlbjlfZGNfb2ZmX3Bvd2VyX3dlbGxfZGlzYWJsZShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gIAlpZiAoIWRldl9wcml2LT5jc3Iu
ZG1jX3BheWxvYWQpCj4gIAkJcmV0dXJuOwo+ICAKPiArCS8qIERDM0NPIGFuZCBEQzUvNiBhcmUg
bXV0dWFsbHkgZXhjbHVzaXZlICovCj4gKwlpZiAoZGV2X3ByaXYtPmNzci5hbGxvd2VkX2RjX21h
c2sgJiBEQ19TVEFURV9FTl9EQzNDTykKPiArCQl0Z2xfZGlzYWxsb3dfZGMzY28oZGV2X3ByaXYp
Owo+ICsKPiAgCWlmIChkZXZfcHJpdi0+Y3NyLmFsbG93ZWRfZGNfbWFzayAmIERDX1NUQVRFX0VO
X1VQVE9fREM2KQo+ICAJCXNrbF9lbmFibGVfZGM2KGRldl9wcml2KTsKPiAgCWVsc2UgaWYgKGRl
dl9wcml2LT5jc3IuYWxsb3dlZF9kY19tYXNrICYgRENfU1RBVEVfRU5fVVBUT19EQzUpCj4gLS0g
Cj4gMi4yMS4wCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
