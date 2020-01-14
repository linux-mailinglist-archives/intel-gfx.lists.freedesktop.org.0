Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6079A13ACA6
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 15:52:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B180E6E3FC;
	Tue, 14 Jan 2020 14:52:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F45E6E3FC
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 14:52:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 06:52:21 -0800
X-IronPort-AV: E=Sophos;i="5.69,433,1571727600"; d="scan'208";a="397530013"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 06:52:19 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200108181242.13650-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200108181242.13650-1-ville.syrjala@linux.intel.com>
Date: Tue, 14 Jan 2020 16:52:16 +0200
Message-ID: <874kwyks4f.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/9] drm/i915/sdvo: Reduce the size of the
 on stack buffers
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

T24gV2VkLCAwOCBKYW4gMjAyMCwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBUaGUgc3RyaW5ncyB3ZSB3YW50IHRvIHByaW50IHRvIHRoZSBv
biBzdGFjayBidWZmZXJzIHNob3VsZAo+IGJlIG5vIG1vcmUgdGhhbgo+IDggKiAzICsgc3RybGVu
KCIoR0VUX1NDQUxFRF9IRFRWX1JFU09MVVRJT05fU1VQUE9SVCkiKSArIDEgPSA2MQo+IGJ5dGVz
LiBTbyBsZXQncyBzaHJpbmsgdGhlIGJ1ZmZlcnMgZG93biB0byA2NCBieXRlcy4KPgo+IEFsc28g
c3dpdGNoIHRoZSBCVUdfT04oKXMgdG8gV0FSTl9PTigpcyBpZiBJIG1hZGUgYSBtaXN0YWtlIGlu
Cj4gbXkgYXJpdGhtZW50aWMuCj4KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IEphbmkgTmlrdWxhIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Nkdm8uYyB8IDE5ICsrKysrKysrLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDggaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zZHZvLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Nkdm8uYwo+IGluZGV4IDg3NThlZTJhNDQ0Mi4uMDIxMTljODI3
YzgwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc2R2
by5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zZHZvLmMKPiBA
QCAtNDE0LDEyICs0MTQsMTAgQEAgc3RhdGljIHZvaWQgaW50ZWxfc2R2b19kZWJ1Z193cml0ZShz
dHJ1Y3QgaW50ZWxfc2R2byAqaW50ZWxfc2R2bywgdTggY21kLAo+ICB7Cj4gIAljb25zdCBjaGFy
ICpjbWRfbmFtZTsKPiAgCWludCBpLCBwb3MgPSAwOwo+IC0jZGVmaW5lIEJVRl9MRU4gMjU2Cj4g
LQljaGFyIGJ1ZmZlcltCVUZfTEVOXTsKPiArCWNoYXIgYnVmZmVyWzY0XTsKPiAgCj4gICNkZWZp
bmUgQlVGX1BSSU5UKGFyZ3MuLi4pIFwKPiAtCXBvcyArPSBzbnByaW50ZihidWZmZXIgKyBwb3Ms
IG1heF90KGludCwgQlVGX0xFTiAtIHBvcywgMCksIGFyZ3MpCj4gLQo+ICsJcG9zICs9IHNucHJp
bnRmKGJ1ZmZlciArIHBvcywgbWF4X3QoaW50LCBzaXplb2YoYnVmZmVyKSAtIHBvcywgMCksIGFy
Z3MpCj4gIAo+ICAJZm9yIChpID0gMDsgaSA8IGFyZ3NfbGVuOyBpKyspIHsKPiAgCQlCVUZfUFJJ
TlQoIiUwMlggIiwgKCh1OCAqKWFyZ3MpW2ldKTsKPiBAQCAtNDMzLDkgKzQzMSw5IEBAIHN0YXRp
YyB2b2lkIGludGVsX3Nkdm9fZGVidWdfd3JpdGUoc3RydWN0IGludGVsX3Nkdm8gKmludGVsX3Nk
dm8sIHU4IGNtZCwKPiAgCQlCVUZfUFJJTlQoIiglcykiLCBjbWRfbmFtZSk7Cj4gIAllbHNlCj4g
IAkJQlVGX1BSSU5UKCIoJTAyWCkiLCBjbWQpOwo+IC0JQlVHX09OKHBvcyA+PSBCVUZfTEVOIC0g
MSk7Cj4gKwo+ICsJV0FSTl9PTihwb3MgPj0gc2l6ZW9mKGJ1ZmZlcikgLSAxKTsKPiAgI3VuZGVm
IEJVRl9QUklOVAo+IC0jdW5kZWYgQlVGX0xFTgo+ICAKPiAgCURSTV9ERUJVR19LTVMoIiVzOiBX
OiAlMDJYICVzXG4iLCBTRFZPX05BTUUoaW50ZWxfc2R2byksIGNtZCwgYnVmZmVyKTsKPiAgfQo+
IEBAIC01NDAsOCArNTM4LDcgQEAgc3RhdGljIGJvb2wgaW50ZWxfc2R2b19yZWFkX3Jlc3BvbnNl
KHN0cnVjdCBpbnRlbF9zZHZvICppbnRlbF9zZHZvLAo+ICAJdTggcmV0cnkgPSAxNTsgLyogNSBx
dWljayBjaGVja3MsIGZvbGxvd2VkIGJ5IDEwIGxvbmcgY2hlY2tzICovCj4gIAl1OCBzdGF0dXM7
Cj4gIAlpbnQgaSwgcG9zID0gMDsKPiAtI2RlZmluZSBCVUZfTEVOIDI1Ngo+IC0JY2hhciBidWZm
ZXJbQlVGX0xFTl07Cj4gKwljaGFyIGJ1ZmZlcls2NF07Cj4gIAo+ICAJYnVmZmVyWzBdID0gJ1ww
JzsKPiAgCj4gQEAgLTU4MSw3ICs1NzgsNyBAQCBzdGF0aWMgYm9vbCBpbnRlbF9zZHZvX3JlYWRf
cmVzcG9uc2Uoc3RydWN0IGludGVsX3Nkdm8gKmludGVsX3Nkdm8sCj4gIAl9Cj4gIAo+ICAjZGVm
aW5lIEJVRl9QUklOVChhcmdzLi4uKSBcCj4gLQlwb3MgKz0gc25wcmludGYoYnVmZmVyICsgcG9z
LCBtYXhfdChpbnQsIEJVRl9MRU4gLSBwb3MsIDApLCBhcmdzKQo+ICsJcG9zICs9IHNucHJpbnRm
KGJ1ZmZlciArIHBvcywgbWF4X3QoaW50LCBzaXplb2YoYnVmZmVyKSAtIHBvcywgMCksIGFyZ3Mp
Cj4gIAo+ICAJY21kX3N0YXR1cyA9IHNkdm9fY21kX3N0YXR1cyhzdGF0dXMpOwo+ICAJaWYgKGNt
ZF9zdGF0dXMpCj4gQEAgLTYwMCw5ICs1OTcsOSBAQCBzdGF0aWMgYm9vbCBpbnRlbF9zZHZvX3Jl
YWRfcmVzcG9uc2Uoc3RydWN0IGludGVsX3Nkdm8gKmludGVsX3Nkdm8sCj4gIAkJCWdvdG8gbG9n
X2ZhaWw7Cj4gIAkJQlVGX1BSSU5UKCIgJTAyWCIsICgodTggKilyZXNwb25zZSlbaV0pOwo+ICAJ
fQo+IC0JQlVHX09OKHBvcyA+PSBCVUZfTEVOIC0gMSk7Cj4gKwo+ICsJV0FSTl9PTihwb3MgPj0g
c2l6ZW9mKGJ1ZmZlcikgLSAxKTsKPiAgI3VuZGVmIEJVRl9QUklOVAo+IC0jdW5kZWYgQlVGX0xF
Tgo+ICAKPiAgCURSTV9ERUJVR19LTVMoIiVzOiBSOiAlc1xuIiwgU0RWT19OQU1FKGludGVsX3Nk
dm8pLCBidWZmZXIpOwo+ICAJcmV0dXJuIHRydWU7CgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9w
ZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
