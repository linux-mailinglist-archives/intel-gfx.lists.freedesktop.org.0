Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E27D582DB
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 14:51:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 740B86E21A;
	Thu, 27 Jun 2019 12:51:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84B516E21A
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 12:51:26 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 05:51:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,423,1557212400"; d="scan'208";a="167418228"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 27 Jun 2019 05:51:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 27 Jun 2019 15:51:22 +0300
Date: Thu, 27 Jun 2019 15:51:22 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Message-ID: <20190627125122.GZ5942@intel.com>
References: <20190619124758.GN3733@ideak-desk.fi.intel.com>
 <20190622020026.24475-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190622020026.24475-1-vivek.kasireddy@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Add support for DPLL4 (v8)
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

T24gRnJpLCBKdW4gMjEsIDIwMTkgYXQgMDc6MDA6MjZQTSAtMDcwMCwgVml2ZWsgS2FzaXJlZGR5
IHdyb3RlOgo+IFRoaXMgcGF0Y2ggYWRkcyBzdXBwb3J0IGZvciBEUExMNCBvbiBFSEwgdGhhdCBp
bmNsdWRlIHRoZQo+IGZvbGxvd2luZyByZXN0cmljdGlvbnM6Cj4gCj4gLSBEUExMNCBjYW5ub3Qg
YmUgdXNlZCB3aXRoIERESUEgKGNvbWJvIHBvcnQgQSBpbnRlcm5hbCBlRFAgdXNhZ2UpLgo+ICAg
RFBMTDQgY2FuIGJlIHVzZWQgd2l0aCBvdGhlciBERElzLCBpbmNsdWRpbmcgRERJRAo+ICAgKGNv
bWJvIHBvcnQgQSBleHRlcm5hbCB1c2FnZSkuCj4gCj4gLSBEUExMNCBjYW5ub3QgYmUgZW5hYmxl
ZCB3aGVuIERDNSBvciBEQzYgYXJlIGVuYWJsZWQuCj4gCj4gLSBUaGUgRFBMTDQgZW5hYmxlLCBs
b2NrLCBwb3dlciBlbmFibGVkLCBhbmQgcG93ZXIgc3RhdGUgYXJlIGNvbm5lY3RlZAo+ICAgdG8g
dGhlIE1HUExMMV9FTkFCTEUgcmVnaXN0ZXIuCj4gCj4gdjI6IChzdWdnZXN0aW9ucyBmcm9tIEJv
YiBQYWF1d2UpCj4gLSBSZXdvcmsgZWhsX2dldF9kcGxsKCkgZnVuY3Rpb24gdG8gY2FsbCBpbnRl
bF9maW5kX3NoYXJlZF9kcGxsKCkgYW5kCj4gICBpdGVyYXRlIHR3aWNlOiBvbmNlIGZvciBDb21i
byBwbGxzIGFuZCBvbmNlIGZvciBNRyBwbGxzLgo+IAo+IC0gVXNlIE1HIHBsbCBmdW5jcyBmb3Ig
RFBMTDQgaW5zdGVhZCBvZiBjcmVhdGluZyBuZXcgb25lcyBhbmQgbW9kaWZ5Cj4gICBtZ19wbGxf
ZW5hYmxlIHRvIGluY2x1ZGUgdGhlIHJlc3RyaWN0aW9ucyBmb3IgRUhMLgo+IAo+IHYzOiBGaXgg
Y29tcGlsYXRpb24gZXJyb3IKPiAKPiB2NDogKHN1Z2dlc3Rpb25zIGZyb20gTHVjYXMgYW5kIFZp
bGxlKQo+IC0gVHJlYXQgRFBMTDQgYXMgYSBjb21ibyBwaHkgUExMIGFuZCBub3QgYXMgTUcgUExM
Cj4gLSBEaXNhYmxlIERDIHN0YXRlcyB3aGVuIHRoaXMgRFBMTCBpcyBiZWluZyBlbmFibGVkCj4g
LSBSZXVzZSBpY2xfZ2V0X2RwbGwgaW5zdGVhZCBvZiBjcmVhdGluZyBhIHNlcGFyYXRlIG9uZSBm
b3IgRUhMCj4gCj4gdjU6IChzdWdnZXN0aW9uIGZyb20gVmlsbGUpCj4gLSBSZWZjb3VudCB0aGUg
REMgT0ZGIHBvd2VyIGRvbWFpbnMgZHVyaW5nIHRoZSBlbmFibGluZyBhbmQgZGlzYWJsaW5nCj4g
ICBvZiB0aGlzIERQTEwuCj4gCj4gdjY6IHJlYmFzZQo+IAo+IHY3OiAoc3VnZ2VzdGlvbiBmcm9t
IEltcmUpCj4gLSBBZGQgYSBuZXcgcG93ZXIgZG9tYWluIGluc3RlYWQgb2YgaXRlcmF0aW5nIG92
ZXIgdGhlIGRvbWFpbnMKPiAgIGFzc29pY2F0ZWQgd2l0aCBEQyBPRkYgcG93ZXIgd2VsbC4KPiAK
PiB2ODogKFZpbGxlIGFuZCBJbXJlKQo+IC0gUmVuYW1lIFBPV0VSX0RPTUFJTl9EUExMNCBUTyBQ
T1dFUl9ET01BSU5fRFBMTF9EQ19PRkYKPiAtIEdyYWIgYSByZWZlcmVuY2UgaW4gaW50ZWxfbW9k
ZXNldF9zZXR1cF9od19zdGF0ZSgpIGlmIHRoaXMKPiAgIERQTEwgd2FzIGFscmVhZHkgZW5hYmxl
ZCBwZXJoYXBzIGJ5IEJJT1MuCj4gLSBDaGVjayBmb3IgdGhlIHBvcnQgdHlwZSBpbnN0ZWFkIG9m
IHRoZSBlbmNvZGVyCj4gCj4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFA
aW50ZWwuY29tPgo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPgo+IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+IENj
OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogVml2ZWsg
S2FzaXJlZGR5IDx2aXZlay5rYXNpcmVkZHlAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAgNiArKysKPiAgLi4uL2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jICAgIHwgIDMgKysKPiAgLi4uL2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5oICAgIHwgIDEgKwo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMgfCA0MiArKysrKysrKysrKysrKysr
Ky0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuaCB8ICA2
ICsrKwo+ICA1IGZpbGVzIGNoYW5nZWQsIDU1IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBp
bmRleCA4NTkyYTdkNDIyZGUuLmE1ZjM4N2U0ODZlZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gQEAgLTE2Nzc4LDYgKzE2Nzc4LDEyIEBA
IGludGVsX21vZGVzZXRfc2V0dXBfaHdfc3RhdGUoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKPiAg
CWZvciAoaSA9IDA7IGkgPCBkZXZfcHJpdi0+bnVtX3NoYXJlZF9kcGxsOyBpKyspIHsKPiAgCQlz
dHJ1Y3QgaW50ZWxfc2hhcmVkX2RwbGwgKnBsbCA9ICZkZXZfcHJpdi0+c2hhcmVkX2RwbGxzW2ld
Owo+ICAKPiArCQlpZiAoSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYpICYmIHBsbC0+b24gJiYKPiAr
CQkgICAgcGxsLT5pbmZvLT5pZCA9PSBEUExMX0lEX0VITF9EUExMNCkgewo+ICsJCQlwbGwtPndh
a2VyZWYgPSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2dldChkZXZfcHJpdiwKPiArCQkJCQkJCSAgICAg
ICBQT1dFUl9ET01BSU5fRFBMTF9EQ19PRkYpOwo+ICsJCX0KCkkgdGhpbmsgdGhpcyBhIGJpdCB0
b28gbGF0ZS4gV2Ugc2hvdWxkIGRvIGl0IGJlZm9yZQppbnRlbF9zYW5pdGl6ZV9jcnRjKCkgYXMg
dGhhdCBtYXkgYWxyZWFkeSBjYWxsCmludGVsX2Rpc2FibGVfc2hhcmVkX2RwbGwoKS4KCj4gKwo+
ICAJCWlmICghcGxsLT5vbiB8fCBwbGwtPmFjdGl2ZV9tYXNrKQo+ICAJCQljb250aW51ZTsKPiAg
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9wb3dlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bv
d2VyLmMKPiBpbmRleCBjOTNhZDUxMjAxNGMuLjFjMTAxYTg0MjMzMSAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCj4gQEAg
LTExNyw2ICsxMTcsOCBAQCBpbnRlbF9kaXNwbGF5X3Bvd2VyX2RvbWFpbl9zdHIoZW51bSBpbnRl
bF9kaXNwbGF5X3Bvd2VyX2RvbWFpbiBkb21haW4pCj4gIAkJcmV0dXJuICJNT0RFU0VUIjsKPiAg
CWNhc2UgUE9XRVJfRE9NQUlOX0dUX0lSUToKPiAgCQlyZXR1cm4gIkdUX0lSUSI7Cj4gKwljYXNl
IFBPV0VSX0RPTUFJTl9EUExMX0RDX09GRjoKPiArCQlyZXR1cm4gIkRQTExfRENfT0ZGIjsKPiAg
CWRlZmF1bHQ6Cj4gIAkJTUlTU0lOR19DQVNFKGRvbWFpbik7Cj4gIAkJcmV0dXJuICI/IjsKPiBA
QCAtMjM2MSw2ICsyMzYzLDcgQEAgdm9pZCBpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1dChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gIAlJQ0xfUFdfMl9QT1dFUl9ET01BSU5TIHwJ
CQlcCj4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9NT0RFU0VUKSB8CQkJXAo+ICAJQklUX1VMTChQ
T1dFUl9ET01BSU5fQVVYX0EpIHwJCQlcCj4gKwlCSVRfVUxMKFBPV0VSX0RPTUFJTl9EUExMX0RD
X09GRikgfAkJCVwKPiAgCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0lOSVQpKQo+ICAKPiAgI2RlZmlu
ZSBJQ0xfRERJX0lPX0FfUE9XRVJfRE9NQUlOUyAoCQkJXAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5oCj4gaW5kZXggZmY1N2IwYTdm
ZTU5Li44ZjQzZjcwNTFhMTYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuaAo+IEBAIC01OSw2ICs1OSw3IEBAIGVudW0gaW50
ZWxfZGlzcGxheV9wb3dlcl9kb21haW4gewo+ICAJUE9XRVJfRE9NQUlOX0dNQlVTLAo+ICAJUE9X
RVJfRE9NQUlOX01PREVTRVQsCj4gIAlQT1dFUl9ET01BSU5fR1RfSVJRLAo+ICsJUE9XRVJfRE9N
QUlOX0RQTExfRENfT0ZGLAo+ICAJUE9XRVJfRE9NQUlOX0lOSVQsCj4gIAo+ICAJUE9XRVJfRE9N
QUlOX05VTSwKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcGxsX21nci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21n
ci5jCj4gaW5kZXggMmQ0ZTdiOWE3YjlkLi44MWUxNDQzY2I1ODMgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jCj4gQEAgLTI4MDYsNiArMjgw
NiwxMCBAQCBpY2xfZ2V0X2RwbGwoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUs
Cj4gIAlpZiAoaW50ZWxfcG9ydF9pc19jb21ib3BoeShkZXZfcHJpdiwgcG9ydCkpIHsKPiAgCQlt
aW4gPSBEUExMX0lEX0lDTF9EUExMMDsKPiAgCQltYXggPSBEUExMX0lEX0lDTF9EUExMMTsKPiAr
Cj4gKwkJaWYgKElTX0VMS0hBUlRMQUtFKGRldl9wcml2KSAmJiBwb3J0ICE9IFBPUlRfQSkKPiAr
CQkJbWF4ID0gRFBMTF9JRF9FSExfRFBMTDQ7Cj4gKwo+ICAJCXJldCA9IGljbF9jYWxjX2RwbGxf
c3RhdGUoY3J0Y19zdGF0ZSwgZW5jb2Rlcik7Cj4gIAl9IGVsc2UgaWYgKGludGVsX3BvcnRfaXNf
dGMoZGV2X3ByaXYsIHBvcnQpKSB7Cj4gIAkJaWYgKGVuY29kZXItPnR5cGUgPT0gSU5URUxfT1VU
UFVUX0RQX01TVCkgewo+IEBAIC0yOTQ1LDggKzI5NDksMTQgQEAgc3RhdGljIGJvb2wgY29tYm9f
cGxsX2dldF9od19zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gIAkJ
CQkgICBzdHJ1Y3QgaW50ZWxfc2hhcmVkX2RwbGwgKnBsbCwKPiAgCQkJCSAgIHN0cnVjdCBpbnRl
bF9kcGxsX2h3X3N0YXRlICpod19zdGF0ZSkKPiAgewo+IC0JcmV0dXJuIGljbF9wbGxfZ2V0X2h3
X3N0YXRlKGRldl9wcml2LCBwbGwsIGh3X3N0YXRlLAo+IC0JCQkJICAgIENOTF9EUExMX0VOQUJM
RShwbGwtPmluZm8tPmlkKSk7Cj4gKwlpOTE1X3JlZ190IGVuYWJsZV9yZWcgPSBDTkxfRFBMTF9F
TkFCTEUocGxsLT5pbmZvLT5pZCk7Cj4gKwo+ICsJaWYgKElTX0VMS0hBUlRMQUtFKGRldl9wcml2
KSAmJgo+ICsJICAgIHBsbC0+aW5mby0+aWQgPT0gRFBMTF9JRF9FSExfRFBMTDQpIHsKPiArCQll
bmFibGVfcmVnID0gTUdfUExMX0VOQUJMRSgwKTsKPiArCX0KPiArCj4gKwlyZXR1cm4gaWNsX3Bs
bF9nZXRfaHdfc3RhdGUoZGV2X3ByaXYsIHBsbCwgaHdfc3RhdGUsIGVuYWJsZV9yZWcpOwo+ICB9
Cj4gIAo+ICBzdGF0aWMgYm9vbCB0YnRfcGxsX2dldF9od19zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsCj4gQEAgLTMwNTcsNiArMzA2NywxOSBAQCBzdGF0aWMgdm9pZCBj
b21ib19wbGxfZW5hYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAgewo+
ICAJaTkxNV9yZWdfdCBlbmFibGVfcmVnID0gQ05MX0RQTExfRU5BQkxFKHBsbC0+aW5mby0+aWQp
Owo+ICAKPiArCWlmIChJU19FTEtIQVJUTEFLRShkZXZfcHJpdikgJiYKPiArCSAgICBwbGwtPmlu
Zm8tPmlkID09IERQTExfSURfRUhMX0RQTEw0KSB7Cj4gKwkJZW5hYmxlX3JlZyA9IE1HX1BMTF9F
TkFCTEUoMCk7Cj4gKwo+ICsJCS8qCj4gKwkJICogV2UgbmVlZCB0byBkaXNhYmxlIERDIHN0YXRl
cyB3aGVuIHRoaXMgRFBMTCBpcyBlbmFibGVkLgo+ICsJCSAqIFRoaXMgY2FuIGJlIGRvbmUgYnkg
dGFraW5nIGEgcmVmZXJlbmNlIG9uIERQTEw0IHBvd2VyCj4gKwkJICogZG9tYWluLgo+ICsJCSAq
Lwo+ICsJCXBsbC0+d2FrZXJlZiA9IGludGVsX2Rpc3BsYXlfcG93ZXJfZ2V0KGRldl9wcml2LAo+
ICsJCQkJCQkgICAgICAgUE9XRVJfRE9NQUlOX0RQTExfRENfT0ZGKTsKPiArCX0KPiArCj4gIAlp
Y2xfcGxsX3Bvd2VyX2VuYWJsZShkZXZfcHJpdiwgcGxsLCBlbmFibGVfcmVnKTsKPiAgCj4gIAlp
Y2xfZHBsbF93cml0ZShkZXZfcHJpdiwgcGxsKTsKPiBAQCAtMzE1Miw3ICszMTc1LDE5IEBAIHN0
YXRpYyB2b2lkIGljbF9wbGxfZGlzYWJsZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsCj4gIHN0YXRpYyB2b2lkIGNvbWJvX3BsbF9kaXNhYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwKPiAgCQkJICAgICAgc3RydWN0IGludGVsX3NoYXJlZF9kcGxsICpwbGwp
Cj4gIHsKPiAtCWljbF9wbGxfZGlzYWJsZShkZXZfcHJpdiwgcGxsLCBDTkxfRFBMTF9FTkFCTEUo
cGxsLT5pbmZvLT5pZCkpOwo+ICsJaTkxNV9yZWdfdCBlbmFibGVfcmVnID0gQ05MX0RQTExfRU5B
QkxFKHBsbC0+aW5mby0+aWQpOwo+ICsKPiArCWlmIChJU19FTEtIQVJUTEFLRShkZXZfcHJpdikg
JiYKPiArCSAgICBwbGwtPmluZm8tPmlkID09IERQTExfSURfRUhMX0RQTEw0KSB7Cj4gKwkJZW5h
YmxlX3JlZyA9IE1HX1BMTF9FTkFCTEUoMCk7Cj4gKwkJaWNsX3BsbF9kaXNhYmxlKGRldl9wcml2
LCBwbGwsIGVuYWJsZV9yZWcpOwo+ICsKPiArCQlpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1dChkZXZf
cHJpdiwgUE9XRVJfRE9NQUlOX0RQTExfRENfT0ZGLAo+ICsJCQkJCXBsbC0+d2FrZXJlZik7Cj4g
KwkJcmV0dXJuOwo+ICsJfQo+ICsKPiArCWljbF9wbGxfZGlzYWJsZShkZXZfcHJpdiwgcGxsLCBl
bmFibGVfcmVnKTsKPiAgfQo+ICAKPiAgc3RhdGljIHZvaWQgdGJ0X3BsbF9kaXNhYmxlKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiBAQCAtMzIzMCw2ICszMjY1LDcgQEAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kcGxsX21nciBpY2xfcGxsX21nciA9IHsKPiAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBkcGxsX2luZm8gZWhsX3BsbHNbXSA9IHsKPiAgCXsgIkRQTEwgMCIsICZj
b21ib19wbGxfZnVuY3MsIERQTExfSURfSUNMX0RQTEwwLCAwIH0sCj4gIAl7ICJEUExMIDEiLCAm
Y29tYm9fcGxsX2Z1bmNzLCBEUExMX0lEX0lDTF9EUExMMSwgMCB9LAo+ICsJeyAiRFBMTCA0Iiwg
JmNvbWJvX3BsbF9mdW5jcywgRFBMTF9JRF9FSExfRFBMTDQsIDAgfSwKPiAgCXsgfSwKPiAgfTsK
PiAgCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBs
bF9tZ3IuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuaAo+
IGluZGV4IGQwNTcwNDE0ZjNkMS4uM2UyYWExMDk5NTYyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuaAo+IEBAIC0yOCw2ICsyOCw3IEBACj4g
ICNpbmNsdWRlIDxsaW51eC90eXBlcy5oPgo+ICAKPiAgI2luY2x1ZGUgImludGVsX2Rpc3BsYXku
aCIKPiArI2luY2x1ZGUgImludGVsX3dha2VyZWYuaCIKPiAgCj4gIC8qRklYTUU6IE1vdmUgdGhp
cyB0byBhIG1vcmUgYXBwcm9wcmlhdGUgcGxhY2UuICovCj4gICNkZWZpbmUgYWJzX2RpZmYoYSwg
YikgKHsJCQlcCj4gQEAgLTExNyw2ICsxMTgsMTAgQEAgZW51bSBpbnRlbF9kcGxsX2lkIHsKPiAg
CSAqIEBEUExMX0lEX0lDTF9EUExMMTogSUNMIGNvbWJvIFBIWSBEUExMMQo+ICAJICovCj4gIAlE
UExMX0lEX0lDTF9EUExMMSA9IDEsCj4gKwkvKioKPiArCSAqIEBEUExMX0lEX0VITF9EUExMNDog
RUhMIGNvbWJvIFBIWSBEUExMNAo+ICsJICovCj4gKwlEUExMX0lEX0VITF9EUExMNCA9IDIsCj4g
IAkvKioKPiAgCSAqIEBEUExMX0lEX0lDTF9UQlRQTEw6IElDTCBUQlQgUExMCj4gIAkgKi8KPiBA
QCAtMzEyLDYgKzMxNyw3IEBAIHN0cnVjdCBpbnRlbF9zaGFyZWRfZHBsbCB7Cj4gIAkgKiBAaW5m
bzogcGxhdGZvcm0gc3BlY2lmaWMgaW5mbwo+ICAJICovCj4gIAljb25zdCBzdHJ1Y3QgZHBsbF9p
bmZvICppbmZvOwo+ICsJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7Cj4gIH07Cj4gIAo+ICAjZGVm
aW5lIFNLTF9EUExMMCAwCj4gLS0gCj4gMi4yMS4wCgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVs
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
