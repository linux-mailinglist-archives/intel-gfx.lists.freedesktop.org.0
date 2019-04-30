Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA3AF962
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 14:59:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E65389012;
	Tue, 30 Apr 2019 12:59:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7734189012
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 12:59:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 05:59:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,413,1549958400"; d="scan'208";a="166258487"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga002.fm.intel.com with ESMTP; 30 Apr 2019 05:59:55 -0700
Received: from fmsmsx155.amr.corp.intel.com (10.18.116.71) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Tue, 30 Apr 2019 05:59:55 -0700
Received: from bgsmsx105.gar.corp.intel.com (10.223.43.197) by
 FMSMSX155.amr.corp.intel.com (10.18.116.71) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Tue, 30 Apr 2019 05:59:54 -0700
Received: from bgsmsx110.gar.corp.intel.com ([169.254.11.75]) by
 BGSMSX105.gar.corp.intel.com ([169.254.3.180]) with mapi id 14.03.0415.000;
 Tue, 30 Apr 2019 18:29:52 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [v2 2/3] drm/i915: Fix pipe config mismatch for
 bpp, output format
Thread-Index: AQHU/zAgh/3Xmft+DEeumXs1QEnbFaZUFPGAgACNmZD//6g1AIAAW/3Q
Date: Tue, 30 Apr 2019 12:59:51 +0000
Message-ID: <57510F3E2013164E925CD03ED7512A3B7FEEE30D@BGSMSX110.gar.corp.intel.com>
References: <1556612275-16608-1-git-send-email-vandita.kulkarni@intel.com>
 <1556612275-16608-2-git-send-email-vandita.kulkarni@intel.com>
 <875zqvrg62.fsf@intel.com>
 <57510F3E2013164E925CD03ED7512A3B7FEEE20A@BGSMSX110.gar.corp.intel.com>
 <87v9yvpson.fsf@intel.com>
