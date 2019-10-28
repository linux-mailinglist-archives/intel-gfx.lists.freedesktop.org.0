Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6DB2E780B
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 19:03:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91BD66E8C0;
	Mon, 28 Oct 2019 18:03:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65B266E8C0
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 18:03:37 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 11:03:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,240,1569308400"; d="scan'208";a="189691335"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 28 Oct 2019 11:03:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 28 Oct 2019 20:03:33 +0200
Date: Mon, 28 Oct 2019 20:03:33 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191028180333.GU1208@intel.com>
References: <20191028170457.6982-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028170457.6982-1-lucas.demarchi@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: add support to one DP-MST
 stream
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

T24gTW9uLCBPY3QgMjgsIDIwMTkgYXQgMTA6MDQ6NTdBTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IFRoaXMgaXMgdGhlIG1pbmltdW0gY2hhbmdlIHRvIHN1cHBvcnQgMSAoYW5kIG9u
bHkgMSkgRFAtTVNUIG1vbml0b3IKPiBjb25uZWN0ZWQgb24gVGlnZXIgTGFrZS4gVGhpcyBjaGFu
Z2Ugd2FzIGlzb2xhdGVkIGZyb20gcHJldmlvdXMgcGF0Y2gKPiBmcm9tIEpvc8OpLiBJbiBvcmRl
ciB0byBzdXBwb3J0IG1vcmUgc3RyZWFtcyB3ZSB3aWxsIG5lZWQgdG8gY3JlYXRlIGEKPiBtYXN0
ZXItc2xhdmUgcmVsYXRpb24gb24gdGhlIHRyYW5zY29kZXJzIGFuZCB0aGF0IGlzIGN1cnJlbnRs
eSBub3QKPiB3b3JraW5nIHlldC4KPiAKPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNh
cy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMgfCA0ICsrKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aCAgICAgICAgICB8IDMgKysrCj4gIDIgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspCj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCj4gaW5kZXggMjgxNTk0
YmNiZmFlLi4zMmQ5Yzc0YzU4MzggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGRpLmMKPiBAQCAtMTkwNSw2ICsxOTA1LDEwIEBAIGludGVsX2RkaV90cmFuc2NvZGVy
X2Z1bmNfcmVnX3ZhbF9nZXQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUpCj4gIAl9IGVsc2UgaWYgKGludGVsX2NydGNfaGFzX3R5cGUoY3J0Y19zdGF0ZSwgSU5URUxf
T1VUUFVUX0RQX01TVCkpIHsKPiAgCQl0ZW1wIHw9IFRSQU5TX0RESV9NT0RFX1NFTEVDVF9EUF9N
U1Q7Cj4gIAkJdGVtcCB8PSBERElfUE9SVF9XSURUSChjcnRjX3N0YXRlLT5sYW5lX2NvdW50KTsK
PiArCj4gKwkJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpCj4gKwkJCXRlbXAgfD0gVFJB
TlNfRERJX01TVF9UUkFOU1BPUlRfU0VMRUNUKAo+ICsJCQkJY3J0Y19zdGF0ZS0+Y3B1X3RyYW5z
Y29kZXIpOwo+ICAJfSBlbHNlIHsKPiAgCQl0ZW1wIHw9IFRSQU5TX0RESV9NT0RFX1NFTEVDVF9E
UF9TU1Q7Cj4gIAkJdGVtcCB8PSBERElfUE9SVF9XSURUSChjcnRjX3N0YXRlLT5sYW5lX2NvdW50
KTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiBpbmRleCBkZWUzMTY4ZWZkODYuLmUwOGM0ZWEz
Yjc0NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+IEBAIC05NTUwLDYgKzk1NTAsOSBA
QCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsKPiAgI2RlZmluZSAgVFJBTlNfRERJX0VEUF9JTlBVVF9B
X09OT0ZGCSg0IDw8IDEyKQo+ICAjZGVmaW5lICBUUkFOU19ERElfRURQX0lOUFVUX0JfT05PRkYJ
KDUgPDwgMTIpCj4gICNkZWZpbmUgIFRSQU5TX0RESV9FRFBfSU5QVVRfQ19PTk9GRgkoNiA8PCAx
MikKPiArI2RlZmluZSAgVFJBTlNfRERJX01TVF9UUkFOU1BPUlRfU0VMRUNUX1NISUZUCTEwCgp1
bnVzZWQuCgo+ICsjZGVmaW5lICBUUkFOU19ERElfTVNUX1RSQU5TUE9SVF9TRUxFQ1RfTUFTSwlS
RUdfR0VOTUFTSygxMiwgMTApCj4gKyNkZWZpbmUgIFRSQU5TX0RESV9NU1RfVFJBTlNQT1JUX1NF
TEVDVCh0cmFucykJKCh0cmFucykgPDwgMTApCgpJIGd1ZXNzIHRoaXMgc2hvdWxkIGJlIFJFR19G
SUVMRF9QUkVQKCkgaWYgeW91IHdhbnQgdG8gYmUgbW9kZXJuIChhcwp5b3VyIFJFR19HRU5NQVNL
KCkgdXNhZ2Ugc3VnZ2VzdHMpLgoKPiAgI2RlZmluZSAgVFJBTlNfRERJX0hEQ1BfU0lHTkFMTElO
RwkoMSA8PCA5KQo+ICAjZGVmaW5lICBUUkFOU19ERElfRFBfVkNfUEFZTE9BRF9BTExPQwkoMSA8
PCA4KQo+ICAjZGVmaW5lICBUUkFOU19ERElfSERNSV9TQ1JBTUJMRVJfQ1RTX0VOQUJMRSAoMSA8
PCA3KQo+IC0tIAo+IDIuMjMuMAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
