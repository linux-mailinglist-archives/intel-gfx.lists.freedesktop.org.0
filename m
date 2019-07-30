Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AAE47AB97
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 16:58:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8432B6E46F;
	Tue, 30 Jul 2019 14:58:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F28076E46F
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 14:58:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 07:58:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,327,1559545200"; d="scan'208";a="162601877"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 30 Jul 2019 07:58:14 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190729234727.28286-1-daniele.ceraolospurio@intel.com>
 <20190729234727.28286-7-daniele.ceraolospurio@intel.com>
 <ba072476-2221-dd16-906e-aa30c5bb4015@linux.intel.com>
 <156447433162.6373.8767394540057374759@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <77d75217-c214-85dd-e0bb-bb2f07b203d6@intel.com>
Date: Tue, 30 Jul 2019 07:58:03 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156447433162.6373.8767394540057374759@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/gt: introduce intel_gt_suspend
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

CgpPbiA3LzMwLzE5IDE6MTIgQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA3LTMwIDA4OjMzOjI4KQo+Pgo+PiBPbiAzMC8wNy8yMDE5IDAwOjQ3
LCBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIHdyb3RlOgo+Pj4gRm9yIHN5bW1ldHJ5IHdpdGggaW50
ZWxfZ3RfcmVzdW1lIGFuZCB0byBoaWRlIG1vcmUgc3R1ZmYgZnJvbSB0aGUgdG9wCj4+PiBsZXZl
bCB1bmRlciBpbnRlbF9ndC4gTm90ZSB0aGF0IHRoZSBzd2l0Y2hfdG9fa2VybmVsX2NvbnRleHRf
c3luYyBoYXMKPj4+IG5vdCBiZWVuIG1vdmVkIGR1cmUgdG8gdGhlIGxvY2tpbmcgYW5kIG9yZGVy
aW5nIHJlcXVpcmVtZW50cyB0aGF0IGV4aXN0Cj4+Cj4+IFR5cG8gaW4gZHVlLgo+Pgo+PiBTaG91
bGQgd2UgYWRkIGludGVsX2d0X3N1c3BlbmRfZWFybHkvbGF0ZSwgd2l0aCB0aGUgZm9ybWVyIGRl
YWxpbmcgd2l0aAo+PiBzd2l0Y2hfdG9fa2VybmVsX2NvbnRleHRfc3luYz8gQWx0aG91Z2ggdGhh
dCByYWlzZXMgYW4gaW50ZXJlc3RpbmcKPj4gY29udW5kcnVtIHNpbmNlIGl0IG9wZXJhdGVzIG9u
IEdFTSBhbmQgR1QuIEJlc3QgdGhlbiB0byBsZWF2ZSBpdAo+PiB1bndyYXBwZWQgZm9yIG5vdyBJ
IHRoaW5rLgo+Pgo+PiBSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGlu
QGludGVsLmNvbT4KPiAKPiBBaCwgSSB3b3VsZG4ndCBhcHBseSB0aGlzIHBhdGNoIHlldCBmb3Ig
ZXhhY3RseSB0aGF0IHJlYXNvbjogd2UKPiBzaG91bGRuJ3QgYmUgZHJpdmluZyBHVCBzdXNwZW5k
IGZyb20gaW5zaWRlIEdFTSwgc28gd291bGQgd2FpdCB1bnRpbCB3ZQo+IGhhdmUgYSBmZXcgbW9y
ZSBwaWVjZXMgb2YgdGhlIHB1enpsZSByZXZpZXdlZF5XIHVucmF2ZWxsZWQuCj4gLUNocmlzCj4g
CgpPaywgSSdsbCBkcm9wIHRoZSBsYXN0IDIgcGF0Y2hlcyBpbiB0aGUgc2VyaWVzIGZvciBub3cu
CgpEYW5pZWxlCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
