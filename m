Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB3BBC899
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 15:10:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07D5F6EA2E;
	Tue, 24 Sep 2019 13:10:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3FDC6EA2E
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2019 13:10:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Sep 2019 06:10:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,544,1559545200"; d="scan'208";a="389854344"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga006.fm.intel.com with ESMTP; 24 Sep 2019 06:10:17 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 543B35C1E4D; Tue, 24 Sep 2019 16:09:53 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190924121821.31277-1-chris@chris-wilson.co.uk>
References: <20190924121821.31277-1-chris@chris-wilson.co.uk>
Date: Tue, 24 Sep 2019 16:09:53 +0300
Message-ID: <87d0fpzvq6.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_map_gtt: Escape from slow
 forked GTT access
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gQmV3YXJl
IHRoZSBzbGl0aHkgdCdvdmVzLgo+Cj4gRm9ya2VkIEdUVCBhY2Nlc3Mgb24gaWNsIGlzIG5vdG9y
aW91c2x5IHNsb3csIHNvIHJhdGhlciB0aGFuIHNwZW5kIGFuCj4gZXRlcm5pdHkgY2hlY2tpbmcg
dGhlIHdob2xlIG9iamVjdCwgY2hlY2sgZm9yIGEgY29tcGxldGlvbiBldmVudCBhZnRlcgo+IGhh
bmRsaW5nIHRoZSBwYWdlZmF1bHQuIEl0J3MgaXMgdGhlIHJhY2Ugb2YgdGhlIHBhZ2VmYXVsdCB2
cyByZXNldCB0aGF0Cj4gd2UgY2FyZSBtb3N0IGFib3V0LCBhbmQgd2UgZXhwZWN0IHRoZSBidWcg
dG8gcmVzdWx0IGluIHRoZSBwYWdlZmF1bHQKPiBiZWluZyBibG9ja2VkIGluZGVmaW5pdGVseSwg
c28gY2hlY2tpbmcgYWZ0ZXJ3YXJkcyBkb2VzIG5vdCByZWR1Y2UKPiBjb3ZlcmFnZS4KPgo+IFNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENj
OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KClJldmlld2Vk
LWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KCj4gLS0t
Cj4gIHRlc3RzL2k5MTUvZ2VtX21tYXBfZ3R0LmMgfCAzICsrKwo+ICAxIGZpbGUgY2hhbmdlZCwg
MyBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fbW1hcF9ndHQu
YyBiL3Rlc3RzL2k5MTUvZ2VtX21tYXBfZ3R0LmMKPiBpbmRleCAwNDI4YTEzNzIuLjkxZGE1YTM3
YiAxMDA2NDQKPiAtLS0gYS90ZXN0cy9pOTE1L2dlbV9tbWFwX2d0dC5jCj4gKysrIGIvdGVzdHMv
aTkxNS9nZW1fbW1hcF9ndHQuYwo+IEBAIC02MDIsNiArNjAyLDkgQEAgdGVzdF9oYW5nKGludCBm
ZCkKPiAgCj4gIAkJCQlndHRbMF1beF0gPSBwYXR0ZXJuc1tuZXh0X3BhdHRlcm5dOwo+ICAJCQkJ
Z3R0WzFdW3hdID0gcGF0dGVybnNbbmV4dF9wYXR0ZXJuXTsKPiArCj4gKwkJCQlpZiAoUkVBRF9P
TkNFKGNvbnRyb2wtPmRvbmUpKQo+ICsJCQkJCWJyZWFrOwo+ICAJCQl9Cj4gIAo+ICAJCQlsYXN0
X3BhdHRlcm4gPSBuZXh0X3BhdHRlcm47Cj4gLS0gCj4gMi4yMy4wCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
