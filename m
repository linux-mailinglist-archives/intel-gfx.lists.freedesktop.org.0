Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 663056C73B
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 05:24:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21E466E2F3;
	Thu, 18 Jul 2019 03:24:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F1C56E2F3
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 03:24:10 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 20:24:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,276,1559545200"; d="scan'208";a="367221333"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by fmsmga006.fm.intel.com with ESMTP; 17 Jul 2019 20:24:06 -0700
Date: Thu, 18 Jul 2019 01:55:25 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20190717202525.GA16613@intel.com>
References: <20190717142018.29857-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190717142018.29857-1-anshuman.gupta@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add HDCP capability info to
 i915_display_info.
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
Cc: daniel.vetter@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0wNy0xNyBhdCAxOTo1MDoxOCArMDUzMCwgQW5zaHVtYW4gR3VwdGEgd3JvdGU6Cj4g
VG8gaWRlbnRpZnkgdGhlIEhEQ1AgY2FwYWJpbGl0eSBvZiB0aGUgZGlzcGxheSBjb25uZWN0ZWQg
dG8gQ0kKPiBzeXN0ZW1zLCB3ZSBuZWVkIHRvIGFkZCB0aGUgaGRjcCBjYXBhYmlsaXR5IHByb2Jp
bmcgaW4gaTkxNV9kaXNwbGF5X2luZm8uCj4gCj4gVGhpcyB3aWxsIGFsc28gaGVscCB0byBwb3B1
bGF0ZSB0aGUgSERDUCBjYXBhYmlsaXR5IG9mIHRoZSBDSSBzeXN0ZW1zCj4gdG8gQ0kgSC9XIGxv
Z3MgbWFpbnRhaW5lZCBhdCBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvaGFyZHdhcmUvLgo+
IEl0IHdpbGwgZmFjaWxpdGF0ZSB0byBkZXRlcm1pbmUgdGhlIGttc19jb250ZW50X3Byb3RlY3Rp
b24gYmVoYXZpb3Igb24KPiBhIHBhcnRpY3VsYXIgQ0kgc3lzdGVtLgo+IAo+IENjOiBkYW5pZWwu
dmV0dGVyQGludGVsLmNvbQo+IENjOiByYW1hbGluZ2FtLmNAaW50ZWwuY29tCj4gU2lnbmVkLW9m
Zi1ieTogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4KPiAtLS0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgfCAyNiArKysrKysrKysrKysrKysr
KysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCj4gaW5kZXggNmI4NGQwNGE2YTI4Li4zY2U3OWY1MzZh
OGUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwo+IEBAIC0yNTY5LDYgKzI1
NjksMzAgQEAgc3RhdGljIHZvaWQgaW50ZWxfcGFuZWxfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0s
IHN0cnVjdCBpbnRlbF9wYW5lbCAqcGFuZWwpCj4gIAlpbnRlbF9zZXFfcHJpbnRfbW9kZShtLCAy
LCBtb2RlKTsKPiAgfQo+ICAKPiArc3RhdGljIHZvaWQgaW50ZWxfaGRjcF9pbmZvKHN0cnVjdCBz
ZXFfZmlsZSAqbSwKPiArCQkJICAgIHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmludGVsX2Nvbm5l
Y3RvcikKPiArewo+ICsJYm9vbCBoZGNwX2NhcCwgaGRjcDJfY2FwOwo+ICsKPiArCS8qIEhEQ1Ag
aXMgc3VwcG9ydGVkIGJ5IGNvbm5lY3RvciAqLwo+ICsJaWYgKCFpbnRlbF9jb25uZWN0b3ItPmhk
Y3Auc2hpbSkKPiArCQlyZXR1cm47Cj4gKwo+ICsJc2VxX3ByaW50ZihtLCAiXHRIRENQIHZlcnNp
b246ICIpOwo+ICsJaGRjcF9jYXAgPSBpbnRlbF9oZGNwX2NhcGFibGUoaW50ZWxfY29ubmVjdG9y
KTsKPiArCWhkY3AyX2NhcCA9IGludGVsX2hkY3AyX2NhcGFibGUoaW50ZWxfY29ubmVjdG9yKTsK
PiArCj4gKwlpZiAoaGRjcF9jYXApCj4gKwkJc2VxX3B1dHMobSwgIkhEQ1AxLjQgIik7Cj4gKwlp
ZiAoaGRjcDJfY2FwKQo+ICsJCXNlcV9wdXRzKG0sICJIRENQMi4yICIpOwo+ICsKPiArCWlmICgh
aGRjcF9jYXAgJiYgIWhkY3AyX2NhcCkKPiArCQlzZXFfcHV0cyhtLCAiTm9uZSIpOwo+ICsKPiAr
CXNlcV9wdXRzKG0sICJcbiIpOwo+ICt9ClRoaXMgaXMgZHVwbGljYXRpb24gb2YgaTkxNV9oZGNw
X3NpbmtfY2FwYWJpbGl0eV9zaG93LgpIZW5jZSByZXVzZSB0aGUgc2FtZSBhYm92ZSBmdW5jdGlv
biBmb3IgaTkxNV9oZGNwX3NpbmtfY2FwYWJpbGl0eV9zaG93CmFsc28uCgo+ICsKPiAgc3RhdGlj
IHZvaWQgaW50ZWxfZHBfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sCj4gIAkJCSAgc3RydWN0IGlu
dGVsX2Nvbm5lY3RvciAqaW50ZWxfY29ubmVjdG9yKQo+ICB7Cj4gQEAgLTI1NzcsNiArMjYwMSw3
IEBAIHN0YXRpYyB2b2lkIGludGVsX2RwX2luZm8oc3RydWN0IHNlcV9maWxlICptLAo+ICAKPiAg
CXNlcV9wcmludGYobSwgIlx0RFBDRCByZXY6ICV4XG4iLCBpbnRlbF9kcC0+ZHBjZFtEUF9EUENE
X1JFVl0pOwo+ICAJc2VxX3ByaW50ZihtLCAiXHRhdWRpbyBzdXBwb3J0OiAlc1xuIiwgeWVzbm8o
aW50ZWxfZHAtPmhhc19hdWRpbykpOwo+ICsJaW50ZWxfaGRjcF9pbmZvKG0sIGludGVsX2Nvbm5l
Y3Rvcik7CldlIGNvdWxkIGFkZCB0aGlzIGhkY3BfaW5mbyBjYWxsIGF0IHRoZSBlbmQgb2YgdGhp
cyBmdW5jdGlvbi4KQXMgZURQIGFuZCBoZGNwIGFyZSBtdXR1YWxseSBleGNsdXNpdmUsIGJvdGgg
d2lsbCByZXN1bHQgd2l0aCBzYW1lCm91dHB1dC4KCi1SYW0KPiAgCWlmIChpbnRlbF9jb25uZWN0
b3ItPmJhc2UuY29ubmVjdG9yX3R5cGUgPT0gRFJNX01PREVfQ09OTkVDVE9SX2VEUCkKPiAgCQlp
bnRlbF9wYW5lbF9pbmZvKG0sICZpbnRlbF9jb25uZWN0b3ItPnBhbmVsKTsKPiAgCj4gQEAgLTI2
MDUsNiArMjYzMCw3IEBAIHN0YXRpYyB2b2lkIGludGVsX2hkbWlfaW5mbyhzdHJ1Y3Qgc2VxX2Zp
bGUgKm0sCj4gIAlzdHJ1Y3QgaW50ZWxfaGRtaSAqaW50ZWxfaGRtaSA9IGVuY190b19pbnRlbF9o
ZG1pKCZpbnRlbF9lbmNvZGVyLT5iYXNlKTsKPiAgCj4gIAlzZXFfcHJpbnRmKG0sICJcdGF1ZGlv
IHN1cHBvcnQ6ICVzXG4iLCB5ZXNubyhpbnRlbF9oZG1pLT5oYXNfYXVkaW8pKTsKPiArCWludGVs
X2hkY3BfaW5mbyhtLCBpbnRlbF9jb25uZWN0b3IpOwo+ICB9Cj4gIAo+ICBzdGF0aWMgdm9pZCBp
bnRlbF9sdmRzX2luZm8oc3RydWN0IHNlcV9maWxlICptLAo+IC0tIAo+IDIuMjEuMAo+IApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
