Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8288A1B704
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2019 15:28:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DEB889D30;
	Mon, 13 May 2019 13:28:20 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DDD689D30;
 Mon, 13 May 2019 13:28:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 May 2019 06:28:18 -0700
X-ExtLoop1: 1
Received: from ddillonx-mobl.ger.corp.intel.com (HELO [10.252.28.3])
 ([10.252.28.3])
 by orsmga008.jf.intel.com with ESMTP; 13 May 2019 06:28:17 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20190508121058.27038-1-tvrtko.ursulin@linux.intel.com>
 <20190508121058.27038-16-tvrtko.ursulin@linux.intel.com>
 <155749539589.10894.16682184549026451923@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <05426507-8e3c-3173-e496-fc98895ead5a@linux.intel.com>
Date: Mon, 13 May 2019 14:28:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155749539589.10894.16682184549026451923@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 15/21] gem_wsim: Engine bond
 command
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDEwLzA1LzIwMTkgMTQ6MzYsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTA4IDEzOjEwOjUyKQo+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBFbmdpbmUgYm9uZHMgYXJlIGFuIGk5MTUg
dUFQSSBhcHBsaWNhYmxlIHRvIGxvYWQgYmFsYW5jZWQgY29udGV4dHMgd2l0aAo+PiBlbmdpbmUg
bWFwLiBUaGV5IGFsbG93IGV4cHJlc3Npb24gcnVsZXMgb2YgZW5naW5lIHNlbGVjdGlvbiBiZXR3
ZWVuIHR3bwo+PiBjb250ZXh0cyB3aGVuIHN1Ym1pc3Npb25zIGFyZSBhbHNvIHRpZWQgd2l0aCBz
dWJtaXQgZmVuY2VzLgo+Pgo+PiBQbGVhc2UgcmVmZXIgdG8gdGhlIFJFQURNRSBmb3IgYSBtb3Jl
IGRldGFpbGVkIGRlc2NyaXB0aW9uLgo+IAo+IEkgd291bGQgcHJlZmVyIG5vdCB0byBoYXZlIGEg
aGV4YWRlY2ltYWwgbWFzayBpbiB0aGUgZmlsZSBmb3JtYXQ/IFRoYXQncwo+IGhhcmRlciB0aGFu
IHVzdWFsIHRvIHJlYWQgbGF0ZXIgb24uCj4gCj4gYm9uZCh7bWFzdGVyX2NsYXNzOm1hc3Rlcl9p
bnN0YW5jZX0sIHtlbmdpbmVfY2xhc3M6ZW5naW5lX2luc3RhbmNlfSksLi4uCj4gPwoKSSBhZ3Jl
ZSBoZXhhZGVjaW1hbCBtYXNrIGlzIGJhZC4gSSdsbCB0cnkgdG8gc2VlIHF1aWNrbHkgaWYgcGln
Z3lpbmcgCmJhY2sgdG8gc29tZSBleGlzdGluZyBsaXN0IG9mIGVuZ2luZXMgcHJvY2Vzc2luZyBj
b3VsZCBiZSBkb25lIGNoZWFwbHkgCihxdWlja2x5KS4gQW5kIHdpdGhvdXQgYWRkaW5nIG1vcmUg
aG9ycm9yIHRvIHRoZSBmaWxlIHBhcnNpbmcgbG9vcC4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
