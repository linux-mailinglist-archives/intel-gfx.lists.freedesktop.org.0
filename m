Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 114FAD1089
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 15:48:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E81CD6E9A6;
	Wed,  9 Oct 2019 13:48:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ADB16E9A6
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 13:48:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 06:48:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,276,1566889200"; d="scan'208";a="187628274"
Received: from sviswa2-mobl.ger.corp.intel.com (HELO [10.252.54.89])
 ([10.252.54.89])
 by orsmga008.jf.intel.com with ESMTP; 09 Oct 2019 06:48:42 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191009064224.25348-1-chris@chris-wilson.co.uk>
 <f81948d2-c2f1-3ed7-6949-cf6376c31ad9@intel.com>
 <157062513722.18808.4229271875352720814@skylake-alporthouse-com>
 <b1e31605-cdbc-ac57-9112-5aaf2995accd@intel.com>
 <157062842201.18808.5895278051708134552@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <7faf81f6-33a5-bad1-6f6c-a6c7252536b5@intel.com>
Date: Wed, 9 Oct 2019 16:48:42 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157062842201.18808.5895278051708134552@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 1/9] drm/i915/perf: store the associated
 engine of a stream
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

T24gMDkvMTAvMjAxOSAxNjo0MCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMTAtMDkgMTQ6MzQ6NDkpCj4+IE9uIDA5LzEwLzIwMTkgMTU6NDUs
IENocmlzIFdpbHNvbiB3cm90ZToKPj4+IFF1b3RpbmcgTGlvbmVsIExhbmR3ZXJsaW4gKDIwMTkt
MTAtMDkgMTM6NDM6MzIpCj4+Pj4gRG8geW91IGhhdmUgYnJhbmNoIHNvbWV3aGVyZSB3aXRoIHRo
aXMgc2VyaWVzPwo+Pj4gaHR0cHM6Ly9jZ2l0LmZyZWVkZXNrdG9wLm9yZy9+aWNrbGUvbGludXgt
Mi42L2xvZy8/aD13aXAtcGVyZgo+Pj4gLUNocmlzCj4+Pgo+PiBDaGVlcnMsCj4+Cj4+Cj4+IEkn
dmUgbW9kaWZpZWQgdGhlIHRvcCBwYXRjaCB0byBzZXQgdGhlIG5vcHJlZW1wdCBmbGFnIGZvciBh
cyBsb25nIGFzIHRoZQo+PiBjb250ZXh0IGhhcyBiZWVuIGZsYWdnZWQgKGFzIGxvbmcgYXQgdGhl
IHBlcmYgc3RyZWFtIGlzIG9wZW5lZCkgOgo+PiBodHRwczovL2dpdGh1Yi5jb20vZGpkZWF0aC9s
aW51eC9jb21taXQvZDMzMjdiMzBjNjE0MWZhYzk4YTNkNDZmMzM5OGM4N2ZlNzA5NzZhYQo+IFRo
YXQgbWVhbnMgeW91IGFyZSBub3QgcGFzc2luZyBpbiB0aGUgZXh0X3BlcmZfY29uZmlnIHRvIGV2
ZXJ5IGJhdGNoIHRoYXQKPiBpcyB1c2luZyBpdCwgcmlnaHQ/IFRoZSBvYV9jb25maWcgdHJhY2tp
bmcgYWxzbyBoaW5nZXMgb24gdGhhdCB5b3UgZG8uCj4gLUNocmlzCj4KTGlrZSBJIG1lbnRpb25l
ZCwgdGhlcmUgYXJlIGVtcHR5IGJhdGNoIHRvIGRyYWluIHRoZSBjb250ZXh0IHRoYXQgd2UgCmVt
aXQgd2l0aG91dCBPQSByZWNvbmZpZ3VyYXRpb24uCgpUaGVyZSBjb3VsZCBhbHNvIGJlIGEgc2Vx
dWVuY2Ugc3VjaCBhcyA6CgogwqDCoMKgIC0gYmF0Y2gwIChpbmNsdWRlcyBwZXJmIHF1ZXJ5IGNv
bmZpZz00MikKCiDCoMKgwqAgLSBiYXRjaDEgKG5vIHBlcmYgcXVlcnksIGluY2x1ZGVzIHRpbWVz
dGFtcCBvciBwaXBlbGluZSBxdWVyeSkKCiDCoMKgwqAgLSBiYXRjaDIgKGluY2x1ZGVzIHBlcmYg
cXVlcnkgY29uZmlnPTQyKQoKIMKgwqDCoCAtIGJhdGNoMyAoaW5jbHVkZXMgcGVyZiBxdWVyeSBj
b25maWc9NDMpCgoKSXQgc291bmRzIHJlYXNvbmFibGUgdG8gZW5zdXJlIHRoYXQgYWxsIHRoZSBy
ZXF1ZXN0cyBhcmUgZmxhZ2dlZCB3aXRoIApub3ByZWVtcHQgdG8gZW5zdXJlIHdlIGRvbid0IHBy
ZWVtcHQgb25lIGJlY2F1c2Ugd2UgZG9uJ3QgaGF2ZSAKdmlzaWJpbGl0eSBvbiB3aGF0J3MgY29t
cGxldGVkIHdoZW4gcmVsb2FkaW5nIHRoZSBleGVjbGlzdHMgcG9ydHMuCgpUaGlzIGVudGlyZSBz
ZXF1ZW5jZSBhYm92ZSB3b3VsZCBiZSBzdXJyb3VuZGVkIGJ5IG9wZW4vY2xvc2Ugb2YgdGhlIHBl
cmYgCnN0cmVhbS4gT25jZSBjbG9zZSgpIHJldHVybnMsIHRoZW4gYW55IG5ldyByZXF1ZXN0IHdv
bid0IGJlIGZsYWdnZWQgd2l0aCAKbm9wcmVlbXB0IGJ1dCBpdCdzIHRoZSBhcHBsaWNhdGlvbidz
IHJlc3BvbnNhYmlsaXR5IHRvIGhhdmUgY29sbGVjdGVkIAphbGwgdGhlIHF1ZXJpZXMnIHJlc3Vs
dHMgYmVmb3JlIGNsb3NpbmcgdGhlIHN0cmVhbS4KCgotTGlvbmVsCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
