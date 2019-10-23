Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD28E1D4C
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 15:50:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 952B9896C4;
	Wed, 23 Oct 2019 13:50:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98BBB88FDD
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 13:50:26 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 06:50:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,221,1569308400"; d="scan'208";a="201140501"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by orsmga003.jf.intel.com with ESMTP; 23 Oct 2019 06:50:24 -0700
Date: Wed, 23 Oct 2019 19:20:34 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20191023135034.GD22201@intel.com>
References: <20191019004124.371929-1-jose.souza@intel.com>
 <20191019004124.371929-3-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191019004124.371929-3-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915/display: Check if FBC is fused
 off
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

T24gMjAxOS0xMC0xOCBhdCAxNzo0MToyMiAtMDcwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3
cm90ZToKPiBDaGVjayBpZiBGQkMgaXMgZnVzZWQgb2ZmIGFuZCBoYW5kbGUgaXQuCj4gCj4gQ2M6
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IE1h
cnRpbiBQZXJlcyA8bWFydGluLnBlcmVzQGxpbnV4LmludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5
OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPiAtLS0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICB8IDEgKwo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jIHwgMyArKysKPiAgMiBmaWxlcyBjaGFu
Z2VkLCA0IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiBpbmRleCBl
YWNjNWJhMzA3YjAuLjMxMzc1ZGRjMmIzYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+
IEBAIC03NjUzLDYgKzc2NTMsNyBAQCBlbnVtIHsKPiAgCj4gICNkZWZpbmUgU0tMX0RGU00JCQkJ
X01NSU8oMHg1MTAwMCkKPiAgI2RlZmluZSBTS0xfREZTTV9JTlRFUk5BTF9ESVNQTEFZX0RJU0FC
TEUJKDEgPDwgMzApCj4gKyNkZWZpbmUgU0tMX0RGU01fRElTUExBWV9QTV9ESVNBQkxFCQkoMSA8
PCAyNykKTWF5IGJlIHlvdSB3YW50IHRvIGFkZCB0d28gY2hhciBsaWtlCiNkZWZpbmUgICBTS0xf
REZTTV9ESVNQTEFZX1BNX0RJU0FCTEUgICAgICAgICAgKDEgPDwgMjcpCgpFaXRoZXIgd2F5ClJl
dmlld2VkLWJ5OiBSYW1hbGluZ2FtIEMgPHJhbWFsaW5nYW0uY0BpbnRlbC5jb20+CgotUmFtCj4g
ICNkZWZpbmUgU0tMX0RGU01fRElTUExBWV9IRENQX0RJU0FCTEUJCSgxIDw8IDI1KQo+ICAjZGVm
aW5lIFNLTF9ERlNNX0NEQ0xLX0xJTUlUX01BU0sJCSgzIDw8IDIzKQo+ICAjZGVmaW5lIFNLTF9E
RlNNX0NEQ0xLX0xJTUlUXzY3NQkJKDAgPDwgMjMpCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9kZXZpY2VfaW5mby5jCj4gaW5kZXggNzUzYzJjZjJmYmY0Li5iNmE5ZjUyN2Y4ZjkgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYwo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMKPiBAQCAtOTkwLDYgKzk5
MCw5IEBAIHZvaWQgaW50ZWxfZGV2aWNlX2luZm9fcnVudGltZV9pbml0KHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdikKPiAgCj4gIAkJaWYgKGRmc20gJiBTS0xfREZTTV9ESVNQTEFZ
X0hEQ1BfRElTQUJMRSkKPiAgCQkJaW5mby0+ZGlzcGxheS5oYXNfaGRjcCA9IDA7Cj4gKwo+ICsJ
CWlmIChkZnNtICYgU0tMX0RGU01fRElTUExBWV9QTV9ESVNBQkxFKQo+ICsJCQlpbmZvLT5kaXNw
bGF5Lmhhc19mYmMgPSAwOwo+ICAJfQo+ICAKPiAgCS8qIEluaXRpYWxpemUgc2xpY2Uvc3Vic2xp
Y2UvRVUgaW5mbyAqLwo+IC0tIAo+IDIuMjMuMAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
