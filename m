Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2068A6BD01
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 15:28:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B7E56E160;
	Wed, 17 Jul 2019 13:28:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C01186E160
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 13:28:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 06:28:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,274,1559545200"; d="scan'208";a="158463577"
Received: from esulliva-mobl.ger.corp.intel.com (HELO [10.251.94.109])
 ([10.251.94.109])
 by orsmga007.jf.intel.com with ESMTP; 17 Jul 2019 06:28:31 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190717074644.32724-1-chris@chris-wilson.co.uk>
 <5d0af90c-a448-8a67-c577-0dd61faf1ca4@linux.intel.com>
 <156336989630.4375.10279287150317637256@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <1bcbef89-5e9b-e35f-869d-369e2689a33a@linux.intel.com>
Date: Wed, 17 Jul 2019 14:28:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <156336989630.4375.10279287150317637256@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove obsolete engine clenaup
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

Ck9uIDE3LzA3LzIwMTkgMTQ6MjQsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA3LTE3IDE0OjE4OjU2KQo+Pgo+PiBPbiAxNy8wNy8yMDE5IDA4OjQ2
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBSZW1vdmUgdGhlIG91dGVyIGxheWVyIGNsZWFudXAg
b2YgZW5naW5lIHN0dWJzOyBpdCBubyBsb25nZXIgdHJpZXMgdG8KPj4KPj4gV2hvIGlzICJpdCI/
Cj4gCj4gaTkxNV9kcnYuYwo+IAo+Pj4gcHJlYWxsb2NhdGUgYW5kIHNvIGlzIG5vdCByZXNwb25z
aWJsZSBmb3IgZWl0aGVyIHRoZSBhbGxvY2F0aW9uIG9yIGZyZWUuCj4+PiBCeSB0aGUgdGltZSB3
ZSBjYWxsIHRoZSBjbGVhbnVwIGZ1bmN0aW9uLCB3ZSBhbHJlYWR5IGhhdmUgY2xlYW5lZCB1cCB0
aGUKPj4+IGVuZ2luZXMuCj4+Cj4+IEkgc2VlOgo+Pgo+PiBpOTE1X2RyaXZlcl9wcm9iZQo+PiB7
Cj4+IC4uLgo+PiAgICAgICAgICByZXQgPSBpOTE1X2RyaXZlcl9lYXJseV9wcm9iZShkZXZfcHJp
dik7Cj4+IC4uLgo+PiAgICAgICAgICBpOTE1X2RyaXZlcl9tbWlvX3Byb2JlIC0+IGludGVsX2Vu
Z2luZXNfaW5pdF9tbWlvIC0+IGFsbG9jYXRlcyBlbmdpbmVzCj4+IC4uLgo+PiAgICAgICAgICA8
bGF0ZXIgc3RlcCBmYWlscz4gLT4gd2hvIGZyZWVzIHRoZSBlbmdpbmVzPwo+IAo+IFRoZSBtaXJy
b3Igb2YgaTkxNV9kcml2ZXJfbW1pb19wcm9iZSwgd2hpY2ggd291bGQgYmUKPiBpOTE1X2RyaXZl
cl9tbWlvX3JlbGVhc2UsIHNob3VsZCBiZSByZXNwb25zaWJsZSBmb3IgY2xlYW5pbmcgdXAuCgpT
byBuZWVkcyB0byBzdGFydCBjYWxsaW5nIGludGVsX2VuZ2luZXNfY2xlYW51cCwgb3IgSSBhbSBz
dGlsbCBtaXNzaW5nIApzb21ldGhpbmc/CgpSZWdhcmRzLAoKVHZydGtvCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
