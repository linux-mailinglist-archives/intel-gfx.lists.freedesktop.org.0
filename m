Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5D1175CB
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 12:16:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B3AC8970B;
	Wed,  8 May 2019 10:16:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A33C8970B
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2019 10:16:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 May 2019 03:16:24 -0700
X-ExtLoop1: 1
Received: from jzapadkx-mobl1.ger.corp.intel.com (HELO [10.252.0.159])
 ([10.252.0.159])
 by fmsmga005.fm.intel.com with ESMTP; 08 May 2019 03:16:23 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190508080704.24223-1-chris@chris-wilson.co.uk>
 <20190508080704.24223-4-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <4e4cd07c-6c3f-ac81-75c9-054e57870665@linux.intel.com>
Date: Wed, 8 May 2019 11:16:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190508080704.24223-4-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 04/40] drm/i915: Check for no-op priority
 changes first
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

Ck9uIDA4LzA1LzIwMTkgMDk6MDYsIENocmlzIFdpbHNvbiB3cm90ZToKPiBJbiBhbGwgbGlrZWxp
aG9vZCwgdGhlIHByaW9yaXR5IGFuZCBub2RlIGFyZSBhbHJlYWR5IGluIHRoZSBDUFUgY2FjaGUK
PiBhbmQgYnkgY2hlY2tpbmcgdGhlbSBmaXJzdCwgd2UgY2FuIGF2b2lkIGhhdmluZyB0byBjaGFz
ZSB0aGUKPiAqcmVxdWVzdC0+aHdzcCBmb3IgdGhlIGN1cnJlbnQgYnJlYWRjcnVtYi4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBD
YzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiAtLS0KPiAgIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc2NoZWR1bGVyLmMgfCA0ICsrLS0KPiAgIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc2NoZWR1bGVyLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3NjaGVkdWxlci5jCj4gaW5kZXggZjMyZDBlZTZkNThjLi41NTgxYzUwMDRmZjAg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zY2hlZHVsZXIuYwo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc2NoZWR1bGVyLmMKPiBAQCAtMjAwLDEwICsy
MDAsMTAgQEAgc3RhdGljIHZvaWQgX19pOTE1X3NjaGVkdWxlKHN0cnVjdCBpOTE1X3NjaGVkX25v
ZGUgKm5vZGUsCj4gICAJbG9ja2RlcF9hc3NlcnRfaGVsZCgmc2NoZWR1bGVfbG9jayk7Cj4gICAJ
R0VNX0JVR19PTihwcmlvID09IEk5MTVfUFJJT1JJVFlfSU5WQUxJRCk7Cj4gICAKPiAtCWlmIChu
b2RlX3NpZ25hbGVkKG5vZGUpKQo+ICsJaWYgKHByaW8gPD0gUkVBRF9PTkNFKG5vZGUtPmF0dHIu
cHJpb3JpdHkpKQo+ICAgCQlyZXR1cm47Cj4gICAKPiAtCWlmIChwcmlvIDw9IFJFQURfT05DRShu
b2RlLT5hdHRyLnByaW9yaXR5KSkKPiArCWlmIChub2RlX3NpZ25hbGVkKG5vZGUpKQo+ICAgCQly
ZXR1cm47Cj4gICAKPiAgIAlzdGFjay5zaWduYWxlciA9IG5vZGU7Cj4gCgpSZXZpZXdlZC1ieTog
VHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJlZ2FyZHMsCgpUdnJ0
a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
