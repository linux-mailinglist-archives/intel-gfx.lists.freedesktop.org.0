Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2388A3CD0FF
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jul 2021 11:37:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A00189E06;
	Mon, 19 Jul 2021 09:37:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA90289DDF;
 Mon, 19 Jul 2021 09:37:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10049"; a="211079341"
X-IronPort-AV: E=Sophos;i="5.84,251,1620716400"; d="scan'208";a="211079341"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2021 02:37:33 -0700
X-IronPort-AV: E=Sophos;i="5.84,251,1620716400"; d="scan'208";a="631850263"
Received: from mtlovett-mobl.ger.corp.intel.com (HELO [10.213.196.244])
 ([10.213.196.244])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2021 02:37:31 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20210719083534.2949348-1-daniel.vetter@ffwll.ch>
 <ea0ecfbd-6428-02e1-4785-bdf32e475eb8@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <153394a1-2276-313e-7096-e6d18f9ebc61@linux.intel.com>
Date: Mon, 19 Jul 2021 10:37:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <ea0ecfbd-6428-02e1-4785-bdf32e475eb8@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Check for nomodeset in
 i915_init() first
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE5LzA3LzIwMjEgMTA6MDksIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+IAo+IE9uIDE5LzA3
LzIwMjEgMDk6MzUsIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4+IEphc29uIGlzIHRyeWluZyB0byBz
b3J0IG91dCB0aGUgdW53aW5kaW5nIGluIGk5MTVfaW5pdCBhbmQgaTkxNV9leGl0LAo+PiB3aGls
ZSByZXZpZXdpbmcgdGhvc2UgcGF0Y2hlcyBJIG5vdGljZWQgdGhhdCB3ZSBhbHNvIGhhdmUgdGhl
Cj4+IG5vbW9kZXNldCBoYW5kbGluZyBub3cgaW4gdGhlIG1pZGRsZSBvZiB0aGluZ3MuCj4+Cj4+
IFB1bGwgdGhhdCBvdXQgZm9yIHNpbXBsaXNpdHkgaW4gdW53aW5kaW5nIC0gaWYgeW91IHJ1biBz
ZWxmdGVzdCB3aXRoCj4+IG5vbW9kZXNldCB5b3UgZ2V0IG5vdGhpbmcsICpzaHJ1ZyouCj4gCj4g
V2hlcmUgIm5vdGhpbmciIGVxdWFscyBzdWNjZXNzIT8gUXVpdGUgYmFkIGZvciBwbGF0Zm9ybSBi
cmluZ3VwIG9uIHR3byAKPiBsZXZlbHMuCgpTb3JyeSBJIGNvbmZ1c2VkIGl0IHdpdGggaTkxNS5k
aXNhYmxlX2Rpc3BsYXkuIEkgYW0gbm90IGF3YXJlIG5vbW9kZXNldCAKaXMgYWN0dWFsbHkgdXNl
ZCBhbnl3aGVyZSB1c2VmdWwgc28gbXkgb2JqZWN0aW9uIGRvZXMgbm90IGhvbGQuCgpSZWdhcmRz
LAoKVHZydGtvCgoKPiBSZWdhcmRzLAo+IAo+IFR2cnRrbwo+IAo+PiBDYzogSmFzb24gRWtzdHJh
bmQgPGphc29uQGpsZWtzdHJhbmQubmV0Pgo+PiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVy
IDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcGNpLmMgfCAxNiArKysrKysrKy0tLS0tLS0tCj4+IMKgIDEgZmlsZSBjaGFuZ2Vk
LCA4IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jIAo+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcGNpLmMKPj4gaW5kZXggNjc2OTZkNzUyMjcxLi42ZmU3MDlhYzFiNGIgMTAwNjQ0Cj4+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKPj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wY2kuYwo+PiBAQCAtMTE5OSwxNCArMTE5OSw2IEBAIHN0YXRpYyBpbnQg
X19pbml0IGk5MTVfaW5pdCh2b2lkKQo+PiDCoMKgwqDCoMKgIGJvb2wgdXNlX2ttcyA9IHRydWU7
Cj4+IMKgwqDCoMKgwqAgaW50IGVycjsKPj4gLcKgwqDCoCBlcnIgPSBpOTE1X2dsb2JhbHNfaW5p
dCgpOwo+PiAtwqDCoMKgIGlmIChlcnIpCj4+IC3CoMKgwqDCoMKgwqDCoCByZXR1cm4gZXJyOwo+
PiAtCj4+IC3CoMKgwqAgZXJyID0gaTkxNV9tb2NrX3NlbGZ0ZXN0cygpOwo+PiAtwqDCoMKgIGlm
IChlcnIpCj4+IC3CoMKgwqDCoMKgwqDCoCByZXR1cm4gZXJyID4gMCA/IDAgOiBlcnI7Cj4+IC0K
Pj4gwqDCoMKgwqDCoCAvKgo+PiDCoMKgwqDCoMKgwqAgKiBFbmFibGUgS01TIGJ5IGRlZmF1bHQs
IHVubGVzcyBleHBsaWNpdGx5IG92ZXJyaWRlbiBieQo+PiDCoMKgwqDCoMKgwqAgKiBlaXRoZXIg
dGhlIGk5MTUubW9kZXNldCBwcmFyYW1ldGVyIG9yIGJ5IHRoZQo+PiBAQCAtMTIyNSw2ICsxMjE3
LDE0IEBAIHN0YXRpYyBpbnQgX19pbml0IGk5MTVfaW5pdCh2b2lkKQo+PiDCoMKgwqDCoMKgwqDC
oMKgwqAgcmV0dXJuIDA7Cj4+IMKgwqDCoMKgwqAgfQo+PiArwqDCoMKgIGVyciA9IGk5MTVfZ2xv
YmFsc19pbml0KCk7Cj4+ICvCoMKgwqAgaWYgKGVycikKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVy
biBlcnI7Cj4+ICsKPj4gK8KgwqDCoCBlcnIgPSBpOTE1X21vY2tfc2VsZnRlc3RzKCk7Cj4+ICvC
oMKgwqAgaWYgKGVycikKPj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiBlcnIgPiAwID8gMCA6IGVy
cjsKPj4gKwo+PiDCoMKgwqDCoMKgIGk5MTVfcG11X2luaXQoKTsKPj4gwqDCoMKgwqDCoCBlcnIg
PSBwY2lfcmVnaXN0ZXJfZHJpdmVyKCZpOTE1X3BjaV9kcml2ZXIpOwo+PgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
