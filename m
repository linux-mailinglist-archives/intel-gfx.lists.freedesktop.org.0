Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E8A7F909
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 14:39:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A07B7891C2;
	Tue, 30 Apr 2019 12:39:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91F1D891C2
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 12:39:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 05:39:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,413,1549958400"; d="scan'208";a="166254851"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by fmsmga002.fm.intel.com with ESMTP; 30 Apr 2019 05:39:51 -0700
Received: from fmsmsx114.amr.corp.intel.com (10.18.116.8) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Tue, 30 Apr 2019 05:39:50 -0700
Received: from bgsmsx102.gar.corp.intel.com (10.223.4.172) by
 FMSMSX114.amr.corp.intel.com (10.18.116.8) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Tue, 30 Apr 2019 05:39:50 -0700
Received: from bgsmsx110.gar.corp.intel.com ([169.254.11.75]) by
 BGSMSX102.gar.corp.intel.com ([169.254.2.128]) with mapi id 14.03.0415.000;
 Tue, 30 Apr 2019 18:09:47 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [v2 2/3] drm/i915: Fix pipe config mismatch for bpp, output
 format
Thread-Index: AQHU/zAgh/3Xmft+DEeumXs1QEnbFaZUFPGAgACNmZA=
Date: Tue, 30 Apr 2019 12:39:47 +0000
Message-ID: <57510F3E2013164E925CD03ED7512A3B7FEEE20A@BGSMSX110.gar.corp.intel.com>
References: <1556612275-16608-1-git-send-email-vandita.kulkarni@intel.com>
 <1556612275-16608-2-git-send-email-vandita.kulkarni@intel.com>
 <875zqvrg62.fsf@intel.com>
