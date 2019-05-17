Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C8221803
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 14:10:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95DCB89811;
	Fri, 17 May 2019 12:10:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA38789811
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 12:10:05 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 05:10:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,480,1549958400"; d="scan'208";a="172766443"
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by fmsmga002.fm.intel.com with ESMTP; 17 May 2019 05:10:03 -0700
Date: Fri, 17 May 2019 15:09:37 +0300
From: Imre Deak <imre.deak@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190517120937.GA4587@ideak-desk.fi.intel.com>
References: <20190517102225.3069-1-chris@chris-wilson.co.uk>
 <20190517102225.3069-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517102225.3069-2-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/dp: Initialise locals for
 static analysis
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

T24gRnJpLCBNYXkgMTcsIDIwMTkgYXQgMTE6MjI6MjRBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IEp1c3QgdG8gc3F1ZWxjaCBhbiBzbWF0Y2ggd2FybmluZyB0aGF0IGRvZXNuJ3Qgc2Vl
IHRoZSB3aXRoXygpIGJlaW5nCj4gdGFrZW4gdW5jb25kaXRpb25hbGx5Ogo+IGRyaXZlcnMvZ3B1
L2RybS9pOTE1Ly9pbnRlbF9kcC5jOjIzMCBpbnRlbF9kcF9nZXRfZmlhX3N1cHBvcnRlZF9sYW5l
X2NvdW50KCkgZXJyb3I6IHVuaW5pdGlhbGl6ZWQgc3ltYm9sICdsYW5lX2luZm8nLgo+IGRyaXZl
cnMvZ3B1L2RybS9pOTE1Ly9pbnRlbF9kcC5jOjUzMzggaW50ZWxfZGlnaXRhbF9wb3J0X2Nvbm5l
Y3RlZCgpIGVycm9yOiB1bmluaXRpYWxpemVkIHN5bWJvbCAnaXNfY29ubmVjdGVkJy4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBD
YzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IEltcmUgRGVh
ayA8aW1yZS5kZWFrQGludGVsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2RwLmMgfCAzICsrLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rw
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jCj4gaW5kZXggZTNlNzE5YzA0NDQw
Li43N2JhNGRhNmI5ODEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
ZHAuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMKPiBAQCAtMjIyLDYg
KzIyMiw3IEBAIHN0YXRpYyBpbnQgaW50ZWxfZHBfZ2V0X2ZpYV9zdXBwb3J0ZWRfbGFuZV9jb3Vu
dChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQo+ICAJaWYgKHRjX3BvcnQgPT0gUE9SVF9UQ19O
T05FIHx8IGRpZ19wb3J0LT50Y190eXBlICE9IFRDX1BPUlRfVFlQRUMpCj4gIAkJcmV0dXJuIDQ7
Cj4gIAo+ICsJbGFuZV9pbmZvID0gMDsKPiAgCXdpdGhfaW50ZWxfZGlzcGxheV9wb3dlcihkZXZf
cHJpdiwgUE9XRVJfRE9NQUlOX0RJU1BMQVlfQ09SRSwgd2FrZXJlZikKPiAgCQlsYW5lX2luZm8g
PSAoSTkxNV9SRUFEKFBPUlRfVFhfREZMRVhEUFNQKSAmCj4gIAkJCSAgICAgRFBfTEFORV9BU1NJ
R05NRU5UX01BU0sodGNfcG9ydCkpID4+Cj4gQEAgLTUzMjksOCArNTMzMCw4IEBAIHN0YXRpYyBi
b29sIF9faW50ZWxfZGlnaXRhbF9wb3J0X2Nvbm5lY3RlZChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAq
ZW5jb2RlcikKPiAgYm9vbCBpbnRlbF9kaWdpdGFsX3BvcnRfY29ubmVjdGVkKHN0cnVjdCBpbnRl
bF9lbmNvZGVyICplbmNvZGVyKQo+ICB7Cj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsKPiArCWJvb2wgaXNfY29ubmVjdGVk
ID0gZmFsc2U7Cj4gIAlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsKPiAtCWJvb2wgaXNfY29ubmVj
dGVkOwo+ICAKPiAgCXdpdGhfaW50ZWxfZGlzcGxheV9wb3dlcihkZXZfcHJpdiwgUE9XRVJfRE9N
QUlOX0RJU1BMQVlfQ09SRSwgd2FrZXJlZikKPiAgCQlpc19jb25uZWN0ZWQgPSBfX2ludGVsX2Rp
Z2l0YWxfcG9ydF9jb25uZWN0ZWQoZW5jb2Rlcik7Cj4gLS0gCj4gMi4yMC4xCj4gCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
