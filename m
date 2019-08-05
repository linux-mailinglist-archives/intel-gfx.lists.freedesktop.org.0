Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7D3823AD
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2019 19:09:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D4446E54C;
	Mon,  5 Aug 2019 17:09:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDB656E520
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2019 17:09:40 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Aug 2019 10:09:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,350,1559545200"; d="scan'208";a="175639466"
Received: from aquilante.fi.intel.com (HELO intel.intel) ([10.237.72.186])
 by fmsmga007.fm.intel.com with ESMTP; 05 Aug 2019 10:09:39 -0700
Date: Mon, 5 Aug 2019 20:09:37 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190805170937.GA501@intel.intel>
References: <20190730133035.1977-1-chris@chris-wilson.co.uk>
 <20190730133035.1977-14-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730133035.1977-14-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 13/17] drm/i915: Isolate
 i915_getparam_ioctl()
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQ2hyaXMsCgpPbiBUdWUsIEp1bCAzMCwgMjAxOSBhdCAwMjozMDozMVBNICswMTAwLCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4gVGhpcyBnaWFudCBzd2l0Y2ggaGFzIHRlbmRyaWxzIGFsbCBvdGhl
ciB0aGUgc3RydWN0IGFuZCBkb2VzIG5vdCBmaXQKPiBpbnRvIHRoZSByZXN0IG9mIHRoZSBkcml2
ZXIgYnJpbmcgdXAgYW5kIGNvbnRyb2wgb2YgaTkxNV9kcnYuYy4gUHVzaCBpdAo+IHRvIG9uZSBz
aWRlIHNvIHRoYXQgaXQgY2FuIGdyb3cgaW4gcGVhY2UuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQWNrZWQtYnk6IFR2cnRrbyBV
cnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpbLi4uXQoKPiAtCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsKPiAtCXN0cnVjdCBwY2lfZGV2
ICpwZGV2ID0gZGV2X3ByaXYtPmRybS5wZGV2Owo+IC0JY29uc3Qgc3RydWN0IHNzZXVfZGV2X2lu
Zm8gKnNzZXUgPSAmUlVOVElNRV9JTkZPKGRldl9wcml2KS0+c3NldTsKPiAtCWRybV9pOTE1X2dl
dHBhcmFtX3QgKnBhcmFtID0gZGF0YTsKPiAtCWludCB2YWx1ZTsKClsuLi5dCgo+ICsJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRldik7Cj4gKwljb25zdCBzdHJ1Y3Qg
c3NldV9kZXZfaW5mbyAqc3NldSA9ICZSVU5USU1FX0lORk8oaTkxNSktPnNzZXU7Cj4gKwlkcm1f
aTkxNV9nZXRwYXJhbV90ICpwYXJhbSA9IGRhdGE7Cj4gKwlpbnQgdmFsdWU7CgpJIGtuZXcgeW91
IGNvdWxkIG5vdCByZXNpc3QgdGhlIHRlbXB0YXRpb24gb2YgY2hhbmdpbmcgdGhpbmdzIG9uCnRo
ZSBmbHkgOikKCldvdWxkIGJlIG5pY2UgdG8gaGF2ZSBfYW55XyBjaGFuZ2UgZG9jdW1lbnRlZCBp
biB0aGUgbG9nLiBJbiBhbnkKY2FzZToKClJldmlld2VkLWJ5OiBBbmRpIFNoeXRpIDxhbmRpLnNo
eXRpQGludGVsLmNvbT4KCkFuZGkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