In-Reply-To: <875zqvrg62.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYjdhZDAxYTctNDAyMy00ZWI4LWIwOWYtYjZmMDI2OTFhOTI3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiIzZnNcLzQ0a0tRenRZK05DNTlvMzJaQ0NvNGdqRjdVR21rblQ0WDFkOFpYWkhOelBIZlN4eGhsUjdIaWVoMVZsTSJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v2 2/3] drm/i915: Fix pipe config mismatch for bpp,
 output format
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cgo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gRnJvbTogTmlrdWxhLCBKYW5pCj4gU2Vu
dDogVHVlc2RheSwgQXByaWwgMzAsIDIwMTkgMzowMyBQTQo+IFRvOiBLdWxrYXJuaSwgVmFuZGl0
YSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+OyBpbnRlbC0KPiBnZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCj4gQ2M6IFN5cmphbGEsIFZpbGxlIDx2aWxsZS5zeXJqYWxhQGludGVsLmNvbT47
IFNoYW5rYXIsIFVtYQo+IDx1bWEuc2hhbmthckBpbnRlbC5jb20+OyBLdWxrYXJuaSwgVmFuZGl0
YSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+Cj4gU3ViamVjdDogUmU6IFt2MiAyLzNdIGRy
bS9pOTE1OiBGaXggcGlwZSBjb25maWcgbWlzbWF0Y2ggZm9yIGJwcCwgb3V0cHV0IGZvcm1hdAo+
IAo+IE9uIFR1ZSwgMzAgQXByIDIwMTksIFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2Fy
bmlAaW50ZWwuY29tPiB3cm90ZToKPiA+IFJlYWQgYmFjayB0aGUgcGl4ZWwgZm9tcmF0IHJlZ2lz
dGVyIGFuZCBnZXQgdGhlIGJwcC4KPiA+Cj4gPiB2MjogUmVhZCB0aGUgUElQRV9NSVNDIHJlZ2lz
dGVyIChKYW5pKS4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5k
aXRhLmt1bGthcm5pQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2ljbF9kc2kuYyAgIHwgMyArKysKPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kc2ku
aCB8IDEgKwo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3Zsdl9kc2kuYyAgIHwgMiArLQo+ID4g
IDMgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPgo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ljbF9kc2kuYwo+ID4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pY2xfZHNpLmMgaW5kZXggZGJiMjcxMi4uNWNjNThiMiAxMDA2NDQKPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ljbF9kc2kuYwo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaWNsX2RzaS5jCj4gPiBAQCAtMTIyNiw2ICsxMjI2LDcgQEAgc3RhdGljIHZv
aWQgZ2VuMTFfZHNpX2dldF9jb25maWcoc3RydWN0Cj4gPiBpbnRlbF9lbmNvZGVyICplbmNvZGVy
LCAgewo+ID4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVu
Y29kZXItPmJhc2UuZGV2KTsKPiA+ICAJc3RydWN0IGludGVsX2RzaSAqaW50ZWxfZHNpID0gZW5j
X3RvX2ludGVsX2RzaSgmZW5jb2Rlci0+YmFzZSk7Cj4gPiArCXN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjID0gdG9faW50ZWxfY3J0YyhwaXBlX2NvbmZpZy0+YmFzZS5jcnRjKTsKPiA+Cj4gPiAgCS8q
IEZJWE1FOiBhZGFwdCBpY2xfZGRpX2Nsb2NrX2dldCgpIGZvciBEU0kgYW5kIHVzZSB0aGF0PyAq
Lwo+ID4gIAlwaXBlX2NvbmZpZy0+cG9ydF9jbG9jayA9Cj4gPiBAQCAtMTIzMyw2ICsxMjM0LDcg
QEAgc3RhdGljIHZvaWQgZ2VuMTFfZHNpX2dldF9jb25maWcoc3RydWN0Cj4gaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlciwKPiA+ICAJcGlwZV9jb25maWctPmJhc2UuYWRqdXN0ZWRfbW9kZS5jcnRjX2Ns
b2NrID0gaW50ZWxfZHNpLT5wY2xrOwo+ID4gIAlnZW4xMV9kc2lfZ2V0X3RpbWluZ3MoZW5jb2Rl
ciwgcGlwZV9jb25maWcpOwo+ID4gIAlwaXBlX2NvbmZpZy0+b3V0cHV0X3R5cGVzIHw9IEJJVChJ
TlRFTF9PVVRQVVRfRFNJKTsKPiA+ICsJcGlwZV9jb25maWctPnBpcGVfYnBwID0gYmR3X2dldF9w
aXBlbWlzY19icHAoY3J0Yyk7Cj4gPiAgfQo+ID4KPiA+ICBzdGF0aWMgaW50IGdlbjExX2RzaV9j
b21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwgQEAKPiA+IC0xMjQ4
LDYgKzEyNTAsNyBAQCBzdGF0aWMgaW50IGdlbjExX2RzaV9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QK
PiBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+ID4gIAlzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAq
YWRqdXN0ZWRfbW9kZSA9Cj4gPiAgCQkJCQkmcGlwZV9jb25maWctPmJhc2UuYWRqdXN0ZWRfbW9k
ZTsKPiA+Cj4gPiArCXBpcGVfY29uZmlnLT5vdXRwdXRfZm9ybWF0ID0gSU5URUxfT1VUUFVUX0ZP
Uk1BVF9SR0I7Cj4gPiAgCWludGVsX2ZpeGVkX3BhbmVsX21vZGUoZml4ZWRfbW9kZSwgYWRqdXN0
ZWRfbW9kZSk7Cj4gPiAgCWludGVsX3BjaF9wYW5lbF9maXR0aW5nKGNydGMsIHBpcGVfY29uZmln
LAo+ID4gY29ubl9zdGF0ZS0+c2NhbGluZ19tb2RlKTsKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHNpLmgKPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZHNpLmgKPiA+IGluZGV4IDcwNWE2MDkuLmNiOWUzYjkgMTAwNjQ0Cj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kc2kuaAo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZHNpLmgKPiA+IEBAIC0xNjYsNiArMTY2LDcgQEAgZW51bSBkcm1fbW9kZV9z
dGF0dXMgaW50ZWxfZHNpX21vZGVfdmFsaWQoc3RydWN0Cj4gPiBkcm1fY29ubmVjdG9yICpjb25u
ZWN0b3IsICBzdHJ1Y3QgaW50ZWxfZHNpX2hvc3QgKmludGVsX2RzaV9ob3N0X2luaXQoc3RydWN0
Cj4gaW50ZWxfZHNpICppbnRlbF9kc2ksCj4gPiAgCQkJCQkgICBjb25zdCBzdHJ1Y3QgbWlwaV9k
c2lfaG9zdF9vcHMKPiAqZnVuY3MsCj4gPiAgCQkJCQkgICBlbnVtIHBvcnQgcG9ydCk7Cj4gPiAr
aW50IGJkd19nZXRfcGlwZW1pc2NfYnBwKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsKPiAKPiBV
bnRpbCBub3cgdGhpcyB3YXMgaW50ZXJuYWwgdG8gdmx2X2RzaS5jIGFuZCBpdCB3YXMgZmluZS4g
Tm93LCBJIHRoaW5rIEknZCBtb3ZlIHRoaXMKPiB0byBpbnRlbF9kaXNwbGF5LmMgYWxvbmdzaWRl
IGhhc3dlbGxfc2V0X3BpcGVtaXNjLgpPaywgc28gSSBsbCBtb3ZlIHRoanMgdG8gaW50ZWxfZGlz
cGxheS5jIGFuZCBjYWxsIGl0IGZyb20gaGFzd2VsbF9nZXRfcGlwZV9jb25maWcgZm9yIGlzX2Rz
aSBhbmQgZ2VuID49IDkKVGhhbmtzLApWYW5kaXRhCj4gCj4gVmlsbGUgYWxyZWFkeSBoYXMgcGF0
Y2hlcyB0byByZW5hbWUgaGFzd2VsbF9zZXRfcGlwZW1pc2MgdG8gYmR3X3NldF9waXBlbWlzYy4K
PiAKPiBCUiwKPiBKYW5pLgo+IAo+IAo+ID4KPiA+ICAvKiB2bHZfZHNpX3BsbC5jICovCj4gPiAg
aW50IHZsdl9kc2lfcGxsX2NvbXB1dGUoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsIGRp
ZmYgLS1naXQKPiA+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvdmx2X2RzaS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvdmx2X2RzaS5jCj4gPiBpbmRleCBiNGM2NTgzLi43OTBhZGE4IDEwMDY0NAo+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvdmx2X2RzaS5jCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS92bHZfZHNpLmMKPiA+IEBAIC0yNjAsNyArMjYwLDcgQEAgc3RhdGljIHZv
aWQgYmFuZF9nYXBfcmVzZXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUKPiAqZGV2X3ByaXYpCj4g
PiAgCXZsdl9mbGlzZHNpX3B1dChkZXZfcHJpdik7Cj4gPiAgfQo+ID4KPiA+IC1zdGF0aWMgaW50
IGJkd19nZXRfcGlwZW1pc2NfYnBwKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQo+ID4gK2ludCBi
ZHdfZ2V0X3BpcGVtaXNjX2JwcChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKPiA+ICB7Cj4gPiAg
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5k
ZXYpOwo+ID4gIAl1MzIgdG1wOwo+IAo+IC0tCj4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291
cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
