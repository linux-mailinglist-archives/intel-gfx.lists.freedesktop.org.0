Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C63EEDBBF
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2019 10:38:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 891576E216;
	Mon,  4 Nov 2019 09:38:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5738A6E216
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Nov 2019 09:38:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Nov 2019 01:38:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,266,1569308400"; d="scan'208";a="213478345"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga002.jf.intel.com with ESMTP; 04 Nov 2019 01:38:37 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 9F61A5C1E92; Mon,  4 Nov 2019 11:38:33 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191104090158.2959-1-chris@chris-wilson.co.uk>
References: <20191104090158.2959-1-chris@chris-wilson.co.uk>
Date: Mon, 04 Nov 2019 11:38:33 +0200
Message-ID: <87v9s0nfqe.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Drop false assertion on
 user_forcewake
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gVGhlIGNv
dW50ZXIgaXMgcmVtb3ZlZCBmcm9tIHRoZSBwbSB3YWtlcmVmIGNvdW50LCBidXQgaXQgcmVtYWlu
cyBpbnRhY3QKPiBzbyB0aGF0IHdlIGNhbiByZXN0b3JlIGl0IHVwb24gcmVzdW1lLiBFcmdvIGlu
c2lkZSBzdXNwZW5kLCBpdCBtYXkgaGF2ZQo+IGEgdmFsdWUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KClJldmlld2VkLWJ5OiBNaWth
IEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KCm9oLCB1c2VyX2ZvcmNl
d2FrZSBuZWVkcyBhIGJldHRlciBuYW1lIHdpdGggYSB2ZXJiLi4uCgo+IC0tLQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jIHwgMSAtCj4gIDEgZmlsZSBjaGFuZ2VkLCAx
IGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZ3RfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMKPiBpbmRl
eCA2Mzc0NzQ0YmI2NWUuLjA2MGEyN2Q5YWYzNCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZ3RfcG0uYwo+IEBAIC0yNTEsNyArMjUxLDYgQEAgc3RhdGljIHZvaWQgd2FpdF9mb3Jf
c3VzcGVuZChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQo+ICAJCWludGVsX2d0X3NldF93ZWRnZWQoZ3Qp
Owo+ICAJfQo+ICAKPiAtCUdFTV9CVUdfT04oYXRvbWljX3JlYWQoJmd0LT51c2VyX3dha2VyZWYp
KTsKPiAgCWludGVsX2d0X3BtX3dhaXRfZm9yX2lkbGUoZ3QpOwo+ICB9Cj4gIAo+IC0tIAo+IDIu
MjQuMC5yYzIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
