Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9958D6BB87
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 13:35:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E84D089DEC;
	Wed, 17 Jul 2019 11:35:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD2AE89DEC
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 11:35:27 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 04:35:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,274,1559545200"; d="scan'208";a="161724843"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 17 Jul 2019 04:35:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 17 Jul 2019 14:35:24 +0300
Date: Wed, 17 Jul 2019 14:35:24 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Message-ID: <20190717113524.GT5942@intel.com>
References: <20190716220321.32192-1-dhinakaran.pandiyan@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190716220321.32192-1-dhinakaran.pandiyan@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/vbt: Fix VBT parsing for the PSR
 section
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

T24gVHVlLCBKdWwgMTYsIDIwMTkgYXQgMDM6MDM6MjFQTSAtMDcwMCwgRGhpbmFrYXJhbiBQYW5k
aXlhbiB3cm90ZToKPiBBIHNpbmdsZSAzMi1iaXQgUFNSMiB0cmFpbmluZyBwYXR0ZXJuIGZpZWxk
IGZvbGxvd3MgdGhlIHNpeHRlZW4gZWxlbWVudAo+IGFycmF5IG9mIFBTUiB0YWJsZSBlbnRyaWVz
IGluIHRoZSBWQlQgc3BlYy4gQnV0LCB3ZSBpbmNvcnJlY3RseSBkZWZpbmUKPiB0aGlzIFBTUjIg
ZmllbGQgZm9yIGVhY2ggb2YgdGhlIFBTUiB0YWJsZSBlbnRyaWVzLiBBcyBhIHJlc3VsdCwgdGhl
IFBTUjEKPiB0cmFpbmluZyBwYXR0ZXJuIGR1cmF0aW9uIGZvciBhbnkgcGFuZWxfdHlwZSAhPSAw
IHdpbGwgYmUgcGFyc2VkCj4gaW5jb3JyZWN0bHkuIFNlY29uZGx5LCBQU1IyIHRyYWluaW5nIHBh
dHRlcm4gZHVyYXRpb25zIGZvciBWQlRzIHdpdGggYmRiCj4gdmVyc2lvbiA+PSAyMjYgd2lsbCBh
bHNvIGJlIHdyb25nLgo+IAo+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5j
b20+Cj4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+
IEZpeGVzOiA4OGEwZDk2MDZhZmYgKCJkcm0vaTkxNS92YnQ6IFBhcnNlIGFuZCB1c2UgdGhlIG5l
dyBmaWVsZCB3aXRoIFBTUjIgVFAyLzMgd2FrZXVwIHRpbWUiKQo+IFNpZ25lZC1vZmYtYnk6IERo
aW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5ha2FyYW4ucGFuZGl5YW5AaW50ZWwuY29tPgoKUmV2aWV3
ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CgpQ
bGVhc2Ugc3luYyB0aGUgaWd0IGNvcHkgYWZ0ZXIgbGFuZGluZyB0aGlzLgoKPiAtLS0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgICAgIHwgMiArLQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmggfCA2ICsrKy0tLQo+ICAy
IGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwo+IGluZGV4IDIxNTAxZDU2NTMy
Ny4uYjQxNmIzOTRiNjQxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfYmlvcy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9iaW9zLmMKPiBAQCAtNzY2LDcgKzc2Niw3IEBAIHBhcnNlX3BzcihzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsIGNvbnN0IHN0cnVjdCBiZGJfaGVhZGVyICpiZGIpCj4gIAl9Cj4g
IAo+ICAJaWYgKGJkYi0+dmVyc2lvbiA+PSAyMjYpIHsKPiAtCQl1MzIgd2FrZXVwX3RpbWUgPSBw
c3JfdGFibGUtPnBzcjJfdHAyX3RwM193YWtldXBfdGltZTsKPiArCQl1MzIgd2FrZXVwX3RpbWUg
PSBwc3ItPnBzcjJfdHAyX3RwM193YWtldXBfdGltZTsKPiAgCj4gIAkJd2FrZXVwX3RpbWUgPSAo
d2FrZXVwX3RpbWUgPj4gKDIgKiBwYW5lbF90eXBlKSkgJiAweDM7Cj4gIAkJc3dpdGNoICh3YWtl
dXBfdGltZSkgewo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3ZidF9kZWZzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9k
ZWZzLmgKPiBpbmRleCA5M2Y1YzlkMjA0ZDYuLjA5Y2QzN2ZiMGIxYyAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmgKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZidF9kZWZzLmgKPiBAQCAtNDgxLDEzICs0
ODEsMTMgQEAgc3RydWN0IHBzcl90YWJsZSB7Cj4gIAkvKiBUUCB3YWtlIHVwIHRpbWUgaW4gbXVs
dGlwbGUgb2YgMTAwICovCj4gIAl1MTYgdHAxX3dha2V1cF90aW1lOwo+ICAJdTE2IHRwMl90cDNf
d2FrZXVwX3RpbWU7Cj4gLQo+IC0JLyogUFNSMiBUUDIvVFAzIHdha2V1cCB0aW1lIGZvciAxNiBw
YW5lbHMgKi8KPiAtCXUzMiBwc3IyX3RwMl90cDNfd2FrZXVwX3RpbWU7Cj4gIH0gX19wYWNrZWQ7
Cj4gIAo+ICBzdHJ1Y3QgYmRiX3BzciB7Cj4gIAlzdHJ1Y3QgcHNyX3RhYmxlIHBzcl90YWJsZVsx
Nl07Cj4gKwo+ICsJLyogUFNSMiBUUDIvVFAzIHdha2V1cCB0aW1lIGZvciAxNiBwYW5lbHMgKi8K
PiArCXUzMiBwc3IyX3RwMl90cDNfd2FrZXVwX3RpbWU7Cj4gIH0gX19wYWNrZWQ7Cj4gIAo+ICAv
Kgo+IC0tIAo+IDIuMTcuMQo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