In-Reply-To: <87v9yvpson.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZmJhZGExMjktM2M4My00MjMzLTg0OTgtYjQ3NjU3ZTM2ZmI3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJyakt5TmtIMFcxYW8zb1VrajVlWkN3djlycWFqS0RqR1lDbFwvWXJkMEtYcWNPNk9ucnloR01NZDJXUlF4akxVaCJ9
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
dDogVHVlc2RheSwgQXByaWwgMzAsIDIwMTkgNjoxNiBQTQo+IFRvOiBLdWxrYXJuaSwgVmFuZGl0
YSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+OyBpbnRlbC0KPiBnZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCj4gQ2M6IFN5cmphbGEsIFZpbGxlIDx2aWxsZS5zeXJqYWxhQGludGVsLmNvbT4K
PiBTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW3YyIDIvM10gZHJtL2k5MTU6IEZpeCBwaXBlIGNv
bmZpZyBtaXNtYXRjaCBmb3IgYnBwLAo+IG91dHB1dCBmb3JtYXQKPiAKPiBPbiBUdWUsIDMwIEFw
ciAyMDE5LCAiS3Vsa2FybmksIFZhbmRpdGEiIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4g
d3JvdGU6Cj4gPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+PiBGcm9tOiBOaWt1bGEs
IEphbmkKPiA+PiBTZW50OiBUdWVzZGF5LCBBcHJpbCAzMCwgMjAxOSAzOjAzIFBNCj4gPj4gVG86
IEt1bGthcm5pLCBWYW5kaXRhIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT47IGludGVsLQo+
ID4+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+PiBDYzogU3lyamFsYSwgVmlsbGUgPHZp
bGxlLnN5cmphbGFAaW50ZWwuY29tPjsgU2hhbmthciwgVW1hCj4gPj4gPHVtYS5zaGFua2FyQGlu
dGVsLmNvbT47IEt1bGthcm5pLCBWYW5kaXRhCj4gPj4gPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwu
Y29tPgo+ID4+IFN1YmplY3Q6IFJlOiBbdjIgMi8zXSBkcm0vaTkxNTogRml4IHBpcGUgY29uZmln
IG1pc21hdGNoIGZvciBicHAsCj4gPj4gb3V0cHV0IGZvcm1hdAo+ID4+Cj4gPj4gT24gVHVlLCAz
MCBBcHIgMjAxOSwgVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+
IHdyb3RlOgo+ID4+ID4gUmVhZCBiYWNrIHRoZSBwaXhlbCBmb21yYXQgcmVnaXN0ZXIgYW5kIGdl
dCB0aGUgYnBwLgo+ID4+ID4KPiA+PiA+IHYyOiBSZWFkIHRoZSBQSVBFX01JU0MgcmVnaXN0ZXIg
KEphbmkpLgo+ID4+ID4KPiA+PiA+IFNpZ25lZC1vZmYtYnk6IFZhbmRpdGEgS3Vsa2FybmkgPHZh
bmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPgo+ID4+ID4gLS0tCj4gPj4gPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaWNsX2RzaS5jICAgfCAzICsrKwo+ID4+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2RzaS5oIHwgMSArCj4gPj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvdmx2X2RzaS5j
ICAgfCAyICstCj4gPj4gPiAgMyBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEgZGVs
ZXRpb24oLSkKPiA+PiA+Cj4gPj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aWNsX2RzaS5jCj4gPj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ljbF9kc2kuYyBpbmRleCBk
YmIyNzEyLi41Y2M1OGIyIDEwMDY0NAo+ID4+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aWNsX2RzaS5jCj4gPj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pY2xfZHNpLmMKPiA+
PiA+IEBAIC0xMjI2LDYgKzEyMjYsNyBAQCBzdGF0aWMgdm9pZCBnZW4xMV9kc2lfZ2V0X2NvbmZp
ZyhzdHJ1Y3QKPiA+PiA+IGludGVsX2VuY29kZXIgKmVuY29kZXIsICB7Cj4gPj4gPiAgCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYp
Owo+ID4+ID4gIAlzdHJ1Y3QgaW50ZWxfZHNpICppbnRlbF9kc2kgPSBlbmNfdG9faW50ZWxfZHNp
KCZlbmNvZGVyLT5iYXNlKTsKPiA+PiA+ICsJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19p
bnRlbF9jcnRjKHBpcGVfY29uZmlnLT5iYXNlLmNydGMpOwo+ID4+ID4KPiA+PiA+ICAJLyogRklY
TUU6IGFkYXB0IGljbF9kZGlfY2xvY2tfZ2V0KCkgZm9yIERTSSBhbmQgdXNlIHRoYXQ/ICovCj4g
Pj4gPiAgCXBpcGVfY29uZmlnLT5wb3J0X2Nsb2NrID0KPiA+PiA+IEBAIC0xMjMzLDYgKzEyMzQs
NyBAQCBzdGF0aWMgdm9pZCBnZW4xMV9kc2lfZ2V0X2NvbmZpZyhzdHJ1Y3QKPiA+PiBpbnRlbF9l
bmNvZGVyICplbmNvZGVyLAo+ID4+ID4gIAlwaXBlX2NvbmZpZy0+YmFzZS5hZGp1c3RlZF9tb2Rl
LmNydGNfY2xvY2sgPSBpbnRlbF9kc2ktPnBjbGs7Cj4gPj4gPiAgCWdlbjExX2RzaV9nZXRfdGlt
aW5ncyhlbmNvZGVyLCBwaXBlX2NvbmZpZyk7Cj4gPj4gPiAgCXBpcGVfY29uZmlnLT5vdXRwdXRf
dHlwZXMgfD0gQklUKElOVEVMX09VVFBVVF9EU0kpOwo+ID4+ID4gKwlwaXBlX2NvbmZpZy0+cGlw
ZV9icHAgPSBiZHdfZ2V0X3BpcGVtaXNjX2JwcChjcnRjKTsKPiA+PiA+ICB9Cj4gPj4gPgo+ID4+
ID4gIHN0YXRpYyBpbnQgZ2VuMTFfZHNpX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyLAo+ID4+ID4gQEAKPiA+PiA+IC0xMjQ4LDYgKzEyNTAsNyBAQCBzdGF0aWMg
aW50IGdlbjExX2RzaV9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QKPiA+PiBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyLAo+ID4+ID4gIAlzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqYWRqdXN0ZWRfbW9kZSA9
Cj4gPj4gPiAgCQkJCQkmcGlwZV9jb25maWctPmJhc2UuYWRqdXN0ZWRfbW9kZTsKPiA+PiA+Cj4g
Pj4gPiArCXBpcGVfY29uZmlnLT5vdXRwdXRfZm9ybWF0ID0gSU5URUxfT1VUUFVUX0ZPUk1BVF9S
R0I7Cj4gPj4gPiAgCWludGVsX2ZpeGVkX3BhbmVsX21vZGUoZml4ZWRfbW9kZSwgYWRqdXN0ZWRf
bW9kZSk7Cj4gPj4gPiAgCWludGVsX3BjaF9wYW5lbF9maXR0aW5nKGNydGMsIHBpcGVfY29uZmln
LAo+ID4+ID4gY29ubl9zdGF0ZS0+c2NhbGluZ19tb2RlKTsKPiA+PiA+Cj4gPj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHNpLmgKPiA+PiA+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZHNpLmgKPiA+PiA+IGluZGV4IDcwNWE2MDkuLmNiOWUzYjkgMTAw
NjQ0Cj4gPj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kc2kuaAo+ID4+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHNpLmgKPiA+PiA+IEBAIC0xNjYsNiAr
MTY2LDcgQEAgZW51bSBkcm1fbW9kZV9zdGF0dXMKPiA+PiA+IGludGVsX2RzaV9tb2RlX3ZhbGlk
KHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsICBzdHJ1Y3QKPiA+PiA+IGludGVsX2Rz
aV9ob3N0ICppbnRlbF9kc2lfaG9zdF9pbml0KHN0cnVjdAo+ID4+IGludGVsX2RzaSAqaW50ZWxf
ZHNpLAo+ID4+ID4gIAkJCQkJICAgY29uc3Qgc3RydWN0IG1pcGlfZHNpX2hvc3Rfb3BzCj4gPj4g
KmZ1bmNzLAo+ID4+ID4gIAkJCQkJICAgZW51bSBwb3J0IHBvcnQpOwo+ID4+ID4gK2ludCBiZHdf
Z2V0X3BpcGVtaXNjX2JwcChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7Cj4gPj4KPiA+PiBVbnRp
bCBub3cgdGhpcyB3YXMgaW50ZXJuYWwgdG8gdmx2X2RzaS5jIGFuZCBpdCB3YXMgZmluZS4gTm93
LCBJCj4gPj4gdGhpbmsgSSdkIG1vdmUgdGhpcyB0byBpbnRlbF9kaXNwbGF5LmMgYWxvbmdzaWRl
IGhhc3dlbGxfc2V0X3BpcGVtaXNjLgo+ID4gT2ssIHNvIEkgbGwgbW92ZSB0aGpzIHRvIGludGVs
X2Rpc3BsYXkuYyBhbmQgY2FsbCBpdCBmcm9tCj4gPiBoYXN3ZWxsX2dldF9waXBlX2NvbmZpZyBm
b3IgaXNfZHNpIGFuZCBnZW4gPj0gOQo+IAo+IEknZCBhY3R1YWxseSBwcmVmZXIgdG8gY2FsbCBp
dCBmcm9tIGRzaSBlbmNvZGVyIGNvZGUgaW5zdGVhZC4KT2suIFdpbGwgZG8gdGhhdC4KClRoYW5r
cywKVmFuZGl0YQoKPiAKPiBCUiwKPiBKYW5pLgo+IAo+ID4gVGhhbmtzLAo+ID4gVmFuZGl0YQo+
ID4+Cj4gPj4gVmlsbGUgYWxyZWFkeSBoYXMgcGF0Y2hlcyB0byByZW5hbWUgaGFzd2VsbF9zZXRf
cGlwZW1pc2MgdG8KPiBiZHdfc2V0X3BpcGVtaXNjLgo+ID4+Cj4gPj4gQlIsCj4gPj4gSmFuaS4K
PiA+Pgo+ID4+Cj4gPj4gPgo+ID4+ID4gIC8qIHZsdl9kc2lfcGxsLmMgKi8KPiA+PiA+ICBpbnQg
dmx2X2RzaV9wbGxfY29tcHV0ZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwgZGlmZiAt
LWdpdAo+ID4+ID4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS92bHZfZHNpLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS92bHZfZHNpLmMKPiA+PiA+IGluZGV4IGI0YzY1ODMuLjc5MGFkYTggMTAwNjQ0
Cj4gPj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS92bHZfZHNpLmMKPiA+PiA+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L3Zsdl9kc2kuYwo+ID4+ID4gQEAgLTI2MCw3ICsyNjAsNyBA
QCBzdGF0aWMgdm9pZCBiYW5kX2dhcF9yZXNldChzdHJ1Y3QKPiA+PiA+IGRybV9pOTE1X3ByaXZh
dGUKPiA+PiAqZGV2X3ByaXYpCj4gPj4gPiAgCXZsdl9mbGlzZHNpX3B1dChkZXZfcHJpdik7Cj4g
Pj4gPiAgfQo+ID4+ID4KPiA+PiA+IC1zdGF0aWMgaW50IGJkd19nZXRfcGlwZW1pc2NfYnBwKHN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjKQo+ID4+ID4gK2ludCBiZHdfZ2V0X3BpcGVtaXNjX2JwcChz
dHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKPiA+PiA+ICB7Cj4gPj4gPiAgCXN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwo+ID4+ID4gIAl1
MzIgdG1wOwo+ID4+Cj4gPj4gLS0KPiA+PiBKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2Ug
R3JhcGhpY3MgQ2VudGVyCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+ID4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+ID4gSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwo+ID4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngKPiAKPiAtLQo+IEphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNv
dXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
