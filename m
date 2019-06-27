Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0575B58412
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 16:02:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A4DA6E421;
	Thu, 27 Jun 2019 14:02:15 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCDE76E415;
 Thu, 27 Jun 2019 14:02:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 07:02:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,423,1557212400"; d="scan'208";a="183459342"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 27 Jun 2019 07:02:11 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
In-Reply-To: <87v9wrp1rb.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190627125521.10782-1-tvrtko.ursulin@linux.intel.com>
 <87v9wrp1rb.fsf@intel.com>
Date: Thu, 27 Jun 2019 17:04:57 +0300
Message-ID: <87pnmzp1iu.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] lib: Silence Valgrind
 warning in synce_fence_status
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

T24gVGh1LCAyNyBKdW4gMjAxOSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVs
LmNvbT4gd3JvdGU6Cj4gT24gVGh1LCAyNyBKdW4gMjAxOSwgVHZydGtvIFVyc3VsaW4gPHR2cnRr
by51cnN1bGluQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4+IEZyb206IFR2cnRrbyBVcnN1bGlu
IDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4+Cj4+IExldCBWYWxncmluZCBrbm93IHRoZSBp
b2N0bCBpbml0aWFsaXplcyB0aGUgcGFzc2VkIGluIGluZm8gYmxvY2sgdG8gcmVkdWNlCj4+IHRo
ZSBub2lzZSB3aGlsZSBkZWJ1Z2dpbmcuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1
bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4+IC0tLQo+PiAgbGliL3N3X3N5bmMuYyB8
IDExICsrKysrKysrKysrCj4+ICAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKQo+Pgo+
PiBkaWZmIC0tZ2l0IGEvbGliL3N3X3N5bmMuYyBiL2xpYi9zd19zeW5jLmMKPj4gaW5kZXggZjIw
ODYwMzMxMmMyLi43M2YzZjcwMTVkOWQgMTAwNjQ0Cj4+IC0tLSBhL2xpYi9zd19zeW5jLmMKPj4g
KysrIGIvbGliL3N3X3N5bmMuYwo+PiBAQCAtNDEsNiArNDEsMTUgQEAKPj4gICNpbmNsdWRlICJk
cm10ZXN0LmgiCj4+ICAjaW5jbHVkZSAiaW9jdGxfd3JhcHBlcnMuaCIKPj4gIAo+PiArI2lmZGVm
IEhBVkVfVkFMR1JJTkQKPj4gKyNpbmNsdWRlIDx2YWxncmluZC92YWxncmluZC5oPgo+PiArI2lu
Y2x1ZGUgPHZhbGdyaW5kL21lbWNoZWNrLmg+Cj4+ICsKPj4gKyNkZWZpbmUgVkcoeCkgeAo+PiAr
I2Vsc2UKPj4gKyNkZWZpbmUgVkcoeCkgZG8ge30gd2hpbGUgKDApCj4KPiBPT0MsIHdoeSBub3Qg
anVzdAo+Cj4gI2RlZmluZSBWQUxHUklORF9NQUtFX01FTV9ERUZJTkVEKC4uLikKCkFuZCB0byB1
bmRlcmxpbmUsIHRoaXMgaXMgbm90IGEgcmVxdWVzdCB0byBjaGFuZ2UgYW55dGhpbmchCgpCUiwK
SmFuaS4KCgo+Cj4gQlIsCj4gSmFuaS4KPgo+PiArI2VuZGlmCj4+ICsKPj4gIC8qKgo+PiAgICog
U0VDVElPTjpzd19zeW5jCj4+ICAgKiBAc2hvcnRfZGVzY3JpcHRpb246IFNvZnR3YXJlIHN5bmMg
KGZlbmNpbmcpIHN1cHBvcnQgbGlicmFyeQo+PiBAQCAtMjE4LDYgKzIyNyw4IEBAIGludCBzeW5j
X2ZlbmNlX3N0YXR1cyhpbnQgZmVuY2UpCj4+ICAJaWYgKGZpbGVfaW5mby5udW1fZmVuY2VzICE9
IDEpCj4+ICAJCXJldHVybiAtRUlOVkFMOwo+PiAgCj4+ICsJVkcoVkFMR1JJTkRfTUFLRV9NRU1f
REVGSU5FRCgmZmVuY2VfaW5mbywgc2l6ZW9mKGZlbmNlX2luZm8pKSk7Cj4+ICsKPj4gIAlyZXR1
cm4gZmVuY2VfaW5mby5zdGF0dXM7Cj4+ICB9CgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4g
U291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
