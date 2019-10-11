Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95531D3F83
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 14:29:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CAA16EC37;
	Fri, 11 Oct 2019 12:29:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B6186EC37
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 12:29:33 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 05:29:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,284,1566889200"; d="scan'208";a="198685671"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 11 Oct 2019 05:29:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Oct 2019 15:29:29 +0300
Date: Fri, 11 Oct 2019 15:29:29 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20191011122929.GQ1208@intel.com>
References: <20191010193241.101401-1-jose.souza@intel.com>
 <20191010193241.101401-4-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010193241.101401-4-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/display: Check if FBC and DMC
 are fused off
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

T24gVGh1LCBPY3QgMTAsIDIwMTkgYXQgMTI6MzI6NDFQTSAtMDcwMCwgSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSB3cm90ZToKPiBUaG9zZSBmZWF0dXJlcyBjb3VsZCBiZSBmdXNlZCBvZmYgb24gR0VO
OSBub24tbG93IHBvd2VyIGFuZCBuZXdlcgo+IEdFTnMuCgpTaG91bGQgcHJvYmFibHkgYmUgdHdv
IHBhdGNoZXMuCgo+IAo+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpv
c2Uuc291emFAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oICAgICAgICAgIHwgMiArKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2Vf
aW5mby5jIHwgNiArKysrKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiBpbmRleCAzOWM2NWYwNTE0NjguLjA4NmE4ZTZlODZm
MSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+IEBAIC03NjQzLDcgKzc2NDMsOSBAQCBl
bnVtIHsKPiAgI2RlZmluZSAgIENOTF9ERElfQ0xPQ0tfUkVHX0FDQ0VTU19PTgkoMSA8PCA3KQo+
ICAKPiAgI2RlZmluZSBTS0xfREZTTQkJCV9NTUlPKDB4NTEwMDApCj4gKyNkZWZpbmUgU0tMX0RG
U01fRElTUExBWV9QTV9ESVNBQkxFCSgxIDw8IDI3KQoKTG9va3MgY29ycmVjdC4KCj4gICNkZWZp
bmUgU0tMX0RGU01fRElTUExBWV9IRENQX0RJU0FCTEUJKDEgPDwgMjUpCj4gKyNkZWZpbmUgU0tM
X0RGU01fRE1DX0RJU0FCTEUJCSgxIDw8IDIzKQoKVGhhdCBzZWVtcyB0byBiZSBhIHRoaW5nIGZv
ciBpY2wrIG9ubHkuCgo+ICAjZGVmaW5lIEJYVF9ERlNNX0NEQ0xLX0xJTUlUX01BU0sJKDMgPDwg
MjMpCj4gICNkZWZpbmUgQlhUX0RGU01fQ0RDTEtfTElNSVRfNjc1CSgwIDw8IDIzKQo+ICAjZGVm
aW5lIEJYVF9ERlNNX0NEQ0xLX0xJTUlUXzU0MAkoMSA8PCAyMykKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2RldmljZV9pbmZvLmMKPiBpbmRleCA1Y2ZhMTk3MDkwZTIuLmRlZWFiMzc5MGE1
MSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYwo+IEBAIC05
ODMsNiArOTgzLDEyIEBAIHZvaWQgaW50ZWxfZGV2aWNlX2luZm9fcnVudGltZV9pbml0KHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgCj4gIAkJaWYgKGRmc20gJiBTS0xfREZT
TV9ESVNQTEFZX0hEQ1BfRElTQUJMRSkKPiAgCQkJaW5mby0+ZGlzcGxheS5oYXNfaGRjcCA9IDA7
Cj4gKwo+ICsJCWlmIChkZnNtICYgU0tMX0RGU01fRElTUExBWV9QTV9ESVNBQkxFKQo+ICsJCQlp
bmZvLT5kaXNwbGF5Lmhhc19mYmMgPSAwOwo+ICsKPiArCQlpZiAoIUlTX0dFTjlfQkMoZGV2X3By
aXYpICYmIGRmc20gJiBTS0xfREZTTV9ETUNfRElTQUJMRSkKPiArCQkJaW5mby0+ZGlzcGxheS5o
YXNfY3NyID0gMDsKPiAgCX0KPiAgCj4gIAkvKiBJbml0aWFsaXplIHNsaWNlL3N1YnNsaWNlL0VV
IGluZm8gKi8KPiAtLSAKPiAyLjIzLjAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngKCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
