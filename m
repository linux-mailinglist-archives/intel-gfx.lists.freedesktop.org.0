Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C77D3DA26A
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 01:46:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24B066E9E0;
	Wed, 16 Oct 2019 23:46:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ADAF6E9E1
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 23:46:46 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 16:46:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,305,1566889200"; d="scan'208";a="397341616"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.135])
 by fmsmga006.fm.intel.com with ESMTP; 16 Oct 2019 16:46:45 -0700
Date: Wed, 16 Oct 2019 16:47:21 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Vivek Kasireddy <vivek.kasireddy@intel.com>
Message-ID: <20191016234721.GA22338@mdroper-desk1.amr.corp.intel.com>
References: <20191016183514.11128-1-vivek.kasireddy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016183514.11128-1-vivek.kasireddy@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Correct the PCH type in irq
 postinstall
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

T24gV2VkLCBPY3QgMTYsIDIwMTkgYXQgMTE6MzU6MTRBTSAtMDcwMCwgVml2ZWsgS2FzaXJlZGR5
IHdyb3RlOgo+IEphc3Blckxha2UgUENIIChKU1ApIGhhcyBEREkgSFBEIHBpbiBtYXBwaW5ncyBz
aW1pbGFyIHRvIFRHUCBhbmQgbm90Cj4gTUNDLiBBbHNvIGFkZCB0aGUgY29ycmVjdCBIUEQgcGlu
IG1hcHBpbmdzIGZvciB0aGUgTUNDIFBDSC4KPiAKPiBDYzogTWF0dCBSb3BlciA8bWF0dGhldy5k
LnJvcGVyQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBWaXZlayBLYXNpcmVkZHkgPHZpdmVr
Lmthc2lyZWRkeUBpbnRlbC5jb20+CgpXb29wcywgeWVzLiAgR29vZCBjYXRjaC4KClJldmlld2Vk
LWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgoKPiAtLS0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyB8IDUgKysrKy0KPiAgMSBmaWxlIGNoYW5nZWQs
IDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEu
Ywo+IGluZGV4IGVmMDlmYmIzNmYzNy4uZTYxOGY0NjIxMzA4IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2lycS5jCj4gQEAgLTM4MDMsOCArMzgwMywxMSBAQCBzdGF0aWMgdm9pZCBpY3BfaXJxX3Bv
c3RpbnN0YWxsKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgCWlmIChIQVNf
UENIX1RHUChkZXZfcHJpdikpCj4gIAkJaWNwX2hwZF9kZXRlY3Rpb25fc2V0dXAoZGV2X3ByaXYs
IFRHUF9ERElfSFBEX0VOQUJMRV9NQVNLLAo+ICAJCQkJCVRHUF9UQ19IUERfRU5BQkxFX01BU0sp
Owo+IC0JZWxzZSBpZiAoSEFTX1BDSF9NQ0MoZGV2X3ByaXYpKQo+ICsJZWxzZSBpZiAoSEFTX1BD
SF9KU1AoZGV2X3ByaXYpKQo+ICAJCWljcF9ocGRfZGV0ZWN0aW9uX3NldHVwKGRldl9wcml2LCBU
R1BfRERJX0hQRF9FTkFCTEVfTUFTSywgMCk7Cj4gKwllbHNlIGlmIChIQVNfUENIX01DQyhkZXZf
cHJpdikpCj4gKwkJaWNwX2hwZF9kZXRlY3Rpb25fc2V0dXAoZGV2X3ByaXYsIElDUF9ERElfSFBE
X0VOQUJMRV9NQVNLLAo+ICsJCQkJCUlDUF9UQ19IUERfRU5BQkxFKFBPUlRfVEMxKSk7Cj4gIAll
bHNlCj4gIAkJaWNwX2hwZF9kZXRlY3Rpb25fc2V0dXAoZGV2X3ByaXYsIElDUF9ERElfSFBEX0VO
QUJMRV9NQVNLLAo+ICAJCQkJCUlDUF9UQ19IUERfRU5BQkxFX01BU0spOwo+IC0tIAo+IDIuMjEu
MAo+IAoKLS0gCk1hdHQgUm9wZXIKR3JhcGhpY3MgU29mdHdhcmUgRW5naW5lZXIKVlRULU9TR0Mg
UGxhdGZvcm0gRW5hYmxlbWVudApJbnRlbCBDb3Jwb3JhdGlvbgooOTE2KSAzNTYtMjc5NQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
