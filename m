Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A25FFBAE9E
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 09:45:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90ED56E1A4;
	Mon, 23 Sep 2019 07:45:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2B326E19C;
 Mon, 23 Sep 2019 07:45:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 00:45:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,539,1559545200"; d="scan'208";a="363549905"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga005.jf.intel.com with ESMTP; 23 Sep 2019 00:45:33 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id DB5935C1E3A; Mon, 23 Sep 2019 10:45:09 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190923073636.19618-1-chris@chris-wilson.co.uk>
References: <20190923073636.19618-1-chris@chris-wilson.co.uk>
Date: Mon, 23 Sep 2019 10:45:09 +0300
Message-ID: <87zhivzcai.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_ppgtt: Check for blitter
 support
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gQW5vdGhl
ciB0eXBlIG9mIGJjcyB1c2VyLCBoaWRkZW4gYXdheS4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBNaWthIEt1b3BwYWxhIDxt
aWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KClJldmlld2VkLWJ5OiBNaWthIEt1b3BwYWxh
IDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KCj4gLS0tCj4gIHRlc3RzL2k5MTUvZ2Vt
X3BwZ3R0LmMgfCAxICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4KPiBkaWZm
IC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fcHBndHQuYyBiL3Rlc3RzL2k5MTUvZ2VtX3BwZ3R0LmMK
PiBpbmRleCAwZDQwYTdiNzguLjg5Y2RjNGRiYyAxMDA2NDQKPiAtLS0gYS90ZXN0cy9pOTE1L2dl
bV9wcGd0dC5jCj4gKysrIGIvdGVzdHMvaTkxNS9nZW1fcHBndHQuYwo+IEBAIC0yOTUsNiArMjk1
LDcgQEAgaWd0X21haW4KPiAgCWlndF9maXh0dXJlIHsKPiAgCQlpbnQgZmQgPSBkcm1fb3Blbl9k
cml2ZXIoRFJJVkVSX0lOVEVMKTsKPiAgCQlpZ3RfcmVxdWlyZV9nZW0oZmQpOwo+ICsJCWdlbV9y
ZXF1aXJlX2JsaXR0ZXIoZmQpOwo+ICAJCWNsb3NlKGZkKTsKPiAgCX0KPiAgCj4gLS0gCj4gMi4y
My4wCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
