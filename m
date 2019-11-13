Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB92FAF08
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 11:55:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEB356ECCF;
	Wed, 13 Nov 2019 10:55:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A93546ECCF
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Nov 2019 10:55:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 02:55:01 -0800
X-IronPort-AV: E=Sophos;i="5.68,300,1569308400"; d="scan'208";a="198407374"
Received: from mpotanix-mobl2.ccr.corp.intel.com (HELO [10.252.20.183])
 ([10.252.20.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 13 Nov 2019 02:55:00 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191108142250.22709-1-chris@chris-wilson.co.uk>
 <20191108142250.22709-3-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <cacb823f-fc7e-0b8f-0227-3e9dedd5e676@linux.intel.com>
Date: Wed, 13 Nov 2019 10:54:58 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191108142250.22709-3-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t 3/3] i915/gem_exec_fence: Avoid long
 preempt-off sleeps
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

Ck9uIDA4LzExLzIwMTkgMTQ6MjIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBUaGUga2VybmVsIGlz
IG5vdyBlbmZvcmNpbmcgdGhhdCBjbGllbnRzIGFyZSBub3QgYWxsb3dlZCB0byBibG9jayBoaWdo
ZXIKPiBwcmlvcml0eSBjb250ZXh0cyBmcm9tIGFjY2Vzc2luZyB0aGUgR1BVOyBvbmUgaXMgbm8g
bG9uZ2VyIGFsbG93ZWQgdG8KPiBzbGVlcCBmb3IgYSBzZWNvbmQgaG9nZ2luZyB0aGUgR1BVLiBS
ZWR1Y2UgdGhlIHNsZWVwIGRvd24gdG8gNTBtcywgc2hvcnQKPiBlbm91Z2ggbm90IHRvIGFuZ2Vy
IHRoZSBwcmVlbXB0LW9mZiBjaGVja3Mgd2hpbGUgbG9uZyBlbm91Z2ggZm9yIGFueQo+IG9yZGlu
YXJ5IEdQVSB3b3JrIHRvIGNvbXBsZXRlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC0tLQo+ICAgdGVzdHMvaTkxNS9nZW1fZXhl
Y19mZW5jZS5jIHwgMyArKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9nZW1fZXhlY19mZW5jZS5j
IGIvdGVzdHMvaTkxNS9nZW1fZXhlY19mZW5jZS5jCj4gaW5kZXggNGU4YmRkN2IzLi4wMDIxMjBi
ZjMgMTAwNjQ0Cj4gLS0tIGEvdGVzdHMvaTkxNS9nZW1fZXhlY19mZW5jZS5jCj4gKysrIGIvdGVz
dHMvaTkxNS9nZW1fZXhlY19mZW5jZS5jCj4gQEAgLTM0OCw3ICszNDgsOCBAQCBzdGF0aWMgdm9p
ZCB0ZXN0X2ZlbmNlX2F3YWl0KGludCBmZCwgdW5zaWduZWQgcmluZywgdW5zaWduZWQgZmxhZ3Mp
Cj4gICAJCWkrKzsKPiAgIAl9Cj4gICAKPiAtCXNsZWVwKDEpOwo+ICsJLyogTG9uZywgYnV0IG5v
dCB0b28gbG9uZyB0byBhbmdlciBwcmVlbXB0aW9uIGRpc2FibGUgY2hlY2tzICovCj4gKwl1c2xl
ZXAoNTAgKiAxMDAwKTsgLyogNTAgbXMsIHR5cGljYWwgcHJlZW1wdCByZXNldCBpcyAxNTArbXMg
Ki8KCldhcyB0aGUgcG9pbnQgb2YgdGhpcyBzbGVlcCB0d28tZm9sZDogMSkgYWxsb3cgc3Bpbm5l
ciB0byBzdGFydCAodXNlIApwb2xsaW5nIHNwaW5uZXI/KSBhbmQgYWxsb3cgZm9ya2VkIGNoaWxk
cmVuIHRvIHN1Ym1pdCAodXNlIHBpcGUgc3luYz8pPwoKQnV0IG9rYXkgYXMgYSBxdWljayBmaXgu
CgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4K
ClJlZ2FyZHMsCgpUdnJ0a28KCj4gICAKPiAgIAkvKiBDaGVjayBmb3IgaW52YWxpZGx5IGNvbXBs
ZXRpbmcgdGhlIHRhc2sgZWFybHkgKi8KPiAgIAlpZ3RfYXNzZXJ0KGZlbmNlX2J1c3koc3Bpbi0+
b3V0X2ZlbmNlKSk7Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
