Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BFFABE13A
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 17:26:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 830CE6E082;
	Wed, 25 Sep 2019 15:26:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83BA56E082
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 15:26:26 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 08:26:25 -0700
X-IronPort-AV: E=Sophos;i="5.64,548,1559545200"; d="scan'208";a="203628503"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 08:26:24 -0700
Date: Wed, 25 Sep 2019 18:25:26 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20190925152526.GE8958@ideak-desk.fi.intel.com>
References: <20190923195513.207536-1-jose.souza@intel.com>
 <20190923195513.207536-8-jose.souza@intel.com>
 <20190924155837.GC25906@ideak-desk.fi.intel.com>
 <7e992b6db12bef8584203458ed58f96de0e8096e.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7e992b6db12bef8584203458ed58f96de0e8096e.camel@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v3 7/9] drm/i915/tgl: Fix dkl link training
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBTZXAgMjUsIDIwMTkgYXQgMDI6NTk6MDJBTSArMDMwMCwgU291emEsIEpvc2Ugd3Jv
dGU6Cj4gT24gVHVlLCAyMDE5LTA5LTI0IGF0IDE4OjU4ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6
Cj4gPiBPbiBNb24sIFNlcCAyMywgMjAxOSBhdCAxMjo1NToxMVBNIC0wNzAwLCBKb3PDqSBSb2Jl
cnRvIGRlIFNvdXphCj4gPiB3cm90ZToKPiA+ID4gTGluayB0cmFpbmluZyBpcyBmYWlsbGluZyB3
aGVuIHJ1bm5pbmcgbGluayBhdCAyLjdHSHogYW5kIDEuNjJHSHoKPiA+ID4gYW5kCj4gPiA+IGZv
bGxvd2luZyBCU3BlYyBwbGwgYWxnb3JpdGhtLgo+ID4gPiAKPiA+ID4gQ29tcGFyaW5nIHRoZSB2
YWx1ZXMgY2FsY3VsYXRlZCBhbmQgdGhlIG9uZXMgZnJvbSB0aGUgcmVmZXJlbmNlCj4gPiA+IHRh
YmxlCj4gPiA+IGl0IGxvb2tzIGxpa2UgTUdfQ0xLVE9QMl9DT1JFQ0xLQ1RMMV9BX0RJVlJBVElP
IHNob3VsZCBub3QgYWx3YXlzCj4gPiA+IHNldAo+ID4gPiB0byA1LiBGb3IgRFAgcG9ydHMgSUNM
IG1nIHBsbCBhbGdvcml0aG0gc2V0cyBpdCB0byAxMCBvciA1IGJhc2VkIG9uCj4gPiA+IGRpdjIg
dmFsdWUsIHRoYXQgbWF0Y2hlcyB3aXRoIGRrbCBoYXJkY29kZWQgdGFibGUuCj4gPiA+IAo+ID4g
PiBTbyBpbXBsZW1lbnRpbmcgdGhpcyB3YXkgYXMgaXQgcHJvdmVkIHRvIHdvcmsgaW4gSFcgYW5k
IGxlYXZpbmcgYQo+ID4gPiBjb21tZW50IHNvIHdlIGtub3cgd2h5IGl0IGRvIG5vdCBtYXRjaCBC
U3BlYy4KPiA+ID4gCj4gPiA+IElzc3VlIHJlcG9ydGVkIG9uIEJTcGVjIDQ5MjA0Lgo+ID4gPiAK
PiA+ID4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcGxsX21nci5jIHwgNyArKysrKystCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPiA+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jCj4gPiA+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jCj4gPiA+IGluZGV4IDQ5NmRmNDA5
NWEyMS4uM2M4ODFkNGNmOTczIDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMKPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jCj4gPiA+IEBAIC0yNjMxLDcgKzI2MzEsMTIgQEAg
c3RhdGljIGJvb2wgaWNsX21nX3BsbF9maW5kX2Rpdmlzb3JzKGludAo+ID4gPiBjbG9ja19raHos
IGJvb2wgaXNfZHAsIGJvb2wgdXNlX3NzYywKPiA+ID4gIAo+ID4gPiAgCQkJaWYgKGRpdjIgPj0g
Mikgewo+ID4gPiAgCQkJCWlmIChpc19ka2wpIHsKPiA+ID4gLQkJCQkJYV9kaXZyYXRpbyA9IDU7
Cj4gPiA+ICsJCQkJCS8qCj4gPiA+ICsJCQkJCSAqIE5vdGU6IGFfZGl2cmF0aW8gbm90Cj4gPiA+
IG1hdGNoaW5nIFRHTAo+ID4gPiArCQkJCQkgKiBCU3BlYyBhbGdvcml0aG0gYnV0IG1hdGNoaW5n
Cj4gPiA+ICsJCQkJCSAqIGhhcmRjb2RlZCB2YWx1ZXMgYW5kIHdvcmtpbmcKPiA+ID4gb24gSFcK
PiA+ID4gKwkJCQkJICovCj4gPiA+ICsJCQkJCWFfZGl2cmF0aW8gPSAxMDsKPiA+IAo+ID4gWWVz
LCBtYXRjaGVzIHRoZSBoYXJkY29kZWQgdmFsdWVzIGZvciBDTEtUT1AyX0hTQ0xLQ1RML0NPUkVD
TEtDVEwxLAo+ID4gd2l0aAo+ID4gdGhlIGV4Y2VwdGlvbiB0aGF0IHRoZSBoYXJkY29kZWQgdmFs
dWUgZm9yIENMS1RPUDJfSFNDTEtDVEwgNXA0IGlzCj4gPiBhbHNvCj4gPiBpbmNvcnJlY3Qgd3J0
LiBkaXYyIHdpdGhpbiB0aGF0IChzaG91bGQgYmUgMSBidXQgaXQncyAyKS4KPiA+IAo+ID4gSG93
ZXZlciB3ZSBkb24ndCBoYXZlIGFueSBoYXJkY29kZWQgdmFsdWVzIGluIEJzcGVjIGZvciBIRE1J
IGV4Y2VwdAo+ID4gZm9yCj4gPiB0aGUgNS45NEdicHMvZGl2Mj0xIGNhc2UuIFNvIHVudGlsIG90
aGVyd2lzZSBwcm92ZW4sIGZvciBIRE1JL2RpdjI+PTIKPiA+IEkKPiA+IHdvdWxkbid0IGNoYW5n
ZSB0aGUgdmFsdWUsIHJhdGhlciBoYXZlIHRoZSBzYW1lIGxvZ2ljIGFzIGZvciBJQ0wgdGhhdAo+
ID4gaXMKPiA+IGlzX2RwID8gMTAgOiA1Owo+IAo+IEkgd2FzIHRyeWluZyB0byBhdm9pZCB0b3Vj
aCBhbnkgSERNSSBjYWxjdWxhdGlvbiBhcyBJIGNhbid0IHRlc3QgaXQgYnV0Cj4gaXQgbG9va3Mg
c2FuZSwgc28gSSB3aWxsIGtlZXAgdGhlIGlmIGlzX2RrbCwgcmVwbGFjZSB0byAiYV9kaXZyYXRp
byA9Cj4gaXNfZHAgPyAxMCA6IDU7IiBhbmQgYWRkIHRvIHRoZSBjb21tZW50IHRoYXQgdGhpcyBp
cyB0aGUgc3VwcG9zZWQgdmFsdWUKPiBmb3IgSERNSSBidXQgaXQgaXMgbm90IHRlc3RlZC4KCk9r
LCB5b3UgY291bGQgYWxzbyBhc3NpZ24gb25seSB0bGluZWRydiBiYXNlZCBvbiB0aGUgcGxhdGZv
cm0uCgo+IAo+ID4gCj4gPiA+ICAJCQkJCXRsaW5lZHJ2ID0gMTsKPiA+ID4gIAkJCQl9IGVsc2Ug
ewo+ID4gPiAgCQkJCQlhX2RpdnJhdGlvID0gaXNfZHAgPyAxMCA6IDU7Cj4gPiA+IC0tIAo+ID4g
PiAyLjIzLjAKPiA+ID4gCj4gPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gPiA+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiA+ID4gSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
