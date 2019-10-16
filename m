Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0367FD926D
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 15:27:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4946A6E0F9;
	Wed, 16 Oct 2019 13:27:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FF316E0F9
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 13:27:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 06:27:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,303,1566889200"; d="scan'208";a="208411329"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga001.fm.intel.com with ESMTP; 16 Oct 2019 06:27:48 -0700
Received: from fmsmsx123.amr.corp.intel.com (10.18.125.38) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 16 Oct 2019 06:27:48 -0700
Received: from bgsmsx106.gar.corp.intel.com (10.223.43.196) by
 fmsmsx123.amr.corp.intel.com (10.18.125.38) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 16 Oct 2019 06:27:47 -0700
Received: from BGSMSX108.gar.corp.intel.com ([169.254.8.18]) by
 BGSMSX106.gar.corp.intel.com ([169.254.1.191]) with mapi id 14.03.0439.000;
 Wed, 16 Oct 2019 18:57:45 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [RFC 4/7] drm/i915/dsi: Helper to find dsi encoder in cmd mode
Thread-Index: AQHVgoLb6OREXlVwzE+131zGbaU8p6dbuhUAgAGKhhA=
Date: Wed, 16 Oct 2019 13:27:44 +0000
Message-ID: <57510F3E2013164E925CD03ED7512A3B80980EC7@BGSMSX108.gar.corp.intel.com>
References: <20191014110122.31923-1-vandita.kulkarni@intel.com>
 <20191014110122.31923-5-vandita.kulkarni@intel.com>
 <87pnixak8d.fsf@intel.com>
In-Reply-To: <87pnixak8d.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZGU4MTkzNjYtNjBlNy00ZjljLTgwMWItOTdiOGM2YzhlNDZjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJlT290UWFQSllZNHdJeDFOU2FsMlpUNzZxMjZCYU16QkszXC9JQmc1RDFuQWtUdDNzZlg1TzN6VUlSWU5mVWw2USJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC 4/7] drm/i915/dsi: Helper to find dsi encoder
 in cmd mode
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

