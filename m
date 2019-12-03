Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA2211015E
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 16:38:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 738526E832;
	Tue,  3 Dec 2019 15:38:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C948D6E832
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 15:38:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Dec 2019 07:38:23 -0800
X-IronPort-AV: E=Sophos;i="5.69,273,1571727600"; d="scan'208";a="205011862"
Received: from shaywa1-mobl.ger.corp.intel.com (HELO [10.252.9.203])
 ([10.252.9.203])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 03 Dec 2019 07:38:22 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191203115339.2943374-1-chris@chris-wilson.co.uk>
 <20191203115339.2943374-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d983beaf-dce5-12d2-6e84-8e1b88ab0110@linux.intel.com>
Date: Tue, 3 Dec 2019 15:38:20 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191203115339.2943374-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/execlists: Skip nested
 spinlock for validating pending
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

Ck9uIDAzLzEyLzIwMTkgMTE6NTMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBPbmx5IGFsb25nIHRo
ZSBzdWJtaXNzaW9uIHBhdGggY2FuIHdlIGd1YXJhbnRlZSB0aGF0IHRoZSBsb2NrZWQgcmVxdWVz
dAo+IGlzIGluZGVlZCBmcm9tIGEgZm9yZWlnbiBlbmdpbmUsIGFuZCBzbyB0aGUgbmVzdGluZyBv
ZiBlbmdpbmUvcnEgaXMKPiBwZXJtaXNzaWJsZS4gT24gdGhlIHN1Ym1pc3Npb24gdGFza2xldCAo
cHJvY2Vzc19jc2IoKSksIHdlIG1heSBmaW5kCj4gb3Vyc2VsdmVzIGNvbXBldGluZyB3aXRoIHRo
ZSBub3JtYWwgbmVzdGluZyBvZiBycS9lbmdpbmUsIGludmFsaWRhdGluZwo+IG91ciBuZXN0aW5n
LiBBcyB3ZSBvbmx5IHVzZSB0aGUgc3BpbmxvY2sgZm9yIGRlYnVnIHB1cnBvc2VzLCBza2lwIHRo
ZQo+IGRlYnVnIGlmIHdlIGNhbm5vdCBhY3F1aXJlIHRoZSBzcGlubG9jayBmb3Igc2FmZSB2YWxp
ZGF0aW9uIC0gY2F0Y2hpbmcKPiA5OSUgb2YgdGhlIGJ1Z3MgaXMgYmV0dGVyIHRoYW4gY2F1c2lu
ZyBhIGhhcmQgbG9ja3VwLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmMgfCA3ICsrKy0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyks
IDQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBpbmRl
eCAzN2FiOTc0MmFiZTcuLmI0MTFlNGNlNjc3MSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2xyYy5jCj4gQEAgLTEzMDAsNyArMTMwMCw2IEBAIGFzc2VydF9wZW5kaW5nX3ZhbGlkKGNv
bnN0IHN0cnVjdCBpbnRlbF9lbmdpbmVfZXhlY2xpc3RzICpleGVjbGlzdHMsCj4gICAJfQo+ICAg
Cj4gICAJZm9yIChwb3J0ID0gZXhlY2xpc3RzLT5wZW5kaW5nOyAocnEgPSAqcG9ydCk7IHBvcnQr
Kykgewo+IC0JCXVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4gICAJCWJvb2wgb2sgPSB0cnVlOwo+ICAg
Cj4gICAJCUdFTV9CVUdfT04oIWtyZWZfcmVhZCgmcnEtPmZlbmNlLnJlZmNvdW50KSk7Cj4gQEAg
LTEzMTUsOCArMTMxNCw4IEBAIGFzc2VydF9wZW5kaW5nX3ZhbGlkKGNvbnN0IHN0cnVjdCBpbnRl
bF9lbmdpbmVfZXhlY2xpc3RzICpleGVjbGlzdHMsCj4gICAJCWNlID0gcnEtPmh3X2NvbnRleHQ7
Cj4gICAKPiAgIAkJLyogSG9sZCB0aWdodGx5IG9udG8gdGhlIGxvY2sgdG8gcHJldmVudCBjb25j
dXJyZW50IHJldGlyZXMhICovCj4gLQkJc3Bpbl9sb2NrX2lycXNhdmVfbmVzdGVkKCZycS0+bG9j
aywgZmxhZ3MsCj4gLQkJCQkJIFNJTkdMRV9ERVBUSF9ORVNUSU5HKTsKPiArCQlpZiAoIXNwaW5f
dHJ5bG9jaygmcnEtPmxvY2spKQo+ICsJCQljb250aW51ZTsKPiAgIAo+ICAgCQlpZiAoaTkxNV9y
ZXF1ZXN0X2NvbXBsZXRlZChycSkpCj4gICAJCQlnb3RvIHVubG9jazsKPiBAQCAtMTM0Nyw3ICsx
MzQ2LDcgQEAgYXNzZXJ0X3BlbmRpbmdfdmFsaWQoY29uc3Qgc3RydWN0IGludGVsX2VuZ2luZV9l
eGVjbGlzdHMgKmV4ZWNsaXN0cywKPiAgIAkJfQo+ICAgCj4gICB1bmxvY2s6Cj4gLQkJc3Bpbl91
bmxvY2tfaXJxcmVzdG9yZSgmcnEtPmxvY2ssIGZsYWdzKTsKPiArCQlzcGluX3VubG9jaygmcnEt
PmxvY2spOwo+ICAgCQlpZiAoIW9rKQo+ICAgCQkJcmV0dXJuIGZhbHNlOwo+ICAgCX0KPiAKCldp
dGggRml4ZXM6IGFuZCBpcnFzYXZlIHZhcmlhbnQ6CgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3Vs
aW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
