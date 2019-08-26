Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A946F9D4AA
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 19:11:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1662E89DDF;
	Mon, 26 Aug 2019 17:11:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E2C389DDF
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 17:11:01 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 10:11:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; d="scan'208";a="179939051"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1) ([10.24.9.29])
 by fmsmga008.fm.intel.com with ESMTP; 26 Aug 2019 10:10:53 -0700
Date: Mon, 26 Aug 2019 10:10:50 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20190826171050.ay7sa3yvc5cdgznb@ldmartin-desk1>
References: <20190823082055.5992-1-lucas.demarchi@intel.com>
 <20190823082055.5992-10-lucas.demarchi@intel.com>
 <20190824110652.GC30506@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190824110652.GC30506@intel.com>
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH v3 09/23] drm/i915/tgl: Add maximum
 resolution supported by PSR2 HW
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
Cc: intel-gfx@lists.freedesktop.org,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU2F0LCBBdWcgMjQsIDIwMTkgYXQgMDQ6MzY6NTJQTSArMDUzMCwgQW5zaHVtYW4gR3VwdGEg
d3JvdGU6Cj5PbiAyMDE5LTA4LTIzIGF0IDAxOjIwOjQxIC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkg
d3JvdGU6Cj4+IEZyb206IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPgo+Pgo+PiBUR0wgUFNSMiBIVyBzdXBwb3J0cyBhIGJpZ2dlciByZXNvbHV0aW9uLCBzbyBs
ZXRzIGFkZCBpdAo+Pgo+PiBDYzogRGhpbmFrYXJhbiBQYW5kaXlhbiA8ZGhpbmFrYXJhbi5wYW5k
aXlhbkBpbnRlbC5jb20+Cj4+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5j
b20+Cj4+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFA
aW50ZWwuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFy
Y2hpQGludGVsLmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jIHwgNSArKysrLQo+PiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMKPj4gaW5kZXggYzMzYWExNmVkMDM4Li41ZDI0ZjFjNDdhMmIgMTAwNjQ0Cj4+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+PiBAQCAtNTcwLDcgKzU3MCwxMCBAQCBz
dGF0aWMgYm9vbCBpbnRlbF9wc3IyX2NvbmZpZ192YWxpZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwLAo+PiAgCQlyZXR1cm4gZmFsc2U7Cj4+ICAJfQo+Pgo+PiAtCWlmIChJTlRFTF9HRU4oZGV2
X3ByaXYpID49IDEwIHx8IElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpKSB7Cj4+ICsJaWYgKElOVEVM
X0dFTihkZXZfcHJpdikgPj0gMTIpIHsKPkFzIHBlciBCLlNwZWNzOjI4NjkyIG9uIGZldyBHZW4x
MSBwbGF0Zm9ybSwgUFNSMiBzdXBwb3J0cyBtYXggcmVzb2x1dGlvbiBvZiA1MTIwWDMyMDAuCj5E
byB3ZSBuZWVkIHRvIGhhbmRsZSB0aG9zZSBHZW4xMSBwbGF0Zm9ybSBoZXJlPwoKdGhlIG9ubHkg
dGhpbmcgSSBzZWUgdGhlcmUgZm9yIGdlbjExIGlzOgoKCSJQU1IyIG1heGltdW0gcGlwZSBob3Jp
em9udGFsIGFjdGl2ZSBzaXplIDQwOTYgcGl4ZWxzLiIKCkx1Y2FzIERlIE1hcmNoaQoKPj4gKwkJ
cHNyX21heF9oID0gNTEyMDsKPj4gKwkJcHNyX21heF92ID0gMzIwMDsKPj4gKwl9IGVsc2UgaWYg
KElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTAgfHwgSVNfR0VNSU5JTEFLRShkZXZfcHJpdikpIHsK
Pj4gIAkJcHNyX21heF9oID0gNDA5NjsKPj4gIAkJcHNyX21heF92ID0gMjMwNDsKPj4gIAl9IGVs
c2UgaWYgKElTX0dFTihkZXZfcHJpdiwgOSkpIHsKPj4gLS0KPj4gMi4yMy4wCj4+Cj4+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEludGVsLWdmeCBt
YWlsaW5nIGxpc3QKPj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+PiBodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
