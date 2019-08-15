Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E66658F272
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 19:41:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 314AB6E444;
	Thu, 15 Aug 2019 17:41:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DB5B6EA0A
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 17:41:29 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 10:41:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,389,1559545200"; d="scan'208";a="178528173"
Received: from jausmus-gentoo-dev6.jf.intel.com ([10.54.75.43])
 by fmsmga007.fm.intel.com with ESMTP; 15 Aug 2019 10:41:28 -0700
Date: Thu, 15 Aug 2019 10:41:22 -0700
From: James Ausmus <james.ausmus@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Message-ID: <20190815174121.GA13278@jausmus-gentoo-dev6.jf.intel.com>
References: <20190713010940.17711-1-lucas.demarchi@intel.com>
 <20190713010940.17711-23-lucas.demarchi@intel.com>
 <20190718131013.GA5942@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718131013.GA5942@intel.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
Subject: Re: [Intel-gfx] [PATCH 22/22] drm/i915/mst: Do not hardcoded the
 crtcs that encoder can connect
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

T24gVGh1LCBKdWwgMTgsIDIwMTkgYXQgMDQ6MTA6MTNQTSArMDMwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+IE9uIEZyaSwgSnVsIDEyLCAyMDE5IGF0IDA2OjA5OjQwUE0gLTA3MDAsIEx1Y2Fz
IERlIE1hcmNoaSB3cm90ZToKPiA+IEZyb206IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPgo+ID4gCj4gPiBUaWdlciBMYWtlIGhhcyB1cCB0byA0IHBpcGVzIHNv
IHRoZSBtYXNrIHdvdWxkIG5lZWQgdG8gYmUgMHhmIGluc3RlYWQgb2YKPiA+IDB4Ny4gRG8gbm90
IGhhcmRjb2RlIHRoZSBtYXNrIHNvIGl0IGFsbG93cyB0aGUgZmFrZSBNU1QgZW5jb2RlcnMgdG8K
PiA+IGNvbm5lY3QgdG8gYWxsIHBpcGVzIG5vIG1hdHRlciBob3cgbWFueSB0aGUgcGxhdGZvcm0g
aGFzLgo+ID4gCj4gPiBJdGVyYXRpbmcgb3ZlciBhbGwgcGlwZXMgdG8ga2VlcCBjb25zaXN0ZW50
IHdpdGggaW50ZWxfZGRpX2luaXQoKS4KPiA+IAo+ID4gQ2M6IEx1Y2FzIERlIE1hcmNoaSA8bHVj
YXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+ID4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRl
IFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERl
IE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyB8IDUgKysrKy0KPiA+ICAxIGZpbGUg
Y2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPiAKPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYwo+ID4gaW5kZXggNjA2NTJlYmJk
ZjYxLi4xYjc5YjZiZWZhOTIgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwX21zdC5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwX21zdC5jCj4gPiBAQCAtNTg2LDYgKzU4Niw4IEBAIGludGVsX2RwX2NyZWF0
ZV9mYWtlX21zdF9lbmNvZGVyKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19w
b3J0LCBlbnVtCj4gPiAgCXN0cnVjdCBpbnRlbF9kcF9tc3RfZW5jb2RlciAqaW50ZWxfbXN0Owo+
ID4gIAlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqaW50ZWxfZW5jb2RlcjsKPiA+ICAJc3RydWN0IGRy
bV9kZXZpY2UgKmRldiA9IGludGVsX2RpZ19wb3J0LT5iYXNlLmJhc2UuZGV2Owo+ID4gKwlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRldik7Cj4gPiArCWVudW0g
cGlwZSBwaXBlX2l0ZXI7Cj4gPiAgCj4gPiAgCWludGVsX21zdCA9IGt6YWxsb2Moc2l6ZW9mKCpp
bnRlbF9tc3QpLCBHRlBfS0VSTkVMKTsKPiA+ICAKPiA+IEBAIC02MDIsOCArNjA0LDkgQEAgaW50
ZWxfZHBfY3JlYXRlX2Zha2VfbXN0X2VuY29kZXIoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAq
aW50ZWxfZGlnX3BvcnQsIGVudW0KPiA+ICAJaW50ZWxfZW5jb2Rlci0+dHlwZSA9IElOVEVMX09V
VFBVVF9EUF9NU1Q7Cj4gPiAgCWludGVsX2VuY29kZXItPnBvd2VyX2RvbWFpbiA9IGludGVsX2Rp
Z19wb3J0LT5iYXNlLnBvd2VyX2RvbWFpbjsKPiA+ICAJaW50ZWxfZW5jb2Rlci0+cG9ydCA9IGlu
dGVsX2RpZ19wb3J0LT5iYXNlLnBvcnQ7Cj4gPiAtCWludGVsX2VuY29kZXItPmNydGNfbWFzayA9
IDB4NzsKPiA+ICAJaW50ZWxfZW5jb2Rlci0+Y2xvbmVhYmxlID0gMDsKPiA+ICsJZm9yX2VhY2hf
cGlwZShkZXZfcHJpdiwgcGlwZV9pdGVyKQo+ID4gKwkJaW50ZWxfZW5jb2Rlci0+Y3J0Y19tYXNr
IHw9IEJJVChwaXBlX2l0ZXIpOwo+IAo+IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9y
Zy9wYXRjaC8zMTY1NTUvP3Nlcmllcz02MzM5OSZyZXY9MQoKV291bGQgaXQgbWFrZSBzZW5zZSB0
byBicmluZyB0aGlzIHBhdGNoIGluIGZvciBub3cgZm9yIFRHTCBNU1QsIHVudGlsCnRoYXQgbGFy
Z2VyIHNlcmllcyBjYW4gbGFuZD8KCi1KYW1lcwoKPiAKPiA+ICAKPiA+ICAJaW50ZWxfZW5jb2Rl
ci0+Y29tcHV0ZV9jb25maWcgPSBpbnRlbF9kcF9tc3RfY29tcHV0ZV9jb25maWc7Cj4gPiAgCWlu
dGVsX2VuY29kZXItPmRpc2FibGUgPSBpbnRlbF9tc3RfZGlzYWJsZV9kcDsKPiA+IC0tIAo+ID4g
Mi4yMS4wCj4gCj4gLS0gCj4gVmlsbGUgU3lyasOkbMOkCj4gSW50ZWwKPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxp
c3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
