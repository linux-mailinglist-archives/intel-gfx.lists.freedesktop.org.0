Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF086BC818
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2019 14:45:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C72FD6EA18;
	Tue, 24 Sep 2019 12:45:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B2AE6EA18
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2019 12:45:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Sep 2019 05:45:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,544,1559545200"; d="scan'208";a="189354227"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga007.fm.intel.com with ESMTP; 24 Sep 2019 05:45:18 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 24AE15C1E4D; Tue, 24 Sep 2019 15:44:54 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190924121821.31277-1-chris@chris-wilson.co.uk>
References: <20190924121821.31277-1-chris@chris-wilson.co.uk>
Date: Tue, 24 Sep 2019 15:44:54 +0300
Message-ID: <87h851zwvt.fsf@gaia.fi.intel.com>
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
OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAg
dGVzdHMvaTkxNS9nZW1fbW1hcF9ndHQuYyB8IDMgKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV9tbWFwX2d0dC5jIGIv
dGVzdHMvaTkxNS9nZW1fbW1hcF9ndHQuYwo+IGluZGV4IDA0MjhhMTM3Mi4uOTFkYTVhMzdiIDEw
MDY0NAo+IC0tLSBhL3Rlc3RzL2k5MTUvZ2VtX21tYXBfZ3R0LmMKPiArKysgYi90ZXN0cy9pOTE1
L2dlbV9tbWFwX2d0dC5jCj4gQEAgLTYwMiw2ICs2MDIsOSBAQCB0ZXN0X2hhbmcoaW50IGZkKQo+
ICAKPiAgCQkJCWd0dFswXVt4XSA9IHBhdHRlcm5zW25leHRfcGF0dGVybl07Cj4gIAkJCQlndHRb
MV1beF0gPSBwYXR0ZXJuc1tuZXh0X3BhdHRlcm5dOwo+ICsKPiArCQkJCWlmIChSRUFEX09OQ0Uo
Y29udHJvbC0+ZG9uZSkpCj4gKwkJCQkJYnJlYWs7CgpUaGUgaGFuZyB3b3VsZCBoYXZlIG1hbmlm
ZXN0ZWQgaXRzZWxmIG9uIGEgcHJldmlvdXMgbG9vcAphbHJlYWR5LgoKU28geW91IGNvdWxkIGxp
ZmUgdGhlIGV4aXQgY29uZGl0aW9uIGJlZm9yZSB0aGUgd3JpdGVzLgotTWlrYQoKPiAgCQkJfQo+
ICAKPiAgCQkJbGFzdF9wYXR0ZXJuID0gbmV4dF9wYXR0ZXJuOwo+IC0tIAo+IDIuMjMuMApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
