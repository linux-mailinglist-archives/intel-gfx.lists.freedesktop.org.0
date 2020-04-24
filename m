Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E8361B7D37
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 19:46:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78EA48982A;
	Fri, 24 Apr 2020 17:46:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ED968982A
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Apr 2020 17:46:34 +0000 (UTC)
IronPort-SDR: Y/wukdGxSQ5MauIOjlQ/4pf4dAGLifHNkp8VlV/bCibbJvvwW9rc1oscSfaBwaOBYqWp6z6oy2
 MubtL6dYnhpQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 10:46:33 -0700
IronPort-SDR: wqUMrEqwVDjaBbp1WotP+0E0QusbKaDu08IfEI/ZpIgzbI94mnGDsWle3G0wwL1zrH1CH8zwCc
 Ks780omVeG1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,311,1583222400"; d="scan'208";a="246672498"
Received: from przanoni-mobl.amr.corp.intel.com ([10.255.231.211])
 by fmsmga007.fm.intel.com with ESMTP; 24 Apr 2020 10:46:33 -0700
Message-ID: <1be83da5bd7eff864200e157c2461fa708699dbb.camel@intel.com>
From: Paulo Zanoni <paulo.r.zanoni@intel.com>
To: Karthik B S <karthik.b.s@intel.com>, intel-gfx@lists.freedesktop.org
Date: Fri, 24 Apr 2020 10:46:32 -0700
In-Reply-To: <20200420094746.20409-5-karthik.b.s@intel.com>
References: <20200420094746.20409-1-karthik.b.s@intel.com>
 <20200420094746.20409-5-karthik.b.s@intel.com>
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 4/6] drm/i915: Make commit call blocking
 in case of async flips
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RW0gc2VnLCAyMDIwLTA0LTIwIMOgcyAxNToxNyArMDUzMCwgS2FydGhpayBCIFMgZXNjcmV2ZXU6
Cj4gTWFrZSB0aGUgY29tbWl0IGNhbGwgYmxvY2tpbmcgaW4gY2FzZSBvZiBhc3luYyBmbGlwcwo+
IHNvIHRoYXQgdGhlcmUgaXMgbm8gZGVsYXkgaW4gY29tcGxldGluZyB0aGUgZmxpcC4KPiAKCkkn
bSB0cnlpbmcgdG8gdW5kZXJzdGFuZCB0aGUgY29kZS4gQ2FuIHlvdSBwbGVhc2UgZWxhYm9yYXRl
IG1vcmUgaGVyZQppbiB0aGlzIGNvbW1pdCBtZXNzYWdlPyBXaHkgZXhhY3RseSBkb2VzIHRoZSBj
YWxsIG5lZWQgdG8gYmxvY2s/IFdoYXQKd291bGQgYmUgdGhlIHByb2JsZW0gb2Ygbm90IGhhdmlu
ZyB0aGlzIHBhdGNoPyBBbmQgaG93IGRvZXMgYmxvY2tpbmcKZW5zdXJlcyBubyBkZWxheT8KCj4g
djI6IC1SZWJhc2VkCj4gCj4gU2lnbmVkLW9mZi1ieTogS2FydGhpayBCIFMgPGthcnRoaWsuYi5z
QGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMgfCAxNSArKysrKysrKysrLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDEwIGluc2Vy
dGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKPiBpbmRleCA4NjAxYjE1OWY0MjUuLmE1MjAzZGUyNDA0NSAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4g
QEAgLTE1NTYzLDcgKzE1NTYzLDkgQEAgc3RhdGljIGludCBpbnRlbF9hdG9taWNfY29tbWl0KHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYsCj4gIHsKPiAgCXN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlID0gdG9faW50ZWxfYXRvbWljX3N0YXRlKF9zdGF0ZSk7Cj4gIAlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRldik7Cj4gLQlpbnQgcmV0ID0gMDsKPiAr
CXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZTsKPiArCXN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjOwo+ICsJaW50IHJldCA9IDAsIGk7Cj4gIAo+ICAJc3RhdGUtPndha2VyZWYg
PSBpbnRlbF9ydW50aW1lX3BtX2dldCgmZGV2X3ByaXYtPnJ1bnRpbWVfcG0pOwo+ICAKPiBAQCAt
MTU1ODksMTAgKzE1NTkxLDYgQEAgc3RhdGljIGludCBpbnRlbF9hdG9taWNfY29tbWl0KHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYsCj4gIAkgKiAoYXNzdW1pbmcgd2UgaGFkIGFueSkgd291bGQgc29s
dmUgdGhlc2UgcHJvYmxlbXMuCj4gIAkgKi8KPiAgCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDwg
OSAmJiBzdGF0ZS0+YmFzZS5sZWdhY3lfY3Vyc29yX3VwZGF0ZSkgewo+IC0JCXN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZTsKPiAtCQlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0
YzsKPiAtCQlpbnQgaTsKPiAtCj4gIAkJZm9yX2VhY2hfbmV3X2ludGVsX2NydGNfaW5fc3RhdGUo
c3RhdGUsIGNydGMsIG5ld19jcnRjX3N0YXRlLCBpKQo+ICAJCQlpZiAobmV3X2NydGNfc3RhdGUt
PndtLm5lZWRfcG9zdHZibF91cGRhdGUgfHwKPiAgCQkJICAgIG5ld19jcnRjX3N0YXRlLT51cGRh
dGVfd21fcG9zdCkKPiBAQCAtMTU2MzQsNiArMTU2MzIsMTMgQEAgc3RhdGljIGludCBpbnRlbF9h
dG9taWNfY29tbWl0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCj4gIAlkcm1fYXRvbWljX3N0YXRl
X2dldCgmc3RhdGUtPmJhc2UpOwo+ICAJSU5JVF9XT1JLKCZzdGF0ZS0+YmFzZS5jb21taXRfd29y
aywgaW50ZWxfYXRvbWljX2NvbW1pdF93b3JrKTsKPiAgCj4gKwlmb3JfZWFjaF9uZXdfaW50ZWxf
Y3J0Y19pbl9zdGF0ZShzdGF0ZSwgY3J0YywgbmV3X2NydGNfc3RhdGUsIGkpIHsKPiArCQlpZiAo
bmV3X2NydGNfc3RhdGUtPnVhcGkuYXN5bmNfZmxpcCkgewo+ICsJCQlub25ibG9jayA9IGZhbHNl
Owo+ICsJCQlicmVhazsKPiArCQl9Cj4gKwl9Cj4gKwo+ICAJaTkxNV9zd19mZW5jZV9jb21taXQo
JnN0YXRlLT5jb21taXRfcmVhZHkpOwo+ICAJaWYgKG5vbmJsb2NrICYmIHN0YXRlLT5tb2Rlc2V0
KSB7Cj4gIAkJcXVldWVfd29yayhkZXZfcHJpdi0+bW9kZXNldF93cSwgJnN0YXRlLT5iYXNlLmNv
bW1pdF93b3JrKTsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
