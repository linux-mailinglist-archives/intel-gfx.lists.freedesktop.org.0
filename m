Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7C7553A9
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 17:43:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E959188668;
	Tue, 25 Jun 2019 15:43:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE56788668
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 15:43:51 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 08:43:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,416,1557212400"; d="scan'208";a="245111383"
Received: from mdroper-desk.fm.intel.com (HELO
 mdroper-desk.amr.corp.intel.com) ([10.105.128.126])
 by orsmga001.jf.intel.com with ESMTP; 25 Jun 2019 08:43:50 -0700
Date: Tue, 25 Jun 2019 08:43:50 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20190625154350.GG24125@mdroper-desk.amr.corp.intel.com>
References: <20190621151847.31302-1-matthew.d.roper@intel.com>
 <b2a8142ae665c2305eccbab128935664a83c4319.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b2a8142ae665c2305eccbab128935664a83c4319.camel@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ehl: Add one additional PCH ID to
 MCC
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

T24gRnJpLCBKdW4gMjEsIDIwMTkgYXQgMDE6MDc6MDVQTSAtMDcwMCwgU291emEsIEpvc2Ugd3Jv
dGU6Cj4gT24gRnJpLCAyMDE5LTA2LTIxIGF0IDA4OjE4IC0wNzAwLCBNYXR0IFJvcGVyIHdyb3Rl
Ogo+ID4gVGhlcmUncyBvbmUgYWRkaXRpb25hbCBJRCB0aGF0IHdlIHNob3VsZCB0cmVhdCBhcyBN
dWxlIENyZWVrIENhbnlvbi4KPiA+IAo+IAo+IFJldmlld2VkLWJ5OiBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KClRoYW5rcyBmb3IgdGhlIHJldmlldy4gIEFw
cGxpZWQgdG8gZGlucS4KCgpNYXR0Cgo+IAo+ID4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEg
PGpvc2Uuc291emFAaW50ZWwuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0
dGhldy5kLnJvcGVyQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmMgfCAxICsKPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIHwg
MSArCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPiA+IAo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuYwo+ID4gaW5kZXggOGY4NGVkMjZlOTcyLi4yZTYzODkxNjg4NTQg
MTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gPiBAQCAtMjE5LDYgKzIxOSw3IEBA
IGludGVsX3BjaF90eXBlKGNvbnN0IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlCj4gPiAqZGV2X3By
aXYsIHVuc2lnbmVkIHNob3J0IGlkKQo+ID4gIAkJV0FSTl9PTighSVNfSUNFTEFLRShkZXZfcHJp
dikpOwo+ID4gIAkJcmV0dXJuIFBDSF9JQ1A7Cj4gPiAgCWNhc2UgSU5URUxfUENIX01DQ19ERVZJ
Q0VfSURfVFlQRToKPiA+ICsJY2FzZSBJTlRFTF9QQ0hfTUNDMl9ERVZJQ0VfSURfVFlQRToKPiA+
ICAJCURSTV9ERUJVR19LTVMoIkZvdW5kIE11bGUgQ3JlZWsgQ2FueW9uIFBDSFxuIik7Cj4gPiAg
CQlXQVJOX09OKCFJU19FTEtIQVJUTEFLRShkZXZfcHJpdikpOwo+ID4gIAkJcmV0dXJuIFBDSF9N
Q0M7Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+ID4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gPiBpbmRleCAyNzM0ZjYyYWIxOWEu
LmEwNDY5YmJlNmM4ZSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmgKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiA+IEBAIC0y
MzUzLDYgKzIzNTMsNyBAQCBJU19TVUJQTEFURk9STShjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZQo+ID4gKmk5MTUsCj4gPiAgI2RlZmluZSBJTlRFTF9QQ0hfQ01QX0RFVklDRV9JRF9UWVBF
CQkweDAyODAKPiA+ICAjZGVmaW5lIElOVEVMX1BDSF9JQ1BfREVWSUNFX0lEX1RZUEUJCTB4MzQ4
MAo+ID4gICNkZWZpbmUgSU5URUxfUENIX01DQ19ERVZJQ0VfSURfVFlQRQkJMHg0QjAwCj4gPiAr
I2RlZmluZSBJTlRFTF9QQ0hfTUNDMl9ERVZJQ0VfSURfVFlQRQkJMHgzODgwCj4gPiAgI2RlZmlu
ZSBJTlRFTF9QQ0hfUDJYX0RFVklDRV9JRF9UWVBFCQkweDcxMDAKPiA+ICAjZGVmaW5lIElOVEVM
X1BDSF9QM1hfREVWSUNFX0lEX1RZUEUJCTB4NzAwMAo+ID4gICNkZWZpbmUgSU5URUxfUENIX1FF
TVVfREVWSUNFX0lEX1RZUEUJCTB4MjkwMCAvKiBxZW11Cj4gPiBxMzUgaGFzIDI5MTggKi8KCi0t
IApNYXR0IFJvcGVyCkdyYXBoaWNzIFNvZnR3YXJlIEVuZ2luZWVyCklvVEcgUGxhdGZvcm0gRW5h
YmxpbmcgJiBEZXZlbG9wbWVudApJbnRlbCBDb3Jwb3JhdGlvbgooOTE2KSAzNTYtMjc5NQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
