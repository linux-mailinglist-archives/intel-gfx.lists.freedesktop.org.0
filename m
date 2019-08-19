Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3093A922F1
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 14:00:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CFD46E02E;
	Mon, 19 Aug 2019 12:00:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2354C6E02E
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 12:00:55 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Aug 2019 05:00:54 -0700
X-IronPort-AV: E=Sophos;i="5.64,403,1559545200"; d="scan'208";a="168727533"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Aug 2019 05:00:53 -0700
Date: Mon, 19 Aug 2019 14:59:55 +0300
From: Imre Deak <imre.deak@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190819115955.GA17210@ideak-desk.fi.intel.com>
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
 <20190817093902.2171-4-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190817093902.2171-4-lucas.demarchi@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 03/40] drm/i915/tgl: Move transcoders to
 pipes' powerwells
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU2F0LCBBdWcgMTcsIDIwMTkgYXQgMDI6Mzg6MjVBTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IEZyb206IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPgo+IAo+IFdoZW4gdHJ5aW5nIHRvIHJlYWQgcmVnaXN0ZXJzIGZyb20gdHJhbnNjb2RlciBD
IGFuZCBEIHdoaWxlIFBHMyBpcyBPTiBpdAo+IGNhdXNlcyB1bmNsYWltZWQgYWNjZXNzIHdhcm5p
bmdzLiBBZGRpbmcgdGhlIHBvd2Vyd2VsbHMgZm9yIHRoZSBwaXBlcwo+IGZpeGVzIHRoZSBpc3N1
ZSwgYnV0IGRvZXNuJ3QgbWF0Y2ggdGhlIHNwZWMuCgpUaGlzIHdvdWxkIG5lZWQgYSBCU3BlYyB0
aWNrZXQgYXQgSW5kZXgvNDkyMzEsIGJ1dCBtYWtlcyBzZW5zZSBzaW5jZSB0aGUKb25seSB3YXkg
dGhlc2UgdHJhbnNjb2RlcnMgY2FuIGJlIHVzZWQgaXMgaWYgdGhlaXIgY29ycmVzcG9uZGluZyBw
aXBlIGlzCmFscmVhZHkgb24gKHNvIGNhbid0IHNlZSBhIHBvaW50IGluIGtlZXBpbmcgdGhlIHRy
YW5zY29kZXJzIGluIGEKZGlmZmVyZW50IHBvd2VyIHdlbGwgdGhhbiB0aGVpciBwaXBlcyk6CgpS
ZXZpZXdlZC1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgoKPiAKPiBTaWduZWQt
b2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPiBT
aWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4K
PiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2Vy
LmMgfCA0ICsrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5X3Bvd2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfcG93ZXIuYwo+IGluZGV4IDAyZjhjMzkxMWM1OS4uNDg1MDVjNGI2ZDUwIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2Vy
LmMKPiBAQCAtMjU0NCwxMiArMjU0NCwxNCBAQCB2b2lkIGludGVsX2Rpc3BsYXlfcG93ZXJfcHV0
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAgCj4gICNkZWZpbmUgVEdMX1BX
XzVfUE9XRVJfRE9NQUlOUyAoCQkJXAo+ICAJQklUX1VMTChQT1dFUl9ET01BSU5fUElQRV9EKSB8
CQkJXAo+ICsJQklUX1VMTChQT1dFUl9ET01BSU5fVFJBTlNDT0RFUl9EKSB8CQlcCj4gIAlCSVRf
VUxMKFBPV0VSX0RPTUFJTl9QSVBFX0RfUEFORUxfRklUVEVSKSB8ICAgICBcCj4gIAlCSVRfVUxM
KFBPV0VSX0RPTUFJTl9JTklUKSkKPiAgCj4gICNkZWZpbmUgVEdMX1BXXzRfUE9XRVJfRE9NQUlO
UyAoCQkJXAo+ICAJVEdMX1BXXzVfUE9XRVJfRE9NQUlOUyB8CQkJXAo+ICAJQklUX1VMTChQT1dF
Ul9ET01BSU5fUElQRV9DKSB8CQkJXAo+ICsJQklUX1VMTChQT1dFUl9ET01BSU5fVFJBTlNDT0RF
Ul9DKSB8CQlcCj4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9QSVBFX0NfUEFORUxfRklUVEVSKSB8
CVwKPiAgCUJJVF9VTEwoUE9XRVJfRE9NQUlOX0lOSVQpKQo+ICAKPiBAQCAtMjU1Nyw4ICsyNTU5
LDYgQEAgdm9pZCBpbnRlbF9kaXNwbGF5X3Bvd2VyX3B1dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYsCj4gIAlUR0xfUFdfNF9QT1dFUl9ET01BSU5TIHwJCQlcCj4gIAlCSVRfVUxM
KFBPV0VSX0RPTUFJTl9QSVBFX0IpIHwJCQlcCj4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9UUkFO
U0NPREVSX0IpIHwJCVwKPiAtCUJJVF9VTEwoUE9XRVJfRE9NQUlOX1RSQU5TQ09ERVJfQykgfAkJ
XAo+IC0JQklUX1VMTChQT1dFUl9ET01BSU5fVFJBTlNDT0RFUl9EKSB8CQlcCj4gIAlCSVRfVUxM
KFBPV0VSX0RPTUFJTl9QSVBFX0JfUEFORUxfRklUVEVSKSB8CVwKPiAgCUJJVF9VTEwoUE9XRVJf
RE9NQUlOX1BPUlRfRERJX1RDMV9MQU5FUykgfAlcCj4gIAlCSVRfVUxMKFBPV0VSX0RPTUFJTl9Q
T1JUX0RESV9UQzJfTEFORVMpIHwJXAo+IC0tIAo+IDIuMjEuMAo+IAo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
