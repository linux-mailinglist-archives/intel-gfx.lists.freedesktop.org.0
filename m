Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2A0289D5C
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 13:53:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 581396E4F5;
	Mon, 12 Aug 2019 11:53:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB3036E4F1;
 Mon, 12 Aug 2019 11:53:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Aug 2019 04:53:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,377,1559545200"; d="scan'208";a="187397799"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga002.jf.intel.com with ESMTP; 12 Aug 2019 04:53:36 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 81C095C1E5F; Mon, 12 Aug 2019 14:52:56 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190812103224.30163-1-chris@chris-wilson.co.uk>
References: <20190812103224.30163-1-chris@chris-wilson.co.uk>
Date: Mon, 12 Aug 2019 14:52:56 +0300
Message-ID: <87pnla7g87.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t] lib/i915: Trim ring measurement by one
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gQmUgYSBs
aXR0bGUgbW9yZSBjb25zZXJ2YXRpdmUgaW4gb3VyIHJpbmcgbWVhc3VyZW1lbnQgYW5kIGV4Y2x1
ZGUgb25lCj4gYmF0Y2ggdG8gbGVhdmUgcm9vbSBpbiBjYXNlIG91ciB1c2VyIG5lZWRzIHRvIHdy
YXAgKHdoZXJlIGEgcmVxdWVzdCB3aWxsCj4gYmUgZXhwYW5kZWQgdG8gY292ZXIgdGhlIHVudXNl
ZCBzcGFjZSBhdCB0aGUgZW5kIG9mIHRoZSByaW5nKS4KPgoKZGlkIHJlYWQgdGhlIHdyYXBwaW5n
IHBhcnQgYW5kIHRoYXQgc2VlbXMgdG8gYmUgdGhlIGNhc2UgdGhhdAp3ZSBlbmxhcmdlIHRoZSB3
cmFwcGluZyByZXF1ZXN0LgoKSG93ZXZlciBkbyB3ZSBsb3NlIHNvbWUgY292ZXJhZ2Ugb24gdGhl
IGFjdHVhbCB3cmFwIHRlc3RzPwoKLU1pa2EKCj4gUmVmZXJlbmNlczogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMzc0Cj4gU2lnbmVkLW9mZi1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4gIGxpYi9pOTE1L2dl
bV9yaW5nLmMgfCA1ICsrKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvbGliL2k5MTUvZ2VtX3JpbmcuYyBiL2xpYi9p
OTE1L2dlbV9yaW5nLmMKPiBpbmRleCBmZGI5ZmMxYjEuLmJmN2Y0MzllMSAxMDA2NDQKPiAtLS0g
YS9saWIvaTkxNS9nZW1fcmluZy5jCj4gKysrIGIvbGliL2k5MTUvZ2VtX3JpbmcuYwo+IEBAIC0x
MDMsNyArMTAzLDcgQEAgX19nZW1fbWVhc3VyZV9yaW5nX2luZmxpZ2h0KGludCBmZCwgdW5zaWdu
ZWQgaW50IGVuZ2luZSwgZW51bSBtZWFzdXJlX3JpbmdfZmxhZ3MKPiAgCX0gd2hpbGUgKDEpOwo+
ICAKPiAgCWlndF9hc3NlcnRfZXEoX19leGVjYnVmKGZkLCAmZXhlY2J1ZiksIC1FSU5UUik7Cj4g
LQlpZ3RfYXNzZXJ0KGNvdW50KTsKPiArCWlndF9hc3NlcnQoY291bnQgPiAxKTsKPiAgCj4gIAlt
ZW1zZXQoJml0diwgMCwgc2l6ZW9mKGl0dikpOwo+ICAJc2V0aXRpbWVyKElUSU1FUl9SRUFMLCAm
aXR2LCBOVUxMKTsKPiBAQCAtMTE4LDcgKzExOCw4IEBAIF9fZ2VtX21lYXN1cmVfcmluZ19pbmZs
aWdodChpbnQgZmQsIHVuc2lnbmVkIGludCBlbmdpbmUsIGVudW0gbWVhc3VyZV9yaW5nX2ZsYWdz
Cj4gIAo+ICAJZ2VtX3F1aWVzY2VudF9ncHUoZmQpOwo+ICAKPiAtCXJldHVybiBjb3VudDsKPiAr
CS8qIEJlIGNvbnNlcnZhdGl2ZSBpbiBjYXNlIHdlIG11c3Qgd3JhcCBsYXRlciAqLwo+ICsJcmV0
dXJuIGNvdW50IC0gMTsKPiAgfQo+ICAKPiAgLyoqCj4gLS0gCj4gMi4yMy4wLnJjMQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
