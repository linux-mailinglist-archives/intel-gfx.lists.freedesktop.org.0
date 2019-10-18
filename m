Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7BCDCF80
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 21:43:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E09E6E161;
	Fri, 18 Oct 2019 19:43:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C8F26E161
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 19:43:07 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Oct 2019 12:43:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,312,1566889200"; d="scan'208";a="221846790"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by fmsmga004.fm.intel.com with ESMTP; 18 Oct 2019 12:43:06 -0700
Date: Fri, 18 Oct 2019 12:45:18 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20191018194518.GA2391@intel.com>
References: <20190718144340.1114-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718144340.1114-2-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [2/2] drm/i915: Check some transcoder timing
 minimum limits
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

T24gRnJpLCBPY3QgMTgsIDIwMTkgYXQgMTI6NDM6NTZQTSAtMDcwMCwgTWFuYXNpIE5hdmFyZSB3
cm90ZToKPiBGcm9tOiBWaWxsZSBTeXJqYWxhIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KPiAKPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+IAo+IE9uIElMSysgdGhlIGRvY3VtZW50ZWQgbWluIGhkaXNwbGF5IGlzIDY0LCBtaW4g
aGJsYW5rIGlzIDMyLCBhbmQgbWluCj4gdmJsYW5rIGlzIDUuIE9uIGVhcmxpZXIgcGxhdGZvcm1z
IG1pbiBoYmxhbmsgaXMgYWxzbyAzMiwgYW5kIG1pbgo+IHZibGFuayBpcyAzLiBNYWtlIHN1cmUg
dGhlIG1vZGUgc2F0aXNmaWVzIHRob3NlIGxpbWl0cy4KPiAKPiBUaGVyZSBhcmUgZnVydGhlciBs
aW1pdHMgZm9yIEhETUkgYW5kIHBmaXQgdXNlIGNhc2VzLCBidXQgd2UnbGwgY2hlY2sKPiBmb3Ig
dGhvc2UgaW4gYSBtb3JlIHNwZWNpZmljIGxvY2F0aW9uLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CgpEb3VibGUgY2hl
Y2tlZCB0aGUgbWluIGxpbWl0cyBmcm9tIHRoZSBzcGVjIGFuZCBsb29rcyBnb29kIHRvIG1lCgpS
ZXZpZXdlZC1ieTogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KCk1h
bmFzaQoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMgfCAxNSArKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMo
KykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+
IGluZGV4IGUyNWI4MmQwN2Q0Zi4uMTE0MWY0YWEzMWM3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBAQCAtMTU4MTYsNiArMTU4MTYsMjEg
QEAgaW50ZWxfbW9kZV92YWxpZChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAo+ICAJICAgIG1vZGUt
PnZ0b3RhbCA+IHZ0b3RhbF9tYXgpCj4gIAkJcmV0dXJuIE1PREVfVl9JTExFR0FMOwo+ICAKPiAr
CWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDUpIHsKPiArCQlpZiAobW9kZS0+aGRpc3BsYXkg
PCA2NCB8fAo+ICsJCSAgICBtb2RlLT5odG90YWwgLSBtb2RlLT5oZGlzcGxheSA8IDMyKQo+ICsJ
CQlyZXR1cm4gTU9ERV9IX0lMTEVHQUw7Cj4gKwo+ICsJCWlmIChtb2RlLT52dG90YWwgLSBtb2Rl
LT52ZGlzcGxheSA8IDUpCj4gKwkJCXJldHVybiBNT0RFX1ZfSUxMRUdBTDsKPiArCX0gZWxzZSB7
Cj4gKwkJaWYgKG1vZGUtPmh0b3RhbCAtIG1vZGUtPmhkaXNwbGF5IDwgMzIpCj4gKwkJCXJldHVy
biBNT0RFX0hfSUxMRUdBTDsKPiArCj4gKwkJaWYgKG1vZGUtPnZ0b3RhbCAtIG1vZGUtPnZkaXNw
bGF5IDwgMykKPiArCQkJcmV0dXJuIE1PREVfVl9JTExFR0FMOwo+ICsJfQo+ICsKPiAgCXJldHVy
biBNT0RFX09LOwo+ICB9Cj4gIAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
