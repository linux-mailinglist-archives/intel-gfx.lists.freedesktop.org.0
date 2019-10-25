Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA90E5705
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2019 01:25:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ADF16EBCC;
	Fri, 25 Oct 2019 23:25:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E699D6EBCC
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 23:25:01 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Oct 2019 16:25:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,230,1569308400"; d="scan'208";a="229069304"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.135])
 by fmsmga002.fm.intel.com with ESMTP; 25 Oct 2019 16:25:01 -0700
Date: Fri, 25 Oct 2019 16:25:47 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191025232547.GG18842@mdroper-desk1.amr.corp.intel.com>
References: <20191025230623.27829-1-matthew.d.roper@intel.com>
 <20191025230623.27829-5-matthew.d.roper@intel.com>
 <20191025231933.xfjp6ut4p364ngjx@ldmartin-desk1.jf.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191025231933.xfjp6ut4p364ngjx@ldmartin-desk1.jf.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: Provide more information on
 DP AUX failures
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

T24gRnJpLCBPY3QgMjUsIDIwMTkgYXQgMDQ6MTk6MzNQTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IE9uIEZyaSwgT2N0IDI1LCAyMDE5IGF0IDA0OjA2OjIyUE0gLTA3MDAsIE1hdHQg
Um9wZXIgd3JvdGU6Cj4gPiBXZSdyZSBzZWVpbmcgc29tZSBmYWlsdXJlcyB3aGVyZSBhbiBhdXgg
dHJhbnNhY3Rpb24gc3RpbGwgc2hvd3MgYXMKPiA+ICdidXN5JyB3ZWxsIGFmdGVyIHRoZSB0aW1l
b3V0IGxpbWl0IHRoYXQgdGhlIGhhcmR3YXJlIGlzIHN1cHBvc2VkIHRvCj4gPiBlbmZvcmNlLiAg
SW1wcm92ZSB0aGUgZXJyb3IgbWVzc2FnZSBzbyB0aGF0IHdlIGNhbiBzZWUgZXhhY3RseSB3aGlj
aCBhdXgKPiA+IGNoYW5uZWwgdGhpcyBlcnJvciBoYXBwZW5lZCBvbiBhbmQgd2hhdCB0aGUgc3Rh
dHVzIGJpdHMgd2VyZSBkdXJpbmcgdGhpcwo+ID4gY2FzZSB0aGF0IGlzbid0IHN1cHBvc2VkIHRv
IGhhcHBlbi4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJv
cGVyQGludGVsLmNvbT4KPiA+IC0tLQo+ID4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jIHwgMyArKy0KPiA+IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
Ywo+ID4gaW5kZXggNjViYWI0NmY3YjQzLi4yYjQ5MTViNWNmNTIgMTAwNjQ0Cj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+ID4gQEAgLTExOTAsNyArMTE5MCw4IEBA
IGludGVsX2RwX2F1eF93YWl0X2RvbmUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKPiA+IAl0
cmFjZV9pOTE1X3JlZ19ydyhmYWxzZSwgY2hfY3RsLCBzdGF0dXMsIHNpemVvZihzdGF0dXMpLCB0
cnVlKTsKPiA+IAo+ID4gCWlmICghZG9uZSkKPiA+IC0JCURSTV9FUlJPUigiZHAgYXV4IGh3IGRp
ZCBub3Qgc2lnbmFsIHRpbWVvdXQhXG4iKTsKPiA+ICsJCURSTV9FUlJPUigiJXMgZGlkIG5vdCBj
b21wbGV0ZSBvciB0aW1lb3V0IHdpdGhpbiAxMG1zIChzdGF0dXMgMHglMDh4KVxuIiwKPiA+ICsJ
CQkgIGludGVsX2RwLT5hdXgubmFtZSA/OiAiQVVYIiwgc3RhdHVzKTsKPiAKPiBtYXliZSBhICJj
b25zdCB0aW1lb3V0X21zZWMgPSAxMCIgYW5kIHVzZSBpdCBib3RoIGhlcmUgYW5kIGFib3ZlIHRv
Cj4gYXZvaWQgbWlzbWF0Y2ggaW4gZnV0dXJlPyBIb3dldmVyIEknbSBub3Qgc3VyZSBpdCdzIHdv
cnRoLi4uIHVwIHRvIHlvdS4KPiAKPiBpbnRlbF9kcF9hdXhfaW5pdCBzZXQgYXV4Lm5hbWUgdG8g
a2FzcHJpbnRmKCkgYW5kIHdlIGNhbid0IHBvc3NpYmx5Cj4gaW5pdGlhdGUgYXV4IHRyYW5zYWN0
aW9ucyBiZWZvcmUgdGhhdCBpbml0Lgo+IGludGVsX2RwX2Nvbm5lY3Rvcl9yZWdpc3RlcigpIGFs
c28gZG9lc24ndCBoYW5kbGUgYXV4Lm5hbWUgPT0gTlVMTCwgc28KPiB3aGF5IGFyZSB3ZSBjaGVj
a2luZyBpdCBoZWVyZT8KCmthc3ByaW50ZigpIGNvdWxkIHRlY2huaWNhbGx5IGZhaWwgdG8gYWxs
b2NhdGUgdGhlIHN0cmluZyBhbmQgbGVhdmUgdGhlCm5hbWUgYXMgTlVMTC4gIEJ1dCBJIGd1ZXNz
IGlmIHRoYXQgaGFwcGVucyB3ZSd2ZSBwcm9iYWJseSBnb3QgYmlnZ2VyCnByb2JsZW1zIGFueXdh
eS4KCgpNYXR0CgoKPiAKPiBMdWNhcyBEZSBNYXJjaGkKPiAKPiA+ICN1bmRlZiBDCj4gPiAKPiA+
IAlyZXR1cm4gc3RhdHVzOwo+ID4gLS0gCj4gPiAyLjIxLjAKPiA+IAo+ID4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IEludGVsLWdmeCBtYWlsaW5n
IGxpc3QKPiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+IGh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgotLSAKTWF0dCBS
b3BlcgpHcmFwaGljcyBTb2Z0d2FyZSBFbmdpbmVlcgpWVFQtT1NHQyBQbGF0Zm9ybSBFbmFibGVt
ZW50CkludGVsIENvcnBvcmF0aW9uCig5MTYpIDM1Ni0yNzk1Cl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
