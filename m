Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7DE010A63E
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Nov 2019 22:52:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17D9E89D42;
	Tue, 26 Nov 2019 21:52:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10F3089CC4
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Nov 2019 21:52:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 13:52:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,247,1571727600"; d="scan'208";a="233890199"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by fmsmga004.fm.intel.com with ESMTP; 26 Nov 2019 13:52:39 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.229]) by
 ORSMSX103.amr.corp.intel.com ([169.254.5.179]) with mapi id 14.03.0439.000;
 Tue, 26 Nov 2019 13:52:39 -0800
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [PATCH v7 7/7] drm/i915/tgl: Add Clear Color support for TGL
 Render Decompression
Thread-Index: AQHVo+/5zVMtFvTju0GU9ptW+QHKmKeedBKA//+JWaA=
Date: Tue, 26 Nov 2019 21:52:39 +0000
Message-ID: <8C2593290C2B3E488D763E819AF1F02E15FCAC19@ORSMSX101.amr.corp.intel.com>
References: <20191126002635.5779-1-radhakrishna.sripada@intel.com>
 <20191126002635.5779-8-radhakrishna.sripada@intel.com>
 <20191126204855.GB6337@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20191126204855.GB6337@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNWFjYjUyZjQtZWNhOC00NGE4LWE2ZjYtOGJhZTczYWY3ZTRkIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoianRLU21pR1k2cEdVV05oSWVnWkhcL2I4MzBHR2VueHFaTldLYWxuU2ZnNE00RHNqN0VCM3dKZEdSbnlaQjQ4WHIifQ==
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v7 7/7] drm/i915/tgl: Add Clear Color
 support for TGL Render Decompression
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
Cc: "Chery, Nanley G" <nanley.g.chery@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Pandiyan,
 Dhinakaran" <dhinakaran.pandiyan@intel.com>, "Syrjala,
 Ville" <ville.syrjala@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgTWF0dCwKCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiBGcm9tOiBSb3BlciwgTWF0
