Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E6AA717C
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 19:16:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A715989381;
	Tue,  3 Sep 2019 17:16:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 658D089381
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2019 17:16:43 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 10:16:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,463,1559545200"; d="scan'208";a="333918089"
Received: from mdroper-desk.fm.intel.com (HELO
 mdroper-desk.amr.corp.intel.com) ([10.105.128.12])
 by orsmga004.jf.intel.com with ESMTP; 03 Sep 2019 10:16:31 -0700
Date: Tue, 3 Sep 2019 10:16:31 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20190903171631.GH13677@mdroper-desk.amr.corp.intel.com>
References: <20190829092554.32198-1-lucas.demarchi@intel.com>
 <20190829092554.32198-4-lucas.demarchi@intel.com>
 <20190829103754.GN7482@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829103754.GN7482@intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: [Intel-gfx] [PATCH v3 3/7] drm/i915: protect access to DP_TP_*
 on non-dp
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBBdWcgMjksIDIwMTkgYXQgMDE6Mzc6NTVQTSArMDMwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+IE9uIFRodSwgQXVnIDI5LCAyMDE5IGF0IDAyOjI1OjUwQU0gLTA3MDAsIEx1Y2Fz
IERlIE1hcmNoaSB3cm90ZToKPiA+IERQX1RQX3tDVEwsU1RBVFVTfSBzaG91bGQgb25seSBiZSBw
cm9ncmFtbWVkIHdoZW4gdGhlIGVuY29kZXIgaXMgaW50ZWxfZHAuCj4gPiBDaGVja2luZyBpdHMg
Y3VycmVudCB1c2FnZXMgaW50ZWxfZGlzYWJsZV9kZGlfYnVmKCkgaXMgdGhlIG9ubHkKPiA+IG9m
ZmVuZGVyLCB3aXRoIG90aGVyIHBsYWNlcyBiZWluZyBwcm90ZWN0ZWQgYnkgY2hlY2tzIGxpa2UK
PiA+IHBpcGVfY29uZmlnLT5mZWNfZW5hYmxlIHRoYXQgaXMgb25seSBzZXQgYnkgaW50ZWxfZHAu
Cj4gPiAKPiA+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgo+ID4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBp
bnRlbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RkaS5jIHwgMTAgKysrKysrLS0tLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMo
KyksIDQgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGkuYwo+ID4gaW5kZXggMzE4MGRhY2I1YmU0Li5kZjNlNGZlN2UzZTkgMTAwNjQ0Cj4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCj4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCj4gPiBAQCAtMzQ2Miwx
MCArMzQ2MiwxMiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kaXNhYmxlX2RkaV9idWYoc3RydWN0IGlu
dGVsX2VuY29kZXIgKmVuY29kZXIsCj4gPiAgCQl3YWl0ID0gdHJ1ZTsKPiA+ICAJfQo+ID4gIAo+
ID4gLQl2YWwgPSBJOTE1X1JFQUQoRFBfVFBfQ1RMKHBvcnQpKTsKPiA+IC0JdmFsICY9IH4oRFBf
VFBfQ1RMX0VOQUJMRSB8IERQX1RQX0NUTF9MSU5LX1RSQUlOX01BU0spOwo+ID4gLQl2YWwgfD0g
RFBfVFBfQ1RMX0xJTktfVFJBSU5fUEFUMTsKPiA+IC0JSTkxNV9XUklURShEUF9UUF9DVEwocG9y
dCksIHZhbCk7Cj4gPiArCWlmIChpbnRlbF9lbmNvZGVyX2lzX2RwKGVuY29kZXIpKSB7Cj4gCj4g
RG9lc24ndCByZWFsbHkgbWFrZSBzZW5zZSB0byBtZS4gRWl0aGVyIHdlIGp1c3QgZG8gaXQgKGJl
Y2F1c2UgYSBEREkgaXMKPiBqdXN0IGEgRERJIHNvIERQX1RQX0NUTCBkb2VzIGV4aXN0IGFsd2F5
cyksIG9yIHdlIG9ubHkgZG8gaXQgd2hlbiBkcml2aW5nCj4gRFAgYW5kIG5vdCB3aGVuIGRyaXZp
bmcgSERNSS4KCkkgYWdyZWU7IEkgZG9uJ3QgdGhpbmsgdGhlcmUncyBhIG5lZWQgdG8gYXZvaWQg
cHJvZ3JhbSBwcm9ncmFtbWluZyB0aGUKcmVnaXN0ZXIganVzdCBiZWNhdXNlIHdlIHdlcmVuJ3Qg
cHJldmlvdXNseSBpbiBEUCBtb2RlLgoKQnV0IEkgZG8gcXVlc3Rpb24gd2hldGhlciBhIFJNVyBp
cyBuZWNlc3Nhcnk7IGl0IHNlZW1zIGxpa2UganVzdCB3cml0aW5nCmEgY29uc3RhbnQgMCB0byB0
aGlzIHJlZ2lzdGVyIHdvdWxkIGJlIHN1ZmZpY2llbnQgZm9yIHRoZSBkaXNhYmxlCnNlcXVlbmNl
LgoKCk1hdHQKCj4gCj4gRm9yIHRoZSBsYXR0ZXIgSSB3b3VsZCBwZXJoYXBzIHN1Z2dlc3QgbW92
aW5nIGFsbCB0aGlzIGV4dHJhIGp1bmsgb3V0Cj4gZnJvbSBpbnRlbF9kaXNhYmxlX2RkaV9idWYo
KSBpbnRvIHRoZSBEUCBzcGVjaWZpYyBjb2RlIHBhdGhzLCBsZWF2aW5nCj4ganVzdCB0aGUgYWN0
dWFsIERESV9CVUZfQ1RMIGRpc2FibGUgaGVyZS4KPiAKPiA+ICsJCXZhbCA9IEk5MTVfUkVBRChE
UF9UUF9DVEwocG9ydCkpOwo+ID4gKwkJdmFsICY9IH4oRFBfVFBfQ1RMX0VOQUJMRSB8IERQX1RQ
X0NUTF9MSU5LX1RSQUlOX01BU0spOwo+ID4gKwkJdmFsIHw9IERQX1RQX0NUTF9MSU5LX1RSQUlO
X1BBVDE7Cj4gPiArCQlJOTE1X1dSSVRFKERQX1RQX0NUTChwb3J0KSwgdmFsKTsKPiA+ICsJfQo+
ID4gIAo+ID4gIAkvKiBEaXNhYmxlIEZFQyBpbiBEUCBTaW5rICovCj4gPiAgCWludGVsX2RkaV9k
aXNhYmxlX2ZlY19zdGF0ZShlbmNvZGVyLCBjcnRjX3N0YXRlKTsKPiA+IC0tIAo+ID4gMi4yMy4w
Cj4gCj4gLS0gCj4gVmlsbGUgU3lyasOkbMOkCj4gSW50ZWwKCi0tIApNYXR0IFJvcGVyCkdyYXBo
aWNzIFNvZnR3YXJlIEVuZ2luZWVyClZUVC1PU0dDIFBsYXRmb3JtIEVuYWJsZW1lbnQKSW50ZWwg
Q29ycG9yYXRpb24KKDkxNikgMzU2LTI3OTUKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
