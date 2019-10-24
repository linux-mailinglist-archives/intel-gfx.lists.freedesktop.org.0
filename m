Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18772E2AC3
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 09:06:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B3EF6E0F9;
	Thu, 24 Oct 2019 07:06:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98B866E0F9
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 07:06:45 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 00:06:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,223,1569308400"; d="scan'208";a="228405906"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by fmsmga002.fm.intel.com with ESMTP; 24 Oct 2019 00:06:43 -0700
Date: Thu, 24 Oct 2019 12:36:55 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20191024070655.GE24164@intel.com>
References: <20191019004124.371929-1-jose.souza@intel.com>
 <20191019004124.371929-4-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191019004124.371929-4-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915/display/icl+: Check if DMC is
 fused off
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

T24gMjAxOS0xMC0xOCBhdCAxNzo0MToyMyAtMDcwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3
cm90ZToKPiBDaGVjayBpZiBETUMgaXMgZnVzZWQgb2ZmIGFuZCBoYW5kbGUgaXQuCj4gCj4gQ2M6
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IE1h
cnRpbiBQZXJlcyA8bWFydGluLnBlcmVzQGxpbnV4LmludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5
OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KTG9va3MgZ29v
ZCB0byBtZS4KClJldmlld2VkLWJ5OiBSYW1hbGluZ2FtIEMgPHJhbWFsaW5nYW0uY0BpbnRlbC5j
b20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgfCAx
ICsKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyB8IDMgKysrCj4g
IDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oCj4gaW5kZXggMzEzNzVkZGMyYjNiLi44NGZjYTRmM2FmNWEgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmgKPiBAQCAtNzY2MCw2ICs3NjYwLDcgQEAgZW51bSB7Cj4gICNkZWZpbmUgU0tM
X0RGU01fQ0RDTEtfTElNSVRfNTQwCQkoMSA8PCAyMykKPiAgI2RlZmluZSBTS0xfREZTTV9DRENM
S19MSU1JVF80NTAJCSgyIDw8IDIzKQo+ICAjZGVmaW5lIFNLTF9ERlNNX0NEQ0xLX0xJTUlUXzMz
N181CQkoMyA8PCAyMykKPiArI2RlZmluZSBJQ0xfREZTTV9ETUNfRElTQUJMRQkJCSgxIDw8IDIz
KQo+ICAjZGVmaW5lIFNLTF9ERlNNX1BJUEVfQV9ESVNBQkxFCQkJKDEgPDwgMzApCj4gICNkZWZp
bmUgU0tMX0RGU01fUElQRV9CX0RJU0FCTEUJCQkoMSA8PCAyMSkKPiAgI2RlZmluZSBTS0xfREZT
TV9QSVBFX0NfRElTQUJMRQkJCSgxIDw8IDI4KQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
ZGV2aWNlX2luZm8uYwo+IGluZGV4IGI2YTlmNTI3ZjhmOS4uOTdkOTYyOTQ0ZTQ4IDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCj4gQEAgLTk5Myw2ICs5OTMs
OSBAQCB2b2lkIGludGVsX2RldmljZV9pbmZvX3J1bnRpbWVfaW5pdChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYpCj4gIAo+ICAJCWlmIChkZnNtICYgU0tMX0RGU01fRElTUExBWV9Q
TV9ESVNBQkxFKQo+ICAJCQlpbmZvLT5kaXNwbGF5Lmhhc19mYmMgPSAwOwo+ICsKPiArCQlpZiAo
SU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSAmJiAoZGZzbSAmIElDTF9ERlNNX0RNQ19ESVNBQkxF
KSkKPiArCQkJaW5mby0+ZGlzcGxheS5oYXNfY3NyID0gMDsKPiAgCX0KPiAgCj4gIAkvKiBJbml0
aWFsaXplIHNsaWNlL3N1YnNsaWNlL0VVIGluZm8gKi8KPiAtLSAKPiAyLjIzLjAKPiAKPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBt
YWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
