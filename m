Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA1EBE6FD4
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 11:45:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AB4089956;
	Mon, 28 Oct 2019 10:45:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 180A789956;
 Mon, 28 Oct 2019 10:45:45 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 03:45:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,239,1569308400"; d="scan'208";a="229647688"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 28 Oct 2019 03:45:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 28 Oct 2019 12:45:42 +0200
Date: Mon, 28 Oct 2019 12:45:42 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191028104542.GK1208@intel.com>
References: <20191024153416.13665-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024153416.13665-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] lib: Restore i915.reset
 before testing it in igt_allow_hang()
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBPY3QgMjQsIDIwMTkgYXQgMDQ6MzQ6MTZQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IGlndF9hbGxvd19oYW5nKCkgY2hlY2tzIHRoYXQgdGhlIEdQVSBjYW4gYmUgcmVzZXQg
YmVmb3JlIGFsbG93aW5nIHRoZQo+IHRlc3QgdG8gY2F1c2UgYSBHUFUgaGFuZyAod2hpY2ggd291
bGQgbmVlZCB0aGUgcmVzZXQgdG8gcmVjb3ZlcikuCj4gSG93ZXZlciwgb3VyIGNoZWNraW5nIGZv
ciBhbGxvd2luZyBhIGhhbmcgZGVwZW5kcyBvbiBpOTE1LnJlc2V0IHdoaWNoIHdlCj4gbGF0ZXIg
cmVzdG9yZS4gRG8gdGhhdCByZXN0b3JhdGlvbiBiZWZvcmUgdGhlIGNoZWNrIHNvIHRoYXQgdGhp
cyB0ZXN0IGlzCj4gbm90IGFmZmVjdGVkIGJ5IGVhcmxpZXIgZmFpbHMuCj4gCj4gU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpMb29rcyBzZW5z
aWJsZS4KUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+Cgo+IC0tLQo+ICBsaWIvaWd0X2d0LmMgfCA1ICsrKy0tCj4gIDEgZmlsZSBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2xp
Yi9pZ3RfZ3QuYyBiL2xpYi9pZ3RfZ3QuYwo+IGluZGV4IDVjYTc3NDcxYy4uMjU2YzdjYmMwIDEw
MDY0NAo+IC0tLSBhL2xpYi9pZ3RfZ3QuYwo+ICsrKyBiL2xpYi9pZ3RfZ3QuYwo+IEBAIC0xNzUs
OCArMTc1LDYgQEAgaWd0X2hhbmdfdCBpZ3RfYWxsb3dfaGFuZyhpbnQgZmQsIHVuc2lnbmVkIGN0
eCwgdW5zaWduZWQgZmxhZ3MpCj4gIAlpZiAoIWlndF9jaGVja19ib29sZWFuX2Vudl92YXIoIklH
VF9IQU5HIiwgdHJ1ZSkpCj4gIAkJaWd0X3NraXAoImhhbmcgaW5qZWN0aW9uIGRpc2FibGVkIGJ5
IHVzZXIiKTsKPiAgCWdlbV9jb250ZXh0X3JlcXVpcmVfYmFubmFibGUoZmQpOwo+IC0JaWYgKCFp
Z3RfY2hlY2tfYm9vbGVhbl9lbnZfdmFyKCJJR1RfSEFOR19XSVRIT1VUX1JFU0VUIiwgZmFsc2Up
KQo+IC0JCWlndF9yZXF1aXJlKGhhc19ncHVfcmVzZXQoZmQpKTsKPiAgCj4gIAlhbGxvd19yZXNl
dCA9IDE7Cj4gIAlpZiAoKGZsYWdzICYgSEFOR19BTExPV19DQVBUVVJFKSA9PSAwKSB7Cj4gQEAg
LTE5MSw2ICsxODksOSBAQCBpZ3RfaGFuZ190IGlndF9hbGxvd19oYW5nKGludCBmZCwgdW5zaWdu
ZWQgY3R4LCB1bnNpZ25lZCBmbGFncykKPiAgCX0KPiAgCWlndF9yZXF1aXJlKGlndF9zeXNmc19z
ZXRfcGFyYW1ldGVyKGZkLCAicmVzZXQiLCAiJWQiLCBhbGxvd19yZXNldCkpOwo+ICAKPiArCWlm
ICghaWd0X2NoZWNrX2Jvb2xlYW5fZW52X3ZhcigiSUdUX0hBTkdfV0lUSE9VVF9SRVNFVCIsIGZh
bHNlKSkKPiArCQlpZ3RfcmVxdWlyZShoYXNfZ3B1X3Jlc2V0KGZkKSk7Cj4gKwo+ICAJYmFuID0g
Y29udGV4dF9nZXRfYmFuKGZkLCBjdHgpOwo+ICAJaWYgKChmbGFncyAmIEhBTkdfQUxMT1dfQkFO
KSA9PSAwKQo+ICAJCWNvbnRleHRfc2V0X2JhbihmZCwgY3R4LCAwKTsKPiAtLSAKPiAyLjI0LjAu
cmMwCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBpZ3QtZGV2IG1haWxpbmcgbGlzdAo+IGlndC1kZXZAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4g
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pZ3QtZGV2Cgot
LSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
