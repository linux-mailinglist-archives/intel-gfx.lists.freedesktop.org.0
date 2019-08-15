Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD168F3F4
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 20:51:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 306E36EA46;
	Thu, 15 Aug 2019 18:51:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 505C96EA46
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 18:51:55 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 11:51:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,389,1559545200"; d="scan'208";a="184699808"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Aug 2019 11:51:54 -0700
Date: Thu, 15 Aug 2019 11:53:55 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: "Tolakanahalli Pradeep,
 Madhumitha" <madhumitha.tolakanahalli.pradeep@intel.com>
Message-ID: <20190815185354.GB22762@intel.com>
References: <20190814235117.11304-1-madhumitha.tolakanahalli.pradeep@intel.com>
 <20190815182420.GA22762@intel.com>
 <2463bf0b9cdd9d5180852ececdd8d413c0e5caf2.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2463bf0b9cdd9d5180852ececdd8d413c0e5caf2.camel@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Enabling DSC on Pipe A for TGL
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBBdWcgMTUsIDIwMTkgYXQgMTE6Mzk6NTRBTSAtMDcwMCwgVG9sYWthbmFoYWxsaSBQ
cmFkZWVwLCBNYWRodW1pdGhhIHdyb3RlOgo+IE9uIFRodSwgMjAxOS0wOC0xNSBhdCAxMToyNCAt
MDcwMCwgTWFuYXNpIE5hdmFyZSB3cm90ZToKPiA+IE9uIFdlZCwgQXVnIDE0LCAyMDE5IGF0IDA0
OjUxOjE3UE0gLTA3MDAsIE1hZGh1bWl0aGEgVG9sYWthbmFoYWxsaQo+ID4gUHJhZGVlcCB3cm90
ZToKPiA+ID4gUmVtb3ZpbmcgcmVzdHJpY3Rpb24gb24gUGlwZSBBIGFzIFRpZ2VyTGFrZSBvbndh
cmRzLCBhbGwgdGhlIHBpcGVzCj4gPiA+IHN1cHBvcnQgRFNDLgo+ID4gCj4gPiBNYXkgYmUgZWxh
Ym9yYXRlIHRoaXMgY29tbWl0IG1lc3NhZ2UgYSBsaXR0bGUgYml0IHNvbWV0aGluZyBsaWtlOgo+
ID4gIk9uIHByZXZpb3VzIHBsYXRmb3JtcywgRFNDIHdhcyBub3Qgc3VwcG9ydGVkIG9uIFBpcGUg
QSB3aGlsZQo+ID4gc3RhcnRpbmcgVEdMLCBpdHMgaXMgc3VwcG9ydGVkCj4gPiBvbiBhbGwgcGlw
ZXMuIFNvIHJlbW92ZSB0aGUgRFNDIGFuZCBGRUMgcmVzdHJpY3Rpb24gb24gUGlwZSBBIGZvciBU
R0wKPiA+IG9ud2FyZHMuCj4gPiAKPiAKPiBBbHJpZ2h0LCB3aWxsIHVwZGF0ZSB0aGF0IGZvciBy
ZXYyLgo+IAo+ID4gPiAKPiA+ID4gQ2M6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBp
bnRlbC5jb20+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IE1hZGh1bWl0aGEgVG9sYWthbmFoYWxsaSBQ
cmFkZWVwIDwKPiA+ID4gbWFkaHVtaXRoYS50b2xha2FuYWhhbGxpLnByYWRlZXBAaW50ZWwuY29t
Pgo+ID4gPiAtLS0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
YyB8IDE2ICsrKysrKysrKysrKy0tLS0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRp
b25zKCspLCA0IGRlbGV0aW9ucygtKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+ID4gPiBpbmRleCA0ODg0Yzg3YzhlZDcuLmE1YjUwZjkz
ZmFjNSAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
Ywo+ID4gPiBAQCAtMTczOSw4ICsxNzM5LDEyIEBAIHN0YXRpYyBib29sCj4gPiA+IGludGVsX2Rw
X3NvdXJjZV9zdXBwb3J0c19mZWMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKPiA+ID4gIHsK
PiA+ID4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGlu
dGVsX2RwKTsKPiA+ID4gIAo+ID4gPiAtCXJldHVybiBJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEx
ICYmCj4gPiA+IC0JCXBpcGVfY29uZmlnLT5jcHVfdHJhbnNjb2RlciAhPSBUUkFOU0NPREVSX0E7
Cj4gPiA+ICsJLyogT24gVEdMLCBEU0MgaXMgc3VwcG9ydGVkIG9uIGFsbCBQaXBlcyAqLwo+ID4g
Cj4gPiAgICAgICAgICAgICAgICAgICAgXl5eXiBGRUMgc3VwcG9ydGVkIG9uIGFsbCBwaXBlcwo+
IAo+IE9vcHMsIHdpbGwgY2hhbmdlIHRoaXMuCj4gCj4gPiA+ICsJaWYgKElOVEVMX0dFTihkZXZf
cHJpdikgPj0gMTIpCj4gPiA+ICsJCXJldHVybiB0cnVlOwo+ID4gPiArCWVsc2UKPiA+ID4gKwkJ
cmV0dXJuIElOVEVMX0dFTihkZXZfcHJpdikgPT0gMTEgJiYKCkFsc28gaGVyZSBJIHRoaW5rIGl0
cyBiZXR0ZXIgdG8gdXNlIElTX0dFTihkZXZfcHJpdiwgMTEpCgo+ID4gPiArCQkJcGlwZV9jb25m
aWctPmNwdV90cmFuc2NvZGVyICE9IFRSQU5TQ09ERVJfQTsKPiA+ID4gIH0KPiA+ID4gIAo+ID4g
PiAgc3RhdGljIGJvb2wgaW50ZWxfZHBfc3VwcG9ydHNfZmVjKHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHAsCj4gPiA+IEBAIC0xNzU1LDggKzE3NTksMTIgQEAgc3RhdGljIGJvb2wKPiA+ID4gaW50
ZWxfZHBfc291cmNlX3N1cHBvcnRzX2RzYyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAo+ID4g
PiAgewo+ID4gPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGRwX3RvX2k5
MTUoaW50ZWxfZHApOwo+ID4gPiAgCj4gPiA+IC0JcmV0dXJuIElOVEVMX0dFTihkZXZfcHJpdikg
Pj0gMTAgJiYKPiA+ID4gLQkJcGlwZV9jb25maWctPmNwdV90cmFuc2NvZGVyICE9IFRSQU5TQ09E
RVJfQTsKPiA+ID4gKwkvKiBPbiBUR0wsIERTQyBpcyBzdXBwb3J0ZWQgb24gYWxsIFBpcGVzICov
Cj4gPiA+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpCj4gPiA+ICsJCXJldHVybiB0
cnVlOwo+ID4gPiArCWVsc2UKPiA+ID4gKwkJcmV0dXJuIChJTlRFTF9HRU4oZGV2X3ByaXYpID09
IDEwIHx8Cj4gPiA+IElOVEVMX0dFTihkZXZfcHJpdikgPT0gMTEpICYmCj4gPiAKPiA+IFdoeSBj
YW50IHlvdSBqdXN0IHVzZSBJTlRFTF9HRU4oZGV2X3ByaXYpID49MTAgPwo+IAo+IElOVEVMX0dF
TihkZXZfcHJpdikgPj0gMTAgd2FzIHRoZSBleGlzdGluZyBjb25kaXRpb24uIFdpdGggdGhlIG5l
dwo+IGNvbmRpdGlvbiBhZGRlZCwgdGhlcmUgd291bGQgYmUgYW4gb3ZlcmxhcHBpbmcgc2V0Cj4g
aWUgSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMCB3b3VsZCBzdGlsbCBiZSBUUlVFIGZvciBHRU4g
Pj0gMTIuIFRob3VnaAo+IHRoaXMgd291bGRuJ3QgYWZmZWN0IHRoZSBsb2dpYyBvZiB0aGUgY29k
ZSwgdGhvdWdodCBpdCB3b3VsZCBtYWtlIG1vcmUKPiBzZW5zZSB0byBzcGVyYXRlIGl0IG91dCB0
aGlzIHdheS4gCgpCdXQgc2luY2Ugd2UgcmV0dXJuIGZvciBHRU4gPj0xMiAsIHRoZSBvbmx5IHRp
bWUgaXQgd291bGQgZmFsbCB0byBHRU4gPj0xMCBpcyBmb3IgMTAgYW5kIDExCnNvIHRoYXQgc2hv
dWxkIHdvcmssIG9yIHlvdSBjb3VsZCB1c2UgSVNfR0VOKGRldl9wcml2LCAxMCkgfHwgSVNfR0VO
KGRldl9wcml2LCAxMSkKCkJ1dCBtYXkgYmUgY2hlY2sgd2l0aCBMdWNhcyBvbiB3aGF0IHdvdWxk
IGJlIHRoZSBwcmVmZXJyZWQgd2F5CgpNYW5hc2kKPiAKPiA+IAo+ID4gTWFuYXNpCj4gPiAKPiA+
ID4gKwkJCXBpcGVfY29uZmlnLT5jcHVfdHJhbnNjb2RlciAhPSBUUkFOU0NPREVSX0E7Cj4gPiA+
ICB9Cj4gPiA+ICAKPiA+ID4gIHN0YXRpYyBib29sIGludGVsX2RwX3N1cHBvcnRzX2RzYyhzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwLAo+ID4gPiAtLSAKPiA+ID4gMi4xNy4xCj4gPiA+IApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
