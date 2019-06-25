Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 437DA52890
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 11:48:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A1A76E0BB;
	Tue, 25 Jun 2019 09:48:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEBBD6E0BB
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 09:48:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 02:48:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,415,1557212400"; d="scan'208";a="166626086"
Received: from gaia.fi.intel.com ([10.237.72.169])
 by orsmga006.jf.intel.com with ESMTP; 25 Jun 2019 02:48:36 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 032BA5C1EB3; Tue, 25 Jun 2019 12:48:22 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190625090655.19220-1-chris@chris-wilson.co.uk>
References: <20190625070829.25277-1-kenneth@whitecape.org>
 <20190625090655.19220-1-chris@chris-wilson.co.uk>
Date: Tue, 25 Jun 2019 12:48:22 +0300
Message-ID: <87ef3i572x.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Disable SAMPLER_STATE prefetching
 on all Gen11 steppings.
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
Cc: Kenneth Graunke <kenneth@whitecape.org>, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gRnJvbTog
S2VubmV0aCBHcmF1bmtlIDxrZW5uZXRoQHdoaXRlY2FwZS5vcmc+Cj4KPiBUaGUgRGVtYW5kIFBy
ZWZldGNoIHdvcmthcm91bmQgKGJpbmRpbmcgdGFibGUgcHJlZmV0Y2hpbmcpIG9ubHkgYXBwbGll
cwo+IHRvIEljZWxha2UgQTAvQjAuICBCdXQgdGhlIFNhbXBsZXIgUHJlZmV0Y2ggd29ya2Fyb3Vu
ZCBuZWVkcyB0byBiZQo+IGFwcGxpZWQgdG8gYWxsIEdlbjExIHN0ZXBwaW5ncywgYWNjb3JkaW5n
IHRvIGEgcHJvZ3JhbW1pbmcgbm90ZSBpbiB0aGUKPiBTQVJDSEtNRCBkb2N1bWVudGF0aW9uLgo+
Cj4gVXNpbmcgdGhlIEludGVsIEdhbGxpdW0gZHJpdmVyLCBJIGhhdmUgc2VlbiBpbnRlcm1pdHRl
bnQgZmFpbHVyZXMgaW4KPiB0aGUgZEVRUC1HTEVTMzEuZnVuY3Rpb25hbC5jb3B5X2ltYWdlLm5v
bl9jb21wcmVzc2VkLiogdGVzdHMuICBBZnRlcgo+IGFwcGx5aW5nIHRoaXMgd29ya2Fyb3VuZCwg
dGhlIHRlc3RzIHJlbGlhYmx5IHBhc3MuCj4KPiB2MjogUmVtb3ZlIHRoZSBvdmVybGFwIHdpdGgg
YSBwcmUtcHJvZHVjdGlvbiB3L2EKPgo+IEJTcGVjOiA5NjYzCj4gU2lnbmVkLW9mZi1ieTogS2Vu
bmV0aCBHcmF1bmtlIDxrZW5uZXRoQHdoaXRlY2FwZS5vcmc+Cj4gU2lnbmVkLW9mZi1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IHN0YWJsZUB2Z2VyLmtl
cm5lbC5vcmcKClJldmlld2VkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4
LmludGVsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmth
cm91bmRzLmMgfCA4ICsrKysrKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmth
cm91bmRzLmMKPiBpbmRleCBjNzA0NDVhZGZiMDIuLjk5MzgwNGQwOTUxNyAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+IEBAIC0xMjUyLDggKzEy
NTIsMTIgQEAgcmNzX2VuZ2luZV93YV9pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2lu
ZSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQo+ICAJCWlmIChJU19JQ0xfUkVWSUQoaTkxNSwg
SUNMX1JFVklEX0EwLCBJQ0xfUkVWSURfQjApKQo+ICAJCQl3YV93cml0ZV9vcih3YWwsCj4gIAkJ
CQkgICAgR0VON19TQVJDSEtNRCwKPiAtCQkJCSAgICBHRU43X0RJU0FCTEVfREVNQU5EX1BSRUZF
VENIIHwKPiAtCQkJCSAgICBHRU43X0RJU0FCTEVfU0FNUExFUl9QUkVGRVRDSCk7Cj4gKwkJCQkg
ICAgR0VON19ESVNBQkxFX0RFTUFORF9QUkVGRVRDSCk7Cj4gKwo+ICsJCS8qIFdhXzE2MDY2ODIx
NjY6aWNsICovCj4gKwkJd2Ffd3JpdGVfb3Iod2FsLAo+ICsJCQkgICAgR0VON19TQVJDSEtNRCwK
PiArCQkJICAgIEdFTjdfRElTQUJMRV9TQU1QTEVSX1BSRUZFVENIKTsKPiAgCX0KPiAgCj4gIAlp
ZiAoSVNfR0VOX1JBTkdFKGk5MTUsIDksIDExKSkgewo+IC0tIAo+IDIuMjAuMQo+Cj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFp
bGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
