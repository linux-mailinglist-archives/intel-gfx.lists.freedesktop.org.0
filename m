Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C16CD9C36
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 23:05:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3054189C88;
	Wed, 16 Oct 2019 21:05:36 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7C1A89C88
 for <Intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 21:05:34 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 14:05:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,305,1566889200"; d="scan'208";a="186274856"
Received: from mkovacev-mobl1.ger.corp.intel.com (HELO intel.intel)
 ([10.252.28.241])
 by orsmga007.jf.intel.com with ESMTP; 16 Oct 2019 14:05:32 -0700
Date: Thu, 17 Oct 2019 00:05:31 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20191016210531.GA3962@intel.intel>
References: <20191016122557.9315-1-tvrtko.ursulin@linux.intel.com>
 <157122977475.22469.14720333723083228727@skylake-alporthouse-com>
 <03a13dd4-6958-fea0-60c5-eec64e80ce0f@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <03a13dd4-6958-fea0-60c5-eec64e80ce0f@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Make
 i915_gem_load_power_context take struct intel_gt
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiA+ID4gLSAgICAgICBpZiAoIWk5MTVfZ2VtX2xvYWRfcG93ZXJfY29udGV4dChpOTE1KSkgewo+
ID4gPiArICAgICAgIGlmICghaTkxNV9nZW1fbG9hZF9ndF9wb3dlcl9jb250ZXh0KCZpOTE1LT5n
dCkpIHsKPiA+ID4gICAgICAgICAgICAgICAgICBlcnIgPSAtRUlPOwo+ID4gPiAgICAgICAgICAg
ICAgICAgIGdvdG8gb3V0Owo+ID4gPiAgICAgICAgICB9Cj4gPiAKPiA+IE5vdCBxdWl0ZSwgdGhl
IHBsYW4gaXMgdG8gbW92ZSB0aGlzIGFsbCB0byB0aGUgZ3QuIFBhZ2luZyBBbmRpLCBjb21lIGlu
Cj4gPiBBbmRpIQo+IAo+IEhhdmUgeW91IGNvcGllZCBoaW0/IDopIEkgbm93IGhhdmUuCgpsb3Vk
IGFuZCBjbGVhci4uLiB3aWxsIHByaW9yaXRpemUgOykKCkFuZGkKCj4gSSBkb24ndCBoYXZlIGFu
eSBjb21wbGFpbnRzIHRoZXJlIC0gYnV0IGNhbiBpdCBiZSBkb25lIHF1aWNrbHk/Cj4gCj4gUmVn
YXJkcywKPiAKPiBUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
