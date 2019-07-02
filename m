Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DB85CEAC
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 13:45:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DDEF89A98;
	Tue,  2 Jul 2019 11:45:31 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4114C89A98
 for <Intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 11:45:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jul 2019 04:45:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,443,1557212400"; d="scan'208";a="184493278"
Received: from dglazik-mobl2.ger.corp.intel.com (HELO [10.251.94.160])
 ([10.251.94.160])
 by fmsmga001.fm.intel.com with ESMTP; 02 Jul 2019 04:45:28 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20190702102313.9333-1-tvrtko.ursulin@linux.intel.com>
 <20190702102313.9333-2-tvrtko.ursulin@linux.intel.com>
 <156206365237.2466.8976003981692121208@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b9165546-24fb-ee6e-32dd-d0ea70b86968@linux.intel.com>
Date: Tue, 2 Jul 2019 12:45:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <156206365237.2466.8976003981692121208@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Rework some interrupt
 handling functions to take intel_gt
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
Cc: Paulo Zanoni <paulo.r.zanoni@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDAyLzA3LzIwMTkgMTE6MzQsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA3LTAyIDExOjIzOjExKQo+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBTb21lIGludGVycnVwdCBoYW5kbGluZyBm
dW5jdGlvbnMgYWxyZWFkeSBoYXZlIGd0IGluIHRoZWlyIG5hbWVzCj4+IHN1Z2dlc3RpbmcgdGhl
bSBhcyBvYnZpb3VzIGNhbmRpZGF0ZXMgdG8gbWFrZSB0aGVtIHRha2Ugc3RydWN0IGludGVsX2d0
Cj4+IGluc3RlYWQgb2YgaTkxNS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogUGF1bG8gWmFub25pIDxw
YXVsby5yLnphbm9uaUBpbnRlbC5jb20+Cj4+IENvLWF1dGhvcmVkLWJ5OiBQYXVsbyBaYW5vbmkg
PHBhdWxvLnIuemFub25pQGludGVsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3Vs
aW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPj4gQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVy
aW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gCj4+ICAgc3RhdGljIHZvaWQK
Pj4gLWdlbjExX290aGVyX2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICogY29u
c3QgaTkxNSwKPj4gLSAgICAgICAgICAgICAgICAgICAgICAgY29uc3QgdTggaW5zdGFuY2UsIGNv
bnN0IHUxNiBpaXIpCj4+ICtnZW4xMV9vdGhlcl9pcnFfaGFuZGxlcihzdHJ1Y3QgaW50ZWxfZ3Qg
Kmd0LCBjb25zdCB1OCBpbnN0YW5jZSwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgY29uc3Qg
dTE2IGlpcikKPj4gICB7Cj4+ICsgICAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUg
PSBndC0+aTkxNTsKPj4gKwo+PiAgICAgICAgICBpZiAoaW5zdGFuY2UgPT0gT1RIRVJfR1VDX0lO
U1RBTkNFKQo+PiAgICAgICAgICAgICAgICAgIHJldHVybiBnZW4xMV9ndWNfaXJxX2hhbmRsZXIo
aTkxNSwgaWlyKTsKPiAKPiBUaGF0IGxvb2tzIGxpa2UgYSBjYW5kaWRhdGUgZm9yIGd0IGFzIHdl
bGwuIEV2ZW4gZm9yIHRoZSBndWMsIHRoZQo+IGludGVycnVwdCB2ZWN0b3IgaXMgR1QgY2VudHJp
Yy4gSSB3YXMgaG9waW5nIHdlIGNvdWxkIHBsYWNlIGd1Yy8gcGFyYWxsZWwKPiB0byBndC8sIGJ1
dCBpdCBsb29rcyBsaWtlIGl0IHdpbGwgaW5kZWVkIGJlIGEgY2hpbGQgb2YgaW50ZWxfZ3QuCgpZ
ZWFoLiBEYW5pZWxlIHdpbGwgZGVhbCB3aXRoIHRoZSBHdUMgY29kZSBwYXRocy4KCj4gUmV2aWV3
ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKVGhhbmtzLiBJ
J2xsIGFsc28gbGV0IERhbmllbGUgY29tbWVudCBvbiB3aGV0aGVyIHRoaXMgcmVmYWN0b3Jpbmcg
Zml0cyAKd2l0aCBoaXMgd29yayBiZWZvcmUgbWVyZ2luZyBpdC4KClJlZ2FyZHMsCgpUdnJ0a28K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
