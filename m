Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 207BC114FA3
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Dec 2019 12:12:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C51C6E899;
	Fri,  6 Dec 2019 11:12:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B0956E899
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Dec 2019 11:12:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Dec 2019 03:12:45 -0800
X-IronPort-AV: E=Sophos;i="5.69,284,1571727600"; d="scan'208";a="206090905"
Received: from cpreilly-mobl1.ger.corp.intel.com (HELO [10.251.80.64])
 ([10.251.80.64])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 06 Dec 2019 03:12:44 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191205214159.829727-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <8d147892-12dc-b6d3-dfd7-f325b39d057a@linux.intel.com>
Date: Fri, 6 Dec 2019 11:12:42 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191205214159.829727-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Claim vma while under closed_lock
 in i915_vma_parked()
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
Cc: matthew.auld@intel.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDA1LzEyLzIwMTkgMjE6NDEsIENocmlzIFdpbHNvbiB3cm90ZToKPiBSZW1vdmUgdGhlIHZt
YSB3ZSB3aXNoIHRvIGRlc3Ryb3kgZnJvbSB0aGUgZ3QtPmNsb3NlZF9saXN0IHRvIGF2b2lkCj4g
aGF2aW5nIHR3byBpOTE1X3ZtYV9wYXJrZWQoKSB0cnkgYW5kIGZyZWUgaXQuCj4gCj4gU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4g
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3ZtYS5jIHwgNCArKystCj4gICAxIGZpbGUgY2hh
bmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3ZtYS5jCj4gaW5kZXggNmRiMzViOWRlYWQ4Li45Y2E2NjY0YzE5MGMgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV92bWEuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfdm1hLmMKPiBAQCAtMTA1Myw3ICsxMDUzLDkgQEAgdm9pZCBpOTE1X3ZtYV9wYXJr
ZWQoc3RydWN0IGludGVsX2d0ICpndCkKPiAgIAkJaWYgKCFrcmVmX2dldF91bmxlc3NfemVybygm
b2JqLT5iYXNlLnJlZmNvdW50KSkKPiAgIAkJCWNvbnRpbnVlOwo+ICAgCj4gLQkJaWYgKCFpOTE1
X3ZtX3RyeW9wZW4odm0pKSB7Cj4gKwkJaWYgKGk5MTVfdm1fdHJ5b3Blbih2bSkpIHsKPiArCQkJ
bGlzdF9kZWxfaW5pdCgmdm1hLT5jbG9zZWRfbGluayk7Cj4gKwkJfSBlbHNlIHsKPiAgIAkJCWk5
MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKPiAgIAkJCW9iaiA9IE5VTEw7Cj4gICAJCX0KPiAKCkZp
eGVzIDI4NTA3NDhlZjg3NjMgSSB0aGluay4gVW50aWwgdGhlbiB0aGVyZSB3YXMgYSBsaXN0X2Rl
bF9pbml0IGluIGhlcmUuCgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1
bGluQGludGVsLmNvbT4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
