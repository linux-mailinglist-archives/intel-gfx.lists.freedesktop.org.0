Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A6B5E2CA
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 13:26:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 370786E11A;
	Wed,  3 Jul 2019 11:26:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 705216E11A
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 11:26:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 04:26:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,446,1557212400"; d="scan'208";a="184726392"
Received: from dglazik-mobl2.ger.corp.intel.com (HELO [10.251.94.160])
 ([10.251.94.160])
 by fmsmga001.fm.intel.com with ESMTP; 03 Jul 2019 04:26:36 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190703091726.11690-1-chris@chris-wilson.co.uk>
 <20190703091726.11690-5-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <60ca80ce-5187-4666-42c0-1d5838da166e@linux.intel.com>
Date: Wed, 3 Jul 2019 12:26:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190703091726.11690-5-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 05/15] drm/i915/gt: Ignore forcewake
 acquisition for posting_reads
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

Ck9uIDAzLzA3LzIwMTkgMTA6MTcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBXZSBkb24ndCBjYXJl
IGFib3V0IHRoZSByZXN1bHQgb2YgdGhlIHJlYWQsIHNvIGl0IG1heSBiZSBnYXJiYWdlLCB3ZQo+
IG9ubHkgY2FyZSB0aGF0IHRoZSBtbWlvIGlzIGZsdXNoZWQuIEFzIHN1Y2gsIHdlIGNhbiBmb3Jn
byB1c2luZyBhbgo+IGluZGl2aWR1YWwgZm9yY2V3YWtlIGFuZCBsb2NrIGFyb3VuZCBhbnkgcG9z
dGluZy1yZWFkIGZvciBhbiBlbmdpbmUuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9lbmdpbmUuaCB8IDIgKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9lbmdpbmUuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2lu
ZS5oCj4gaW5kZXggNTU3YjA4YjEzZmViLi4wMzMxZTlhYzI0ODUgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lLmgKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9lbmdpbmUuaAo+IEBAIC01MSw3ICs1MSw3IEBAIHN0cnVjdCBkcm1f
cHJpbnRlcjsKPiAgICNkZWZpbmUgRU5HSU5FX1JFQUQxNiguLi4pCV9fRU5HSU5FX1JFQURfT1Ao
cmVhZDE2LCBfX1ZBX0FSR1NfXykKPiAgICNkZWZpbmUgRU5HSU5FX1JFQUQoLi4uKQlfX0VOR0lO
RV9SRUFEX09QKHJlYWQsIF9fVkFfQVJHU19fKQo+ICAgI2RlZmluZSBFTkdJTkVfUkVBRF9GVygu
Li4pCV9fRU5HSU5FX1JFQURfT1AocmVhZF9mdywgX19WQV9BUkdTX18pCj4gLSNkZWZpbmUgRU5H
SU5FX1BPU1RJTkdfUkVBRCguLi4pIF9fRU5HSU5FX1JFQURfT1AocG9zdGluZ19yZWFkLCBfX1ZB
X0FSR1NfXykKPiArI2RlZmluZSBFTkdJTkVfUE9TVElOR19SRUFEKC4uLikgX19FTkdJTkVfUkVB
RF9PUChwb3N0aW5nX3JlYWRfZncsIF9fVkFfQVJHU19fKQo+ICAgI2RlZmluZSBFTkdJTkVfUE9T
VElOR19SRUFEMTYoLi4uKSBfX0VOR0lORV9SRUFEX09QKHBvc3RpbmdfcmVhZDE2LCBfX1ZBX0FS
R1NfXykKPiAgIAo+ICAgI2RlZmluZSBFTkdJTkVfUkVBRDY0KGVuZ2luZV9fLCBsb3dlcl9yZWdf
XywgdXBwZXJfcmVnX18pIFwKPiAKClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtv
LnVyc3VsaW5AaW50ZWwuY29tPgoKQ2FuIHdlIGFwcGx5IHRoaXMgdG8gYWxsIHBvc3RpbmcgcmVh
ZHM/IChpbnRlbF91bmNvcmVfcG9zdGluZ19yZWFkKikKClJlZ2FyZHMsCgpUdnJ0a28KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
