Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE99E10C15D
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 02:22:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EC2C6E3A0;
	Thu, 28 Nov 2019 01:22:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C4746E3A0
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 01:21:59 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 17:21:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,251,1571727600"; d="scan'208";a="383671421"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga005.jf.intel.com with ESMTP; 27 Nov 2019 17:21:58 -0800
Date: Wed, 27 Nov 2019 17:21:58 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20191128012158.GS6337@mdroper-desk1.amr.corp.intel.com>
References: <20191126005400.264480-1-jose.souza@intel.com>
 <20191126005400.264480-4-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191126005400.264480-4-jose.souza@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v2 4/5] drm/i915/psr: Check if sink PSR
 capability changed
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

T24gTW9uLCBOb3YgMjUsIDIwMTkgYXQgMDQ6NTM6NTlQTSAtMDgwMCwgSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSB3cm90ZToKPiBlRFAgc3BlY2lmaWNhdGlvbiBzdGF0ZXMgdGhhdCBzaW5rIGNhbiBo
YXZlIGl0cyBQU1IgY2FwYWJpbGl0eQo+IGNoYW5nZWQsIEkgaGF2ZSBuZXZlciBmb3VuZCBhbnkg
cGFuZWwgZG9pbmcgdGhhdCBidXQgbGV0cyBhZGQgdGhhdAo+IGZvciBjb21wbGV0ZW5lc3MuCj4g
Rm9yIG5vdyBpdCBpcyBub3QgcmVhZGluZyBiYWNrIHRoZSBQU1IgY2FwYWJpbGl0aWVzIGFuZCBp
ZiBwb3NzaWJsZQo+IHJlLWVuYWJsaW5nIFBTUiwgdGhpcyB3aWxsIGJlIGFkZGVkIGlmIGEgcGFu
ZWwgaXMgZm91bmQgdXNpbmcgdGhpcwo+IGZlYXR1cmUuCgpJJ20gbm90IHN1cGVyIGZhbWlsaWFy
IHdpdGggUFNSIGRldGFpbHMsIGJ1dCBpcyBpdCByZXF1aXJlZCBmb3IgdXMgdG8KZGlzYWJsZSBQ
U1IgaW4gdGhpcyBjYXNlPyAgRnJvbSBhIHF1aWNrIHNraW0gb2YgdGhlIHNwZWMgaXQgc291bmRz
IGxpa2UKdGhlIHNpbmsgaXMgcmVxdWlyZWQgdG8ga2VlcCBvcGVyYXRpbmcgd2l0aCB0aGUgc2Ft
ZSBjYXBhYmlsaXRpZXMgdW50aWwKdGhlIHNvdXJjZSBjbGVhcnMgdGhlIENBUFNfQ0hBTkdFIGJp
dCAod2hpY2ggd2UgbmV2ZXIgZG8gaW4gdGhlIHBhdGNoCmJlbG93KS4gIFdoYXQgaGFwcGVucyBp
ZiB3ZSBqdXN0IGlnbm9yZSB0aGUgc2luaydzIG5vdGlmaWNhdGlvbiBhbmQKbmV2ZXIgYWNrIGl0
IGJ5IHdyaXRpbmcgYSAxIHRvIGNsZWFyIHRoZSBiaXQ/CgpJIGd1ZXNzIGRpc2FibGluZyBpcyBz
dGlsbCBwcm9iYWJseSB0aGUgc2FmZXN0IHRoaW5nIHRvIGRvIGlmIHdlJ3JlIG5vdApzdXJlIGFu
ZCBkb24ndCBoYXZlIGFueSByZWFsIHBhbmVscyB0byB0ZXN0IGl0IG91dCB3aXRoLiAgU2hvdWxk
IHdlCnN0aWxsIGNsZWFuIGJ5IGNsZWFyaW5nIHRoZSBiaXQgZXZlbiB0aG91Z2ggd2UgZGlzYWJs
ZWQgUFNSPwoKT3RoZXJ3aXNlLAoKUmV2aWV3ZWQtYnk6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5y
b3BlckBpbnRlbC5jb20+CgoKPiAKPiBDYzogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5t
dW5AaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpv
c2Uuc291emFAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jIHwgMjEgKysrKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAyMSBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jCj4gaW5kZXggYTc1N2I2NDQ1ZjIxLi5jZTc2ZTFjNmEwYjkgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiBAQCAtMTQzNyw2ICsxNDM3LDI2IEBA
IHN0YXRpYyB2b2lkIHBzcl9hbHBtX2NoZWNrKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCj4g
IAl9Cj4gIH0KPiAgCj4gK3N0YXRpYyB2b2lkIHBzcl9jYXBhYmlsaXR5X2NoYW5nZWRfY2hlY2so
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKPiArewo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7Cj4gKwlzdHJ1Y3QgaTkxNV9wc3Ig
KnBzciA9ICZkZXZfcHJpdi0+cHNyOwo+ICsJdTggdmFsOwo+ICsJaW50IHI7Cj4gKwo+ICsJciA9
IGRybV9kcF9kcGNkX3JlYWRiKCZpbnRlbF9kcC0+YXV4LCBEUF9QU1JfRVNJLCAmdmFsKTsKPiAr
CWlmIChyICE9IDEpIHsKPiArCQlEUk1fRVJST1IoIkVycm9yIHJlYWRpbmcgRFBfUFNSX0VTSVxu
Iik7Cj4gKwkJcmV0dXJuOwo+ICsJfQo+ICsKPiArCWlmICh2YWwgJiBEUF9QU1JfQ0FQU19DSEFO
R0UpIHsKPiArCQlpbnRlbF9wc3JfZGlzYWJsZV9sb2NrZWQoaW50ZWxfZHApOwo+ICsJCXBzci0+
c2lua19ub3RfcmVsaWFibGUgPSB0cnVlOwo+ICsJCURSTV9ERUJVR19LTVMoIlNpbmsgUFNSIGNh
cGFiaWxpdHkgY2hhbmdlZCwgZGlzYWJsaW5nIFBTUlxuIik7Cj4gKwl9Cj4gK30KPiArCj4gIHZv
aWQgaW50ZWxfcHNyX3Nob3J0X3B1bHNlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCj4gIHsK
PiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxf
ZHApOwo+IEBAIC0xNDgwLDYgKzE1MDAsNyBAQCB2b2lkIGludGVsX3Bzcl9zaG9ydF9wdWxzZShz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQo+ICAJZHJtX2RwX2RwY2Rfd3JpdGViKCZpbnRlbF9k
cC0+YXV4LCBEUF9QU1JfRVJST1JfU1RBVFVTLCBlcnJvcl9zdGF0dXMpOwo+ICAKPiAgCXBzcl9h
bHBtX2NoZWNrKGludGVsX2RwKTsKPiArCXBzcl9jYXBhYmlsaXR5X2NoYW5nZWRfY2hlY2soaW50
ZWxfZHApOwo+ICAKPiAgZXhpdDoKPiAgCW11dGV4X3VubG9jaygmcHNyLT5sb2NrKTsKPiAtLSAK
PiAyLjI0LjAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngKCi0tIApNYXR0IFJvcGVyCkdyYXBoaWNzIFNvZnR3YXJlIEVuZ2luZWVyClZUVC1P
U0dDIFBsYXRmb3JtIEVuYWJsZW1lbnQKSW50ZWwgQ29ycG9yYXRpb24KKDkxNikgMzU2LTI3OTUK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
