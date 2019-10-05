Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47AB2CC941
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Oct 2019 12:10:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DF6C6E05F;
	Sat,  5 Oct 2019 10:10:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F2256E05F
 for <intel-gfx@lists.freedesktop.org>; Sat,  5 Oct 2019 10:10:49 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Oct 2019 03:10:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,260,1566889200"; d="scan'208";a="217416834"
Received: from efrindux-mobl.ger.corp.intel.com (HELO intel.intel)
 ([10.252.2.145])
 by fmsmga004.fm.intel.com with ESMTP; 05 Oct 2019 03:10:46 -0700
Date: Sat, 5 Oct 2019 13:10:45 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191005101013.GA7645@intel.intel>
References: <20191001135403.2026-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001135403.2026-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Use a modparam to restrict
 exposed engines
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

SGkgQ2hyaXMsCgpPbiBUdWUsIE9jdCAwMSwgMjAxOSBhdCAwMjo1NDowMlBNICswMTAwLCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4gQWxsb3cgdGhlIHVzZXIgdG8gcmVzdHJpY3QgdGhlIGF2YWlsYWJs
ZSBzZXQgb2YgZW5naW5lcyB2aWEgYSBtb2R1bGUKPiBwYXJhbWV0ZXIuCgp3aGF0IGlzIHRoZSBk
cml2aW5nIHJlYXNvbiBmb3Igd2FudGluZyB0aGlzPyBDb3VsZCB5b3UgZXhwbGFpbiBpdAppbiB0
aGUgY29tbWl0IGxvZz8KCkl0IGZlZWxzIGEgYml0IGNvbmZ1c2luZywgdGhvdWdoLiBZb3UgYXJl
IGFjdHVhbGx5IG1ha2luZyBhCmRpZmZlcmVuY2UgYmV0d2VlbiBlbmdpbmVzIHdlIGRvbid0IGhh
dmUgYW5kIGVuZ2luZXMgd2UgZG9uJ3QKd2FudCwgYW5kIEkgZG9uJ3Qgc2VlIHdoeS4KCldvdWxk
bid0IGl0IG1ha2Ugc2Vuc2UgdG8gZWl0aGVyCgogLSBkZWZpbmUgYSBuZXcgYXJjaGl0ZWN0dXJl
ICh3aGljaCBjb3VsZCBtYWtlIHRoaW5ncyBtb3JlCiAgIGNvbmZ1c2luZykuCgpvcgoKIC0gaGF2
ZSBpdCBzcGVjaWZpZWQgaW4ga2VybmVsIGNvbmZpZ3VyYXRpb24KCj4gU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IFN0dWFydCBTdW1t
ZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+Cj4gQ2M6IEFuZGkgU2h5dGkgPGFuZGkuc2h5
dGlAaW50ZWwuY29tPgo+IENjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4K
PiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgo+
IENjOiBNYXJ0aW4gUGVyZXMgPG1hcnRpbi5wZXJlc0BsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jIHwgMzUgKysrKysrKysr
KysrKysrKy0tLS0tLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyAgICAgICAg
ICAgfCAgNSArKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmMgICAgICAg
IHwgIDQgKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmggICAgICAgIHwg
IDEgKwo+ICA0IGZpbGVzIGNoYW5nZWQsIDM1IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygt
KQoKQmVjYXVzZSB0aGlzIGlzIGEgbW9kdWxlIG9wdGlvbiB0aGF0IGlzIHNldCBieSB0aGUgdXNl
ciwgSSBkb24ndApzZWUgYW55IGRvY3VtZW50YXRpb24gYWJvdXQgaXQuCgo+ICtzdGF0aWMgYm9v
bCBlbmdpbmVfYXZhaWxhYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBpbnQgaWQp
Cj4gK3sKPiArCS8qIHVBUEkgLS0gbW9kcGFyYW0gYml0cyBtdXN0IGJlIGNvbnNpc3RlbnQgYmV0
d2VlbiBrZXJuZWxzICovCj4gKwlzdGF0aWMgY29uc3QgdW5zaWduZWQgaW50IHBhcmFtX2JpdFtd
ID0gewo+ICsJCVtSQ1MwXSAgPSBCSVQoMCksCj4gKwkJW1ZDUzBdICA9IEJJVCgxKSwKPiArCQlb
QkNTMF0gID0gQklUKDIpLAo+ICsJCVtWRUNTMF0gPSBCSVQoMyksCj4gKwkJW1ZDUzFdICA9IEJJ
VCg0KSwKPiArCQlbVkNTMl0gID0gQklUKDUpLAo+ICsJCVtWQ1MzXSAgPSBCSVQoNiksCj4gKwkJ
W1ZFQ1MxXSA9IEJJVCg3KSwKPiArCX07CgpZZXQgYW5vdGhlciB3YXkgdG8gcmVmZXIgdG8gZW5n
aW5lcy4uLiB0aGlzIHRpbWUgaW5zaWRlIGEgc3RhdGljCmZ1bmN0aW9uLCB3aXRob3V0IGFueSB2
aXNpYmlsaXR5IG91dHNpZGUuCgpBbmRpCgo+ICsKPiArCWlmICghSEFTX0VOR0lORShpOTE1LCBp
ZCkpCj4gKwkJcmV0dXJuIGZhbHNlOwoKKGVuZ2luZXMgd2UgZG9uJ3QgaGF2ZS4uLgoKPiArCWlm
ICghKGk5MTVfbW9kcGFyYW1zLmVuZ2luZXMgJiBwYXJhbV9iaXRbaWRdKSkKPiArCQlyZXR1cm4g
ZmFsc2U7CgouLi4gZW5naW5lcyB3ZSBkb24ndCB3YW50KQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
