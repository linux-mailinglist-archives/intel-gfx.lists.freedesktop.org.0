Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF8E9798D
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2019 14:36:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D1DF6E323;
	Wed, 21 Aug 2019 12:36:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 207156E323
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Aug 2019 12:36:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Aug 2019 05:36:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,412,1559545200"; d="scan'208";a="183521486"
Received: from mbosco-mobl2.ger.corp.intel.com (HELO [10.252.39.41])
 ([10.252.39.41])
 by orsmga006.jf.intel.com with ESMTP; 21 Aug 2019 05:36:15 -0700
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
 <20190817093902.2171-34-lucas.demarchi@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <5c29e67d-ad78-d8b7-4042-1b165471590e@intel.com>
Date: Wed, 21 Aug 2019 14:36:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190817093902.2171-34-lucas.demarchi@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 33/40] drm/i915/tgl/perf: use the same oa
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

T24gMTcvMDgvMjAxOSAxMTozOCwgTHVjYXMgRGUgTWFyY2hpIHdyb3RlOgo+IEZyb206IE1pY2hl
bCBUaGllcnJ5IDxtaWNoZWwudGhpZXJyeUBpbnRlbC5jb20+Cj4KPiBDb21wYXJlZCB0byBJY2Vs
YWtlLCBUaWdlcmxha2UncyBNQVhfQ09OVEVYVF9IV19JRCBpcyBzbWFsbGVyIGJ5IG9uZSwgYnV0
Cj4gc2luY2Ugd2UganVzdCB1c2UgdGhlIHVwcGVyIDMyIGJpdHMgb2YgdGhlIGxyY19kZXNjLCBp
dCdzIGd1YXJhbnRlZWQgT0EKPiB3aWxsIHVzZSB0aGUgY29ycmVjdCBvbmUuCj4KPiBDYzogTGlv
bmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgo+IFNpZ25lZC1v
ZmYtYnk6IE1pY2hlbCBUaGllcnJ5IDxtaWNoZWwudGhpZXJyeUBpbnRlbC5jb20+Cj4gU2lnbmVk
LW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Cj4gLS0t
Cj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyB8IDMgKystCj4gICAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BlcmYuYwo+IGluZGV4IGU0MmI4NjgyN2Q2Yi4uMmM5ZjQ2ZTEyNjIyIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wZXJmLmMKPiBAQCAtMTI5OSw3ICsxMjk5LDggQEAgc3RhdGljIGludCBv
YV9nZXRfcmVuZGVyX2N0eF9pZChzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQo+ICAg
CQl9Cj4gICAJCWJyZWFrOwo+ICAgCj4gLQljYXNlIDExOiB7Cj4gKwljYXNlIDExOgo+ICsJY2Fz
ZSAxMjogewo+ICAgCQlzdHJlYW0tPnNwZWNpZmljX2N0eF9pZF9tYXNrID0KPiAgIAkJCSgoMVUg
PDwgR0VOMTFfU1dfQ1RYX0lEX1dJRFRIKSAtIDEpIDw8IChHRU4xMV9TV19DVFhfSURfU0hJRlQg
LSAzMikgfAo+ICAgCQkJKCgxVSA8PCBHRU4xMV9FTkdJTkVfSU5TVEFOQ0VfV0lEVEgpIC0gMSkg
PDwgKEdFTjExX0VOR0lORV9JTlNUQU5DRV9TSElGVCAtIDMyKSB8CgoKVGhpcyBsb29rcyBjb3Jy
ZWN0LCBJIGp1c3QgaGF2ZSBvbmUgcXVlc3Rpb24gSSBkb24ndCByZW1lbWJlciB0aGUgYW5zd2Vy
IAp0byA6CgpXaXRoIEd1QyBvbiBHZW4xMSsgd2UgZ2V0IHRoZSBzYW1lIHZhbHVlIGFzIHdoZW4g
aTkxNSBidWlsZHMgdXAgdGhlIAp1cHBlciAzMmJpdHMgb2YgdGhlIExSQyBkZXNjcmlwdG9yIHVz
aW5nIHRoZSBod19pZD8KCgpUaGFua3MsCgoKLUxpb25lbAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
