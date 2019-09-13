Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E42B1D9D
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2019 14:26:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4F1F6F38D;
	Fri, 13 Sep 2019 12:26:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A80BC6F38D
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2019 12:26:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Sep 2019 05:26:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="176268170"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga007.jf.intel.com with ESMTP; 13 Sep 2019 05:26:12 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 4E4A65C0495; Fri, 13 Sep 2019 15:25:56 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190913111443.29244-1-chris@chris-wilson.co.uk>
References: <20190913111443.29244-1-chris@chris-wilson.co.uk>
Date: Fri, 13 Sep 2019 15:25:56 +0300
Message-ID: <878sqss7qj.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Limit ourselves to just rcs0
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gTW9yZSBw
cnVuaW5nIGF3YXkgb2YgZmVhdHVyZXMgdW50aWwgd2UgaGF2ZSBhIHN0YWJsZSBzeXN0ZW0gYW5k
IGEgYmFzaXMKPiBmb3IgZGVidWdnaW5nIHdoYXQncyBtaXNzaW5nLgo+Cj4gU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1pa2EgS3Vv
cHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BjaS5jIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCj4gaW5kZXggOTIzNmZjY2IzYTgzLi5lZTlh
Nzk1OTIwNGMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKPiBAQCAtNzk5LDYgKzc5OSw3
IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gaW50ZWxfdGlnZXJsYWtl
XzEyX2luZm8gPSB7Cj4gIAkJQklUKFJDUzApIHwgQklUKEJDUzApIHwgQklUKFZFQ1MwKSB8IEJJ
VChWQ1MwKSB8IEJJVChWQ1MyKSwKPiAgCS5oYXNfcmM2ID0gZmFsc2UsIC8qIFhYWCBkaXNhYmxl
ZCBmb3IgZGVidWdnaW5nICovCj4gIAkuaGFzX2xvZ2ljYWxfcmluZ19wcmVlbXB0aW9uID0gZmFs
c2UsIC8qIFhYWCBkaXNhYmxlZCBmb3IgZGVidWdnaW5nICovCj4gKwkuZW5naW5lX21hc2sgPSBC
SVQoUkNTMCksIC8qIFhYWCByZWR1Y2VkIGZvciBkZWJ1Z2dpbmcgKi8KClllYWgsIHRoYXQgd2ls
bCBkby4KCkkgaGF2ZSB0cmllZCB0byBmaW5kIGEgcGFpcmluZyB0aGF0IHdvcmtzLiBJdCBpcyBl
aXRoZXIgZ3R0ZmlsbCBvcgpnZW1fc3luYyBkZXBlbmRpbmcgb24gcGFpci4KCldlIHllYXJuIGZv
ciBjb3ZlcmFnZSBzbywKQWNrZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGlu
dXguaW50ZWwuY29tPgoKPiAgfTsKPiAgCj4gICN1bmRlZiBHRU4KPiAtLSAKPiAyLjIzLjAKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
