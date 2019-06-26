Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B260E56E10
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 17:51:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 135316E482;
	Wed, 26 Jun 2019 15:51:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB7756E482
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 15:51:05 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 08:51:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,420,1557212400"; d="scan'208";a="172771268"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 26 Jun 2019 08:51:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Jun 2019 18:51:02 +0300
Date: Wed, 26 Jun 2019 18:51:02 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190626155102.GU5942@intel.com>
References: <20190625175437.14840-1-lucas.demarchi@intel.com>
 <20190625175437.14840-3-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625175437.14840-3-lucas.demarchi@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 02/28] drm/i915: rework reading pipe disable
 fuses
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

T24gVHVlLCBKdW4gMjUsIDIwMTkgYXQgMTA6NTQ6MTFBTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IFRoaXMgcHJlcGFyZXMgdG8gaGF2ZSBwb3NzaWJseSBtb3JlIHRoYW4gMyBwaXBl
cy4gSSBkaWRuJ3Qgd2FudCB0bwo+IGNvbnRpbnVlIHRoZSBwcmV2aW91cyBhcHByb2FjaCBzaW5j
ZSB0aGUgY2hlY2sgZm9yICJhcmUgdGhlIGRpc2FibGVkCj4gcGlwZXMgdGhlIGxhc3Qgb25lcyIg
cG9zZXMgYSBjb21iaW5hdG9yeSBleHBsb3Npb24uIFdlIG5lZWQgdGhhdCBjaGVjawo+IGJlY2F1
c2UgaW4gc2V2ZXJhbCBwbGFjZXMgb2YgdGhlIGNvZGUgd2UgaGF2ZSB0aGF0IGFzc3VtcHRpb24u
IElmIHRoYXQKPiBldmVyIGJlY29tZXMgZmFsc2UgaW4gYSBuZXcgSFcsIG90aGVyIHBhcnRzIG9m
IHRoZSBjb2RlIHdvdWxkIGhhdmUgdG8KPiBjaGFuZ2UuCj4gCj4gTm93IHdlIHN0YXJ0IGJ5IGNv
bnNpZGVyaW5nIHdlIGhhdmUgaW5mby0+bnVtX3BpcGVzIGVuYWJsZWQgYW5kIGRpc2FibGUKPiBl
YWNoIHBpcGUgdGhhdCBpcyBtYXJrZWQgYXMgZGlzYWJsZWQuIFRoZW4gaXQncyBhIHNpbXBsZSBt
YXR0ZXIgb2YKPiBjaGVja2luZyBpZiB3ZSBoYXZlIGF0IGxlYXN0IG9uZSBwaXBlIGFuZCB0aGF0
IGFsbCB0aGUgZW5hYmxlZCBvbmVzIGFyZQo+IHRoZSBmaXJzdCBwaXBlcywgaS5lLiB0aGVyZSBh
cmUgbm8gaG9sZXMgaW4gdGhlIGJpdG1hc2suCj4gCj4gQ2M6IEpvc2UgU291emEgPGpvc2Uuc291
emFAaW50ZWwuY29tPgo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJj
aGlAaW50ZWwuY29tPgoKTG9va3MgZ29vZC4KClJldmlld2VkLWJ5OiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uYyB8IDM2ICsrKysrKysrKy0tLS0tLS0tLS0tLS0tLQo+
ICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMjMgZGVsZXRpb25zKC0pCj4gCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCj4gaW5kZXggNzEzNWQ4ZGMz
MmE3Li5lNjQ1MzZlMWZkMWIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZGV2aWNlX2luZm8uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rldmlj
ZV9pbmZvLmMKPiBAQCAtOTI5LDM1ICs5MjksMjUgQEAgdm9pZCBpbnRlbF9kZXZpY2VfaW5mb19y
dW50aW1lX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICAJCX0KPiAg
CX0gZWxzZSBpZiAoSEFTX0RJU1BMQVkoZGV2X3ByaXYpICYmIElOVEVMX0dFTihkZXZfcHJpdikg
Pj0gOSkgewo+ICAJCXUzMiBkZnNtID0gSTkxNV9SRUFEKFNLTF9ERlNNKTsKPiAtCQl1OCBkaXNh
YmxlZF9tYXNrID0gMDsKPiAtCQlib29sIGludmFsaWQ7Cj4gLQkJaW50IG51bV9iaXRzOwo+ICsJ
CXU4IGVuYWJsZWRfbWFzayA9IEJJVChpbmZvLT5udW1fcGlwZXMpIC0gMTsKPiAgCj4gIAkJaWYg
KGRmc20gJiBTS0xfREZTTV9QSVBFX0FfRElTQUJMRSkKPiAtCQkJZGlzYWJsZWRfbWFzayB8PSBC
SVQoUElQRV9BKTsKPiArCQkJZW5hYmxlZF9tYXNrICY9IH5CSVQoUElQRV9BKTsKPiAgCQlpZiAo
ZGZzbSAmIFNLTF9ERlNNX1BJUEVfQl9ESVNBQkxFKQo+IC0JCQlkaXNhYmxlZF9tYXNrIHw9IEJJ
VChQSVBFX0IpOwo+ICsJCQllbmFibGVkX21hc2sgJj0gfkJJVChQSVBFX0IpOwo+ICAJCWlmIChk
ZnNtICYgU0tMX0RGU01fUElQRV9DX0RJU0FCTEUpCj4gLQkJCWRpc2FibGVkX21hc2sgfD0gQklU
KFBJUEVfQyk7Cj4gLQo+IC0JCW51bV9iaXRzID0gaHdlaWdodDgoZGlzYWJsZWRfbWFzayk7Cj4g
LQo+IC0JCXN3aXRjaCAoZGlzYWJsZWRfbWFzaykgewo+IC0JCWNhc2UgQklUKFBJUEVfQSk6Cj4g
LQkJY2FzZSBCSVQoUElQRV9CKToKPiAtCQljYXNlIEJJVChQSVBFX0EpIHwgQklUKFBJUEVfQik6
Cj4gLQkJY2FzZSBCSVQoUElQRV9BKSB8IEJJVChQSVBFX0MpOgo+IC0JCQlpbnZhbGlkID0gdHJ1
ZTsKPiAtCQkJYnJlYWs7Cj4gLQkJZGVmYXVsdDoKPiAtCQkJaW52YWxpZCA9IGZhbHNlOwo+IC0J
CX0KPiArCQkJZW5hYmxlZF9tYXNrICY9IH5CSVQoUElQRV9DKTsKPiAgCj4gLQkJaWYgKG51bV9i
aXRzID4gaW5mby0+bnVtX3BpcGVzIHx8IGludmFsaWQpCj4gLQkJCURSTV9FUlJPUigiaW52YWxp
ZCBwaXBlIGZ1c2UgY29uZmlndXJhdGlvbjogMHgleFxuIiwKPiAtCQkJCSAgZGlzYWJsZWRfbWFz
ayk7Cj4gKwkJLyoKPiArCQkgKiBBdCBsZWFzdCBvbmUgcGlwZSBzaG91bGQgYmUgZW5hYmxlZCBh
bmQgaWYgdGhlcmUgYXJlCj4gKwkJICogZGlzYWJsZWQgcGlwZXMsIHRoZXkgc2hvdWxkIGJlIHRo
ZSBsYXN0IG9uZXMsIHdpdGggbm8gaG9sZXMKPiArCQkgKiBpbiB0aGUgbWFzay4KPiArCQkgKi8K
PiArCQlpZiAoZW5hYmxlZF9tYXNrID09IDAgfHwgIWlzX3Bvd2VyX29mXzIoZW5hYmxlZF9tYXNr
ICsgMSkpCj4gKwkJCURSTV9FUlJPUigiaW52YWxpZCBwaXBlIGZ1c2UgY29uZmlndXJhdGlvbjog
ZW5hYmxlZF9tYXNrPTB4JXhcbiIsCj4gKwkJCQkgIGVuYWJsZWRfbWFzayk7Cj4gIAkJZWxzZQo+
IC0JCQlpbmZvLT5udW1fcGlwZXMgLT0gbnVtX2JpdHM7Cj4gKwkJCWluZm8tPm51bV9waXBlcyA9
IGh3ZWlnaHQ4KGVuYWJsZWRfbWFzayk7Cj4gIAl9Cj4gIAo+ICAJLyogSW5pdGlhbGl6ZSBzbGlj
ZS9zdWJzbGljZS9FVSBpbmZvICovCj4gLS0gCj4gMi4yMS4wCj4gCj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0
Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgotLSAKVmlsbGUgU3lyasOkbMOk
CkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
