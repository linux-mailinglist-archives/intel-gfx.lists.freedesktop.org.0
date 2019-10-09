Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C77D0EFC
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 14:41:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13A6389CF1;
	Wed,  9 Oct 2019 12:41:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A48B289CF1
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 12:41:17 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 05:41:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,276,1566889200"; d="scan'208";a="223574065"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 09 Oct 2019 05:41:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Oct 2019 15:41:14 +0300
Date: Wed, 9 Oct 2019 15:41:14 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20191009124114.GA1208@intel.com>
References: <20191004113514.17064-1-maarten.lankhorst@linux.intel.com>
 <20191004113514.17064-13-maarten.lankhorst@linux.intel.com>
 <20191008174231.GU1208@intel.com>
 <c277dadb-a8be-0426-62a6-58c3ba7d4c2a@linux.intel.com>
 <20191009122305.GY1208@intel.com>
 <4c2b6570-4757-df80-9d5f-904d2e649593@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4c2b6570-4757-df80-9d5f-904d2e649593@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 12/24] drm/i915: Split plane hw and uapi
 state
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBPY3QgMDksIDIwMTkgYXQgMDI6MzE6NThQTSArMDIwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gT3AgMDktMTAtMjAxOSBvbSAxNDoyMyBzY2hyZWVmIFZpbGxlIFN5cmrDpGzD
pDoKPiA+IE9uIFdlZCwgT2N0IDA5LCAyMDE5IGF0IDAyOjEzOjU1UE0gKzAyMDAsIE1hYXJ0ZW4g
TGFua2hvcnN0IHdyb3RlOgo+ID4+IE9wIDA4LTEwLTIwMTkgb20gMTk6NDIgc2NocmVlZiBWaWxs
ZSBTeXJqw6Rsw6Q6Cj4gPj4+IE9uIEZyaSwgT2N0IDA0LCAyMDE5IGF0IDAxOjM1OjAyUE0gKzAy
MDAsIE1hYXJ0ZW4gTGFua2hvcnN0IHdyb3RlOgo+ID4+Pj4gU3BsaXR0aW5nIHBsYW5lIHN0YXRl
IGlzIGVhc2llciB0aGFuIHNwbGl0dGluZyBjcnRjX3N0YXRlLAo+ID4+Pj4gYmVmb3JlIHBsYW5l
IGNoZWNrIHdlIGNvcHkgdGhlIGRybSBwcm9wZXJ0aWVzIHRvIGh3IHNvIHdlIGNhbgo+ID4+Pj4g
ZG8gdGhlIHNhbWUgaW4gYmlnam9pbmVyIGxhdGVyIG9uLgo+ID4+Pj4KPiA+Pj4+IFdlIGNvcHkg
dGhlIHN0YXRlIGFmdGVyIHdlIGRpZCBhbGwgdGhlIG1vZGVzZXQgaGFuZGxpbmcsIGJ1dCBmb3J0
dW5hdGVseQo+ID4+Pj4gaTkxNSBzZWVtcyB0byBiZSBzcGxpdCBjb3JyZWN0bHkgYW5kIG5vdGhp
bmcgZHVyaW5nIG1vZGVzZXQgbG9va3MKPiA+Pj4+IGF0IHBsYW5lX3N0YXRlLgo+ID4+Pj4KPiA+
Pj4+IFNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBs
aW51eC5pbnRlbC5jb20+Cj4gPj4+PiAtLS0KPiA+Pj4+ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYXRvbWljX3BsYW5lLmMgfCAzNyArKysrKysrKysrKysrKysrKystCj4gPj4+PiAg
Li4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5oIHwgIDIgKwo+ID4+
Pj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jICB8ICAxICsK
PiA+Pj4+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggICAgfCAy
MiArKysrKysrKystLQo+ID4+Pj4gIDQgZmlsZXMgY2hhbmdlZCwgNTcgaW5zZXJ0aW9ucygrKSwg
NSBkZWxldGlvbnMoLSkKPiA+Pj4+Cj4gPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMKPiA+Pj4+IGluZGV4IDAxOTM3ODk2ZDY5Yy4u
Y2MxNTRjZmEzMzgxIDEwMDY0NAo+ID4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYwo+ID4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYwo+ID4+Pj4gQEAgLTkzLDYgKzkzLDkgQEAg
aW50ZWxfcGxhbmVfZHVwbGljYXRlX3N0YXRlKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lKQo+ID4+
Pj4gIAlpbnRlbF9zdGF0ZS0+dm1hID0gTlVMTDsKPiA+Pj4+ICAJaW50ZWxfc3RhdGUtPmZsYWdz
ID0gMDsKPiA+Pj4+ICAKPiA+Pj4+ICsJLyogd2lsbCBiZSBzZXQgaW4gaW50ZWxfcGxhbmVfYXRv
bWljX2NoZWNrX3dpdGhfc3RhdGUoKSAqLwo+ID4+Pj4gKwltZW1zZXQoJmludGVsX3N0YXRlLT5o
dywgMCwgc2l6ZW9mKGludGVsX3N0YXRlLT5odykpOwo+ID4+PiBUaGF0IHNlZW1zIHdyb25nIGZv
ciB0aGUgY2FzZSB3aGVyZSB3ZSBhZGQgdGhlIHBsYW5lIGFmdGVyIHRoZQo+ID4+PiBwbGFuZSBj
aGVjayBoYXMgYWxyZWFkeSBiZWVuIGRvbmUuCj4gPj4+Cj4gPj4+IEkgdGhpbmsgd2Ugc2hvdWxk
IG1haW50YWluIHRoZSBjdXJyZW50IHN0YXRlIHVubGVzcyB0aGUgcGxhbmUgY2hlY2sKPiA+Pj4g
d2lsbCBvdmVyd3JpdGUgaXQuCj4gPj4gSGF2ZSB5b3Ugc2Vlbgo+ID4+Cj4gPj4gaW50ZWxfYXRv
bWljX2dldF9wbGFuZV9zdGF0ZV9hZnRlcl9jaGVjaygpPwo+ID4gWWVzLCBidXQgSSBkb24ndCBs
aWtlIGl0Lgo+IAo+IFRoaXMgaXMgaG93ZXZlciByZXF1aXJlZCBiZWNhdXNlIG9mIHRoZSBzcGxp
dC4gV2Ugc2hvdWxkIG5vdCBsb29rIGF0IHRoZSBvbGQgcGxhbmVfc3RhdGUgY29udGVudHMgYmVm
b3JlIGF0b21pY19jaGVjayBhbmQgdG8gcHJldmVudCB0aGF0IEkgdGhpbmsgaXQncyBiZXR0ZXIg
dG8gemVybyBvdXQgcGxhbmVfc3RhdGUtPmh3LAo+IAo+IGluIHdoaWNoIGNhc2UgYnVncyBhcmUg
YXQgbGVhc3QgY29uc2lzdGVudC4gOikKCkkgZG9uJ3QgbGlrZSBsZWFraW5nIHRoaXMgc3BlY2lh
bCBjYXNlIGFsbCBvdmVyLiBJTU8gaXQncyBub3QgcmVhbGx5IGFueQpkaWZmZXJlbnQgdG8gdGhl
IGN1cnJlbnQgcnVsZSB0aGF0IHlvdSBjYW4ndCBsb29rIGF0IGFueSBvZiB0aGUgZGVyaXZlZApz
dGF0ZSBiZWZvcmUgcGxhbmUgY2hlY2soKS4gV2UncmUganVzdCBleHRlbmRpbmcgdGhlIGNvbmNl
cHQgb2YgdGhlCmRlcml2ZWQgc3RhdGUgYSBiaXQuCgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVs
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
