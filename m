Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD8A16FA7D
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 10:18:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BFAB6E27A;
	Wed, 26 Feb 2020 09:18:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 406906E27A
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 09:18:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 01:18:45 -0800
X-IronPort-AV: E=Sophos;i="5.70,487,1574150400"; d="scan'208";a="231335180"
Received: from mkoeck-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.250])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 01:18:44 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200225143604.500731-1-chris@chris-wilson.co.uk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200225143604.500731-1-chris@chris-wilson.co.uk>
Date: Wed, 26 Feb 2020 11:19:02 +0200
Message-ID: <87wo89so3d.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Replace the hardcoded
 I915_FENCE_TIMEOUT
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

T24gVHVlLCAyNSBGZWIgMjAyMCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2NvbmZp
Zy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9jb25maWcuYwo+IG5ldyBmaWxlIG1vZGUg
MTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi5jODc5ZDI2MzY5ZTEKPiAtLS0gL2Rldi9udWxs
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9jb25maWcuYwo+IEBAIC0wLDAgKzEs
MTUgQEAKPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAo+ICsvKgo+ICsgKiBDb3B5
cmlnaHQgwqkgMjAyMCBJbnRlbCBDb3Jwb3JhdGlvbgo+ICsgKi8KPiArCj4gKyNpbmNsdWRlICJp
OTE1X2Rydi5oIgo+ICsKPiArdW5zaWduZWQgbG9uZyBpOTE1X2ZlbmNlX3RpbWVvdXQoY29uc3Qg
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCgppOTE1X2NvbmZpZ19mZW5jZV90aW1lb3V0
KCk/IEkgZ3Vlc3MgeW91J3JlIHBsYW5uaW5nIG9uIGFkZGluZyBtb3JlCmZ1bmN0aW9ucywgYW5k
IEknZCByZWFsbHkgbGlrZSB0byBuYW1lIGJhc2VkIG9uIGZpbGVuYW1lcy4gV2UgYWxsIHVzZQpj
c2NvcGUgb3IgR05VIGdsb2JhbCBvciBzb21lc3VjaCwgYnV0IElNTyB0aGUgbmFtaW5nIG1ha2Vz
IHRoZSBjb2RlYmFzZQplYXNpZXIgdG8gbmF2aWdhdGUuCgpCUiwKSmFuaS4KCgo+ICt7Cj4gKyNp
ZiBJU19BQ1RJVkUoQ09ORklHX0RSTV9JOTE1X0ZFTkNFX1RJTUVPVVQpCj4gKwlyZXR1cm4gbXNl
Y3NfdG9famlmZmllc190aW1lb3V0KENPTkZJR19EUk1fSTkxNV9GRU5DRV9USU1FT1VUKTsKPiAr
I2Vsc2UKPiArCXJldHVybiAwOwo+ICsjZW5kaWYKPiArfQoKLS0gCkphbmkgTmlrdWxhLCBJbnRl
bCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
