Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EBA164CA9
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 21:22:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26B866E126;
	Wed, 10 Jul 2019 19:21:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51F106E126
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 19:21:56 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 12:21:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,475,1557212400"; d="scan'208";a="249564665"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga001.jf.intel.com with ESMTP; 10 Jul 2019 12:21:55 -0700
Date: Wed, 10 Jul 2019 12:24:15 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20190710192414.GD24720@intel.com>
References: <20190709214735.16907-1-manasi.d.navare@intel.com>
 <20190710000613.18866-1-manasi.d.navare@intel.com>
 <20190710191505.GM5942@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710191505.GM5942@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display/tgl: Bump up the mode
 vertical limits to support 8K
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

T24gV2VkLCBKdWwgMTAsIDIwMTkgYXQgMTA6MTU6MDVQTSArMDMwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+IE9uIFR1ZSwgSnVsIDA5LCAyMDE5IGF0IDA1OjA2OjEzUE0gLTA3MDAsIE1hbmFz
aSBOYXZhcmUgd3JvdGU6Cj4gPiBPbiBUR0wrIHdlIHN1cHBvcnQgOEsgZGlzcGxheSByZXNvbHV0
aW9uLCBoZW5jZSBidW1wIHVwIHRoZSB2ZXJ0aWNhbAo+ID4gYWN0aXZlIGxpbWl0cyB0byA0MzIw
IGluIGludGVsX21vZGVfdmFsaWQoKQo+ID4gCj4gPiB2MjoKPiA+ICogQ2hlY2twYXRjaCB3YXJu
aW5nIChNYW5hc2kpCj4gPiAKPiA+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5r
aG9yc3RAbGludXguaW50ZWwuY29tPgo+ID4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBNYW5hc2kgTmF2YXJlIDxt
YW5hc2kuZC5uYXZhcmVAaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA5ICsrKysrKystLQo+ID4gIDEgZmlsZSBjaGFu
Z2VkLCA3IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gPiBpbmRleCBmMDcwODE4MTVi
ODAuLmNmY2ViMjdlNGI5ZSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYwo+ID4gQEAgLTE1NzY0LDggKzE1NzY0LDEzIEBAIGludGVsX21v
ZGVfdmFsaWQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKPiA+ICAJCQkgICBEUk1fTU9ERV9GTEFH
X0NMS0RJVjIpKQo+ID4gIAkJcmV0dXJuIE1PREVfQkFEOwo+ID4gIAo+ID4gLQlpZiAoSU5URUxf
R0VOKGRldl9wcml2KSA+PSA5IHx8Cj4gPiAtCSAgICBJU19CUk9BRFdFTEwoZGV2X3ByaXYpIHx8
IElTX0hBU1dFTEwoZGV2X3ByaXYpKSB7Cj4gPiArCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49
IDEyKSB7Cj4gPiArCQloZGlzcGxheV9tYXggPSA4MTkyOwo+ID4gKwkJdmRpc3BsYXlfbWF4ID0g
NDMyMDsKPiA+ICsJCWh0b3RhbF9tYXggPSA4MTkyOwo+ID4gKwkJdnRvdGFsX21heCA9IDgxOTI7
Cj4gCj4gSSB3b25kZXIgaWYgd2UgY2FuIHNhZmVseSBidW1wIHRoZXNlIGJlZm9yZSB3ZSBnZXQg
dGhlIGpvaW5lciBzdHVmZiBzb3J0ZWQuCj4gSG1tLiBJIGd1ZXNzIGl0IHNob3VsZCBiZSBmaW5l
IGFzIHRoZSBsaW1pdCB0aGF0IGlzIHN1cHBvc2VkIHRvIG92ZXJjb21lCj4gaXMgY2F1c2VkIGJ5
IHRoZSBjZGNsayBtYXggZnJlcXVlbmN5IGJlaW5nIHRvbyBsb3cgdG8gYWxsb3cgYSBzaW5nbGUK
PiBwaXBlIHRvIHB1c2ggZW5vdWdoIHBpeGVscy4gQW5kIHNpbmNlIHdlIGNoZWNrIHRoYXQgaW4g
Lm1vZGVfdmFsaWQoKSB3ZQo+IHNob3VsZG4ndCBhY2NpZGVudGFsbHkgc3RhcnQgdG8gYWR2ZXJ0
aXplIHN1cHBvcnQgZm9yIG1vZGVzIHdlIGNhbid0IGRvLgoKWWVzIHRoZSBpbnRlbF9kcF9tb2Rl
X3ZhbGlkKCkgd2lsbCBzdGlsbCByZWplY3QgdGhlIG1vZGVzIHVudGlsIHdlIGhhdmUgdGhlIHN1
cHBvcnQKZm9yIGJpZyBqb2luZXIsIHNvIGFsbG93aW5nIHRoZXNlIGxpbWl0cyBzaG91bGQgYmUg
ZmluZSBoZXJlLgoKU2FtZSBmb3IgdGhlIHBsYW5lIHNpemUgbGltaXRzLiBQbGFuZSBzaXplIGxp
bWl0cyBidW1waW5nIHVwIGlzIGFsc28KbmVlZGVkIGluIGNhc2Ugb2YgdGlsZWQgOEsgZGlzcGxh
eSB3aXRoIHRyYW5zY2RvZXIgcG9ydCBzeW5jCgo+IAo+IFdoaWNoIG1lYW5zIHRoZXNlIGxpbWl0
cyBzaG91bGQgYWN0dWFsbHkgYmUgaGlnaGVyIHRoYW4gdGhpcy4gMTZrIGZvcgo+IGh0b3RhbCto
ZGlzcGxheSBhbmQgOGsgZm9yIHZ0b3RhbCt2ZGlzcGxheSBhbHJlYWR5IG9uIGljbCBJIGJlbGll
dmUuCgpXaGVyZSBkbyB3ZSBzZXQgaHRvdGFsK2hkaXNwbGF5PyBBbmQgSSBhZGRlZCB0aGlzIGZv
ciB0Z2wsIHNpbmNlIHdlIHdvdWxkIGJlCnN1cHBvcnRpbmcgdGhlIDhLIHJlcyBvbmx5IG9uIHRn
bCBvbndhcmRzLCBjb3JyZWN0PwoKTWFuYXNpCgo+IAo+ID4gKwl9IGVsc2UgaWYgKElOVEVMX0dF
TihkZXZfcHJpdikgPj0gOSB8fAo+ID4gKwkJICAgSVNfQlJPQURXRUxMKGRldl9wcml2KSB8fCBJ
U19IQVNXRUxMKGRldl9wcml2KSkgewo+ID4gIAkJaGRpc3BsYXlfbWF4ID0gODE5MjsgLyogRkRJ
IG1heCA0MDk2IGhhbmRsZWQgZWxzZXdoZXJlICovCj4gPiAgCQl2ZGlzcGxheV9tYXggPSA0MDk2
Owo+ID4gIAkJaHRvdGFsX21heCA9IDgxOTI7Cj4gPiAtLSAKPiA+IDIuMTkuMQo+IAo+IC0tIAo+
IFZpbGxlIFN5cmrDpGzDpAo+IEludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
