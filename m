Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 601DA130DD
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 17:05:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 024976E7E2;
	Fri,  3 May 2019 15:05:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 418466E7E2
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 15:05:36 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 08:05:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,426,1549958400"; d="scan'208";a="229008280"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 03 May 2019 08:05:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2019 18:05:32 +0300
Date: Fri, 3 May 2019 18:05:32 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Shashank Sharma <shashank.sharma@intel.com>
Message-ID: <20190503150532.GQ24299@intel.com>
References: <20190430152108.31814-1-shashank.sharma@intel.com>
 <20190430152108.31814-3-shashank.sharma@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430152108.31814-3-shashank.sharma@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 2/4] drm/i915/icl: Add register
 definitions for Multi Segmented gamma
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

T24gVHVlLCBBcHIgMzAsIDIwMTkgYXQgMDg6NTE6MDZQTSArMDUzMCwgU2hhc2hhbmsgU2hhcm1h
IHdyb3RlOgo+IEZyb206IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+Cj4gCj4g
QWRkIG1hY3JvcyB0byBkZWZpbmUgbXVsdGkgc2VnbWVudGVkIGdhbW1hIHJlZ2lzdGVycwo+IAo+
IFYyOiBBZGRyZXNzZWQgVmlsbGUncyBjb21tZW50czoKPiAgICAgCUFkZCBnZW4tbGFibGUgYmVm
b3JlIGJpdCBkZWZpbml0aW9uCj4gICAgIEFkZHJlc3NlZCBKYW5pJ3MgY29tbWVudAo+IAktIFVz
ZSBSRUdfR0VOTUFTSygpIGFuZCBSRUdfQklUKCkKPiAKPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlr
dWxhQGxpbnV4LmludGVsLmNvbT4KPiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFu
a2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBVbWEgU2hhbmthciA8dW1h
LnNoYW5rYXJAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFNoYXNoYW5rIFNoYXJtYSA8c2hh
c2hhbmsuc2hhcm1hQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaCB8IDE5ICsrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDE5IGlu
c2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiBpbmRleCA2ZjBhMDg2NmM4
MDIuLjdkMTBiOGQwMGQ2NCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+IEBAIC03MTk4
LDcgKzcxOTgsMTAgQEAgZW51bSB7Cj4gICNkZWZpbmUgIEdBTU1BX01PREVfTU9ERV84QklUCSgw
IDw8IDApCj4gICNkZWZpbmUgIEdBTU1BX01PREVfTU9ERV8xMEJJVAkoMSA8PCAwKQo+ICAjZGVm
aW5lICBHQU1NQV9NT0RFX01PREVfMTJCSVQJKDIgPDwgMCkKPiArLyogaXZiLWJkdyAqLwo+ICAj
ZGVmaW5lICBHQU1NQV9NT0RFX01PREVfU1BMSVQJKDMgPDwgMCkKPiArLyogaWNsICsgKi8KPiAr
I2RlZmluZSAgR0FNTUFfTU9ERV9NT0RFXzEyQklUX01VTFRJX1NFR01FTlRFRAkoMyA8PCAwKQoK
SSB3b3VsZCBwdXQgdGhlIGNvbW1lbnRzIGF0IHRoZSBlbmQgb2YgdGhlIGxpbmUKI2RlZmluZSAu
Li4gLyogaXZiLWJkdyAqLwoKPiAgCj4gIC8qIERNQy9DU1IgKi8KPiAgI2RlZmluZSBDU1JfUFJP
R1JBTShpKQkJX01NSU8oMHg4MDAwMCArIChpKSAqIDQpCj4gQEAgLTEwMTQ1LDYgKzEwMTQ4LDIy
IEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgewo+ICAjZGVmaW5lIFBSRV9DU0NfR0FNQ19JTkRFWChw
aXBlKQlfTU1JT19QSVBFKHBpcGUsIF9QUkVfQ1NDX0dBTUNfSU5ERVhfQSwgX1BSRV9DU0NfR0FN
Q19JTkRFWF9CKQo+ICAjZGVmaW5lIFBSRV9DU0NfR0FNQ19EQVRBKHBpcGUpCQlfTU1JT19QSVBF
KHBpcGUsIF9QUkVfQ1NDX0dBTUNfREFUQV9BLCBfUFJFX0NTQ19HQU1DX0RBVEFfQikKPiAgCj4g
Ky8qIEFkZCByZWdpc3RlcnMgZm9yIEdlbjExIE11bHRpIFNlZ21lbnRlZCBHYW1tYSBNb2RlICov
CgpXZWlyZCBjb21tZW50LiAncy9BZGQgcmVnaXN0ZXJzIGZvciAvLycgbWlnaHQgbWFrZSBpdCBz
b21ld2hhdCB1c2VmdWwuCkFuZCBubyBwb2ludCBpbiBjYXBpdGFsaXppbmcgZXZlcnkgd29yZC4g
VGhpcyBpc24ndCBhIG1vdmllIHRpdGxlL2V0Yy4KCldpdGggdGhvc2Ugc29ydGVkIHRoaXMgaXMK
UmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+Cgo+ICsjZGVmaW5lIF9QQUxfUFJFQ19NVUxUSV9TRUdfSU5ERVhfQQkweDRBNDA4Cj4gKyNk
ZWZpbmUgX1BBTF9QUkVDX01VTFRJX1NFR19JTkRFWF9CCTB4NEFDMDgKPiArI2RlZmluZSAgUEFM
X1BSRUNfTVVMVElfU0VHTUVOVF9BVVRPX0lOQ1JFTUVOVAkJUkVHX0JJVCgxNSkKPiArI2RlZmlu
ZSAgUEFMX1BSRUNfTVVMVElfU0VHTUVOVF9JTkRFWF9WQUxVRV9NQVNLCVJFR19HRU5NQVNLKDQs
IDApCj4gKwo+ICsjZGVmaW5lIF9QQUxfUFJFQ19NVUxUSV9TRUdfREFUQV9BCTB4NEE0MEMKPiAr
I2RlZmluZSBfUEFMX1BSRUNfTVVMVElfU0VHX0RBVEFfQgkweDRBQzBDCj4gKwo+ICsjZGVmaW5l
IFBSRUNfUEFMX01VTFRJX1NFR19JTkRFWChwaXBlKQlfTU1JT19QSVBFKHBpcGUsIFwKPiArCQkJ
CQlfUEFMX1BSRUNfTVVMVElfU0VHX0lOREVYX0EsIFwKPiArCQkJCQlfUEFMX1BSRUNfTVVMVElf
U0VHX0lOREVYX0IpCj4gKyNkZWZpbmUgUFJFQ19QQUxfTVVMVElfU0VHX0RBVEEocGlwZSkJX01N
SU9fUElQRShwaXBlLCBcCj4gKwkJCQkJX1BBTF9QUkVDX01VTFRJX1NFR19EQVRBX0EsIFwKPiAr
CQkJCQlfUEFMX1BSRUNfTVVMVElfU0VHX0RBVEFfQikKPiArCj4gIC8qIHBpcGUgQ1NDICYgZGVn
YW1tYS9nYW1tYSBMVVRzIG9uIENIViAqLwo+ICAjZGVmaW5lIF9DR01fUElQRV9BX0NTQ19DT0VG
RjAxCShWTFZfRElTUExBWV9CQVNFICsgMHg2NzkwMCkKPiAgI2RlZmluZSBfQ0dNX1BJUEVfQV9D
U0NfQ09FRkYyMwkoVkxWX0RJU1BMQVlfQkFTRSArIDB4Njc5MDQpCj4gLS0gCj4gMi4xNy4xCgot
LSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
