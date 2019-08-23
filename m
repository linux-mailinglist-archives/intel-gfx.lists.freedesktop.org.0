Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB3A9AA59
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 10:30:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 478AA6EC23;
	Fri, 23 Aug 2019 08:30:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A124B6EC23
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 08:30:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 01:30:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,420,1559545200"; d="scan'208";a="208479570"
Received: from mnaguszx-mobl1.ger.corp.intel.com (HELO [10.252.53.233])
 ([10.252.53.233])
 by fmsmga002.fm.intel.com with ESMTP; 23 Aug 2019 01:30:30 -0700
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190823082055.5992-1-lucas.demarchi@intel.com>
 <20190823082055.5992-19-lucas.demarchi@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <232a7241-5d6d-499f-cab4-065e47910d6e@intel.com>
Date: Fri, 23 Aug 2019 10:30:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190823082055.5992-19-lucas.demarchi@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 18/23] drm/i915/tgl/perf: use the same oa
 ctx_id format as icl
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
Cc: Michel Thierry <michel.thierry@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjMvMDgvMjAxOSAxMDoyMCwgTHVjYXMgRGUgTWFyY2hpIHdyb3RlOgo+IEZyb206IE1pY2hl
bCBUaGllcnJ5IDxtaWNoZWwudGhpZXJyeUBpbnRlbC5jb20+Cj4KPiBDb21wYXJlZCB0byBJY2Vs
YWtlLCBUaWdlcmxha2UncyBNQVhfQ09OVEVYVF9IV19JRCBpcyBzbWFsbGVyIGJ5IG9uZSwgYnV0
Cj4gc2luY2Ugd2UganVzdCB1c2UgdGhlIHVwcGVyIDMyIGJpdHMgb2YgdGhlIGxyY19kZXNjLCBp
dCdzIGd1YXJhbnRlZWQgT0EKPiB3aWxsIHVzZSB0aGUgY29ycmVjdCBvbmUuCj4KPiBDYzogTGlv
bmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgo+IFNpZ25lZC1v
ZmYtYnk6IE1pY2hlbCBUaGllcnJ5IDxtaWNoZWwudGhpZXJyeUBpbnRlbC5jb20+Cj4gU2lnbmVk
LW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+CgpBY2tl
ZC1ieTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgoK
Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyB8IDMgKystCj4gICAx
IGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3BlcmYuYwo+IGluZGV4IGU0MmI4NjgyN2Q2Yi4uMmM5ZjQ2ZTEyNjIyIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKPiBAQCAtMTI5OSw3ICsxMjk5LDggQEAgc3RhdGlj
IGludCBvYV9nZXRfcmVuZGVyX2N0eF9pZChzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFt
KQo+ICAgCQl9Cj4gICAJCWJyZWFrOwo+ICAgCj4gLQljYXNlIDExOiB7Cj4gKwljYXNlIDExOgo+
ICsJY2FzZSAxMjogewo+ICAgCQlzdHJlYW0tPnNwZWNpZmljX2N0eF9pZF9tYXNrID0KPiAgIAkJ
CSgoMVUgPDwgR0VOMTFfU1dfQ1RYX0lEX1dJRFRIKSAtIDEpIDw8IChHRU4xMV9TV19DVFhfSURf
U0hJRlQgLSAzMikgfAo+ICAgCQkJKCgxVSA8PCBHRU4xMV9FTkdJTkVfSU5TVEFOQ0VfV0lEVEgp
IC0gMSkgPDwgKEdFTjExX0VOR0lORV9JTlNUQU5DRV9TSElGVCAtIDMyKSB8CgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
