Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97FF0A2A89
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 01:08:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CAF46E227;
	Thu, 29 Aug 2019 23:08:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C43DC6E227
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 23:08:25 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Aug 2019 16:08:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,445,1559545200"; d="scan'208";a="175422070"
Received: from mdroper-desk.fm.intel.com (HELO
 mdroper-desk.amr.corp.intel.com) ([10.105.128.12])
 by orsmga008.jf.intel.com with ESMTP; 29 Aug 2019 16:08:24 -0700
Date: Thu, 29 Aug 2019 16:08:24 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20190829230824.GU13677@mdroper-desk.amr.corp.intel.com>
References: <20190829211526.30525-1-jose.souza@intel.com>
 <20190829211526.30525-3-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829211526.30525-3-jose.souza@intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: parameterize SDE hotplug
 registers
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBBdWcgMjksIDIwMTkgYXQgMDI6MTU6MjVQTSAtMDcwMCwgSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSB3cm90ZToKPiBGcm9tOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGlu
dGVsLmNvbT4KPiAKPiBJY2UgTGFrZSwgVGlnZXIgTGFrZSBhbmQgRWxraGFydCBMYWtlIGFsbCBo
YXZlIGRpZmZlcmVudCBwb3J0Cj4gY29uZmlndXJhdGlvbnMgYW5kIGFsbCBvZiB0aGVtIGNhbiBi
ZSBwYXJhbWV0ZXJpemVkIHRoZSBzYW1lIHdheSB0byBmb3JtCj4gdGhlIFNERSBob3RwbHVnIGJp
dG1hc2suIEF2b2lkIG1ha2luZyB0aGVtIGEgc3BlY2lhbCBjYXNlIGFuIGp1c3QgdXNlCj4gdGhl
IHBhcmFtZXRlcml6ZWQgbWFjcm9zLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNo
aSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IE1hdHQgUm9wZXIgPG1h
dHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2lycS5jIHwgMzYgKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggfCAzNSArKysrKysrKysrKysrKy0tLS0tLS0tLS0t
LS0tLS0tLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDMzIGluc2VydGlvbnMoKyksIDM4IGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYwo+IGluZGV4IDVmNTkwOTg3ZGNkNS4uNTQx
MzgyODMyMTI2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCj4gQEAgLTE0OSwzMCArMTQ5
LDMwIEBAIHN0YXRpYyBjb25zdCB1MzIgaHBkX2dlbjEyW0hQRF9OVU1fUElOU10gPSB7Cj4gIH07
Cj4gIAo+ICBzdGF0aWMgY29uc3QgdTMyIGhwZF9pY3BbSFBEX05VTV9QSU5TXSA9IHsKPiAtCVtI
UERfUE9SVF9BXSA9IFNERV9ERElBX0hPVFBMVUdfSUNQLAo+IC0JW0hQRF9QT1JUX0JdID0gU0RF
X0RESUJfSE9UUExVR19JQ1AsCj4gLQlbSFBEX1BPUlRfQ10gPSBTREVfVEMxX0hPVFBMVUdfSUNQ
LAo+IC0JW0hQRF9QT1JUX0RdID0gU0RFX1RDMl9IT1RQTFVHX0lDUCwKPiAtCVtIUERfUE9SVF9F
XSA9IFNERV9UQzNfSE9UUExVR19JQ1AsCj4gLQlbSFBEX1BPUlRfRl0gPSBTREVfVEM0X0hPVFBM
VUdfSUNQCj4gKwlbSFBEX1BPUlRfQV0gPSBTREVfRERJX0hPVFBMVUdfSUNQKFBPUlRfQSksCj4g
KwlbSFBEX1BPUlRfQl0gPSBTREVfRERJX0hPVFBMVUdfSUNQKFBPUlRfQiksCj4gKwlbSFBEX1BP
UlRfQ10gPSBTREVfVENfSE9UUExVR19JQ1AoUE9SVF9UQzEpLAo+ICsJW0hQRF9QT1JUX0RdID0g
U0RFX1RDX0hPVFBMVUdfSUNQKFBPUlRfVEMyKSwKPiArCVtIUERfUE9SVF9FXSA9IFNERV9UQ19I
T1RQTFVHX0lDUChQT1JUX1RDMyksCj4gKwlbSFBEX1BPUlRfRl0gPSBTREVfVENfSE9UUExVR19J
Q1AoUE9SVF9UQzQpLAo+ICB9Owo+ICAKPiAgc3RhdGljIGNvbnN0IHUzMiBocGRfbWNjW0hQRF9O
VU1fUElOU10gPSB7Cj4gLQlbSFBEX1BPUlRfQV0gPSBTREVfRERJQV9IT1RQTFVHX0lDUCwKPiAt
CVtIUERfUE9SVF9CXSA9IFNERV9ERElCX0hPVFBMVUdfSUNQLAo+IC0JW0hQRF9QT1JUX0NdID0g
U0RFX1RDMV9IT1RQTFVHX0lDUAo+ICsJW0hQRF9QT1JUX0FdID0gU0RFX0RESV9IT1RQTFVHX0lD
UChQT1JUX0EpLAo+ICsJW0hQRF9QT1JUX0JdID0gU0RFX0RESV9IT1RQTFVHX0lDUChQT1JUX0Ip
LAo+ICsJW0hQRF9QT1JUX0NdID0gU0RFX1RDX0hPVFBMVUdfSUNQKFBPUlRfVEMxKSwKPiAgfTsK
PiAgCj4gIHN0YXRpYyBjb25zdCB1MzIgaHBkX3RncFtIUERfTlVNX1BJTlNdID0gewo+IC0JW0hQ
RF9QT1JUX0FdID0gU0RFX0RESUFfSE9UUExVR19JQ1AsCj4gLQlbSFBEX1BPUlRfQl0gPSBTREVf
RERJQl9IT1RQTFVHX0lDUCwKPiAtCVtIUERfUE9SVF9DXSA9IFNERV9ERElDX0hPVFBMVUdfVEdQ
LAo+IC0JW0hQRF9QT1JUX0RdID0gU0RFX1RDMV9IT1RQTFVHX0lDUCwKPiAtCVtIUERfUE9SVF9F
XSA9IFNERV9UQzJfSE9UUExVR19JQ1AsCj4gLQlbSFBEX1BPUlRfRl0gPSBTREVfVEMzX0hPVFBM
VUdfSUNQLAo+IC0JW0hQRF9QT1JUX0ddID0gU0RFX1RDNF9IT1RQTFVHX0lDUCwKPiAtCVtIUERf
UE9SVF9IXSA9IFNERV9UQzVfSE9UUExVR19UR1AsCj4gLQlbSFBEX1BPUlRfSV0gPSBTREVfVEM2
X0hPVFBMVUdfVEdQLAo+ICsJW0hQRF9QT1JUX0FdID0gU0RFX0RESV9IT1RQTFVHX0lDUChQT1JU
X0EpLAo+ICsJW0hQRF9QT1JUX0JdID0gU0RFX0RESV9IT1RQTFVHX0lDUChQT1JUX0IpLAo+ICsJ
W0hQRF9QT1JUX0NdID0gU0RFX0RESV9IT1RQTFVHX0lDUChQT1JUX0MpLAo+ICsJW0hQRF9QT1JU
X0RdID0gU0RFX1RDX0hPVFBMVUdfSUNQKFBPUlRfVEMxKSwKPiArCVtIUERfUE9SVF9FXSA9IFNE
RV9UQ19IT1RQTFVHX0lDUChQT1JUX1RDMiksCj4gKwlbSFBEX1BPUlRfRl0gPSBTREVfVENfSE9U
UExVR19JQ1AoUE9SVF9UQzMpLAo+ICsJW0hQRF9QT1JUX0ddID0gU0RFX1RDX0hPVFBMVUdfSUNQ
KFBPUlRfVEM0KSwKPiArCVtIUERfUE9SVF9IXSA9IFNERV9UQ19IT1RQTFVHX0lDUChQT1JUX1RD
NSksCj4gKwlbSFBEX1BPUlRfSV0gPSBTREVfVENfSE9UUExVR19JQ1AoUE9SVF9UQzYpLAo+ICB9
Owo+ICAKPiAgdm9pZCBnZW4zX2lycV9yZXNldChzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUs
IGk5MTVfcmVnX3QgaW1yLAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+IGluZGV4IGEzZjg3MTE1
ZGEwYS4uMmJhMjVjMTgzODliIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gQEAgLTc4
MzksMjkgKzc4MzksMjQgQEAgZW51bSB7Cj4gIAkJCQkgU0RFX0ZESV9SWEFfQ1BUKQo+ICAKPiAg
Lyogc291dGggZGlzcGxheSBlbmdpbmUgaW50ZXJydXB0OiBJQ1AvVEdQICovCj4gLSNkZWZpbmUg
U0RFX1RDNl9IT1RQTFVHX1RHUAkJKDEgPDwgMjkpCj4gLSNkZWZpbmUgU0RFX1RDNV9IT1RQTFVH
X1RHUAkJKDEgPDwgMjgpCj4gLSNkZWZpbmUgU0RFX1RDNF9IT1RQTFVHX0lDUAkJKDEgPDwgMjcp
Cj4gLSNkZWZpbmUgU0RFX1RDM19IT1RQTFVHX0lDUAkJKDEgPDwgMjYpCj4gLSNkZWZpbmUgU0RF
X1RDMl9IT1RQTFVHX0lDUAkJKDEgPDwgMjUpCj4gLSNkZWZpbmUgU0RFX1RDMV9IT1RQTFVHX0lD
UAkJKDEgPDwgMjQpCj4gICNkZWZpbmUgU0RFX0dNQlVTX0lDUAkJCSgxIDw8IDIzKQo+IC0jZGVm
aW5lIFNERV9ERElDX0hPVFBMVUdfVEdQCQkoMSA8PCAxOCkKPiAtI2RlZmluZSBTREVfRERJQl9I
T1RQTFVHX0lDUAkJKDEgPDwgMTcpCj4gLSNkZWZpbmUgU0RFX0RESUFfSE9UUExVR19JQ1AJCSgx
IDw8IDE2KQo+ICAjZGVmaW5lIFNERV9UQ19IT1RQTFVHX0lDUCh0Y19wb3J0KQkoMSA8PCAoKHRj
X3BvcnQpICsgMjQpKQo+ICAjZGVmaW5lIFNERV9ERElfSE9UUExVR19JQ1AocG9ydCkJKDEgPDwg
KChwb3J0KSArIDE2KSkKPiAtI2RlZmluZSBTREVfRERJX01BU0tfSUNQCQkoU0RFX0RESUJfSE9U
UExVR19JQ1AgfAlcCj4gLQkJCQkJIFNERV9ERElBX0hPVFBMVUdfSUNQKQo+IC0jZGVmaW5lIFNE
RV9UQ19NQVNLX0lDUAkJCShTREVfVEM0X0hPVFBMVUdfSUNQIHwJXAo+IC0JCQkJCSBTREVfVEMz
X0hPVFBMVUdfSUNQIHwJXAo+IC0JCQkJCSBTREVfVEMyX0hPVFBMVUdfSUNQIHwJXAo+IC0JCQkJ
CSBTREVfVEMxX0hPVFBMVUdfSUNQKQo+IC0jZGVmaW5lIFNERV9ERElfTUFTS19UR1AJCShTREVf
RERJQ19IT1RQTFVHX1RHUCB8IFwKPiAtCQkJCQkgU0RFX0RESV9NQVNLX0lDUCkKPiAtI2RlZmlu
ZSBTREVfVENfTUFTS19UR1AJCQkoU0RFX1RDNl9IT1RQTFVHX1RHUCB8CVwKPiAtCQkJCQkgU0RF
X1RDNV9IT1RQTFVHX1RHUCB8CVwKPiAtCQkJCQkgU0RFX1RDX01BU0tfSUNQKQo+ICsjZGVmaW5l
IFNERV9ERElfTUFTS19JQ1AJCShTREVfRERJX0hPVFBMVUdfSUNQKFBPUlRfQikgfCBcCj4gKwkJ
CQkJIFNERV9ERElfSE9UUExVR19JQ1AoUE9SVF9BKSkKPiArI2RlZmluZSBTREVfVENfTUFTS19J
Q1AJCQkoU0RFX1RDX0hPVFBMVUdfSUNQKFBPUlRfVEM0KSB8IFwKPiArCQkJCQkgU0RFX1RDX0hP
VFBMVUdfSUNQKFBPUlRfVEMzKSB8IFwKPiArCQkJCQkgU0RFX1RDX0hPVFBMVUdfSUNQKFBPUlRf
VEMyKSB8IFwKPiArCQkJCQkgU0RFX1RDX0hPVFBMVUdfSUNQKFBPUlRfVEMxKSkKPiArI2RlZmlu
ZSBTREVfRERJX01BU0tfVEdQCQkoU0RFX0RESV9IT1RQTFVHX0lDUChQT1JUX0MpIHwgXAo+ICsJ
CQkJCSBTREVfRERJX0hPVFBMVUdfSUNQKFBPUlRfQikgfCBcCj4gKwkJCQkJIFNERV9ERElfSE9U
UExVR19JQ1AoUE9SVF9BKSkKPiArI2RlZmluZSBTREVfVENfTUFTS19UR1AJCQkoU0RFX1RDX0hP
VFBMVUdfSUNQKFBPUlRfVEM2KSB8IFwKPiArCQkJCQkgU0RFX1RDX0hPVFBMVUdfSUNQKFBPUlRf
VEM1KSB8IFwKPiArCQkJCQkgU0RFX1RDX0hPVFBMVUdfSUNQKFBPUlRfVEM0KSB8IFwKPiArCQkJ
CQkgU0RFX1RDX0hPVFBMVUdfSUNQKFBPUlRfVEMzKSB8IFwKPiArCQkJCQkgU0RFX1RDX0hPVFBM
VUdfSUNQKFBPUlRfVEMyKSB8IFwKPiArCQkJCQkgU0RFX1RDX0hPVFBMVUdfSUNQKFBPUlRfVEMx
KSkKPiAgCj4gICNkZWZpbmUgU0RFSVNSICBfTU1JTygweGM0MDAwKQo+ICAjZGVmaW5lIFNERUlN
UiAgX01NSU8oMHhjNDAwNCkKPiAtLSAKPiAyLjIzLjAKPiAKPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKCi0tIApNYXR0IFJvcGVyCkdyYXBoaWNz
IFNvZnR3YXJlIEVuZ2luZWVyClZUVC1PU0dDIFBsYXRmb3JtIEVuYWJsZW1lbnQKSW50ZWwgQ29y
cG9yYXRpb24KKDkxNikgMzU2LTI3OTUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
