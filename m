Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44096BE404
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 19:59:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57F5D6EC54;
	Wed, 25 Sep 2019 17:59:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D8996EC51
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 17:59:25 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Sep 2019 10:59:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,548,1559545200"; d="scan'208";a="179885973"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.135])
 by orsmga007.jf.intel.com with ESMTP; 25 Sep 2019 10:59:24 -0700
Date: Wed, 25 Sep 2019 10:59:34 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20190925175934.GQ1869@mdroper-desk1.amr.corp.intel.com>
References: <20190925173932.21560-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190925173932.21560-1-matthew.d.roper@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Don't skip debug messages when dp
 link config fails
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBTZXAgMjUsIDIwMTkgYXQgMTA6Mzk6MzJBTSAtMDcwMCwgTWF0dCBSb3BlciB3cm90
ZToKPiBJZiB3ZSBkb24ndCBoYXZlIGVub3VnaCBsaW5rIGJhbmR3aWR0aCB0byBzdXBwb3J0IHRo
ZSByZXF1ZXN0ZWQgbW9kZSwgd2UKPiBiYWlsIG91dCBvZiBpbnRlbF9kcF9jb21wdXRlX2xpbmtf
Y29uZmlnKCkgZWFybHkgYmVmb3JlIHRoZSBwb2ludCBpdAo+IHByaW50cyB0aGUgaGVscGZ1bCBk
ZWJ1ZyBtZXNzYWdlcyBjb250YWluaW5nIHRoZSBhdmFpbGFibGUvbmVjZXNzYXJ5Cj4gbGluayBi
YW5kd2lkdGguICBTaW5jZSBmYWlsdXJlcyBhcmUgd2hlbiB0aGVzZSBtZXNzYWdlcyBhcmUgbW9z
dCB1c2VmdWwsCj4gbGV0IHRoZSBmdW5jdGlvbiBwcm9jZWVkIHdpdGggcHJpbnRpbmcgdGhvc2Ug
b3V0IGFuZCB0aGVuIGp1c3QgcmV0dXJuCj4gdGhlIHByb3BlciBlcnJvciBjb2RlIGF0IHRoZSBl
bmQuCj4gCj4gQ2M6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Cj4g
U2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KCkFj
dHVhbGx5LCBkaXNyZWdhcmQgdGhpcyBwYXRjaCBmb3Igbm93OyBvbiBlcnJvcnMgd2UnZCB3YW50
IHRvIGJlCnByaW50aW5nIHRoZSBsYW5lIGNvdW50cyBhbmQgc3VjaCBmcm9tIGxpbWl0cyByYXRo
ZXIgdGhhbiBwaXBlX2NvbmZpZwp3aGljaCBvbmx5IGdldHMgbG9ja2VkIGluIGlmIHdlIGZpbmQg
YSBzdWNjZXNzZnVsIG1hdGNoLiAgVGhpcyBuZWVkcyBhCmZldyBtb3JlIHR3ZWFrcyB0byBiZSB1
c2VmdWwuCgoKTWF0dAoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jIHwgNyArKy0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDUg
ZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+
IGluZGV4IGUzOGRiNzI3OGNmMi4uNGExZjFkMDI5OGMyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+IEBAIC0yMDgzLDEyICsyMDgzLDkgQEAgaW50ZWxfZHBf
Y29tcHV0ZV9saW5rX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgCj4g
IAkvKiBlbmFibGUgY29tcHJlc3Npb24gaWYgdGhlIG1vZGUgZG9lc24ndCBmaXQgYXZhaWxhYmxl
IEJXICovCj4gIAlEUk1fREVCVUdfS01TKCJGb3JjZSBEU0MgZW4gPSAlZFxuIiwgaW50ZWxfZHAt
PmZvcmNlX2RzY19lbik7Cj4gLQlpZiAocmV0IHx8IGludGVsX2RwLT5mb3JjZV9kc2NfZW4pIHsK
PiArCWlmIChyZXQgfHwgaW50ZWxfZHAtPmZvcmNlX2RzY19lbikKPiAgCQlyZXQgPSBpbnRlbF9k
cF9kc2NfY29tcHV0ZV9jb25maWcoaW50ZWxfZHAsIHBpcGVfY29uZmlnLAo+ICAJCQkJCQkgIGNv
bm5fc3RhdGUsICZsaW1pdHMpOwo+IC0JCWlmIChyZXQgPCAwKQo+IC0JCQlyZXR1cm4gcmV0Owo+
IC0JfQo+ICAKPiAgCWlmIChwaXBlX2NvbmZpZy0+ZHNjX3BhcmFtcy5jb21wcmVzc2lvbl9lbmFi
bGUpIHsKPiAgCQlEUk1fREVCVUdfS01TKCJEUCBsYW5lIGNvdW50ICVkIGNsb2NrICVkIElucHV0
IGJwcCAlZCBDb21wcmVzc2VkIGJwcCAlZFxuIiwKPiBAQCAtMjExMiw3ICsyMTA5LDcgQEAgaW50
ZWxfZHBfY29tcHV0ZV9saW5rX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwK
PiAgCQkJICAgICAgaW50ZWxfZHBfbWF4X2RhdGFfcmF0ZShwaXBlX2NvbmZpZy0+cG9ydF9jbG9j
aywKPiAgCQkJCQkJICAgICBwaXBlX2NvbmZpZy0+bGFuZV9jb3VudCkpOwo+ICAJfQo+IC0JcmV0
dXJuIDA7Cj4gKwlyZXR1cm4gcmV0Owo+ICB9Cj4gIAo+ICBzdGF0aWMgaW50Cj4gLS0gCj4gMi4y
MS4wCj4gCgotLSAKTWF0dCBSb3BlcgpHcmFwaGljcyBTb2Z0d2FyZSBFbmdpbmVlcgpWVFQtT1NH
QyBQbGF0Zm9ybSBFbmFibGVtZW50CkludGVsIENvcnBvcmF0aW9uCig5MTYpIDM1Ni0yNzk1Cl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
