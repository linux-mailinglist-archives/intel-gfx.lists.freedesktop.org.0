Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC9D5CF90
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 14:36:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAB7489C1E;
	Tue,  2 Jul 2019 12:36:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D62E489A08;
 Tue,  2 Jul 2019 12:36:11 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jul 2019 05:36:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,443,1557212400"; d="scan'208";a="164014279"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 02 Jul 2019 05:36:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Jul 2019 15:36:08 +0300
Date: Tue, 2 Jul 2019 15:36:08 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Oleg Vasilev <oleg.vasilev@intel.com>
Message-ID: <20190702123608.GN5942@intel.com>
References: <20190701080022.9415-1-oleg.vasilev@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190701080022.9415-1-oleg.vasilev@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm: report dp downstream port type as
 a subconnector property
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBKdWwgMDEsIDIwMTkgYXQgMTE6MDA6MjFBTSArMDMwMCwgT2xlZyBWYXNpbGV2IHdy
b3RlOgo+IEN1cnJlbnRseSwgZG93bnN0cmVhbSBwb3J0IHR5cGUgaXMgb25seSByZXBvcnRlZCBp
biBkZWJ1Z2ZzLiBUaGlzCj4gaW5mb3JtYXRpb24gc2hvdWxkIGJlIGNvbnNpZGVyZWQgaW1wb3J0
YW50IHNpbmNlIGl0IHJlZmxlY3RzIHRoZSBhY3R1YWwKPiBwaHlzaWNhbCBjb25uZWN0b3IgdHlw
ZS4gU29tZSB1c2Vyc3BhY2UgKGUuZy4gd2luZG93IGNvbXBvc2l0b3JzKQo+IG1heSB3YW50IHRv
IHNob3cgdGhpcyBpbmZvIHRvIGEgdXNlci4KPiAKPiBUaGUgJ3N1YmNvbm5lY3RvcicgcHJvcGVy
dHkgaXMgYWxyZWFkeSB1dGlsaXplZCBmb3IgRFZJLUkgYW5kIFRWLW91dCBmb3IKPiByZXBvcnRp
bmcgY29ubmVjdG9yIHN1YnR5cGUuCj4gCj4gVGhlIGluaXRpYWwgbW90aXZhdGlvbiBmb3IgdGhp
cyBmZWF0dXJlIGNhbWUgZnJvbSBpMmMgdGVzdCBbMV0uCj4gSXQgaXMgc3VwcG9zZWQgdG8gYmUg
c2tpcHBlZCBvbiBWR0EgY29ubmVjdG9ycywgYnV0IGl0IGNhbm5vdAo+IGRldGVjdCBWR0Egb3Zl
ciBEUCBhbmQgZmFpbHMgaW5zdGVhZC4KPiAKPiBbMV06IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTEwNDA5Nwo+IFNpZ25lZC1vZmYtYnk6IE9sZWcgVmFzaWxl
diA8b2xlZy52YXNpbGV2QGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2RybV9j
b25uZWN0b3IuYyB8IDM4ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLQo+ICBkcml2
ZXJzL2dwdS9kcm0vZHJtX2RwX2hlbHBlci5jIHwgMzYgKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKwo+ICBpbmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmggICAgIHwgIDIgKysKPiAgaW5j
bHVkZS9kcm0vZHJtX2RwX2hlbHBlci5oICAgICB8ICAzICsrKwo+ICBpbmNsdWRlL2RybS9kcm1f
bW9kZV9jb25maWcuaCAgIHwgIDYgKysrKysrCj4gIGluY2x1ZGUvdWFwaS9kcm0vZHJtX21vZGUu
aCAgICAgfCAyMiArKysrKysrKysrKystLS0tLS0tCj4gIDYgZmlsZXMgY2hhbmdlZCwgOTcgaW5z
ZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9kcm1fY29ubmVjdG9yLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2Nvbm5lY3Rvci5jCj4g
aW5kZXggMDY4ZDRiMDVmMWJlLi45NWNkNTEyNTRiZTYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2RybV9jb25uZWN0b3IuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fY29ubmVj
dG9yLmMKPiBAQCAtNzkzLDcgKzc5Myw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX3Byb3Bf
ZW51bV9saXN0IGRybV9kdmlfaV9zZWxlY3RfZW51bV9saXN0W10gPSB7Cj4gIERSTV9FTlVNX05B
TUVfRk4oZHJtX2dldF9kdmlfaV9zZWxlY3RfbmFtZSwgZHJtX2R2aV9pX3NlbGVjdF9lbnVtX2xp
c3QpCj4gIAo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9wcm9wX2VudW1fbGlzdCBkcm1fZHZp
X2lfc3ViY29ubmVjdG9yX2VudW1fbGlzdFtdID0gewo+IC0JeyBEUk1fTU9ERV9TVUJDT05ORUNU
T1JfVW5rbm93biwgICAiVW5rbm93biIgICB9LCAvKiBEVkktSSBhbmQgVFYtb3V0ICovCj4gKwl7
IERSTV9NT0RFX1NVQkNPTk5FQ1RPUl9Vbmtub3duLCAgICJVbmtub3duIiAgIH0sIC8qIERWSS1J
LCBUVi1vdXQgYW5kIERQICovCj4gIAl7IERSTV9NT0RFX1NVQkNPTk5FQ1RPUl9EVklELCAgICAg
ICJEVkktRCIgICAgIH0sIC8qIERWSS1JICAqLwo+ICAJeyBEUk1fTU9ERV9TVUJDT05ORUNUT1Jf
RFZJQSwgICAgICAiRFZJLUEiICAgICB9LCAvKiBEVkktSSAgKi8KPiAgfTsKPiBAQCAtODEwLDcg
KzgxMCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX3Byb3BfZW51bV9saXN0IGRybV90dl9z
ZWxlY3RfZW51bV9saXN0W10gPSB7Cj4gIERSTV9FTlVNX05BTUVfRk4oZHJtX2dldF90dl9zZWxl
Y3RfbmFtZSwgZHJtX3R2X3NlbGVjdF9lbnVtX2xpc3QpCj4gIAo+ICBzdGF0aWMgY29uc3Qgc3Ry
dWN0IGRybV9wcm9wX2VudW1fbGlzdCBkcm1fdHZfc3ViY29ubmVjdG9yX2VudW1fbGlzdFtdID0g
ewo+IC0JeyBEUk1fTU9ERV9TVUJDT05ORUNUT1JfVW5rbm93biwgICAiVW5rbm93biIgICB9LCAv
KiBEVkktSSBhbmQgVFYtb3V0ICovCj4gKwl7IERSTV9NT0RFX1NVQkNPTk5FQ1RPUl9Vbmtub3du
LCAgICJVbmtub3duIiAgIH0sIC8qIERWSS1JLCBUVi1vdXQgYW5kIERQICovCj4gIAl7IERSTV9N
T0RFX1NVQkNPTk5FQ1RPUl9Db21wb3NpdGUsICJDb21wb3NpdGUiIH0sIC8qIFRWLW91dCAqLwo+
ICAJeyBEUk1fTU9ERV9TVUJDT05ORUNUT1JfU1ZJREVPLCAgICAiU1ZJREVPIiAgICB9LCAvKiBU
Vi1vdXQgKi8KPiAgCXsgRFJNX01PREVfU1VCQ09OTkVDVE9SX0NvbXBvbmVudCwgIkNvbXBvbmVu
dCIgfSwgLyogVFYtb3V0ICovCj4gQEAgLTgxOSw2ICs4MTksMTkgQEAgc3RhdGljIGNvbnN0IHN0
cnVjdCBkcm1fcHJvcF9lbnVtX2xpc3QgZHJtX3R2X3N1YmNvbm5lY3Rvcl9lbnVtX2xpc3RbXSA9
IHsKPiAgRFJNX0VOVU1fTkFNRV9GTihkcm1fZ2V0X3R2X3N1YmNvbm5lY3Rvcl9uYW1lLAo+ICAJ
CSBkcm1fdHZfc3ViY29ubmVjdG9yX2VudW1fbGlzdCkKPiAgCj4gK3N0YXRpYyBjb25zdCBzdHJ1
Y3QgZHJtX3Byb3BfZW51bV9saXN0IGRybV9kcF9zdWJjb25uZWN0b3JfZW51bV9saXN0W10gPSB7
Cj4gKwl7IERSTV9NT0RFX1NVQkNPTk5FQ1RPUl9Vbmtub3duLCAgICJVbmtub3duIiAgIH0sIC8q
IERWSS1JLCBUVi1vdXQgYW5kIERQICovCj4gKwl7IERSTV9NT0RFX1NVQkNPTk5FQ1RPUl9WR0Es
CSAgICJWR0EiICAgICAgIH0sIC8qIERQICovCj4gKwl7IERSTV9NT0RFX1NVQkNPTk5FQ1RPUl9E
VkksCSAgICJEVkkiICAgICAgIH0sIC8qIERQICovCj4gKwl7IERSTV9NT0RFX1NVQkNPTk5FQ1RP
Ul9IRE1JLAkgICAiSERNSSIgICAgICB9LCAvKiBEUCAqLwo+ICsJeyBEUk1fTU9ERV9TVUJDT05O
RUNUT1JfRFAsICAgICAgICAiRFAiICAgICAgICB9LCAvKiBEUCAqLwo+ICsJeyBEUk1fTU9ERV9T
VUJDT05ORUNUT1JfV2lyZWxlc3MsICAiV2lyZWxlc3MiICB9LCAvKiBEUCAqLwo+ICsJeyBEUk1f
TU9ERV9TVUJDT05ORUNUT1JfTmF0aXZlLAkgICAiTmF0aXZlIiAgICB9LCAvKiBEUCAqLwo+ICt9
Owo+ICsKPiArRFJNX0VOVU1fTkFNRV9GTihkcm1fZ2V0X2RwX3N1YmNvbm5lY3Rvcl9uYW1lLAo+
ICsJCSBkcm1fZHBfc3ViY29ubmVjdG9yX2VudW1fbGlzdCkKPiArCj4gIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgZHJtX3Byb3BfZW51bV9saXN0IGhkbWlfY29sb3JzcGFjZXNbXSA9IHsKPiAgCS8qIEZv
ciBEZWZhdWx0IGNhc2UsIGRyaXZlciB3aWxsIHNldCB0aGUgY29sb3JzcGFjZSAqLwo+ICAJeyBE
Uk1fTU9ERV9DT0xPUklNRVRSWV9ERUZBVUxULCAiRGVmYXVsdCIgfSwKPiBAQCAtMTEyOCw2ICsx
MTQxLDI3IEBAIGludCBkcm1fbW9kZV9jcmVhdGVfZHZpX2lfcHJvcGVydGllcyhzdHJ1Y3QgZHJt
X2RldmljZSAqZGV2KQo+ICB9Cj4gIEVYUE9SVF9TWU1CT0woZHJtX21vZGVfY3JlYXRlX2R2aV9p
X3Byb3BlcnRpZXMpOwo+ICAKPiArLyoqCj4gKyAqIGRybV9tb2RlX2NyZWF0ZV9kcF9wcm9wZXJ0
aWVzIC0gY3JlYXRlIERQIHNwZWNpZmljIGNvbm5lY3RvciBwcm9wZXJ0aWVzCj4gKyAqIEBkZXY6
IERSTSBkZXZpY2UKPiArICoKPiArICogQ2FsbGVkIGJ5IGEgZHJpdmVyIHRoZSBmaXJzdCB0aW1l
IGEgRFAgY29ubmVjdG9yIGlzIG1hZGUuCj4gKyAqLwo+ICt2b2lkIGRybV9tb2RlX2NyZWF0ZV9k
cF9wcm9wZXJ0aWVzKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCj4gK3sKPiArCXN0cnVjdCBkcm1f
cHJvcGVydHkgKmRwX3N1YmNvbm5lY3RvcjsKPiArCj4gKwlpZiAoZGV2LT5tb2RlX2NvbmZpZy5k
cF9zdWJjb25uZWN0b3JfcHJvcGVydHkpCj4gKwkJcmV0dXJuOwo+ICsKPiArCWRwX3N1YmNvbm5l
Y3RvciA9IGRybV9wcm9wZXJ0eV9jcmVhdGVfZW51bShkZXYsIERSTV9NT0RFX1BST1BfSU1NVVRB
QkxFLAo+ICsJCQkJCQkgICAic3ViY29ubmVjdG9yIiwKPiArCQkJCQkJICAgZHJtX2RwX3N1YmNv
bm5lY3Rvcl9lbnVtX2xpc3QsCj4gKwkJCQkJCSAgIEFSUkFZX1NJWkUoZHJtX2RwX3N1YmNvbm5l
Y3Rvcl9lbnVtX2xpc3QpKTsKPiArCWRldi0+bW9kZV9jb25maWcuZHBfc3ViY29ubmVjdG9yX3By
b3BlcnR5ID0gZHBfc3ViY29ubmVjdG9yOwo+ICt9Cj4gK0VYUE9SVF9TWU1CT0woZHJtX21vZGVf
Y3JlYXRlX2RwX3Byb3BlcnRpZXMpOwo+ICsKPiAgLyoqCj4gICAqIERPQzogSERNSSBjb25uZWN0
b3IgcHJvcGVydGllcwo+ICAgKgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2Rw
X2hlbHBlci5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9oZWxwZXIuYwo+IGluZGV4IDBiOTk0
ZDA4M2E4OS4uNjNkOGYwYjg0OTJjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1f
ZHBfaGVscGVyLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX2hlbHBlci5jCj4gQEAg
LTY2Miw2ICs2NjIsNDIgQEAgdm9pZCBkcm1fZHBfZG93bnN0cmVhbV9kZWJ1ZyhzdHJ1Y3Qgc2Vx
X2ZpbGUgKm0sCj4gIH0KPiAgRVhQT1JUX1NZTUJPTChkcm1fZHBfZG93bnN0cmVhbV9kZWJ1Zyk7
Cj4gIAo+ICsvKioKPiArICogZHJtX2RwX2Rvd25zdHJlYW1fc3ViY29ubmVjdG9yX3R5cGUoKSAt
IGdldCBEUCBicmFuY2ggZGV2aWNlIHR5cGUKPiArICogQGRwY2Q6IERpc3BsYXlQb3J0IGNvbmZp
Z3VyYXRpb24gZGF0YQo+ICsgKiBAcG9ydF9jYXA6IHBvcnQgY2FwYWJpbGl0aWVzCj4gKyAqCj4g
KyAqLwo+ICtlbnVtIGRybV9tb2RlX3N1YmNvbm5lY3Rvcgo+ICtkcm1fZHBfZG93bnN0cmVhbV9z
dWJjb25uZWN0b3JfdHlwZShjb25zdCB1OCBkcGNkW0RQX1JFQ0VJVkVSX0NBUF9TSVpFXSwKPiAr
CQkJCSAgICBjb25zdCB1OCBwb3J0X2NhcFs0XSkKPiArewo+ICsJaW50IHR5cGUgPSBwb3J0X2Nh
cFswXSAmIERQX0RTX1BPUlRfVFlQRV9NQVNLOwo+ICsJYm9vbCBicmFuY2hfZGV2aWNlX3ByZXNl
bnQgPSBkcGNkW0RQX0RPV05TVFJFQU1QT1JUX1BSRVNFTlRdICYKPiArCQkJCSAgICAgRFBfRFdO
X1NUUk1fUE9SVF9QUkVTRU5UOwoKZHJtX2RwX2lzX2JyYW5jaCgpCgo+ICsKPiArCWlmICghYnJh
bmNoX2RldmljZV9wcmVzZW50KQo+ICsJCXJldHVybiBEUk1fTU9ERV9TVUJDT05ORUNUT1JfTmF0
aXZlOwo+ICsKPiArCXN3aXRjaCAodHlwZSkgewo+ICsJY2FzZSBEUF9EU19QT1JUX1RZUEVfRFA6
Cj4gKwljYXNlIERQX0RTX1BPUlRfVFlQRV9EUF9EVUFMTU9ERToKPiArCQlyZXR1cm4gRFJNX01P
REVfU1VCQ09OTkVDVE9SX0RQOwo+ICsJY2FzZSBEUF9EU19QT1JUX1RZUEVfVkdBOgo+ICsJCXJl
dHVybiBEUk1fTU9ERV9TVUJDT05ORUNUT1JfVkdBOwo+ICsJY2FzZSBEUF9EU19QT1JUX1RZUEVf
RFZJOgo+ICsJCXJldHVybiBEUk1fTU9ERV9TVUJDT05ORUNUT1JfRFZJOwo+ICsJY2FzZSBEUF9E
U19QT1JUX1RZUEVfSERNSToKPiArCQlyZXR1cm4gRFJNX01PREVfU1VCQ09OTkVDVE9SX0hETUk7
Cj4gKwljYXNlIERQX0RTX1BPUlRfVFlQRV9XSVJFTEVTUzoKPiArCQlyZXR1cm4gRFJNX01PREVf
U1VCQ09OTkVDVE9SX1dpcmVsZXNzOwo+ICsJY2FzZSBEUF9EU19QT1JUX1RZUEVfTk9OX0VESUQ6
Cj4gKwlkZWZhdWx0Ogo+ICsJCXJldHVybiBEUk1fTU9ERV9TVUJDT05ORUNUT1JfVW5rbm93bjsK
PiArCX0KCkRQQ0QgMS4wIGRvZXNuJ3QgaGF2ZSB0aGUgZG93bnN0cmVhbSBwb3J0IGluZm9ybWF0
aW9uIGF0IDB4ODAuCkZvciB0aG9zZSB5b3UgaGF2ZSB0byByZWx5IG9uIERQX0RXTl9TVFJNX1BP
UlRfVFlQRV9NQVNLICYgY28uCgo+ICt9Cj4gK0VYUE9SVF9TWU1CT0woZHJtX2RwX2Rvd25zdHJl
YW1fc3ViY29ubmVjdG9yX3R5cGUpOwo+ICsKPiAgLyoKPiAgICogSTJDLW92ZXItQVVYIGltcGxl
bWVudGF0aW9uCj4gICAqLwo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fY29ubmVjdG9y
LmggYi9pbmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmgKPiBpbmRleCA0YzMwZDc1MTQ4N2EuLjY2
ZjBiMmE1OWM5YyAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmgKPiAr
KysgYi9pbmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmgKPiBAQCAtMTQ4Myw5ICsxNDgzLDExIEBA
IGNvbnN0IGNoYXIgKmRybV9nZXRfZHZpX2lfc3ViY29ubmVjdG9yX25hbWUoaW50IHZhbCk7Cj4g
IGNvbnN0IGNoYXIgKmRybV9nZXRfZHZpX2lfc2VsZWN0X25hbWUoaW50IHZhbCk7Cj4gIGNvbnN0
IGNoYXIgKmRybV9nZXRfdHZfc3ViY29ubmVjdG9yX25hbWUoaW50IHZhbCk7Cj4gIGNvbnN0IGNo
YXIgKmRybV9nZXRfdHZfc2VsZWN0X25hbWUoaW50IHZhbCk7Cj4gK2NvbnN0IGNoYXIgKmRybV9n
ZXRfZHBfc3ViY29ubmVjdG9yX25hbWUoaW50IHZhbCk7Cj4gIGNvbnN0IGNoYXIgKmRybV9nZXRf
Y29udGVudF9wcm90ZWN0aW9uX25hbWUoaW50IHZhbCk7Cj4gIAo+ICBpbnQgZHJtX21vZGVfY3Jl
YXRlX2R2aV9pX3Byb3BlcnRpZXMoc3RydWN0IGRybV9kZXZpY2UgKmRldik7Cj4gK3ZvaWQgZHJt
X21vZGVfY3JlYXRlX2RwX3Byb3BlcnRpZXMoc3RydWN0IGRybV9kZXZpY2UgKmRldik7Cj4gIGlu
dCBkcm1fbW9kZV9jcmVhdGVfdHZfbWFyZ2luX3Byb3BlcnRpZXMoc3RydWN0IGRybV9kZXZpY2Ug
KmRldik7Cj4gIGludCBkcm1fbW9kZV9jcmVhdGVfdHZfcHJvcGVydGllcyhzdHJ1Y3QgZHJtX2Rl
dmljZSAqZGV2LAo+ICAJCQkJICB1bnNpZ25lZCBpbnQgbnVtX21vZGVzLAo+IGRpZmYgLS1naXQg
YS9pbmNsdWRlL2RybS9kcm1fZHBfaGVscGVyLmggYi9pbmNsdWRlL2RybS9kcm1fZHBfaGVscGVy
LmgKPiBpbmRleCAzOTc4OTZiNWIyMWEuLjM4NzkyYzFhZmVkOCAxMDA2NDQKPiAtLS0gYS9pbmNs
dWRlL2RybS9kcm1fZHBfaGVscGVyLmgKPiArKysgYi9pbmNsdWRlL2RybS9kcm1fZHBfaGVscGVy
LmgKPiBAQCAtMTM3Miw2ICsxMzcyLDkgQEAgaW50IGRybV9kcF9kb3duc3RyZWFtX21heF9icGMo
Y29uc3QgdTggZHBjZFtEUF9SRUNFSVZFUl9DQVBfU0laRV0sCj4gIGludCBkcm1fZHBfZG93bnN0
cmVhbV9pZChzdHJ1Y3QgZHJtX2RwX2F1eCAqYXV4LCBjaGFyIGlkWzZdKTsKPiAgdm9pZCBkcm1f
ZHBfZG93bnN0cmVhbV9kZWJ1ZyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIGNvbnN0IHU4IGRwY2RbRFBf
UkVDRUlWRVJfQ0FQX1NJWkVdLAo+ICAJCQkgICAgIGNvbnN0IHU4IHBvcnRfY2FwWzRdLCBzdHJ1
Y3QgZHJtX2RwX2F1eCAqYXV4KTsKPiArZW51bSBkcm1fbW9kZV9zdWJjb25uZWN0b3IKPiArZHJt
X2RwX2Rvd25zdHJlYW1fc3ViY29ubmVjdG9yX3R5cGUoY29uc3QgdTggZHBjZFtEUF9SRUNFSVZF
Ul9DQVBfU0laRV0sCj4gKwkJCQkgICAgY29uc3QgdTggcG9ydF9jYXBbNF0pOwo+ICAKPiAgdm9p
ZCBkcm1fZHBfYXV4X2luaXQoc3RydWN0IGRybV9kcF9hdXggKmF1eCk7Cj4gIGludCBkcm1fZHBf
YXV4X3JlZ2lzdGVyKHN0cnVjdCBkcm1fZHBfYXV4ICphdXgpOwo+IGRpZmYgLS1naXQgYS9pbmNs
dWRlL2RybS9kcm1fbW9kZV9jb25maWcuaCBiL2luY2x1ZGUvZHJtL2RybV9tb2RlX2NvbmZpZy5o
Cj4gaW5kZXggNzU5ZDQ2MmQwMjhiLi45NTdkOTlhMzQ4NDMgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVk
ZS9kcm0vZHJtX21vZGVfY29uZmlnLmgKPiArKysgYi9pbmNsdWRlL2RybS9kcm1fbW9kZV9jb25m
aWcuaAo+IEBAIC02ODAsNiArNjgwLDEyIEBAIHN0cnVjdCBkcm1fbW9kZV9jb25maWcgewo+ICAJ
ICovCj4gIAlzdHJ1Y3QgZHJtX3Byb3BlcnR5ICpkdmlfaV9zZWxlY3Rfc3ViY29ubmVjdG9yX3By
b3BlcnR5Owo+ICAKPiArCS8qKgo+ICsJICogQGRwX3N1YmNvbm5lY3Rvcl9wcm9wZXJ0eTogT3B0
aW9uYWwgRFAgcHJvcGVydHkgdG8gZGlmZmVyZW50aWF0ZQo+ICsJICogYmV0d2VlbiBkaWZmZXJl
bnQgRFAgZG93bnN0cmVhbSBwb3J0IHR5cGVzLgo+ICsJICovCj4gKwlzdHJ1Y3QgZHJtX3Byb3Bl
cnR5ICpkcF9zdWJjb25uZWN0b3JfcHJvcGVydHk7Cj4gKwo+ICAJLyoqCj4gIAkgKiBAdHZfc3Vi
Y29ubmVjdG9yX3Byb3BlcnR5OiBPcHRpb25hbCBUViBwcm9wZXJ0eSB0byBkaWZmZXJlbnRpYXRl
Cj4gIAkgKiBiZXR3ZWVuIGRpZmZlcmVudCBUViBjb25uZWN0b3IgdHlwZXMuCj4gZGlmZiAtLWdp
dCBhL2luY2x1ZGUvdWFwaS9kcm0vZHJtX21vZGUuaCBiL2luY2x1ZGUvdWFwaS9kcm0vZHJtX21v
ZGUuaAo+IGluZGV4IDVhYjMzMWU1ZGMyMy4uOTgwODQ2NGJkYjYzIDEwMDY0NAo+IC0tLSBhL2lu
Y2x1ZGUvdWFwaS9kcm0vZHJtX21vZGUuaAo+ICsrKyBiL2luY2x1ZGUvdWFwaS9kcm0vZHJtX21v
ZGUuaAo+IEBAIC0zMzIsMTQgKzMzMiwyMCBAQCBzdHJ1Y3QgZHJtX21vZGVfZ2V0X2VuY29kZXIg
ewo+ICAvKiBUaGlzIGlzIGZvciBjb25uZWN0b3JzIHdpdGggbXVsdGlwbGUgc2lnbmFsIHR5cGVz
LiAqLwo+ICAvKiBUcnkgdG8gbWF0Y2ggRFJNX01PREVfQ09OTkVDVE9SX1ggYXMgY2xvc2VseSBh
cyBwb3NzaWJsZS4gKi8KPiAgZW51bSBkcm1fbW9kZV9zdWJjb25uZWN0b3Igewo+IC0JRFJNX01P
REVfU1VCQ09OTkVDVE9SX0F1dG9tYXRpYyA9IDAsCj4gLQlEUk1fTU9ERV9TVUJDT05ORUNUT1Jf
VW5rbm93biA9IDAsCj4gLQlEUk1fTU9ERV9TVUJDT05ORUNUT1JfRFZJRCA9IDMsCj4gLQlEUk1f
TU9ERV9TVUJDT05ORUNUT1JfRFZJQSA9IDQsCj4gLQlEUk1fTU9ERV9TVUJDT05ORUNUT1JfQ29t
cG9zaXRlID0gNSwKPiAtCURSTV9NT0RFX1NVQkNPTk5FQ1RPUl9TVklERU8gPSA2LAo+IC0JRFJN
X01PREVfU1VCQ09OTkVDVE9SX0NvbXBvbmVudCA9IDgsCj4gLQlEUk1fTU9ERV9TVUJDT05ORUNU
T1JfU0NBUlQgPSA5LAo+ICsJRFJNX01PREVfU1VCQ09OTkVDVE9SX0F1dG9tYXRpYyAgPSAwLCAg
LyogRFZJLUksIFRWICAgICAqLwo+ICsJRFJNX01PREVfU1VCQ09OTkVDVE9SX1Vua25vd24gICAg
PSAwLCAgLyogRFZJLUksIFRWLCBEUCAqLwo+ICsJRFJNX01PREVfU1VCQ09OTkVDVE9SX1ZHQQkg
PSAxLCAgLyogICAgICAgICAgICBEUCAqLwo+ICsJRFJNX01PREVfU1VCQ09OTkVDVE9SX0RWSQkg
PSAyLCAgLyogICAgICAgICAgICBEUCAqLwo+ICsJRFJNX01PREVfU1VCQ09OTkVDVE9SX0RWSUQJ
ID0gMywgIC8qIERWSS1JICAgICAgICAgKi8KPiArCURSTV9NT0RFX1NVQkNPTk5FQ1RPUl9EVklB
CSA9IDQsICAvKiBEVkktSSAgICAgICAgICovCj4gKwlEUk1fTU9ERV9TVUJDT05ORUNUT1JfQ29t
cG9zaXRlICA9IDUsICAvKiAgICAgICAgVFYgICAgICovCj4gKwlEUk1fTU9ERV9TVUJDT05ORUNU
T1JfU1ZJREVPCSA9IDYsICAvKiAgICAgICAgVFYgICAgICovCj4gKwlEUk1fTU9ERV9TVUJDT05O
RUNUT1JfQ29tcG9uZW50ICA9IDgsICAvKiAgICAgICAgVFYgICAgICovCj4gKwlEUk1fTU9ERV9T
VUJDT05ORUNUT1JfU0NBUlQJID0gOSwgIC8qICAgICAgICBUViAgICAgKi8KPiArCURSTV9NT0RF
X1NVQkNPTk5FQ1RPUl9EUAkgPSAxMCwgLyogICAgICAgICAgICBEUCAqLwo+ICsJRFJNX01PREVf
U1VCQ09OTkVDVE9SX0hETUkgICAgICAgPSAxMSwgLyogICAgICAgICAgICBEUCAqLwo+ICsJRFJN
X01PREVfU1VCQ09OTkVDVE9SX05hdGl2ZSAgICAgPSAxNSwgLyogICAgICAgICAgICBEUCAqLwo+
ICsJRFJNX01PREVfU1VCQ09OTkVDVE9SX1dpcmVsZXNzICAgPSAxOSwgLyogICAgICAgICAgICBE
UCAqLwo+ICB9Owo+ICAKPiAgI2RlZmluZSBEUk1fTU9ERV9DT05ORUNUT1JfVW5rbm93bgkwCj4g
LS0gCj4gMi4yMi4wCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4CgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
