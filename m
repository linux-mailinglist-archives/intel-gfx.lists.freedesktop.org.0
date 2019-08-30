Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 100A8A3975
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 16:45:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EE356E34E;
	Fri, 30 Aug 2019 14:45:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84A9B6E34E
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 14:45:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 07:45:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,447,1559545200"; d="scan'208";a="332876176"
Received: from unknown (HELO [10.252.38.85]) ([10.252.38.85])
 by orsmga004.jf.intel.com with ESMTP; 30 Aug 2019 07:45:44 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190830144009.8246-1-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <813e7e49-5911-8d7b-7de2-900566a9e304@intel.com>
Date: Fri, 30 Aug 2019 17:45:44 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190830144009.8246-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Assert locking for
 i915_init_oa_perf_state()
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMzAvMDgvMjAxOSAxNzo0MCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFdlIHVzZSB0aGUgY29u
dGV4dC0+cGluX211dGV4IHRvIHNlcmlhbGlzZSB1cGRhdGVzIHRvIHRoZSBPQSBjb25maWcgYW5k
Cj4gdGhlIHJlZ2lzdGVycyB2YWx1ZXMgd3JpdHRlbiBpbnRvIGVhY2ggbmV3IGNvbnRleHQuIERv
Y3VtZW50IHRoaXMKPiByZWxhdGlvbnNoaXAgYW5kIGFzc2VydCB3ZSBkbyBob2xkIHRoZSBjb250
ZXh0LT5waW5fbXV0ZXggYXMgdXNlZCBieQo+IGdlbjhfY29uZmlndXJlX2FsbF9jb250ZXh0cygp
IHRvIHNlcmlhbGlzZSB1cGRhdGVzIHRvIHRoZSBPQSBjb25maWcKPiBpdHNlbGYuCj4KPiBTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzog
TGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgoKClRoYW5r
cywgdGhhdCdzIGhlbHBmdWwgdG8gcmVtZW1iZXIgd2h5IGl0IHdvcmtzIDopCgpSZXZpZXdlZC1i
eTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgoKCj4g
LS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyB8IDMgKysrCj4gICAxIGZp
bGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wZXJmLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwo+
IGluZGV4IDJjOWY0NmUxMjYyMi4uYzFiNzY0MjMzNzYxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9wZXJmLmMKPiBAQCAtMjMwNSw2ICsyMzA1LDkgQEAgdm9pZCBpOTE1X29hX2luaXRfcmVnX3N0
YXRlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKPiAgIHsKPiAgIAlzdHJ1Y3QgaTkx
NV9wZXJmX3N0cmVhbSAqc3RyZWFtOwo+ICAgCj4gKwkvKiBwZXJmLmV4Y2x1c2l2ZV9zdHJlYW0g
c2VyaWFsaXNlZCBieSBnZW44X2NvbmZpZ3VyZV9hbGxfY29udGV4dHMoKSAqLwo+ICsJbG9ja2Rl
cF9hc3NlcnRfaGVsZCgmY2UtPnBpbl9tdXRleCk7Cj4gKwo+ICAgCWlmIChlbmdpbmUtPmNsYXNz
ICE9IFJFTkRFUl9DTEFTUykKPiAgIAkJcmV0dXJuOwo+ICAgCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
