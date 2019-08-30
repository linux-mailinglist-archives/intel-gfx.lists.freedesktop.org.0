Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0357AA3B24
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 17:59:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D58C6E2FD;
	Fri, 30 Aug 2019 15:59:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D536F6E104;
 Fri, 30 Aug 2019 15:58:59 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 08:58:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,447,1559545200"; d="scan'208";a="206134485"
Received: from mdroper-desk.fm.intel.com (HELO
 mdroper-desk.amr.corp.intel.com) ([10.105.128.12])
 by fmsmga004.fm.intel.com with ESMTP; 30 Aug 2019 08:58:58 -0700
Date: Fri, 30 Aug 2019 08:58:58 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Ser, Simon" <simon.ser@intel.com>
Message-ID: <20190830155858.GY13677@mdroper-desk.amr.corp.intel.com>
References: <5b979337dee5e5e56dfee60af4b33f68961b6fc7.camel@intel.com>
 <20190829205255.862-1-matthew.d.roper@intel.com>
 <5b07516ed5f8ace8e1860ebfe3e9c6a92548c3b0.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5b07516ed5f8ace8e1860ebfe3e9c6a92548c3b0.camel@intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: [Intel-gfx] [PATCH i-g-t v2] tests/kms_plane_lowres: Skip if no
 suitable mode is possible
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBBdWcgMzAsIDIwMTkgYXQgMTI6Mjk6MjVBTSAtMDcwMCwgU2VyLCBTaW1vbiB3cm90
ZToKPiBPbiBUaHUsIDIwMTktMDgtMjkgYXQgMTM6NTIgLTA3MDAsIE1hdHQgUm9wZXIgd3JvdGU6
Cj4gPiBXaGVuIGNob29zaW5nIGEgbG93IHJlc29sdXRpb24gbW9kZSB0byBzd2l0Y2ggdG8sIHdl
IHNlYXJjaCB0aGUKPiA+IGNvbm5lY3RvcidzIG1vZGUgbGlzdCBmb3IgYSBtb2RlIHRoYXQncyBz
bWFsbCBlbm91Z2ggdGhhdCBhIHBsYW5lCj4gPiBwb3NpdGlvbmVkIGluIHRoZSBib3R0b20gbGVm
dCBjb3JuZXIgb2YgdGhlIHNjcmVlbiBpbiB0aGUgb3JpZ2luYWwgbW9kZQo+ID4gd2lsbCBiZSBm
dWxseSBvZmZzY3JlZW4gaW4gdGhlIG5ldywgc21hbGxlciBtb2RlLiAgSG93ZXZlciBpZiBubwo+
ID4gc3VpdGFibGUgbW9kZXMgYXJlIGZvdW5kIGluIHRoZSBtb2RlbGlzdCwgd2UgYmxpbmRseSBm
YWxsIGJhY2sgdG8gYSAxMHg3Cj4gPiBtb2RlIHdpdGhvdXQgYWN0dWFsbHkgY2hlY2tpbmcgdGhh
dCB0aGUgY2FuYXJ5IHBsYW5lIHdpbGwgbm93IGJlCj4gPiBvZmZzY3JlZW4uICBJZiwgZm9yIGV4
YW1wbGUsIHRoZSBvcmlnaW5hbCBtb2RlIHdhcyAxM3g3LCB0aGVuIHN3aXRjaGluZwo+ID4gdG8g
MTB4NyB3aWxsIGxlYXZlIHRoZSBwbGFuZSB2aXNpYmxlIG9uc2NyZWVuLCBjYXVzaW5nIHRoZSB0
ZXN0IHRvIGZhaWwuCj4gPiAKPiA+IEJlZm9yZSBmYWxsaW5nIGJhY2sgdG8gYSAxMHg3IG1vZGUs
IGNoZWNrIHdoZXRoZXIgdGhhdCdzIGFjdHVhbGx5IHNtYWxsCj4gPiBlbm91Z2guICBJZiBpdCBp
c24ndCBqdXN0IHNraXAgdGhpcyBzdWJ0ZXN0Lgo+ID4gCj4gPiB2MjogUmVzdHJ1Y3R1cmUgdGhl
IHNraXAgY29uZGl0aW9uIHRvIG1ha2UgaXQgbW9yZSBvYnZpb3VzIHdoeSB0aGlzIHNpemUKPiA+
ICAgICBsaW1pdGF0aW9uIGlzIGltcG9ydGFudC4gIChTaW1vbikKPiA+IAo+ID4gQ2M6IFNpbW9u
IFNlciA8c2ltb24uc2VyQGludGVsLmNvbT4KPiA+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJl
ZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDU1ODEKPiA+IFNpZ25lZC1vZmYtYnk6IE1h
dHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4gCj4gVGhhbmtzIQo+IAo+IFJl
dmlld2VkLWJ5OiBTaW1vbiBTZXIgPHNpbW9uLnNlckBpbnRlbC5jb20+CgpQdXNoZWQsIHRoYW5r
cyBmb3IgdGhlIHJldmlldy4KCgpNYXR0Cgo+IAo+ID4gLS0tCj4gPiAgdGVzdHMva21zX3BsYW5l
X2xvd3Jlcy5jIHwgNiArKysrKy0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS90ZXN0cy9rbXNfcGxhbmVfbG93
cmVzLmMgYi90ZXN0cy9rbXNfcGxhbmVfbG93cmVzLmMKPiA+IGluZGV4IDY4Yjg1MDI1Li4xYTMx
NmM4NCAxMDA2NDQKPiA+IC0tLSBhL3Rlc3RzL2ttc19wbGFuZV9sb3dyZXMuYwo+ID4gKysrIGIv
dGVzdHMva21zX3BsYW5lX2xvd3Jlcy5jCj4gPiBAQCAtNTksOCArNTksMTIgQEAgZ2V0X2xvd3Jl
c19tb2RlKGludCBkcm1mZCwgaWd0X291dHB1dF90ICpvdXRwdXQsIGRybU1vZGVNb2RlSW5mbyAq
bW9kZV9kZWZhdWx0KQo+ID4gIAkJfQo+ID4gIAl9Cj4gPiAgCj4gPiAtCWlmICghZm91bmQpCj4g
PiArCWlmICghZm91bmQpIHsKPiA+ICsJCWlndF9yZXF1aXJlX2YobW9kZV9kZWZhdWx0LT52ZGlz
cGxheSAtIFNJWkUgPiA3NjgsCj4gPiArCQkJICAgICAgIkN1cnJlbnQgbW9kZSBub3QgdGFsbCBl
bm91Z2g7IHBsYW5lIHdvdWxkIHN0aWxsIGJlIG9uc2NyZWVuIGFmdGVyIHN3aXRjaCB0byAxMHg3
LlxuIik7Cj4gPiArCj4gPiAgCQlyZXR1cm4gKmlndF9zdGRfMTAyNF9tb2RlX2dldCgpOwo+ID4g
Kwl9Cj4gPiAgCj4gPiAgCXJldHVybiBtb2RlOwo+ID4gIH0KCi0tIApNYXR0IFJvcGVyCkdyYXBo
aWNzIFNvZnR3YXJlIEVuZ2luZWVyClZUVC1PU0dDIFBsYXRmb3JtIEVuYWJsZW1lbnQKSW50ZWwg
Q29ycG9yYXRpb24KKDkxNikgMzU2LTI3OTUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
