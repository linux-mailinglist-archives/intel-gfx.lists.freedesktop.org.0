Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2738D926E
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 15:29:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F67E6E113;
	Wed, 16 Oct 2019 13:29:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD7C26E113
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 13:29:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 06:29:05 -0700
X-IronPort-AV: E=Sophos;i="5.67,303,1566889200"; d="scan'208";a="186149438"
Received: from dwiesing-mobl.ger.corp.intel.com (HELO [10.252.31.172])
 ([10.252.31.172])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 16 Oct 2019 06:29:04 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191016113240.6468-1-chris@chris-wilson.co.uk>
 <20191016120249.22714-1-chris@chris-wilson.co.uk>
 <0d271f51-ff02-d097-d91d-9376f26df95f@linux.intel.com>
 <157123199641.22469.15910835850680886941@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <12b6643f-75ab-eb5d-dc26-327c06a0b3b9@linux.intel.com>
Date: Wed, 16 Oct 2019 14:29:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <157123199641.22469.15910835850680886941@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/selftests: Teach execlists to
 take intel_gt as its argument
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

Ck9uIDE2LzEwLzIwMTkgMTQ6MTksIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTEwLTE2IDEzOjUwOjIyKQo+Pgo+PiBPbiAxNi8xMC8yMDE5IDEzOjAy
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+IE5vdCBzdXJlIGlmIG15IG1hcmtlcnMgYXJlIGF0IGFs
bCB1c2VmdWwsIGJ1dCBzYW1lIGNvbmRpdGlvbiBhcyBwcmV2aW91cwo+PiBwYXRjaGVzOgo+IAo+
IEkgaGF2ZSBiZWVuIGxlYXZpbmcgZ3QtPmk5MTUgYXMgbWFya2VycyBmb3Igd2hhdCBBUElzIG5l
ZWQgdG8gYmUKPiBjbGVhbmVkIHVwLiBmb3JfZWFjaF9lbmdpbmUoKSBpcyBvbmUgd2hlcmUgSSB0
aG91Z2h0IGEgc3dlZXAgdGhyb3VnaAo+IGNoYW5naW5nIGFsbCBpbiBvbmUgZ28gd291bGQgYmUg
YSByZWFsbHkgbmljZSBncmFuZCBmaW5hbGUsIHRha2luZyBhCj4gY291cGxlIG9mIHBhc3NlcyB0
aHJvdWdoIHRoZSByZW1haW5pbmcgZm9yX2VhY2hfZW5naW5lKGk5MTUpIHRvIHdvcmsgb3V0Cj4g
aWYgaXQgd2FzIG1lYW50IHRvIGJlIGd0LWNlbnRyaWMsIHVhYmksIG9yIGNvbnRleHQuCgpJdCBj
YW4gYmUgZG9uZSBsaWtlIHRoYXQgc3VyZSwgSSdsbCB0aGVuIGhvbGQgb2ZmIHdpdGggbXkgMy8z
IHBhdGNoIGFuZCAKdXBkYXRlIGl0IGFmdGVyIHlvdSBwdXQgdGhlc2Ugb25lcyBpbi4gQ2FuIGhh
dmUgdGhvc2Ugci1iJ3MgaW4gb3RoZXIgCndvcmRzIGFzIGlzLgoKUmVnYXJkcywKClR2cnRrbwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
