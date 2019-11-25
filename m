Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3143B108AB0
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2019 10:22:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD04B6E060;
	Mon, 25 Nov 2019 09:22:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 716B16E060
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 09:22:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Nov 2019 01:22:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,241,1571727600"; d="scan'208";a="291323353"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga001.jf.intel.com with ESMTP; 25 Nov 2019 01:22:00 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 557995C1DCE; Mon, 25 Nov 2019 11:21:39 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191125091409.1630385-1-chris@chris-wilson.co.uk>
References: <20191125091409.1630385-1-chris@chris-wilson.co.uk>
Date: Mon, 25 Nov 2019 11:21:39 +0200
Message-ID: <87o8x0mhuk.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Switch kunmap() to take the page
 not vaddr
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gT24gY29u
dmVydGluZyBmcm9tIGt1bm1hcF9hdG9taWMoKSB0byBrdW5hbXAoKSBvbmUgbXVzdCByZW1lbWJl
ciB0aGUKPiBsYXR0ZXIgdGFrZXMgdGhlIHN0cnVjdCBwYWdlLCB0aGUgZm9ybWVyIHRoZSB2YWRk
ci4KPgo+IEZpeGVzOiA0ODcxNWY3MDAxNzQgKCJkcm0vaTkxNTogQXZvaWQgYXRvbWljIGNvbnRl
eHQgZm9yIGVycm9yIGNhcHR1cmUiKQo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKV291bGQgaXQgaGF2ZSBiZWVuIG90aGVyd2F5IGFyb3Vu
ZCwgd2Ugd291bGQgaGF2ZSBiZWVuIGNhdWdodCBhcywKICAgICAgICBCVUlMRF9CVUdfT04oX19z
YW1lX3R5cGUoKGFkZHIpLCBzdHJ1Y3QgcGFnZSAqKSk7ICAgICAgIFwKClJldmlld2VkLWJ5OiBN
aWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KCj4gLS0tCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMgfCAyICstCj4gIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dwdV9lcnJvci5jCj4gaW5kZXggNzExOGVjYjdmMTQ0Li4yYjMwYTQ1ZmEyNWMgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9ncHVfZXJyb3IuYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMKPiBAQCAtMTA0NSw3ICsxMDQ1LDcg
QEAgaTkxNV9lcnJvcl9vYmplY3RfY3JlYXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
LAo+ICAKPiAgCQkJcyA9IGttYXAocGFnZSk7Cj4gIAkJCXJldCA9IGNvbXByZXNzX3BhZ2UoY29t
cHJlc3MsIHMsIGRzdCk7Cj4gLQkJCWt1bm1hcChzKTsKPiArCQkJa3VubWFwKHBhZ2UpOwo+ICAK
PiAgCQkJZHJtX2NsZmx1c2hfcGFnZXMoJnBhZ2UsIDEpOwo+ICAKPiAtLSAKPiAyLjI0LjAKPgo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