dGhldyBECj4gU2VudDogVHVlc2RheSwgTm92ZW1iZXIgMjYsIDIwMTkgMTI6NDkgUE0KPiBUbzog
U3JpcGFkYSwgUmFkaGFrcmlzaG5hIDxyYWRoYWtyaXNobmEuc3JpcGFkYUBpbnRlbC5jb20+Cj4g
Q2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IFBhbmRpeWFuLCBEaGluYWthcmFu
Cj4gPGRoaW5ha2FyYW4ucGFuZGl5YW5AaW50ZWwuY29tPjsgU3lyamFsYSwgVmlsbGUgPHZpbGxl
LnN5cmphbGFAaW50ZWwuY29tPjsKPiBTaGFybWEsIFNoYXNoYW5rIDxzaGFzaGFuay5zaGFybWFA
aW50ZWwuY29tPjsgQW50b2dub2xsaSwgUmFmYWVsCj4gPHJhZmFlbC5hbnRvZ25vbGxpQGludGVs
LmNvbT47IENoZXJ5LCBOYW5sZXkgRyA8bmFubGV5LmcuY2hlcnlAaW50ZWwuY29tPgo+IFN1Ympl
Y3Q6IFJlOiBbUEFUQ0ggdjcgNy83XSBkcm0vaTkxNS90Z2w6IEFkZCBDbGVhciBDb2xvciBzdXBw
b3J0IGZvciBUR0wKPiBSZW5kZXIgRGVjb21wcmVzc2lvbgo+IAo+IE9uIE1vbiwgTm92IDI1LCAy
MDE5IGF0IDA0OjI2OjM1UE0gLTA4MDAsIFJhZGhha3Jpc2huYSBTcmlwYWRhIHdyb3RlOgo+ID4g
UmVuZGVyIERlY29tcHJlc3Npb24gaXMgc3VwcG9ydGVkIHdpdGggWS1UaWxlZCBtYWluIHN1cmZh
Y2UuIFRoZSBDQ1MKPiA+IGlzIGxpbmVhciBhbmQgaGFzIDQgYml0cyBvZiBkYXRhIGZvciBlYWNo
IG1haW4gc3VyZmFjZSBjYWNoZSBsaW5lCj4gPiBwYWlyLCBhIHJhdGlvIG9mIDE6MjU2LiBBZGRp
dGlvbmFsIENsZWFyIENvbG9yIGluZm9ybWF0aW9uIGlzIHBhc3NlZAo+ID4gZnJvbSB0aGUgdXNl
ci1zcGFjZSB0aHJvdWdoIGFuIG9mZnNldCBpbiB0aGUgR0VNIEJPLiBBZGQgYSBuZXcKPiA+IG1v
ZGlmaWVyIHRvIGlkZW50aWZ5IGFuZCBwYXJzZSBuZXcgQ2xlYXIgQ29sb3IgaW5mb3JtYXRpb24g
YW5kIGV4dGVuZAo+ID4gR2VuMTIgcmVuZGVyIGRlY29tcHJlc3Npb24gZnVuY3Rpb25hbGl0eSB0
byB0aGUgbmV3bHkgYWRkZWQgbW9kaWZpZXIuCj4gPgo+ID4gdjI6IEZpeCBoYXNfYWxwaGEgZmxh
ZyBmb3IgbW9kaWZpZXJzLCBvbWl0IENDIG1vZGlmaWVyIGR1cmluZyBpbml0aWFsCj4gPiAgICAg
cGxhbmUgY29uZmlnKE1hdHQpLiBGaXggTG9va3VwIGVycm9yLgo+ID4gdjM6IEZpeCB0aGUgcGFu
aWMgd2hpbGUgcnVubmluZyBrbXNfY3ViZQo+ID4gdjQ6IEFkZCBhbGlnbm1lbnQgY2hlY2sgYW5k
IHJldXNlIHRoZSBjb21tZW50cyBmb3IKPiA+IGdlMTJfY2NzX2Zvcm1hdHMoTWF0dCkKPiA+IHY1
OiBGaXggdHlwb3MgYW5kIHdyYXAgY29tbWVudHMoTWF0dCkKPiA+IHY2OiBSZWJhc2UKPiA+IHY3
OiBSZWJhc2UsIEFkZCBtaXNzaW5nIGNhc2UgaW4gaW50ZWxfdGlsZV9oZWlnaHQoUkspCj4gPgo+
ID4gQ2M6IERoaW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5ha2FyYW4ucGFuZGl5YW5AaW50ZWwuY29t
Pgo+ID4gQ2M6IFZpbGxlIFN5cmphbGEgPHZpbGxlLnN5cmphbGFAaW50ZWwuY29tPgo+ID4gQ2M6
IFNoYXNoYW5rIFNoYXJtYSA8c2hhc2hhbmsuc2hhcm1hQGludGVsLmNvbT4KPiA+IENjOiBSYWZh
ZWwgQW50b2dub2xsaSA8cmFmYWVsLmFudG9nbm9sbGlAaW50ZWwuY29tPgo+ID4gQ2M6IE5hbmxl
eSBHIENoZXJ5IDxuYW5sZXkuZy5jaGVyeUBpbnRlbC5jb20+Cj4gPiBDYzogTWF0dCBSb3BlciA8
bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IFJhZGhha3Jpc2hu
YSBTcmlwYWRhIDxyYWRoYWtyaXNobmEuc3JpcGFkYUBpbnRlbC5jb20+Cj4gCj4gQSBmZXcgbWlu
b3IgY29tbWVudHMgYmVsb3csIGJ1dCBub25lIG9mIHRoZW0gYXJlIGNyaXRpY2FsLgo+IAo+IFJl
dmlld2VkLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+IAo+IFdo
YXQncyB0aGUgY3VycmVudCBzdGF0dXMgb2YgdGhlIHVuZGVybHlpbmcgY29tcHJlc3Npb24gc2Vy
aWVzIHRoaXMgd29yayBpcyBiYXNlZAo+IG9uPwpJIGRpZCBub3Qgc2VlIGFueSBwYXRjaGVzIGZy
b20gREsgZnVydGhlciBvbiBjb21wcmVzc2lvbiBwYXRjaGVzLiBGcm9tIG15IHVuZGVyc3RhbmRp
bmcKVGhlIHJlbmRlciBjb21wcmVzc2lvbiBwYXRjaGVzIGdvdCByLWIncyBhbmQgdGhlIG1lZGlh
IGNvbXByZXNzaW9uIHBhdGNoZXMgbmVlZCBmdXJ0aGVyICByZXdvcmsuCj4gCj4gPiAtLS0KPiA+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCA2NCArKysr
KysrKysrKysrKysrKystCj4gPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90
eXBlcy5oICAgIHwgIDMgKwo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
c3ByaXRlLmMgICB8IDEwICsrLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgg
ICAgICAgICAgICAgICB8IDEyICsrKysKPiA+ICA0IGZpbGVzIGNoYW5nZWQsIDg2IGluc2VydGlv
bnMoKyksIDMgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gPiBpbmRleCA2YzQyNzRjMTU2NGQuLjY5ZTcwYmU4
NmY1NyAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYwo+ID4gQEAgLTE5NzUsNiArMTk3NSwxMCBAQCBpbnRlbF90aWxlX3dpZHRoX2J5dGVz
KGNvbnN0IHN0cnVjdAo+IGRybV9mcmFtZWJ1ZmZlciAqZmIsIGludCBjb2xvcl9wbGFuZSkKPiA+
ICAJCWlmIChjb2xvcl9wbGFuZSA9PSAxKQo+ID4gIAkJCXJldHVybiA2NDsKPiA+ICAJCS8qIGZh
bGwgdGhyb3VnaCAqLwo+IAo+IFNpbmNlIHRoaXMgb25lIChHRU4xMl9SQ19DQ1MpIG5vdyBmYWxs
cyB0aHJvdWdoIHRvIHRoZSBuZXcKPiBHRU4xMl9SQ19DQ1NfQ0MsIHlvdSBjYW4gcHJvYmFibHkg
ZHJvcCB0aGVzZSBsaW5lcyBzaW5jZSB0aGV5J2xsIGJlIGhhbmRsZWQKPiB0aGUgc2FtZSB3YXkg
aW4gdGhlIG5leHQgY2FzZSBkb3duLgpDb2xvcl9wbGFuZSA9PSAyIGRvZXMgbm90IGFwcGx5IGZv
ciBHRTEyX1JDX0NDUy4gRG8geW91IHRoaW5rIGl0IGlzIHN0aWxsIG9rIHRvIGNsdWIKVGhlIHR3
byBjYXNlcz8KCj4gCj4gPiArCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNf
Q0NTX0NDOgo+ID4gKwkJaWYgKGNvbG9yX3BsYW5lID09IDEgfHwgY29sb3JfcGxhbmUgPT0gMikK
PiAKPiBJJ3ZlIHJldmlld2VkIGEgbG90IG9mIHZlcnNpb25zIG9mIHRoZXNlIGNvbXByZXNzaW9u
IHNlcmllcyBzbyBJIG1pZ2h0IGJlIGdldHRpbmcKPiBjb25mdXNlZCwgYnV0IGRpZG4ndCBESyBo
YXZlIGEgdmVyc2lvbiBhdCBvbmUgdGltZSB0aGF0IGFkZGVkIHNvbWUga2luZCBvZgo+IGlzX2Nj
c19wbGFuZShtb2QsIHBsYW5lKSBoZWxwZXIgZnVuY3Rpb24/ICBJJ20gbm90IHN1cmUgd2hhdCBo
YXBwZW5lZCB0byB0aGF0LAo+IGJ1dCBpdCBkaWQgc2VlbSBsaWtlIGEgbmljZSB3YXkgdG8gY29u
c29saWRhdGUgdGhlICJ0aGVzZSBwbGFuZXMgY29udGFpbiBDQ1MKPiBzdHVmZiIgbG9naWMgcmF0
aGVyIHRoYW4gaGF2aW5nIHRvIGhhcmRjb2RlIHRoZSBwbGFuZSBJRCdzIGFsbCBvdmVyIHRoZSBw
bGFjZSBsaWtlCj4gdGhpcy4KVGhlIGlzX2Njc19wbGFuZSBoZWxwZXIgZnVuY3Rpb24gd2FzIGlu
dHJvZHVjZWQgaW4gbWVkaWEgIGNvbXByZXNzaW9uIHBhdGNoZXMKV2hlcmUgZnVydGhlciBjb21w
bGV4aXRpZXMgd2VyZSByZXF1aXJlZCB3aGlsZSBjYWxjdWxhdGluZyBwbGFuZSBkaW1zLgoKPiAK
PiAKPiA+ICsJCQlyZXR1cm4gNjQ7Cj4gPiArCQkvKiBmYWxsIHRocm91Z2ggKi8KPiA+ICAJY2Fz
ZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRDoKPiA+ICAJCWlmIChJU19HRU4oZGV2X3ByaXYsIDIp
IHx8IEhBU18xMjhfQllURV9ZX1RJTElORyhkZXZfcHJpdikpCj4gPiAgCQkJcmV0dXJuIDEyODsK
PiA+IEBAIC0yMDEzLDYgKzIwMTcsMTAgQEAgaW50ZWxfdGlsZV9oZWlnaHQoY29uc3Qgc3RydWN0
IGRybV9mcmFtZWJ1ZmZlcgo+ICpmYiwgaW50IGNvbG9yX3BsYW5lKQo+ID4gIAkJaWYgKGNvbG9y
X3BsYW5lID09IDEpCj4gPiAgCQkJcmV0dXJuIDE7Cj4gPiAgCQkvKiBmYWxsIHRocm91Z2ggKi8K
PiAKPiBBcyBhYm92ZSwgeW91IGNhbiBub3cgY29uc29saWRhdGUgdGhpcyB3aXRoIHRoZSBuZXcg
YmxvY2sgYmVsb3cgaWYgeW91IHdhbnQuCj4gCj4gPiArCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1lf
VElMRURfR0VOMTJfUkNfQ0NTX0NDOgo+ID4gKwkJaWYgKGNvbG9yX3BsYW5lID09IDEgfHwgY29s
b3JfcGxhbmUgPT0gMikKPiA+ICsJCQlyZXR1cm4gMTsKPiA+ICsJCS8qIGZhbGwgdGhyb3VnaCAq
Lwo+ID4gIAlkZWZhdWx0Ogo+ID4gIAkJcmV0dXJuIGludGVsX3RpbGVfc2l6ZSh0b19pOTE1KGZi
LT5kZXYpKSAvCj4gPiAgCQkJaW50ZWxfdGlsZV93aWR0aF9ieXRlcyhmYiwgY29sb3JfcGxhbmUp
OyBAQCAtMjExNiw2Cj4gKzIxMjQsNyBAQAo+ID4gc3RhdGljIHVuc2lnbmVkIGludCBpbnRlbF9z
dXJmX2FsaWdubWVudChjb25zdCBzdHJ1Y3QgZHJtX2ZyYW1lYnVmZmVyICpmYiwKPiA+ICAJCQly
ZXR1cm4gMjU2ICogMTAyNDsKPiA+ICAJCXJldHVybiAwOwo+ID4gIAljYXNlIEk5MTVfRk9STUFU
X01PRF9ZX1RJTEVEX0dFTjEyX1JDX0NDUzoKPiA+ICsJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWV9U
SUxFRF9HRU4xMl9SQ19DQ1NfQ0M6Cj4gPiAgCQlyZXR1cm4gMTYgKiAxMDI0Owo+ID4gIAljYXNl
IEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0NDUzoKPiA+ICAJY2FzZSBJOTE1X0ZPUk1BVF9NT0Rf
WWZfVElMRURfQ0NTOgo+ID4gQEAgLTIzMTMsOCArMjMyMiwxNiBAQCBzdGF0aWMgdTMyIGludGVs
X2FkanVzdF90aWxlX29mZnNldChpbnQgKngsIGludAo+ID4gKnksCj4gPgo+ID4gIHN0YXRpYyBi
b29sIGlzX3N1cmZhY2VfbGluZWFyKHU2NCBtb2RpZmllciwgaW50IGNvbG9yX3BsYW5lKSAgewo+
ID4gLQlyZXR1cm4gbW9kaWZpZXIgPT0gRFJNX0ZPUk1BVF9NT0RfTElORUFSIHx8Cj4gPiAtCSAg
ICAgICAobW9kaWZpZXIgPT0gSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTICYm
Cj4gY29sb3JfcGxhbmUgPT0gMSk7Cj4gPiArCXN3aXRjaCAobW9kaWZpZXIpIHsKPiA+ICsJY2Fz
ZSBEUk1fRk9STUFUX01PRF9MSU5FQVI6Cj4gPiArCQlyZXR1cm4gdHJ1ZTsKPiA+ICsJY2FzZSBJ
OTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9SQ19DQ1M6Cj4gPiArCQlyZXR1cm4gY29sb3Jf
cGxhbmUgPT0gMTsKPiA+ICsJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9SQ19D
Q1NfQ0M6Cj4gPiArCQlyZXR1cm4gY29sb3JfcGxhbmUgPT0gMSB8fCBjb2xvcl9wbGFuZSA9PSAy
Owo+ID4gKwlkZWZhdWx0Ogo+ID4gKwkJcmV0dXJuIGZhbHNlOwo+ID4gKwl9Cj4gPiAgfQo+ID4K
PiA+ICBzdGF0aWMgdTMyIGludGVsX2FkanVzdF9hbGlnbmVkX29mZnNldChpbnQgKngsIGludCAq
eSwgQEAgLTI1MDIsNgo+ID4gKzI1MTksNyBAQCBzdGF0aWMgdW5zaWduZWQgaW50IGludGVsX2Zi
X21vZGlmaWVyX3RvX3RpbGluZyh1NjQgZmJfbW9kaWZpZXIpCj4gPiAgCWNhc2UgSTkxNV9GT1JN
QVRfTU9EX1lfVElMRUQ6Cj4gPiAgCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfQ0NTOgo+
ID4gIAljYXNlIEk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dFTjEyX1JDX0NDUzoKPiA+ICsJY2Fz
ZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9SQ19DQ1NfQ0M6Cj4gPiAgCQlyZXR1cm4g
STkxNV9USUxJTkdfWTsKPiA+ICAJZGVmYXVsdDoKPiA+ICAJCXJldHVybiBJOTE1X1RJTElOR19O
T05FOwo+ID4gQEAgLTI1NTEsNiArMjU2OSwyMSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9m
b3JtYXRfaW5mbwo+IGdlbjEyX2Njc19mb3JtYXRzW10gPSB7Cj4gPiAgCSAgLmNwcCA9IHsgNCwg
MSwgfSwgLmhzdWIgPSAyLCAudnN1YiA9IDMyLCAuaGFzX2FscGhhID0gdHJ1ZSB9LCAgfTsKPiA+
Cj4gPiArLyoKPiA+ICsgKiBTYW1lIGFzIGdlbjEyX2Njc19mb3JtYXRzW10gYWJvdmUsIGJ1dCB3
aXRoIGFkZGl0aW9uYWwgc3VyZmFjZQo+ID4gK3VzZWQKPiA+ICsgKiB0byBwYXNzIENsZWFyIENv
bG9yIGluZm9ybWF0aW9uIGluIHBsYW5lIDIgd2l0aCA2NCBiaXRzIG9mIGRhdGEuCj4gPiArICov
Cj4gPiArc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fZm9ybWF0X2luZm8gZ2VuMTJfY2NzX2NjX2Zv
cm1hdHNbXSA9IHsKPiA+ICsJeyAuZm9ybWF0ID0gRFJNX0ZPUk1BVF9YUkdCODg4OCwgLmRlcHRo
ID0gMjQsIC5udW1fcGxhbmVzID0gMywKPiA+ICsJICAuY3BwID0geyA0LCAxLCAwLCB9LCAuaHN1
YiA9IDIsIC52c3ViID0gMzIsIH0sCj4gPiArCXsgLmZvcm1hdCA9IERSTV9GT1JNQVRfWEJHUjg4
ODgsIC5kZXB0aCA9IDI0LCAubnVtX3BsYW5lcyA9IDMsCj4gPiArCSAgLmNwcCA9IHsgNCwgMSwg
MCwgfSwgLmhzdWIgPSAyLCAudnN1YiA9IDMyLCB9LAo+ID4gKwl7IC5mb3JtYXQgPSBEUk1fRk9S
TUFUX0FSR0I4ODg4LCAuZGVwdGggPSAzMiwgLm51bV9wbGFuZXMgPSAzLAo+ID4gKwkgIC5jcHAg
PSB7IDQsIDEsIDAsIH0sIC5oc3ViID0gMiwgLnZzdWIgPSAzMiwgLmhhc19hbHBoYSA9IHRydWUg
fSwKPiA+ICsJeyAuZm9ybWF0ID0gRFJNX0ZPUk1BVF9BQkdSODg4OCwgLmRlcHRoID0gMzIsIC5u
dW1fcGxhbmVzID0gMywKPiA+ICsJICAuY3BwID0geyA0LCAxLCAwLCB9LCAuaHN1YiA9IDIsIC52
c3ViID0gMzIsIC5oYXNfYWxwaGEgPSB0cnVlIH0sCj4gPiArfTsKPiA+ICsKPiA+ICBzdGF0aWMg
Y29uc3Qgc3RydWN0IGRybV9mb3JtYXRfaW5mbyAqICBsb29rdXBfZm9ybWF0X2luZm8oY29uc3QK
PiA+IHN0cnVjdCBkcm1fZm9ybWF0X2luZm8gZm9ybWF0c1tdLAo+ID4gIAkJICAgaW50IG51bV9m
b3JtYXRzLCB1MzIgZm9ybWF0KQo+ID4gQEAgLTI1NzgsNiArMjYxMSwxMCBAQCBpbnRlbF9nZXRf
Zm9ybWF0X2luZm8oY29uc3Qgc3RydWN0Cj4gZHJtX21vZGVfZmJfY21kMiAqY21kKQo+ID4gIAkJ
cmV0dXJuIGxvb2t1cF9mb3JtYXRfaW5mbyhnZW4xMl9jY3NfZm9ybWF0cywKPiA+ICAJCQkJCSAg
QVJSQVlfU0laRShnZW4xMl9jY3NfZm9ybWF0cyksCj4gPiAgCQkJCQkgIGNtZC0+cGl4ZWxfZm9y
bWF0KTsKPiA+ICsJY2FzZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9SQ19DQ1NfQ0M6
Cj4gPiArCQlyZXR1cm4gbG9va3VwX2Zvcm1hdF9pbmZvKGdlbjEyX2Njc19jY19mb3JtYXRzLAo+
ID4gKwkJCQkJICBBUlJBWV9TSVpFKGdlbjEyX2Njc19jY19mb3JtYXRzKSwKPiA+ICsJCQkJCSAg
Y21kLT5waXhlbF9mb3JtYXQpOwo+ID4gIAlkZWZhdWx0Ogo+ID4gIAkJcmV0dXJuIE5VTEw7Cj4g
PiAgCX0KPiA+IEBAIC0yNTg2LDYgKzI2MjMsNyBAQCBpbnRlbF9nZXRfZm9ybWF0X2luZm8oY29u
c3Qgc3RydWN0Cj4gPiBkcm1fbW9kZV9mYl9jbWQyICpjbWQpICBib29sIGlzX2Njc19tb2RpZmll
cih1NjQgbW9kaWZpZXIpICB7Cj4gPiAgCXJldHVybiBtb2RpZmllciA9PSBJOTE1X0ZPUk1BVF9N
T0RfWV9USUxFRF9HRU4xMl9SQ19DQ1MgfHwKPiA+ICsJICAgICAgIG1vZGlmaWVyID09IEk5MTVf
Rk9STUFUX01PRF9ZX1RJTEVEX0dFTjEyX1JDX0NDU19DQyB8fAo+ID4gIAkgICAgICAgbW9kaWZp
ZXIgPT0gSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfQ0NTIHx8Cj4gPiAgCSAgICAgICBtb2RpZmll
ciA9PSBJOTE1X0ZPUk1BVF9NT0RfWWZfVElMRURfQ0NTOyAgfSBAQCAtMjc5OCw2Cj4gPiArMjgz
NiwxOCBAQCBpbnRlbF9maWxsX2ZiX2luZm8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2LAo+ID4gIAkJaW50IHgsIHk7Cj4gPiAgCQlpbnQgcmV0Owo+ID4KPiA+ICsJCS8qCj4gPiAr
CQkgKiBQbGFuZSAyIG9mIFJlbmRlciBDb21wcmVzc2lvbiB3aXRoIENsZWFyIENvbG9yIGZiIG1v
ZGlmaWVyCj4gPiArCQkgKiBpcyBjb25zdW1lZCBieSB0aGUgZHJpdmVyIGFuZCBub3QgcGFzc2Vk
IHRvIERFLiBTa2lwIHRoZQo+ID4gKwkJICogYXJpdGhtZXRpYyByZWxhdGVkIHRvIGFsaWdubWVu
dCBhbmQgb2Zmc2V0IGNhbGN1bGF0aW9uLgo+ID4gKwkJICovCj4gPiArCQlpZiAoaSA9PSAyICYm
IGZiLT5tb2RpZmllciA9PQo+ID4gK0k5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dFTjEyX1JDX0ND
U19DQykgewo+IAo+IFRoaXMgbGluZSBzaG91bGQgYmUgd3JhcHBlZC4KU3VyZSB3aWxsIGluY2x1
ZGUgaW4gZmluYWwgcmV2Lgo+IAo+ID4gKwkJCWlmIChJU19BTElHTkVEKGZiLT5vZmZzZXRzWzJd
LCBQQUdFX1NJWkUpKQo+ID4gKwkJCQljb250aW51ZTsKPiA+ICsJCQllbHNlCj4gPiArCQkJCXJl
dHVybiAtRUlOVkFMOwo+ID4gKwkJfQo+ID4gKwo+ID4gIAkJY3BwID0gZmItPmZvcm1hdC0+Y3Bw
W2ldOwo+ID4gIAkJd2lkdGggPSBkcm1fZnJhbWVidWZmZXJfcGxhbmVfd2lkdGgoZmItPndpZHRo
LCBmYiwgaSk7Cj4gPiAgCQloZWlnaHQgPSBkcm1fZnJhbWVidWZmZXJfcGxhbmVfaGVpZ2h0KGZi
LT5oZWlnaHQsIGZiLCBpKTsgQEAKPiA+IC00Mjk1LDYgKzQzNDUsNyBAQCBzdGF0aWMgdTMyIHNr
bF9wbGFuZV9jdGxfdGlsaW5nKHU2NCBmYl9tb2RpZmllcikKPiA+ICAJY2FzZSBJOTE1X0ZPUk1B
VF9NT0RfWV9USUxFRDoKPiA+ICAJCXJldHVybiBQTEFORV9DVExfVElMRURfWTsKPiA+ICAJY2Fz
ZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9DQ1M6Cj4gPiArCWNhc2UgSTkxNV9GT1JNQVRfTU9E
X1lfVElMRURfR0VOMTJfUkNfQ0NTX0NDOgo+ID4gIAkJcmV0dXJuIFBMQU5FX0NUTF9USUxFRF9Z
IHwKPiBQTEFORV9DVExfUkVOREVSX0RFQ09NUFJFU1NJT05fRU5BQkxFOwo+ID4gIAljYXNlIEk5
MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dFTjEyX1JDX0NDUzoKPiA+ICAJCXJldHVybiBQTEFORV9D
VExfVElMRURfWSB8Cj4gPiBAQCAtMTUyNDUsNiArMTUyOTYsMTUgQEAgc3RhdGljIGludCBpbnRl
bF9wbGFuZV9waW5fZmIoc3RydWN0Cj4gPiBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUp
Cj4gPgo+ID4gIAlwbGFuZV9zdGF0ZS0+dm1hID0gdm1hOwo+ID4KPiA+ICsJaWYgKGZiLT5tb2Rp
ZmllciA9PSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9SQ19DQ1NfQ0MpIHsKPiA+ICsJ
CXUzMiAqY2NhZGRyID0KPiBrbWFwX2F0b21pYyhpOTE1X2dlbV9vYmplY3RfZ2V0X3BhZ2UoaW50
ZWxfZmJfb2JqKGZiKSwKPiA+ICsJCQkJCQkJCSAgZmItCj4gPm9mZnNldHNbMl0gPj4gUEFHRV9T
SElGVCkpOwo+ID4gKwo+ID4gKwkJcGxhbmVfc3RhdGUtPmNjdmFsID0gKCh1NjQpKihjY2FkZHIg
KyBDQ19WQUxfSElHSEVSX09GRlNFVCkKPiA8PCAzMikKPiA+ICsJCQkJICAgICB8ICooY2NhZGRy
ICsgQ0NfVkFMX0xPV0VSX09GRlNFVCk7Cj4gCj4gSXNuJ3QgdGhpcyBqdXN0IHRoZSBzYW1lIHRo
aW5nIGFzCj4gCj4gICAgICAgICB1NjQgKmNjYWRkciA9IGttYXBfYXRvbWljKC4uLik7Cj4gICAg
ICAgICBwbGFuZV9zdGF0ZS0+Y2N2YWwgPSBjY2FkZHJbMl07Cj4gCj4gPwpJIHRoaW5rIGl0IGlz
IGNjdmFsID0gY2NhZGRyWzVdIDw8IDMyIHwgY2NhZGRyWzRdPwpJcyB0aGlzIHByZWZlcnJlZD8K
ClRoYW5rcywKUmFkaGFrcmlzaG5hKFJLKSBTcmlwYWRhCj4gCj4gPiArCQlrdW5tYXBfYXRvbWlj
KGNjYWRkcik7Cj4gPiArCX0KPiA+ICsKPiA+ICAJcmV0dXJuIDA7Cj4gPiAgfQo+ID4KPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlw
ZXMuaAo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlw
ZXMuaAo+ID4gaW5kZXggODNlYTA0MTQ5Yjc3Li5lMWJkMTgxMjJjZTYgMTAwNjQ0Cj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAo+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgK
PiA+IEBAIC02MDcsNiArNjA3LDkgQEAgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlIHsKPiA+ICAJ
dTMyIHBsYW5hcl9zbGF2ZTsKPiA+Cj4gPiAgCXN0cnVjdCBkcm1faW50ZWxfc3ByaXRlX2NvbG9y
a2V5IGNrZXk7Cj4gPiArCj4gPiArCS8qIENsZWFyIENvbG9yIFZhbHVlICovCj4gPiArCXU2NCBj
Y3ZhbDsKPiA+ICB9Owo+ID4KPiA+ICBzdHJ1Y3QgaW50ZWxfaW5pdGlhbF9wbGFuZV9jb25maWcg
ewo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3By
aXRlLmMKPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwo+
ID4gaW5kZXggNjdhOTAwNTk5MDBmLi44OWY3ZmJjODdhZDkgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jCj4gPiBAQCAtNTk3LDYgKzU5Nyw3
IEBAIHNrbF9wcm9ncmFtX3BsYW5lKHN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUsCj4gPiAgCXVu
c2lnbmVkIGxvbmcgaXJxZmxhZ3M7Cj4gPiAgCXUzMiBrZXltc2ssIGtleW1heDsKPiA+ICAJdTMy
IHBsYW5lX2N0bCA9IHBsYW5lX3N0YXRlLT5jdGw7Cj4gPiArCXU2NCBjY3ZhbCA9IHBsYW5lX3N0
YXRlLT5jY3ZhbDsKPiA+Cj4gPiAgCXBsYW5lX2N0bCB8PSBza2xfcGxhbmVfY3RsX2NydGMoY3J0
Y19zdGF0ZSk7Cj4gPgo+ID4gQEAgLTYzOSw2ICs2NDAsMTAgQEAgc2tsX3Byb2dyYW1fcGxhbmUo
c3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwKPiA+ICAJaWYgKGZiLT5mb3JtYXQtPmlzX3l1diAm
JiBpY2xfaXNfaGRyX3BsYW5lKGRldl9wcml2LCBwbGFuZV9pZCkpCj4gPiAgCQlpY2xfcHJvZ3Jh
bV9pbnB1dF9jc2MocGxhbmUsIGNydGNfc3RhdGUsIHBsYW5lX3N0YXRlKTsKPiA+Cj4gPiArCWlm
IChmYi0+bW9kaWZpZXIgPT0gSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTX0ND
KQo+ID4gKwkJaW50ZWxfdW5jb3JlX3dyaXRlNjRfZncoJmRldl9wcml2LT51bmNvcmUsCj4gPiAr
CQkJCQlQTEFORV9DQ19WQUwocGlwZSwgcGxhbmVfaWQpLCBjY3ZhbCk7Cj4gPiArCj4gPiAgCXNr
bF93cml0ZV9wbGFuZV93bShwbGFuZSwgY3J0Y19zdGF0ZSk7Cj4gPgo+ID4gIAlJOTE1X1dSSVRF
X0ZXKFBMQU5FX0tFWVZBTChwaXBlLCBwbGFuZV9pZCksIGtleS0+bWluX3ZhbHVlKTsgQEAKPiA+
IC0yMTA2LDcgKzIxMTEsOCBAQCBzdGF0aWMgaW50IHNrbF9wbGFuZV9jaGVja19mYihjb25zdCBz
dHJ1Y3QKPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+ID4gIAkgICAgIGZiLT5tb2Rp
ZmllciA9PSBJOTE1X0ZPUk1BVF9NT0RfWWZfVElMRUQgfHwKPiA+ICAJICAgICBmYi0+bW9kaWZp
ZXIgPT0gSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfQ0NTIHx8Cj4gPiAgCSAgICAgZmItPm1vZGlm
aWVyID09IEk5MTVfRk9STUFUX01PRF9ZZl9USUxFRF9DQ1MgfHwKPiA+IC0JICAgICBmYi0+bW9k
aWZpZXIgPT0gSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTKSkgewo+ID4gKwkg
ICAgIGZiLT5tb2RpZmllciA9PSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9SQ19DQ1Mg
fHwKPiA+ICsJICAgICBmYi0+bW9kaWZpZXIgPT0gSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VO
MTJfUkNfQ0NTX0NDKSkKPiB7Cj4gPiAgCQlEUk1fREVCVUdfS01TKCJZL1lmIHRpbGluZyBub3Qg
c3VwcG9ydGVkIGluIElGLUlEIG1vZGVcbiIpOwo+ID4gIAkJcmV0dXJuIC1FSU5WQUw7Cj4gPiAg
CX0KPiA+IEBAIC0yNTc5LDYgKzI1ODUsNyBAQCBzdGF0aWMgY29uc3QgdTY0Cj4gPiBza2xfcGxh
bmVfZm9ybWF0X21vZGlmaWVyc19jY3NbXSA9IHsKPiA+Cj4gPiAgc3RhdGljIGNvbnN0IHU2NCBn
ZW4xMl9wbGFuZV9mb3JtYXRfbW9kaWZpZXJzX2Njc1tdID0gewo+ID4gIAlJOTE1X0ZPUk1BVF9N
T0RfWV9USUxFRF9HRU4xMl9SQ19DQ1MsCj4gPiArCUk5MTVfRk9STUFUX01PRF9ZX1RJTEVEX0dF
TjEyX1JDX0NDU19DQywKPiA+ICAJSTkxNV9GT1JNQVRfTU9EX1lfVElMRUQsCj4gPiAgCUk5MTVf
Rk9STUFUX01PRF9YX1RJTEVELAo+ID4gIAlEUk1fRk9STUFUX01PRF9MSU5FQVIsCj4gPiBAQCAt
Mjc1MCw2ICsyNzU3LDcgQEAgc3RhdGljIGJvb2wKPiBnZW4xMl9wbGFuZV9mb3JtYXRfbW9kX3N1
cHBvcnRlZChzdHJ1Y3QgZHJtX3BsYW5lICpfcGxhbmUsCj4gPiAgCWNhc2UgSTkxNV9GT1JNQVRf
TU9EX1hfVElMRUQ6Cj4gPiAgCWNhc2UgSTkxNV9GT1JNQVRfTU9EX1lfVElMRUQ6Cj4gPiAgCWNh
c2UgSTkxNV9GT1JNQVRfTU9EX1lfVElMRURfR0VOMTJfUkNfQ0NTOgo+ID4gKwljYXNlIEk5MTVf
Rk9STUFUX01PRF9ZX1RJTEVEX0dFTjEyX1JDX0NDU19DQzoKPiA+ICAJCWJyZWFrOwo+ID4gIAlk
ZWZhdWx0Ogo+ID4gIAkJcmV0dXJuIGZhbHNlOwo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmgKPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aCBpbmRleCAyZTQ0NGExOGVkMGIuLjRhNjgzZGIyNjdjMQo+ID4gMTAwNjQ0Cj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oCj4gPiBAQCAtNjg0MCw2ICs2ODQwLDggQEAgZW51bSB7Cj4gPiAgI2Rl
ZmluZSBfUExBTkVfS0VZTUFYXzFfQQkJCTB4NzAxYTAKPiA+ICAjZGVmaW5lIF9QTEFORV9LRVlN
QVhfMl9BCQkJMHg3MDJhMAo+ID4gICNkZWZpbmUgIFBMQU5FX0tFWU1BWF9BTFBIQShhKQkJCSgo
YSkgPDwgMjQpCj4gPiArI2RlZmluZSBfUExBTkVfQ0NfVkFMXzFfQQkJCTB4NzAxYjQKPiA+ICsj
ZGVmaW5lIF9QTEFORV9DQ19WQUxfMl9BCQkJMHg3MDJiNAo+ID4gICNkZWZpbmUgX1BMQU5FX0FV
WF9ESVNUXzFfQQkJCTB4NzAxYzAKPiA+ICAjZGVmaW5lIF9QTEFORV9BVVhfRElTVF8yX0EJCQkw
eDcwMmMwCj4gPiAgI2RlZmluZSBfUExBTkVfQVVYX09GRlNFVF8xX0EJCQkweDcwMWM0Cj4gPiBA
QCAtNjg3OSw2ICs2ODgxLDE2IEBAIGVudW0gewo+ID4gICNkZWZpbmUgX1BMQU5FX05WMTJfQlVG
X0NGR18xX0EJCTB4NzAyNzgKPiA+ICAjZGVmaW5lIF9QTEFORV9OVjEyX0JVRl9DRkdfMl9BCQkw
eDcwMzc4Cj4gPgo+ID4gKyNkZWZpbmUgX1BMQU5FX0NDX1ZBTF8xX0IJCQkweDcxMWI0Cj4gPiAr
I2RlZmluZSBfUExBTkVfQ0NfVkFMXzJfQgkJCTB4NzEyYjQKPiA+ICsjZGVmaW5lIF9QTEFORV9D
Q19WQUxfMShwaXBlKQlfUElQRShwaXBlLCBfUExBTkVfQ0NfVkFMXzFfQSwKPiBfUExBTkVfQ0Nf
VkFMXzFfQikKPiA+ICsjZGVmaW5lIF9QTEFORV9DQ19WQUxfMihwaXBlKQlfUElQRShwaXBlLCBf
UExBTkVfQ0NfVkFMXzJfQSwKPiBfUExBTkVfQ0NfVkFMXzJfQikKPiA+ICsjZGVmaW5lIFBMQU5F
X0NDX1ZBTChwaXBlLCBwbGFuZSkJXAo+ID4gKwlfTU1JT19QTEFORShwbGFuZSwgX1BMQU5FX0ND
X1ZBTF8xKHBpcGUpLAo+IF9QTEFORV9DQ19WQUxfMihwaXBlKSkKPiA+ICsKPiA+ICsjZGVmaW5l
IENDX1ZBTF9MT1dFUl9PRkZTRVQJCTQKPiA+ICsjZGVmaW5lIENDX1ZBTF9ISUdIRVJfT0ZGU0VU
CQk1Cj4gPiArCj4gPiAgLyogSW5wdXQgQ1NDIFJlZ2lzdGVyIERlZmluaXRpb25zICovCj4gPiAg
I2RlZmluZSBfUExBTkVfSU5QVVRfQ1NDX1JZX0dZXzFfQQkweDcwMUUwCj4gPiAgI2RlZmluZSBf
UExBTkVfSU5QVVRfQ1NDX1JZX0dZXzJfQQkweDcwMkUwCj4gPiAtLQo+ID4gMi4yMC4xCj4gPgo+
IAo+IC0tCj4gTWF0dCBSb3Blcgo+IEdyYXBoaWNzIFNvZnR3YXJlIEVuZ2luZWVyCj4gVlRULU9T
R0MgUGxhdGZvcm0gRW5hYmxlbWVudAo+IEludGVsIENvcnBvcmF0aW9uCj4gKDkxNikgMzU2LTI3
OTUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
