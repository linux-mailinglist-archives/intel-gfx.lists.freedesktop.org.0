Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 847CEE3ED1
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 00:09:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE75B6E82D;
	Thu, 24 Oct 2019 22:09:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D0556E82D
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 22:09:02 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 15:09:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,226,1569308400"; d="scan'208";a="188730363"
Received: from ldmartin-desk1.jf.intel.com ([10.7.200.70])
 by orsmga007.jf.intel.com with ESMTP; 24 Oct 2019 15:09:01 -0700
Date: Thu, 24 Oct 2019 15:08:59 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20191024220859.isc5dwc6d5f3j7qi@ldmartin-desk1.jf.intel.com>
References: <20191024195122.22877-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024195122.22877-1-lucas.demarchi@intel.com>
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Add is_dgfx to device info
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBPY3QgMjQsIDIwMTkgYXQgMTI6NTE6MTlQTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5j
b20+Cj4KPlRoaXMgd2lsbCBiZSBoZWxwZnVsIHRvIGRpZmVyZW50aWF0ZSBhIHNldCBvZiBHUFVz
Cj53aXRoIHRoZSBzYW1lIEdFTiB2ZXJzaW9uLgo+Cj5TaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2Jl
cnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPlNpZ25lZC1vZmYtYnk6IEx1Y2Fz
IERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgoKClJldmlld2VkLWJ5OiBMdWNh
cyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KCkx1Y2FzIERlIE1hcmNoaQoK
Pi0tLQo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgfCAxICsKPiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oIHwgMSArCj4gMiBmaWxlcyBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPgo+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj5pbmRleCA2
NzRlOWU5MjE4MzkuLjEyNjQ2Yjk0YWY4NyAxMDA2NDQKPi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmgKPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPkBA
IC0xNTQ0LDYgKzE1NDQsNyBAQCBJU19TVUJQTEFURk9STShjb25zdCBzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSwKPiB9Cj4KPiAjZGVmaW5lIElTX01PQklMRShkZXZfcHJpdikJKElOVEVM
X0lORk8oZGV2X3ByaXYpLT5pc19tb2JpbGUpCj4rI2RlZmluZSBJU19ER0ZYKGRldl9wcml2KSAg
IChJTlRFTF9JTkZPKGRldl9wcml2KS0+aXNfZGdmeCkKPgo+ICNkZWZpbmUgSVNfSTgzMChkZXZf
cHJpdikJSVNfUExBVEZPUk0oZGV2X3ByaXYsIElOVEVMX0k4MzApCj4gI2RlZmluZSBJU19JODQ1
RyhkZXZfcHJpdikJSVNfUExBVEZPUk0oZGV2X3ByaXYsIElOVEVMX0k4NDVHKQo+ZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmggYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oCj5pbmRleCBlOTk0MGY5MzJkMjYuLjc4YTM4
M2Y2Mzk1NyAxMDA2NDQKPi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9p
bmZvLmgKPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmgKPkBA
IC0xMDcsNiArMTA3LDcgQEAgZW51bSBpbnRlbF9wcGd0dF90eXBlIHsKPiAJZnVuYyhpc19tb2Jp
bGUpOyBcCj4gCWZ1bmMoaXNfbHApOyBcCj4gCWZ1bmMocmVxdWlyZV9mb3JjZV9wcm9iZSk7IFwK
PisJZnVuYyhpc19kZ2Z4KTsgXAo+IAkvKiBLZWVwIGhhc18qIGluIGFscGhhYmV0aWNhbCBvcmRl
ciAqLyBcCj4gCWZ1bmMoaGFzXzY0Yml0X3JlbG9jKTsgXAo+IAlmdW5jKGdwdV9yZXNldF9jbG9i
YmVyc19kaXNwbGF5KTsgXAo+LS0gCj4yLjIzLjAKPgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
