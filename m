Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB29E1B38
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 14:49:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 995EB6EA89;
	Wed, 23 Oct 2019 12:49:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3C006EA89
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 12:49:01 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 05:49:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,220,1569308400"; d="scan'208";a="223171759"
Received: from aquilante.fi.intel.com (HELO intel.intel) ([10.237.72.186])
 by fmsmga004.fm.intel.com with ESMTP; 23 Oct 2019 05:48:59 -0700
Date: Wed, 23 Oct 2019 15:49:04 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191023124904.GB4125@intel.intel>
References: <20191023093821.3350-1-andi.shyti@intel.com>
 <20191023095000.3782-1-andi.shyti@intel.com>
 <157183266196.15766.14782680783428472038@skylake-alporthouse-com>
 <20191023123216.GA4125@intel.intel>
 <157183418163.15766.12473099234353818990@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157183418163.15766.12473099234353818990@skylake-alporthouse-com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: Extract GT render power
 state management
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiA+ID4gPiAgICAgICAgICAqIG1heGltdW0gY2xvY2tzIGZvbGxvd2luZyBhIHZibGFuayBtaXNz
IChzZWUgZG9fcnBzX2Jvb3N0KCkpLgo+ID4gPiA+ICAgICAgICAgICovCj4gPiA+ID4gICAgICAg
ICBpZiAoIWludGVsX3N0YXRlLT5ycHNfaW50ZXJhY3RpdmUpIHsKPiA+ID4gPiAtICAgICAgICAg
ICAgICAgaW50ZWxfcnBzX21hcmtfaW50ZXJhY3RpdmUoZGV2X3ByaXYsIHRydWUpOwo+ID4gPiA+
ICsgICAgICAgICAgICAgICBpbnRlbF9ycHNfbWFya19pbnRlcmFjdGl2ZSgmZGV2X3ByaXYtPmd0
LnJwcywgdHJ1ZSk7Cj4gPiA+IAo+ID4gPiBJIHdvbmRlciBpZiB3ZSBjYW4gZG8gJnBsYW5lLT52
bWEtPnZtLT5ndC0+cnBzCj4gPiAKPiA+IGFncmVlLCBsb29rcyB1Z2x5LCBJIGNvdWxkIGZpeCBp
dCBieSBleHRyYWN0aW5nIHJwcy4gU2hhbGwgSSBkbwo+ID4gaXQgbm93IGluIGEgdjMgb3IgYWZ0
ZXIgdGhlIHBhdGNoIGdldHMgbWVyZ2VkPyBBcyB5b3UgY2FuIGd1ZXMKPiA+IEknZCBwcmVmZXIg
ZG9pbmcgYWZ0ZXIgdGhlIHBhdGNoIGlzIG1lcmdlZCA6KQo+IAo+IE1vc3RseSB0aGlua2luZyBh
bG91ZC4gSSBwbGFuIG9uIHNvYWsgdGVzdGluZyB0aGlzIGZpcnN0OyBzb21ldGhpbmcgZGlkCj4g
bm90IGxvb2sgcXVpdGUgcmlnaHQgYXJvdW5kIHBtX2VuYWJsZS9wbV9kaXNhYmxlIHZzIGd0X3Jl
c3VtZS9ndF9zdXNwZW5kCj4gKGkuZS4gZGlkIG5vdCBtYXRjaCBteSBjdXJyZW50IGV4cGVjdGF0
aW9ucyBvZiB3aGVyZSB0byBwdXNoIHRoZSBndCBpbml0Cj4gbmV4dCkuCgp5ZXMsIGl0J3MgY29u
ZnVzaW5nIGFuZCB0byBtZSB0aGV5IGxvb2sgaW52ZXJ0ZWQgaW4gbWVhaW5pbmcgOikuCkRvIHdl
IHdhbnQgdG8gaGF2ZSBhIHVuaXF1ZSByZXN1bWUvc3VzcGVuZCByYXRoZXIgdGhhbiBib3RoPwoK
Rm9yIHRoaXMgcmVmYWN0b3JpbmcgaXQgd2FzIGp1c3QgZWFzaWVyIHRvIGtlZXAgaXQgdGhpcyB3
YXkuCgpBbmRpCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
