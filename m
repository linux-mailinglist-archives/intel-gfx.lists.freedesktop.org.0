Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F9D550F7
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 15:58:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFE11888D9;
	Tue, 25 Jun 2019 13:58:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B5E3888D9
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 13:58:17 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 06:58:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,416,1557212400"; d="scan'208";a="188298659"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 25 Jun 2019 06:58:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 25 Jun 2019 16:58:13 +0300
Date: Tue, 25 Jun 2019 16:58:13 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20190625135813.GH5942@intel.com>
References: <20190620140600.11357-1-imre.deak@intel.com>
 <20190620140600.11357-20-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620140600.11357-20-imre.deak@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 19/23] drm/i915/icl: Reserve all required
 PLLs for TypeC ports
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdW4gMjAsIDIwMTkgYXQgMDU6MDU6NTZQTSArMDMwMCwgSW1yZSBEZWFrIHdyb3Rl
Ogo+IFdoZW4gZW5hYmxpbmcgYSBUeXBlQyBwb3J0IHdlIG5lZWQgdG8gcmVzZXJ2ZSBhbGwgdGhl
IHJlcXVpcmVkIFBMTHMgZm9yCj4gaXQsIHRoZSBUQlQgUExMIGZvciBUQlQtYWx0IGFuZCB0aGUg
TUcgUEhZIFBMTCBmb3IgRFAtYWx0L2xlZ2FjeSBzaW5rcy4KPiBXZSBjYW4gc2VsZWN0IHRoZSBw
cm9wZXIgUExMIGZvciB0aGUgY3VycmVudCBwb3J0IG1vZGUgZnJvbSB0aGUgcmVzZXJ2ZWQKPiBQ
TExzIG9ubHkgb25jZSB3ZSBzZWxlY3RlZCBhbmQgbG9ja2VkIGRvd24gdGhlIHBvcnQgbW9kZSBm
b3IgdGhlIHdob2xlCj4gZHVyYXRpb24gb2YgdGhlIHBvcnQncyBhY3RpdmUgc3RhdGUuIFJlc2V0
dGluZyBhbmQgbG9ja2luZyBkb3duIHRoZSBwb3J0Cj4gbW9kZSBjYW4gaW4gdHVybiBoYXBwZW4g
b25seSBkdXJpbmcgdGhlIG1vZGVzZXQgY29tbWl0IHBoYXNlIG9uY2Ugd2UKPiBkaXNhYmxlZCB0
aGUgZ2l2ZW4gcG9ydCBhbmQgdGhlIFBMTCBpdCB1c2VkLgo+IAo+IFRvIHN1cHBvcnQgdGhlIGFi
b3ZlIHJlc2VydmUtYW5kLXNlbGVjdCBQTEwgc2VtYW50aWMgd2Ugc3RvcmUgdGhlCj4gcmVzZXJ2
ZWQgUExMcyBhbG9uZyB3aXRoIHRoZWlyIEhXIHN0YXRlIGluIHRoZSBDUlRDIHN0YXRlIGFuZCBw
cm92aWRlIGEKPiB3YXkgdG8gc2VsZWN0IHRoZSBhY3RpdmUgUExMIGZyb20gdGhlc2UuIFRoZSBz
ZWxlY3RlZCBQTEwgYWxvbmcgd2l0aCBpdHMKPiBIVyBzdGF0ZSB3aWxsIGJlIHBvaW50ZWQgYXQg
YnkgY3J0Y19zdGF0ZS0+c2hhcmVkX2RwbGwvZHBsbF9od19zdGF0ZSBhcwo+IGluIHRoZSBjYXNl
IG9mIG90aGVyIHBvcnQgdHlwZXMuCj4gCj4gQmVzaWRlcyByZXNlcnZpbmcgYWxsIHJlcXVpcmVk
IFBMTHMgbm8gZnVuY3Rpb25hbCBjaGFuZ2VzLgo+IAo+IHYyOgo+IC0gRml4IHJlbGVhc2luZyB0
aGUgSUNMIFBMTHMsIG5vdCBjbGVhcmluZyB0aGUgUExMcyBmcm9tIHRoZSBvbGQKPiAgIGNydGNf
c3RhdGUuCj4gLSBJbml0IHBvcnRfZHBsbCB0byBJQ0xfUE9SVF9EUExMX0RFRkFVTFQgY2xvc2Vy
IHRvIHdoZXJlIHBvcnRfZHBsbCBpcwo+ICAgdXNlZCBmb3Igc3ltbWV0cnkgd2l0aCB0aGUgY29y
cmVzcG9uZGluZyBJQ0xfUE9SVF9EUExMX01HX1BIWSBpbml0Lgo+ICAgKFZpbGxlKQo+IAo+IENj
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IENjOiBE
YW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgo+IENjOiBNYWFydGVuIExhbmto
b3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6
IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KClJldmlld2VkLWJ5OiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgoKPiAtLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgIDExICstCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyB8IDE1MSArKysrKysrKysrKysr
LS0tLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5oIHwg
ICA5ICsrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rydi5oICAgICAgICAgICAgICB8
ICAgOSArKwo+ICA0IGZpbGVzIGNoYW5nZWQsIDEzOCBpbnNlcnRpb25zKCspLCA0MiBkZWxldGlv
bnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
Ywo+IGluZGV4IDY4ODEzNzUyNDE3OS4uOTNlM2Y1NjhkN2RiIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBAQCAtOTk1OCw2ICs5OTU4LDcg
QEAgc3RhdGljIHZvaWQgaWNlbGFrZV9nZXRfZGRpX3BsbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYsCj4gIAkJCQllbnVtIHBvcnQgcG9ydCwKPiAgCQkJCXN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpwaXBlX2NvbmZpZykKPiAgewo+ICsJZW51bSBpY2xfcG9ydF9kcGxsX2lkIHBv
cnRfZHBsbF9pZDsKPiAgCWVudW0gaW50ZWxfZHBsbF9pZCBpZDsKPiAgCXUzMiB0ZW1wOwo+ICAK
PiBAQCAtOTk2NSwyMiArOTk2NiwyOCBAQCBzdGF0aWMgdm9pZCBpY2VsYWtlX2dldF9kZGlfcGxs
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAgCQl0ZW1wID0gSTkxNV9SRUFE
KERQQ0xLQV9DRkdDUjBfSUNMKSAmCj4gIAkJICAgICAgIERQQ0xLQV9DRkdDUjBfRERJX0NMS19T
RUxfTUFTSyhwb3J0KTsKPiAgCQlpZCA9IHRlbXAgPj4gRFBDTEtBX0NGR0NSMF9ERElfQ0xLX1NF
TF9TSElGVChwb3J0KTsKPiArCQlwb3J0X2RwbGxfaWQgPSBJQ0xfUE9SVF9EUExMX0RFRkFVTFQ7
Cj4gIAl9IGVsc2UgaWYgKGludGVsX3BvcnRfaXNfdGMoZGV2X3ByaXYsIHBvcnQpKSB7Cj4gIAkJ
dTMyIGNsa19zZWwgPSBJOTE1X1JFQUQoRERJX0NMS19TRUwocG9ydCkpICYgRERJX0NMS19TRUxf
TUFTSzsKPiAgCj4gIAkJaWYgKGNsa19zZWwgPT0gRERJX0NMS19TRUxfTUcpIHsKPiAgCQkJaWQg
PSBpY2xfdGNfcG9ydF90b19wbGxfaWQoaW50ZWxfcG9ydF90b190YyhkZXZfcHJpdiwKPiAgCQkJ
CQkJCQkgICAgcG9ydCkpOwo+ICsJCQlwb3J0X2RwbGxfaWQgPSBJQ0xfUE9SVF9EUExMX01HX1BI
WTsKPiAgCQl9IGVsc2Ugewo+ICAJCQlXQVJOX09OKGNsa19zZWwgPCBERElfQ0xLX1NFTF9UQlRf
MTYyKTsKPiAgCQkJaWQgPSBEUExMX0lEX0lDTF9UQlRQTEw7Cj4gKwkJCXBvcnRfZHBsbF9pZCA9
IElDTF9QT1JUX0RQTExfREVGQVVMVDsKPiAgCQl9Cj4gIAl9IGVsc2Ugewo+ICAJCVdBUk4oMSwg
IkludmFsaWQgcG9ydCAleFxuIiwgcG9ydCk7Cj4gIAkJcmV0dXJuOwo+ICAJfQo+ICAKPiAtCXBp
cGVfY29uZmlnLT5zaGFyZWRfZHBsbCA9IGludGVsX2dldF9zaGFyZWRfZHBsbF9ieV9pZChkZXZf
cHJpdiwgaWQpOwo+ICsJcGlwZV9jb25maWctPmljbF9wb3J0X2RwbGxzW3BvcnRfZHBsbF9pZF0u
cGxsID0KPiArCQlpbnRlbF9nZXRfc2hhcmVkX2RwbGxfYnlfaWQoZGV2X3ByaXYsIGlkKTsKPiAr
Cj4gKwlpY2xfc2V0X2FjdGl2ZV9wb3J0X2RwbGwocGlwZV9jb25maWcsIHBvcnRfZHBsbF9pZCk7
Cj4gIH0KPiAgCj4gIHN0YXRpYyB2b2lkIGJ4dF9nZXRfZGRpX3BsbChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsCj4gQEAgLTEyMTE5LDYgKzEyMTI2LDggQEAgY2xlYXJfaW50ZWxf
Y3J0Y19zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiAgCXNhdmVk
X3N0YXRlLT5zY2FsZXJfc3RhdGUgPSBjcnRjX3N0YXRlLT5zY2FsZXJfc3RhdGU7Cj4gIAlzYXZl
ZF9zdGF0ZS0+c2hhcmVkX2RwbGwgPSBjcnRjX3N0YXRlLT5zaGFyZWRfZHBsbDsKPiAgCXNhdmVk
X3N0YXRlLT5kcGxsX2h3X3N0YXRlID0gY3J0Y19zdGF0ZS0+ZHBsbF9od19zdGF0ZTsKPiArCW1l
bWNweShzYXZlZF9zdGF0ZS0+aWNsX3BvcnRfZHBsbHMsIGNydGNfc3RhdGUtPmljbF9wb3J0X2Rw
bGxzLAo+ICsJICAgICAgIHNpemVvZihzYXZlZF9zdGF0ZS0+aWNsX3BvcnRfZHBsbHMpKTsKPiAg
CXNhdmVkX3N0YXRlLT5jcmNfZW5hYmxlZCA9IGNydGNfc3RhdGUtPmNyY19lbmFibGVkOwo+ICAJ
aWYgKElTX0c0WChkZXZfcHJpdikgfHwKPiAgCSAgICBJU19WQUxMRVlWSUVXKGRldl9wcml2KSB8
fCBJU19DSEVSUllWSUVXKGRldl9wcml2KSkKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcGxsX21nci5jCj4gaW5kZXggODVjMzhlZWQ5M2E4Li5hOTk2YTNmYWQ0OGMg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21n
ci5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5j
Cj4gQEAgLTI4NTYsMzQgKzI4NTYsNzkgQEAgc3RhdGljIGJvb2wgaWNsX2NhbGNfbWdfcGxsX3N0
YXRlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+ICAJcmV0dXJuIHRydWU7
Cj4gIH0KPiAgCj4gKy8qKgo+ICsgKiBpY2xfc2V0X2FjdGl2ZV9wb3J0X2RwbGwgLSBzZWxlY3Qg
dGhlIGFjdGl2ZSBwb3J0IERQTEwgZm9yIGEgZ2l2ZW4gQ1JUQwo+ICsgKiBAY3J0Y19zdGF0ZTog
c3RhdGUgZm9yIHRoZSBDUlRDIHRvIHNlbGVjdCB0aGUgRFBMTCBmb3IKPiArICogQHBvcnRfZHBs
bF9pZDogdGhlIGFjdGl2ZSBAcG9ydF9kcGxsX2lkIHRvIHNlbGVjdAo+ICsgKgo+ICsgKiBTZWxl
Y3QgdGhlIGdpdmVuIEBwb3J0X2RwbGxfaWQgaW5zdGFuY2UgZnJvbSB0aGUgRFBMTHMgcmVzZXJ2
ZWQgZm9yIHRoZQo+ICsgKiBDUlRDLgo+ICsgKi8KPiArdm9pZCBpY2xfc2V0X2FjdGl2ZV9wb3J0
X2RwbGwoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCj4gKwkJCSAgICAgIGVu
dW0gaWNsX3BvcnRfZHBsbF9pZCBwb3J0X2RwbGxfaWQpCj4gK3sKPiArCXN0cnVjdCBpY2xfcG9y
dF9kcGxsICpwb3J0X2RwbGwgPQo+ICsJCSZjcnRjX3N0YXRlLT5pY2xfcG9ydF9kcGxsc1twb3J0
X2RwbGxfaWRdOwo+ICsKPiArCWNydGNfc3RhdGUtPnNoYXJlZF9kcGxsID0gcG9ydF9kcGxsLT5w
bGw7Cj4gKwljcnRjX3N0YXRlLT5kcGxsX2h3X3N0YXRlID0gcG9ydF9kcGxsLT5od19zdGF0ZTsK
PiArfQo+ICsKPiArc3RhdGljIHZvaWQgaWNsX3VwZGF0ZV9hY3RpdmVfZHBsbChzdHJ1Y3QgaW50
ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKPiArCQkJCSAgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
LAo+ICsJCQkJICAgc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpCj4gK3sKPiArCXN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlID0KPiArCQlpbnRlbF9hdG9taWNfZ2V0X25l
d19jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsKPiArCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQg
KnByaW1hcnlfcG9ydDsKPiArCWVudW0gaWNsX3BvcnRfZHBsbF9pZCBwb3J0X2RwbGxfaWQ7Cj4g
Kwo+ICsJcHJpbWFyeV9wb3J0ID0gZW5jb2Rlci0+dHlwZSA9PSBJTlRFTF9PVVRQVVRfRFBfTVNU
ID8KPiArCQllbmNfdG9fbXN0KCZlbmNvZGVyLT5iYXNlKS0+cHJpbWFyeSA6Cj4gKwkJZW5jX3Rv
X2RpZ19wb3J0KCZlbmNvZGVyLT5iYXNlKTsKPiArCj4gKwlzd2l0Y2ggKHByaW1hcnlfcG9ydC0+
dGNfbW9kZSkgewo+ICsJY2FzZSBUQ19QT1JUX1RCVF9BTFQ6Cj4gKwkJcG9ydF9kcGxsX2lkID0g
SUNMX1BPUlRfRFBMTF9ERUZBVUxUOwo+ICsJCWJyZWFrOwo+ICsJY2FzZSBUQ19QT1JUX0RQX0FM
VDoKPiArCWNhc2UgVENfUE9SVF9MRUdBQ1k6Cj4gKwkJcG9ydF9kcGxsX2lkID0gSUNMX1BPUlRf
RFBMTF9NR19QSFk7Cj4gKwkJYnJlYWs7Cj4gKwl9Cj4gKwo+ICsJaWNsX3NldF9hY3RpdmVfcG9y
dF9kcGxsKGNydGNfc3RhdGUsIHBvcnRfZHBsbF9pZCk7Cj4gK30KPiArCj4gIHN0YXRpYyBib29s
IGljbF9nZXRfY29tYm9fcGh5X2RwbGwoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUs
Cj4gIAkJCQkgICBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKPiAgCQkJCSAgIHN0cnVjdCBpbnRl
bF9lbmNvZGVyICplbmNvZGVyKQo+ICB7Cj4gIAlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSA9Cj4gIAkJaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0
Yyk7Cj4gLQlzdHJ1Y3QgaW50ZWxfc2hhcmVkX2RwbGwgKnBsbDsKPiArCXN0cnVjdCBpY2xfcG9y
dF9kcGxsICpwb3J0X2RwbGwgPQo+ICsJCSZjcnRjX3N0YXRlLT5pY2xfcG9ydF9kcGxsc1tJQ0xf
UE9SVF9EUExMX0RFRkFVTFRdOwo+ICAKPiAtCWlmICghaWNsX2NhbGNfZHBsbF9zdGF0ZShjcnRj
X3N0YXRlLCBlbmNvZGVyLAo+IC0JCQkJICZjcnRjX3N0YXRlLT5kcGxsX2h3X3N0YXRlKSkgewo+
ICsJaWYgKCFpY2xfY2FsY19kcGxsX3N0YXRlKGNydGNfc3RhdGUsIGVuY29kZXIsICZwb3J0X2Rw
bGwtPmh3X3N0YXRlKSkgewo+ICAJCURSTV9ERUJVR19LTVMoIkNvdWxkIG5vdCBjYWxjdWxhdGUg
Y29tYm8gUEhZIFBMTCBzdGF0ZS5cbiIpOwo+ICAKPiAgCQlyZXR1cm4gZmFsc2U7Cj4gIAl9Cj4g
IAo+IC0JcGxsID0gaW50ZWxfZmluZF9zaGFyZWRfZHBsbChzdGF0ZSwgY3J0YywgJmNydGNfc3Rh
dGUtPmRwbGxfaHdfc3RhdGUsCj4gLQkJCQkgICAgIERQTExfSURfSUNMX0RQTEwwLAo+IC0JCQkJ
ICAgICBEUExMX0lEX0lDTF9EUExMMSk7Cj4gLQlpZiAoIXBsbCkgewo+ICsJcG9ydF9kcGxsLT5w
bGwgPSBpbnRlbF9maW5kX3NoYXJlZF9kcGxsKHN0YXRlLCBjcnRjLAo+ICsJCQkJCQkmcG9ydF9k
cGxsLT5od19zdGF0ZSwKPiArCQkJCQkJRFBMTF9JRF9JQ0xfRFBMTDAsCj4gKwkJCQkJCURQTExf
SURfSUNMX0RQTEwxKTsKPiArCWlmICghcG9ydF9kcGxsLT5wbGwpIHsKPiAgCQlEUk1fREVCVUdf
S01TKCJObyBjb21ibyBQSFkgUExMIGZvdW5kIGZvciBwb3J0ICVjXG4iLAo+ICAJCQkgICAgICBw
b3J0X25hbWUoZW5jb2Rlci0+cG9ydCkpOwo+ICAJCXJldHVybiBmYWxzZTsKPiAgCX0KPiAgCj4g
IAlpbnRlbF9yZWZlcmVuY2Vfc2hhcmVkX2RwbGwoc3RhdGUsIGNydGMsCj4gLQkJCQkgICAgcGxs
LCAmY3J0Y19zdGF0ZS0+ZHBsbF9od19zdGF0ZSk7Cj4gKwkJCQkgICAgcG9ydF9kcGxsLT5wbGws
ICZwb3J0X2RwbGwtPmh3X3N0YXRlKTsKPiAgCj4gLQljcnRjX3N0YXRlLT5zaGFyZWRfZHBsbCA9
IHBsbDsKPiArCWljbF91cGRhdGVfYWN0aXZlX2RwbGwoc3RhdGUsIGNydGMsIGVuY29kZXIpOwo+
ICAKPiAgCXJldHVybiB0cnVlOwo+ICB9Cj4gQEAgLTI4OTUsNDkgKzI5NDAsNTUgQEAgc3RhdGlj
IGJvb2wgaWNsX2dldF90Y19waHlfZHBsbHMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUsCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KHN0YXRl
LT5iYXNlLmRldik7Cj4gIAlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9Cj4g
IAkJaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7Cj4gLQllbnVt
IHRjX3BvcnQgdGNfcG9ydCA9IGludGVsX3BvcnRfdG9fdGMoZGV2X3ByaXYsIGVuY29kZXItPnBv
cnQpOwo+IC0Jc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQ7Cj4gLQlzdHJ1Y3Qg
aW50ZWxfc2hhcmVkX2RwbGwgKnBsbDsKPiAtCWVudW0gaW50ZWxfZHBsbF9pZCBtaW4sIG1heDsK
PiAtCWJvb2wgcmV0Owo+IC0KPiAtCWlmIChlbmNvZGVyLT50eXBlID09IElOVEVMX09VVFBVVF9E
UF9NU1QpCj4gLQkJZGlnX3BvcnQgPSBlbmNfdG9fbXN0KCZlbmNvZGVyLT5iYXNlKS0+cHJpbWFy
eTsKPiAtCWVsc2UKPiAtCQlkaWdfcG9ydCA9IGVuY190b19kaWdfcG9ydCgmZW5jb2Rlci0+YmFz
ZSk7Cj4gKwlzdHJ1Y3QgaWNsX3BvcnRfZHBsbCAqcG9ydF9kcGxsOwo+ICsJZW51bSBpbnRlbF9k
cGxsX2lkIGRwbGxfaWQ7Cj4gIAo+IC0JaWYgKGRpZ19wb3J0LT50Y19tb2RlID09IFRDX1BPUlRf
VEJUX0FMVCkgewo+IC0JCW1pbiA9IERQTExfSURfSUNMX1RCVFBMTDsKPiAtCQltYXggPSBtaW47
Cj4gLQkJcmV0ID0gaWNsX2NhbGNfZHBsbF9zdGF0ZShjcnRjX3N0YXRlLCBlbmNvZGVyLAo+IC0J
CQkJCSAgJmNydGNfc3RhdGUtPmRwbGxfaHdfc3RhdGUpOwo+IC0JfSBlbHNlIHsKPiAtCQltaW4g
PSBpY2xfdGNfcG9ydF90b19wbGxfaWQodGNfcG9ydCk7Cj4gLQkJbWF4ID0gbWluOwo+IC0JCXJl
dCA9IGljbF9jYWxjX21nX3BsbF9zdGF0ZShjcnRjX3N0YXRlLAo+IC0JCQkJCSAgICAmY3J0Y19z
dGF0ZS0+ZHBsbF9od19zdGF0ZSk7Cj4gKwlwb3J0X2RwbGwgPSAmY3J0Y19zdGF0ZS0+aWNsX3Bv
cnRfZHBsbHNbSUNMX1BPUlRfRFBMTF9ERUZBVUxUXTsKPiArCWlmICghaWNsX2NhbGNfZHBsbF9z
dGF0ZShjcnRjX3N0YXRlLCBlbmNvZGVyLCAmcG9ydF9kcGxsLT5od19zdGF0ZSkpIHsKPiArCQlE
Uk1fREVCVUdfS01TKCJDb3VsZCBub3QgY2FsY3VsYXRlIFRCVCBQTEwgc3RhdGUuXG4iKTsKPiAr
CQlyZXR1cm4gZmFsc2U7Cj4gIAl9Cj4gIAo+IC0JaWYgKCFyZXQpIHsKPiAtCQlEUk1fREVCVUdf
S01TKCJDb3VsZCBub3QgY2FsY3VsYXRlIFBMTCBzdGF0ZS5cbiIpOwo+ICsJcG9ydF9kcGxsLT5w
bGwgPSBpbnRlbF9maW5kX3NoYXJlZF9kcGxsKHN0YXRlLCBjcnRjLAo+ICsJCQkJCQkmcG9ydF9k
cGxsLT5od19zdGF0ZSwKPiArCQkJCQkJRFBMTF9JRF9JQ0xfVEJUUExMLAo+ICsJCQkJCQlEUExM
X0lEX0lDTF9UQlRQTEwpOwo+ICsJaWYgKCFwb3J0X2RwbGwtPnBsbCkgewo+ICsJCURSTV9ERUJV
R19LTVMoIk5vIFRCVC1BTFQgUExMIGZvdW5kXG4iKTsKPiAgCQlyZXR1cm4gZmFsc2U7Cj4gIAl9
Cj4gKwlpbnRlbF9yZWZlcmVuY2Vfc2hhcmVkX2RwbGwoc3RhdGUsIGNydGMsCj4gKwkJCQkgICAg
cG9ydF9kcGxsLT5wbGwsICZwb3J0X2RwbGwtPmh3X3N0YXRlKTsKPiAgCj4gIAo+IC0JcGxsID0g
aW50ZWxfZmluZF9zaGFyZWRfZHBsbChzdGF0ZSwgY3J0YywKPiAtCQkJCSAgICAgJmNydGNfc3Rh
dGUtPmRwbGxfaHdfc3RhdGUsCj4gLQkJCQkgICAgIG1pbiwgbWF4KTsKPiAtCWlmICghcGxsKSB7
Cj4gLQkJRFJNX0RFQlVHX0tNUygiTm8gUExMIHNlbGVjdGVkXG4iKTsKPiAtCQlyZXR1cm4gZmFs
c2U7Cj4gKwlwb3J0X2RwbGwgPSAmY3J0Y19zdGF0ZS0+aWNsX3BvcnRfZHBsbHNbSUNMX1BPUlRf
RFBMTF9NR19QSFldOwo+ICsJaWYgKCFpY2xfY2FsY19tZ19wbGxfc3RhdGUoY3J0Y19zdGF0ZSwg
JnBvcnRfZHBsbC0+aHdfc3RhdGUpKSB7Cj4gKwkJRFJNX0RFQlVHX0tNUygiQ291bGQgbm90IGNh
bGN1bGF0ZSBNRyBQSFkgUExMIHN0YXRlLlxuIik7Cj4gKwkJZ290byBlcnJfdW5yZWZlcmVuY2Vf
dGJ0X3BsbDsKPiAgCX0KPiAgCj4gKwlkcGxsX2lkID0gaWNsX3RjX3BvcnRfdG9fcGxsX2lkKGlu
dGVsX3BvcnRfdG9fdGMoZGV2X3ByaXYsCj4gKwkJCQkJCQkgZW5jb2Rlci0+cG9ydCkpOwo+ICsJ
cG9ydF9kcGxsLT5wbGwgPSBpbnRlbF9maW5kX3NoYXJlZF9kcGxsKHN0YXRlLCBjcnRjLAo+ICsJ
CQkJCQkmcG9ydF9kcGxsLT5od19zdGF0ZSwKPiArCQkJCQkJZHBsbF9pZCwKPiArCQkJCQkJZHBs
bF9pZCk7Cj4gKwlpZiAoIXBvcnRfZHBsbC0+cGxsKSB7Cj4gKwkJRFJNX0RFQlVHX0tNUygiTm8g
TUcgUEhZIFBMTCBmb3VuZFxuIik7Cj4gKwkJZ290byBlcnJfdW5yZWZlcmVuY2VfdGJ0X3BsbDsK
PiArCX0KPiAgCWludGVsX3JlZmVyZW5jZV9zaGFyZWRfZHBsbChzdGF0ZSwgY3J0YywKPiAtCQkJ
CSAgICBwbGwsICZjcnRjX3N0YXRlLT5kcGxsX2h3X3N0YXRlKTsKPiArCQkJCSAgICBwb3J0X2Rw
bGwtPnBsbCwgJnBvcnRfZHBsbC0+aHdfc3RhdGUpOwo+ICAKPiAtCWNydGNfc3RhdGUtPnNoYXJl
ZF9kcGxsID0gcGxsOwo+ICsJaWNsX3VwZGF0ZV9hY3RpdmVfZHBsbChzdGF0ZSwgY3J0YywgZW5j
b2Rlcik7Cj4gIAo+ICAJcmV0dXJuIHRydWU7Cj4gKwo+ICtlcnJfdW5yZWZlcmVuY2VfdGJ0X3Bs
bDoKPiArCXBvcnRfZHBsbCA9ICZjcnRjX3N0YXRlLT5pY2xfcG9ydF9kcGxsc1tJQ0xfUE9SVF9E
UExMX0RFRkFVTFRdOwo+ICsJaW50ZWxfdW5yZWZlcmVuY2Vfc2hhcmVkX2RwbGwoc3RhdGUsIGNy
dGMsIHBvcnRfZHBsbC0+cGxsKTsKPiArCj4gKwlyZXR1cm4gZmFsc2U7Cj4gIH0KPiAgCj4gIHN0
YXRpYyBib29sIGljbF9nZXRfZHBsbHMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUs
Cj4gQEAgLTI5NTcsNiArMzAwOCwyNCBAQCBzdGF0aWMgYm9vbCBpY2xfZ2V0X2RwbGxzKHN0cnVj
dCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+ICAJcmV0dXJuIGZhbHNlOwo+ICB9Cj4gIAo+
ICtzdGF0aWMgdm9pZCBpY2xfcHV0X2RwbGxzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0
YXRlLAo+ICsJCQkgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQo+ICt7Cj4gKwlzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9Cj4gKwkJaW50ZWxfYXRvbWljX2dldF9vbGRfY3J0
Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7Cj4gKwllbnVtIGljbF9wb3J0X2RwbGxfaWQgaWQ7Cj4gKwo+
ICsJZm9yIChpZCA9IElDTF9QT1JUX0RQTExfREVGQVVMVDsgaWQgPCBJQ0xfUE9SVF9EUExMX0NP
VU5UOyBpZCsrKSB7Cj4gKwkJc3RydWN0IGljbF9wb3J0X2RwbGwgKnBvcnRfZHBsbCA9Cj4gKwkJ
CSZjcnRjX3N0YXRlLT5pY2xfcG9ydF9kcGxsc1tpZF07Cj4gKwo+ICsJCWlmICghcG9ydF9kcGxs
LT5wbGwpCj4gKwkJCWNvbnRpbnVlOwo+ICsKPiArCQlpbnRlbF91bnJlZmVyZW5jZV9zaGFyZWRf
ZHBsbChzdGF0ZSwgY3J0YywgcG9ydF9kcGxsLT5wbGwpOwo+ICsJfQo+ICt9Cj4gKwo+ICBzdGF0
aWMgYm9vbCBtZ19wbGxfZ2V0X2h3X3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiwKPiAgCQkJCXN0cnVjdCBpbnRlbF9zaGFyZWRfZHBsbCAqcGxsLAo+ICAJCQkJc3RydWN0
IGludGVsX2RwbGxfaHdfc3RhdGUgKmh3X3N0YXRlKQo+IEBAIC0zMzMwLDcgKzMzOTksNyBAQCBz
dGF0aWMgY29uc3Qgc3RydWN0IGRwbGxfaW5mbyBpY2xfcGxsc1tdID0gewo+ICBzdGF0aWMgY29u
c3Qgc3RydWN0IGludGVsX2RwbGxfbWdyIGljbF9wbGxfbWdyID0gewo+ICAJLmRwbGxfaW5mbyA9
IGljbF9wbGxzLAo+ICAJLmdldF9kcGxscyA9IGljbF9nZXRfZHBsbHMsCj4gLQkucHV0X2RwbGxz
ID0gaW50ZWxfcHV0X2RwbGwsCj4gKwkucHV0X2RwbGxzID0gaWNsX3B1dF9kcGxscywKPiAgCS5k
dW1wX2h3X3N0YXRlID0gaWNsX2R1bXBfaHdfc3RhdGUsCj4gIH07Cj4gIAo+IEBAIC0zMzQzLDcg
KzM0MTIsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRwbGxfaW5mbyBlaGxfcGxsc1tdID0gewo+
ICBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2RwbGxfbWdyIGVobF9wbGxfbWdyID0gewo+ICAJ
LmRwbGxfaW5mbyA9IGVobF9wbGxzLAo+ICAJLmdldF9kcGxscyA9IGljbF9nZXRfZHBsbHMsCj4g
LQkucHV0X2RwbGxzID0gaW50ZWxfcHV0X2RwbGwsCj4gKwkucHV0X2RwbGxzID0gaWNsX3B1dF9k
cGxscywKPiAgCS5kdW1wX2h3X3N0YXRlID0gaWNsX2R1bXBfaHdfc3RhdGUsCj4gIH07Cj4gIAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdy
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmgKPiBpbmRl
eCAxNmRkYWIxMzg1NzQuLjU3OWYyY2VhZmJhMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmgKPiBAQCAtMTQxLDYgKzE0MSwxMyBAQCBlbnVt
IGludGVsX2RwbGxfaWQgewo+ICB9Owo+ICAjZGVmaW5lIEk5MTVfTlVNX1BMTFMgNwo+ICAKPiAr
ZW51bSBpY2xfcG9ydF9kcGxsX2lkIHsKPiArCUlDTF9QT1JUX0RQTExfREVGQVVMVCwKPiArCUlD
TF9QT1JUX0RQTExfTUdfUEhZLAo+ICsKPiArCUlDTF9QT1JUX0RQTExfQ09VTlQsCj4gK307Cj4g
Kwo+ICBzdHJ1Y3QgaW50ZWxfZHBsbF9od19zdGF0ZSB7Cj4gIAkvKiBpOXh4LCBwY2ggcGxscyAq
Lwo+ICAJdTMyIGRwbGw7Cj4gQEAgLTMzNyw2ICszNDQsOCBAQCBib29sIGludGVsX3Jlc2VydmVf
c2hhcmVkX2RwbGxzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+ICAJCQkJc3Ry
dWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpOwo+ICB2b2lkIGludGVsX3JlbGVhc2Vfc2hhcmVk
X2RwbGxzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+ICAJCQkJc3RydWN0IGlu
dGVsX2NydGMgKmNydGMpOwo+ICt2b2lkIGljbF9zZXRfYWN0aXZlX3BvcnRfZHBsbChzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKPiArCQkJICAgICAgZW51bSBpY2xfcG9ydF9k
cGxsX2lkIHBvcnRfZHBsbF9pZCk7Cj4gIHZvaWQgaW50ZWxfcHJlcGFyZV9zaGFyZWRfZHBsbChj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7Cj4gIHZvaWQgaW50ZWxf
ZW5hYmxlX3NoYXJlZF9kcGxsKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0
YXRlKTsKPiAgdm9pZCBpbnRlbF9kaXNhYmxlX3NoYXJlZF9kcGxsKGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYuaAo+IGlu
ZGV4IGQ5ZTdkMDExZWQ0YS4uMTJhMTAyZTIzOWM1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2Rydi5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
ZHJ2LmgKPiBAQCAtODEyLDYgKzgxMiwxNSBAQCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSB7Cj4g
IAkvKiBBY3R1YWwgcmVnaXN0ZXIgc3RhdGUgb2YgdGhlIGRwbGwsIGZvciBzaGFyZWQgZHBsbCBj
cm9zcy1jaGVja2luZy4gKi8KPiAgCXN0cnVjdCBpbnRlbF9kcGxsX2h3X3N0YXRlIGRwbGxfaHdf
c3RhdGU7Cj4gIAo+ICsJLyoKPiArCSAqIElDTCByZXNlcnZlZCBEUExMcyBmb3IgdGhlIENSVEMv
cG9ydC4gVGhlIGFjdGl2ZSBQTEwgaXMgc2VsZWN0ZWQgYnkKPiArCSAqIHNldHRpbmcgc2hhcmVk
X2RwbGwgYW5kIGRwbGxfaHdfc3RhdGUgdG8gb25lIG9mIHRoZXNlIHJlc2VydmVkIG9uZXMuCj4g
KwkgKi8KPiArCXN0cnVjdCBpY2xfcG9ydF9kcGxsIHsKPiArCQlzdHJ1Y3QgaW50ZWxfc2hhcmVk
X2RwbGwgKnBsbDsKPiArCQlzdHJ1Y3QgaW50ZWxfZHBsbF9od19zdGF0ZSBod19zdGF0ZTsKPiAr
CX0gaWNsX3BvcnRfZHBsbHNbSUNMX1BPUlRfRFBMTF9DT1VOVF07Cj4gKwo+ICAJLyogRFNJIFBM
TCByZWdpc3RlcnMgKi8KPiAgCXN0cnVjdCB7Cj4gIAkJdTMyIGN0cmwsIGRpdjsKPiAtLSAKPiAy
LjE3LjEKCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