Cgo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gRnJvbTogTmlrdWxhLCBKYW5pIDxqYW5p
Lm5pa3VsYUBpbnRlbC5jb20+Cj4gU2VudDogV2VkbmVzZGF5LCBPY3RvYmVyIDE2LCAyMDE5IDEy
OjUxIEFNCj4gVG86IEt1bGthcm5pLCBWYW5kaXRhIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNv
bT47IGludGVsLQo+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBDYzogdmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb207IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPjsK
PiBDaGF1aGFuLCBNYWRoYXYgPG1hZGhhdi5jaGF1aGFuQGludGVsLmNvbT47IEt1bGthcm5pLCBW
YW5kaXRhCj4gPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPgo+IFN1YmplY3Q6IFJlOiBbUkZD
IDQvN10gZHJtL2k5MTUvZHNpOiBIZWxwZXIgdG8gZmluZCBkc2kgZW5jb2RlciBpbiBjbWQgbW9k
ZQo+IAo+IE9uIE1vbiwgMTQgT2N0IDIwMTksIFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vs
a2FybmlAaW50ZWwuY29tPiB3cm90ZToKPiA+IEZyb206IE1hZGhhdiBDaGF1aGFuIDxtYWRoYXYu
Y2hhdWhhbkBpbnRlbC5jb20+Cj4gPgo+ID4gVGhpcyBwYXRjaCBhZGRzIGEgaGVscGVyIGZ1bmN0
aW9uIHRvIGZpbmQgZW5jb2RlciBpZiBEU0kgaXMgb3BlcmF0aW5nCj4gPiBpbiBjb21tYW5kIG1v
ZGUuIFRoaXMgZnVuY3Rpb24gd2lsbCBiZSB1c2VkIHdoaWxlIGVuYWJsaW5nL2Rpc2FibGluZwo+
ID4gVEUgaW50ZXJydXB0cyBmb3IgRFNJLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IE1hZGhhdiBD
aGF1aGFuIDxtYWRoYXYuY2hhdWhhbkBpbnRlbC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBWYW5k
aXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2RzaS5jICAgfCAxNyArKysrKysrKysrKysr
KysrKwo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNpLmggfCAgMyAr
KysKPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMKPiA+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMKPiA+IGluZGV4IDVkZDllZWJhYjZiMS4u
ODc3NzQ2NDE2ZTUyIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pY2xfZHNpLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaWNsX2Rz
aS5jCj4gPiBAQCAtNzMsNiArNzMsMjMgQEAgc3RhdGljIGVudW0gdHJhbnNjb2Rlcgo+IGRzaV9w
b3J0X3RvX3RyYW5zY29kZXIoZW51bSBwb3J0IHBvcnQpCj4gPiAgCQlyZXR1cm4gVFJBTlNDT0RF
Ul9EU0lfMTsKPiA+ICB9Cj4gPgo+ID4gK3N0cnVjdCBpbnRlbF9lbmNvZGVyICpnZW4xMV9kc2lf
ZmluZF9jbWRfbW9kZV9lbmNvZGVyKHN0cnVjdAo+ID4gK2ludGVsX2NydGMgKmNydGMpIHsKPiA+
ICsJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9IGNydGMtPmJhc2UuZGV2Owo+ID4gKwlzdHJ1Y3Qg
aW50ZWxfZW5jb2RlciAqZW5jb2RlcjsKPiA+ICsJc3RydWN0IGludGVsX2RzaSAqaW50ZWxfZHNp
Owo+ID4gKwo+ID4gKwlmb3JfZWFjaF9lbmNvZGVyX29uX2NydGMoZGV2LCAmY3J0Yy0+YmFzZSwg
ZW5jb2Rlcikgewo+ID4gKwkJaWYgKGVuY29kZXItPnR5cGUgIT0gSU5URUxfT1VUUFVUX0RTSSkK
PiA+ICsJCQljb250aW51ZTsKPiA+ICsJCWludGVsX2RzaSA9IGVuY190b19pbnRlbF9kc2koJmVu
Y29kZXItPmJhc2UpOwo+ID4gKwkJaWYgKGludGVsX2RzaS0+b3BlcmF0aW9uX21vZGUgPT0KPiBJ
TlRFTF9EU0lfQ09NTUFORF9NT0RFKQo+ID4gKwkJCXJldHVybiBlbmNvZGVyOwo+ID4gKwl9Cj4g
PiArCj4gPiArCXJldHVybiBOVUxMOwo+ID4gK30KPiAKPiBUaGlzIG1heSBiZSBhIGJpdCBoYXJz
aCwgYnV0IGV2ZXJ5dGhpbmcgdGhhdCBmZWVscyB3cm9uZyBhYm91dCB0aGUgZm9sbG93aW5nCj4g
cGF0Y2hlcyBwcmV0dHkgbXVjaCBib2lscyBkb3duIHRvIHRoaXMgZnVuY3Rpb24uIEl0IG1heSBn
ZXQgdGhlIGpvYiBkb25lLAo+IGFuZCBJIGRvbid0IGhhdmUgYSBiZXR0ZXIgc3VnZ2VzdGlvbiBv
biBob3cgdG8gYWNjb21wbGlzaCB0aGlzIHJpZ2h0IG5vdy4KPiBCdXQgaXQgc2VlbXMgbGlrZSB3
ZSBzaG91bGRuJ3QgaGF2ZSB0byBkbyBhbnl0aGluZyBsaWtlIHRoaXMsIGFuZCBtYWtlcyB5b3UK
PiBmZWVsIGxpa2UgdGhlcmUncyBzb21ldGhpbmcgd3Jvbmcgd2l0aCB0aGUgZGVzaWduLgo+IAo+
IEl0IHdvdWxkIGJlIGdyZWF0IHRvIGJlIGFibGUgdG8gaGFuZGxlIHRoaXMgdXNpbmcgY3J0YyBz
dGF0ZSwgYnV0IGFsYXMgdGhlCj4gdmJsYW5rIGVuYWJsZSBob29rIG9ubHkgZ2V0cyBwYXNzZWQg
YSBzdHJ1Y3QgZHJtX2NydGMgKi4gKFBhdGNoIDcgY291bGQKPiBlYXNpbHkgc3dpdGNoIHRvIHVz
aW5nIGNydGMgc3RhdGUsIGJ1dCBuZWVkIHRvIGFsc28gc29sdmUgcGF0Y2gKPiA1LikKLgo+IAo+
IEknbGwgZ2V0IGJhY2sgdG8geW91IG9uIHRoaXMgbGF0ZXIsIGJ1dCBpbiB0aGUgbWVhbiB0aW1l
IC0gVmlsbGUsIGRvIHlvdSBoYXZlCj4gYW55IGlkZWFzPwoKT3RoZXIgb3B0aW9uIG9mIGFkZGlu
ZyBpbiBjcnRjX3N0YXRlLCBkaWQgeW91IG1lYW4gc29tZXRoaW5nIGxpa2UgdGhpcwpodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvMzM2MTc4LyAKQEphbmkgYW5kIEBWaWxs
ZSAgUGxlYXNlIGxldCBtZSBrbm93IHlvdXIgY29tbWVudHMuCgpUaGFua3MsClZhbmRpdGEKPiAK
PiAKPiBCUiwKPiBKYW5pLgo+IAo+IAo+ID4gKwo+ID4gIHN0YXRpYyB2b2lkIHdhaXRfZm9yX2Nt
ZHNfZGlzcGF0Y2hlZF90b19wYW5lbChzdHJ1Y3QgaW50ZWxfZW5jb2Rlcgo+ID4gKmVuY29kZXIp
ICB7Cj4gPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5j
b2Rlci0+YmFzZS5kZXYpOyBkaWZmCj4gPiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHNpLmgKPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kc2kuaAo+ID4gaW5kZXggYjE1YmU1ODE0NTk5Li4wNzFkYWQ3ZWUwNGEgMTAwNjQ0Cj4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzaS5oCj4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzaS5oCj4gPiBAQCAtMjAxLDYgKzIw
MSw5IEBAIHUzMiBieHRfZHNpX2dldF9wY2xrKHN0cnVjdCBpbnRlbF9lbmNvZGVyCj4gKmVuY29k
ZXIsCj4gPiAgCQkgICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjb25maWcpOyAgdm9pZAo+
ID4gYnh0X2RzaV9yZXNldF9jbG9ja3Moc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsIGVu
dW0gcG9ydCBwb3J0KTsKPiA+Cj4gPiArLyogaWNsX2RzaS5jICovCj4gPiArc3RydWN0IGludGVs
X2VuY29kZXIgKmdlbjExX2RzaV9maW5kX2NtZF9tb2RlX2VuY29kZXIoc3RydWN0Cj4gPiAraW50
ZWxfY3J0YyAqY3J0Yyk7Cj4gPiArCj4gPiAgLyogaW50ZWxfZHNpX3ZidC5jICovCj4gPiAgYm9v
bCBpbnRlbF9kc2lfdmJ0X2luaXQoc3RydWN0IGludGVsX2RzaSAqaW50ZWxfZHNpLCB1MTYgcGFu
ZWxfaWQpOwo+ID4gdm9pZCBpbnRlbF9kc2lfdmJ0X2V4ZWNfc2VxdWVuY2Uoc3RydWN0IGludGVs
X2RzaSAqaW50ZWxfZHNpLAo+IAo+IC0tCj4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNl
IEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
