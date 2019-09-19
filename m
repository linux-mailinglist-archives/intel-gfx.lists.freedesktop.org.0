Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C02B7E10
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 17:22:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAC0A6F492;
	Thu, 19 Sep 2019 15:22:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 288CF6F492
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 15:22:18 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 08:22:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,523,1559545200"; d="scan'208";a="186834144"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.135])
 by fmsmga008.fm.intel.com with ESMTP; 19 Sep 2019 08:22:15 -0700
Date: Thu, 19 Sep 2019 08:22:18 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20190919152218.GF28384@mdroper-desk1.amr.corp.intel.com>
References: <20190918235626.3750-1-matthew.d.roper@intel.com>
 <20190918235626.3750-2-matthew.d.roper@intel.com>
 <f71be50e7331032b0fd9cafd60b5d6e3bb543649.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f71be50e7331032b0fd9cafd60b5d6e3bb543649.camel@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Unify ICP and MCC hotplug pin
 tables
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBTZXAgMTgsIDIwMTkgYXQgMDU6NDU6MjdQTSAtMDcwMCwgU291emEsIEpvc2Ugd3Jv
dGU6Cj4gT24gV2VkLCAyMDE5LTA5LTE4IGF0IDE2OjU2IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3Rl
Ogo+ID4gVGhlIE1DQyBocGQgdGFibGUgaXMganVzdCBhIHN1YnNldCBvZiB0aGUgSUNQIHRhYmxl
OyB3ZSBjYW4gZWxpbWluYXRlCj4gPiBpdAo+ID4gYW5kIHVzZSB0aGUgSUNQIHRhYmxlIGV2ZXJ5
d2hlcmUuICBUaGUgZXh0cmEgcGlucyBpbiB0aGUgdGFibGUgd29uJ3QKPiA+IGJlCj4gPiBhIHBy
b2JsZW0gZm9yIE1DQyBzaW5jZSB3ZSBzdGlsbCBzdXBwbHkgYW4gYXBwcm9wcmlhdGUgaG90cGx1
Zwo+ID4gdHJpZ2dlcgo+ID4gbWFzayBhbnl3aGVyZSB0aGUgcGluIHRhYmxlIGlzIHVzZWQuCj4g
PiAKPiAKPiBSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+CgpBcHBsaWVkIGJvdGggdG8gZGlucS4gIFRoYW5rcyBmb3IgdGhlIHJldmlld3Mu
CgoKTWF0dAoKPiAKPiA+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBp
bnRlbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIHwg
MTAgKystLS0tLS0tLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDggZGVs
ZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2lycS5jCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKPiA+IGluZGV4IGFl
NzIyODAzMmQyYy4uYmM4M2YwOTQwNjVhIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9pcnEuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEu
Ywo+ID4gQEAgLTE1NywxMiArMTU3LDYgQEAgc3RhdGljIGNvbnN0IHUzMiBocGRfaWNwW0hQRF9O
VU1fUElOU10gPSB7Cj4gPiAgCVtIUERfUE9SVF9GXSA9IFNERV9UQ19IT1RQTFVHX0lDUChQT1JU
X1RDNCksCj4gPiAgfTsKPiA+ICAKPiA+IC1zdGF0aWMgY29uc3QgdTMyIGhwZF9tY2NbSFBEX05V
TV9QSU5TXSA9IHsKPiA+IC0JW0hQRF9QT1JUX0FdID0gU0RFX0RESV9IT1RQTFVHX0lDUChQT1JU
X0EpLAo+ID4gLQlbSFBEX1BPUlRfQl0gPSBTREVfRERJX0hPVFBMVUdfSUNQKFBPUlRfQiksCj4g
PiAtCVtIUERfUE9SVF9DXSA9IFNERV9UQ19IT1RQTFVHX0lDUChQT1JUX1RDMSksCj4gPiAtfTsK
PiA+IC0KPiA+ICBzdGF0aWMgY29uc3QgdTMyIGhwZF90Z3BbSFBEX05VTV9QSU5TXSA9IHsKPiA+
ICAJW0hQRF9QT1JUX0FdID0gU0RFX0RESV9IT1RQTFVHX0lDUChQT1JUX0EpLAo+ID4gIAlbSFBE
X1BPUlRfQl0gPSBTREVfRERJX0hPVFBMVUdfSUNQKFBPUlRfQiksCj4gPiBAQCAtMjI1OCw3ICsy
MjUyLDcgQEAgc3RhdGljIHZvaWQgaWNwX2lycV9oYW5kbGVyKHN0cnVjdAo+ID4gZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsIHUzMiBwY2hfaWlyKQo+ID4gIAl9IGVsc2UgaWYgKEhBU19QQ0hf
TUNDKGRldl9wcml2KSkgewo+ID4gIAkJZGRpX2hvdHBsdWdfdHJpZ2dlciA9IHBjaF9paXIgJiBT
REVfRERJX01BU0tfVEdQOwo+ID4gIAkJdGNfaG90cGx1Z190cmlnZ2VyID0gMDsKPiA+IC0JCXBp
bnMgPSBocGRfbWNjOwo+ID4gKwkJcGlucyA9IGhwZF9pY3A7Cj4gPiAgCX0gZWxzZSB7Cj4gPiAg
CQlkZGlfaG90cGx1Z190cmlnZ2VyID0gcGNoX2lpciAmIFNERV9ERElfTUFTS19JQ1A7Cj4gPiAg
CQl0Y19ob3RwbHVnX3RyaWdnZXIgPSBwY2hfaWlyICYgU0RFX1RDX01BU0tfSUNQOwo+ID4gQEAg
LTM0MzQsNyArMzQyOCw3IEBAIHN0YXRpYyB2b2lkIG1jY19ocGRfaXJxX3NldHVwKHN0cnVjdAo+
ID4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gPiAgCWljcF9ocGRfaXJxX3NldHVwKGRl
dl9wcml2LAo+ID4gIAkJCSAgU0RFX0RESV9NQVNLX1RHUCwgMCwKPiA+ICAJCQkgIFRHUF9ERElf
SFBEX0VOQUJMRV9NQVNLLCAwLAo+ID4gLQkJCSAgaHBkX21jYyk7Cj4gPiArCQkJICBocGRfaWNw
KTsKPiA+ICB9Cj4gPiAgCj4gPiAgc3RhdGljIHZvaWQgZ2VuMTFfaHBkX2RldGVjdGlvbl9zZXR1
cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZQo+ID4gKmRldl9wcml2KQoKLS0gCk1hdHQgUm9wZXIK
R3JhcGhpY3MgU29mdHdhcmUgRW5naW5lZXIKVlRULU9TR0MgUGxhdGZvcm0gRW5hYmxlbWVudApJ
bnRlbCBDb3Jwb3JhdGlvbgooOTE2KSAzNTYtMjc5NQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
