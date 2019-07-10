Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C1B646DC
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 15:16:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1748C6E0E2;
	Wed, 10 Jul 2019 13:16:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4ADDA6E0E2
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 13:16:02 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 06:16:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,474,1557212400"; d="scan'208";a="193050348"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by fmsmga002.fm.intel.com with ESMTP; 10 Jul 2019 06:16:00 -0700
Date: Wed, 10 Jul 2019 16:15:46 +0300
From: Imre Deak <imre.deak@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190710131546.GB32525@ideak-desk.fi.intel.com>
References: <20190709104904.GB15433@ideak-desk.fi.intel.com>
 <20190709155403.29370-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190709155403.29370-1-lucas.demarchi@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v3 2/4] drm/i915: fix include order in
 intel_tc.*
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdWwgMDksIDIwMTkgYXQgMDg6NTQ6MDNBTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IFNlcGFyYXRlIGxvY2FsIGluY2x1ZGVzIHdpdGggYSBibGFuayBsaW5lIGFuZCBz
b3J0IHRoZSBncm91cHMKPiBhbHBoYWJldGljYWxseS4KPiAKPiB2MjogZG9uJ3QgbWFrZSBpbnRl
bF90Yy5oIGJlIHRoZSBmaXJzdCBpbmNsdWRlCj4gdjM6IGRvbid0IG1ha2UgbG9jYWwgaW5jbHVk
ZXMgYmUgaW5jbHVkZWQgZmlyc3QKPiAKPiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkg
PGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KClJldmlld2VkLWJ5OiBJbXJlIERlYWsgPGltcmUu
ZGVha0BpbnRlbC5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3RjLmMgfCAyICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMu
aCB8IDMgKystCj4gIDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3RjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMKPiBpbmRleCAx
YTlkZDMyZmIwYTUuLjBjOTY5ZjZmZDcxNCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3RjLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3RjLmMKPiBAQCAtMyw5ICszLDkgQEAKPiAgICogQ29weXJpZ2h0IMKpIDIwMTkg
SW50ZWwgQ29ycG9yYXRpb24KPiAgICovCj4gIAo+ICsjaW5jbHVkZSAiaTkxNV9kcnYuaCIKPiAg
I2luY2x1ZGUgImludGVsX2Rpc3BsYXkuaCIKPiAgI2luY2x1ZGUgImludGVsX2RwX21zdC5oIgo+
IC0jaW5jbHVkZSAiaTkxNV9kcnYuaCIKPiAgI2luY2x1ZGUgImludGVsX3RjLmgiCj4gIAo+ICBz
dGF0aWMgY29uc3QgY2hhciAqdGNfcG9ydF9tb2RlX25hbWUoZW51bSB0Y19wb3J0X21vZGUgbW9k
ZSkKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5oCj4gaW5kZXggMGQ4NDEx
ZDRhOTFkLi43MDZjNWJjMDUwYTUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF90Yy5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF90Yy5oCj4gQEAgLTYsOCArNiw5IEBACj4gICNpZm5kZWYgX19JTlRFTF9UQ19IX18KPiAg
I2RlZmluZSBfX0lOVEVMX1RDX0hfXwo+ICAKPiAtI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+Cj4g
ICNpbmNsdWRlIDxsaW51eC9tdXRleC5oPgo+ICsjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4KPiAr
Cj4gICNpbmNsdWRlICJpbnRlbF9kcnYuaCIKPiAgCj4gIGJvb2wgaW50ZWxfdGNfcG9ydF9jb25u
ZWN0ZWQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpOwo+IC0tIAo+IDIuMjEu
MAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
