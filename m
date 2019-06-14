Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D445945831
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 11:06:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0262A8938F;
	Fri, 14 Jun 2019 09:06:45 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA4718938F
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 09:06:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 02:06:43 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by orsmga003.jf.intel.com with ESMTP; 14 Jun 2019 02:06:42 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
 <20190613133539.12620-7-tvrtko.ursulin@linux.intel.com>
 <156043374038.16925.16516920630664771480@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6186c719-417f-53d0-c37c-640c0f341be5@linux.intel.com>
Date: Fri, 14 Jun 2019 10:06:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <156043374038.16925.16516920630664771480@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 06/28] drm/i915: Convert
 i915_gem_init_swizzling to intel_gt
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

Ck9uIDEzLzA2LzIwMTkgMTQ6NDksIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA2LTEzIDE0OjM1OjE3KQo+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBTdGFydCB1c2luZyB0aGUgbmV3bHkgaW50
cm9kdWNlZCBzdHJ1Y3QgaW50ZWxfZ3QgdG8gZnVzZSB0b2dldGhlciBjb3JyZWN0Cj4+IGxvZ2lj
YWwgaW5pdCBmbG93IHdpdGggdW5jb3JlIGZvciBtb3JlIHJlbW92YWwgb2YgaW1wbGljaXQgZGV2
X3ByaXYgaW4KPj4gbW1pbyBhY2Nlc3MuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1
bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gCj4gTG9va3MgZmluZSwgSSBtaWdodCBt
b3ZlIGl0IGFnYWluIGxhdGVyIG5leHQgdG8gdGhlIGZlbmNlIHJlZ2lzdGVycywgb3IKPiBhdCBs
ZWFzdCBwdWxsIHRoaXMgYW5kIHRoZSBkZXRlY3Rpb24gaW50byBpdHMgb3duIGludGVsX2d0X3N3
aXp6bGluZy5jCj4gCj4gSG1tLCBub3cgdGhhdCBJIHNhaWQgdGhhdCwgZG9lcyB0aGF0IHNlZW0g
bGlrZSBhIHJlYXNvbmFibGUgdGhpbmcgdG8gZG8KPiByaWdodCBhd2F5LCBzZWUgaTkxNV9nZW1f
ZmVuY2VfcmVncy5jIGZvciB0aGUgc3dpenpsZSBwcm9iZT8KCklzIHN3aXp6bGluZyBnbG9iYWwg
Zm9yIHRoZSBtZW1vcnkgY29udHJvbGxlciBvciBhcHBsaWNhYmxlIG9ubHkgZm9yIApmZW5jZWQg
cmVnaW9ucz8KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
