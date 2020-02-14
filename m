Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F2515EBF0
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 18:24:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CDE06E849;
	Fri, 14 Feb 2020 17:24:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0BAA6E849
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 17:24:16 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 09:24:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,441,1574150400"; d="scan'208";a="314121645"
Received: from rantogno-mobl4.jf.intel.com (HELO
 rantogno-mobl4.amr.corp.intel.com) ([10.54.72.142])
 by orsmga001.jf.intel.com with ESMTP; 14 Feb 2020 09:24:15 -0800
Date: Fri, 14 Feb 2020 09:24:15 -0800
From: Rafael Antognolli <rafael.antognolli@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20200214172415.qh37or6zycbw7yoh@rantogno-mobl4.amr.corp.intel.com>
References: <20200212191728.25227-1-rafael.antognolli@intel.com>
 <20200214171038.GN2014153@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200214171038.GN2014153@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Add Wa_1808121037 to tgl.
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

T24gRnJpLCBGZWIgMTQsIDIwMjAgYXQgMDk6MTA6MzhBTSAtMDgwMCwgTWF0dCBSb3BlciB3cm90
ZToKPiBPbiBXZWQsIEZlYiAxMiwgMjAyMCBhdCAxMToxNzoyOEFNIC0wODAwLCBSYWZhZWwgQW50
b2dub2xsaSB3cm90ZToKPiA+IEl0J3Mgbm90IGNsZWFyIHdoZXRoZXIgdGhpcyB3b3JrYXJvdW5k
IGlzIGZpbmFsIHlldCwgYnV0IHRoZSBCU3BlYwo+ID4gaW5kaWNhdGVzIHRoYXQgdXNlcnNwYWNl
IG5lZWRzIHRvIHNldCBiaXQgOSBvZiB0aGlzIHJlZ2lzdGVyIG9uIGRlbWFuZDoKPiA+IAo+ID4g
ICAgIlRvIGF2b2lkIHNwb3JhZGljIGNvcnJ1cHRpb25zIOKAnFNldCAweDcwMTBbOV0gd2hlbiBE
ZXB0aCBCdWZmZXIKPiA+ICAgIFN1cmZhY2UgRm9ybWF0IGlzIEQxNl9VTk9STSAsIHN1cmZhY2Ug
dHlwZSBpcyBub3QgTlVMTCAmIDFYX01TQUEiCj4gPiAKPiA+IEJ1Z0xpbms6IGh0dHBzOi8vZ2l0
bGFiLmZyZWVkZXNrdG9wLm9yZy9tZXNhL21lc2EvaXNzdWVzLzI1MDEKPiA+IFNpZ25lZC1vZmYt
Ynk6IFJhZmFlbCBBbnRvZ25vbGxpIDxyYWZhZWwuYW50b2dub2xsaUBpbnRlbC5jb20+Cj4gCj4g
U2VlbXMgbGlrZSB0aGUgcmlnaHQgcmVnaXN0ZXIgdG8gd2hpdGVsaXN0IHRvIGFsbG93IHVzZXJz
cGFjZSB0byBhcHBseQo+IHRoZSB3b3JrYXJvdW5kLgo+IAo+IFJldmlld2VkLWJ5OiBNYXR0IFJv
cGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+IAo+IEkgdGhpbmsgd2UgY2FuIGRyb3Ag
dGhlICJBbGxvdyB1c2VycGFjZSB0byBpbXBsZW1lbnQgdGhpcyB3b3JrYXJvdW5kIgo+IHBhcnQg
b2YgdGhlIGNvbW1lbnQ7IHRoYXQgcGFydCBpcyBzZWxmLWV4cGxhbmF0b3J5IGdpdmVuIHRoYXQg
aXQncyBhCj4gd2hpdGVsaXN0IGVudHJ5LiAgRG8geW91IG1pbmQgaWYgd2UganVzdCB0d2VhayB0
aGUgY29tbWVudCB3aGlsZQo+IGFwcGx5aW5nPyAgSXQgbG9va3MgbGlrZSB0aGUgQ0kgc2hhcmRz
IHF1ZXVlIGlzIG1hc3NpdmUgcmlnaHQgbm93IHNvCj4gaXQncyBhbHJlYWR5IGdvaW5nIHRvIHRh
a2UgYSBsb25nIHRpbWUgdG8gZ2V0IHRoZSBmdWxsIHJlc3VsdHMgYmFjayBmb3IKPiB0aGlzIHBh
dGNoOyBubyBuZWVkIHRvIG1ha2UgaXQgZXZlbiBsb25nZXIgYnkgcmVzdWJtaXR0aW5nIGZvciBh
IHRyaXZpYWwKPiBjb21tZW50IHNob3J0ZW5pbmcuCgpJIGRvbid0IG1pbmQgaXQgYXQgYWxsLCBm
ZWVsIGZyZWUgdG8gY2hhbmdlIGl0IGhvd2V2ZXIgeW91IHdhbnQuCgpUaGFua3MhClJhZmFlbAoK
PiAKPiBNYXR0Cj4gCj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93
b3JrYXJvdW5kcy5jIHwgNiArKysrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25z
KCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93
b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMu
Ywo+ID4gaW5kZXggNjJiNDNmNTM4YTU2Li41N2I5Njg1ZDkzNDcgMTAwNjQ0Cj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gPiBAQCAtMTI2NCw2ICsx
MjY0LDEyIEBAIHN0YXRpYyB2b2lkIHRnbF93aGl0ZWxpc3RfYnVpbGQoc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lKQo+ID4gIAkJd2hpdGVsaXN0X3JlZ19leHQodywgUFNfSU5WT0NBVElP
Tl9DT1VOVCwKPiA+ICAJCQkJICBSSU5HX0ZPUkNFX1RPX05PTlBSSVZfQUNDRVNTX1JEIHwKPiA+
ICAJCQkJICBSSU5HX0ZPUkNFX1RPX05PTlBSSVZfUkFOR0VfNCk7Cj4gPiArCj4gPiArCQkvKiBX
YV8xODA4MTIxMDM3OnRnbAo+ID4gKwkJICoKPiA+ICsJCSAqIEFsbG93IHVzZXJwYWNlIHRvIGlt
cGxlbWVudCB0aGlzIHdvcmthcm91bmQuCj4gPiArCQkgKi8KPiA+ICsJCXdoaXRlbGlzdF9yZWco
dywgR0VON19DT01NT05fU0xJQ0VfQ0hJQ0tFTjEpOwo+ID4gIAkJYnJlYWs7Cj4gPiAgCWRlZmF1
bHQ6Cj4gPiAgCQlicmVhazsKPiA+IC0tIAo+ID4gMi4yNS4wCj4gPiAKPiA+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0Cj4gPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiBodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo+IAo+IC0tIAo+
IE1hdHQgUm9wZXIKPiBHcmFwaGljcyBTb2Z0d2FyZSBFbmdpbmVlcgo+IFZUVC1PU0dDIFBsYXRm
b3JtIEVuYWJsZW1lbnQKPiBJbnRlbCBDb3Jwb3JhdGlvbgo+ICg5MTYpIDM1Ni0yNzk1Cl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
