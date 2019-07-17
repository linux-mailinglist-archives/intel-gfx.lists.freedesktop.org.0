Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 782076BCC4
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 15:09:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6B636E14C;
	Wed, 17 Jul 2019 13:09:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9D966E14C
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 13:09:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 06:09:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,274,1559545200"; d="scan'208";a="158458802"
Received: from esulliva-mobl.ger.corp.intel.com (HELO [10.251.94.109])
 ([10.251.94.109])
 by orsmga007.jf.intel.com with ESMTP; 17 Jul 2019 06:09:01 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190716124931.5870-1-chris@chris-wilson.co.uk>
 <bb43c2b5-3513-ef4f-1bc9-887fc2b2e523@linux.intel.com>
 <156329142200.9436.8651620549785965913@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d76bdb93-b90b-afe3-841b-95a8de27902d@linux.intel.com>
Date: Wed, 17 Jul 2019 14:09:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <156329142200.9436.8651620549785965913@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/userptr: Beware recursive
 lock_page()
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
Cc: stable@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE2LzA3LzIwMTkgMTY6MzcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA3LTE2IDE2OjI1OjIyKQo+Pgo+PiBPbiAxNi8wNy8yMDE5IDEzOjQ5
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBGb2xsb3dpbmcgYSB0cnlfdG9fdW5tYXAoKSB3ZSBt
YXkgd2FudCB0byByZW1vdmUgdGhlIHVzZXJwdHIgYW5kIHNvIGNhbGwKPj4+IHB1dF9wYWdlcygp
LiBIb3dldmVyLCB0cnlfdG9fdW5tYXAoKSBhY3F1aXJlcyB0aGUgcGFnZSBsb2NrIGFuZCBzbyB3
ZQo+Pj4gbXVzdCBhdm9pZCByZWN1cnNpdmVseSBsb2NraW5nIHRoZSBwYWdlcyBvdXJzZWx2ZXMg
LS0gd2hpY2ggbWVhbnMgdGhhdAo+Pj4gd2UgY2Fubm90IHNhZmVseSBhY3F1aXJlIHRoZSBsb2Nr
IGFyb3VuZCBzZXRfcGFnZV9kaXJ0eSgpLiBTaW5jZSB3ZQo+Pj4gY2FuJ3QgYmUgc3VyZSBvZiB0
aGUgbG9jaywgd2UgaGF2ZSB0byByaXNrIHNraXAgZGlydHlpbmcgdGhlIHBhZ2UsIG9yCj4+PiBl
bHNlIHJpc2sgY2FsbGluZyBzZXRfcGFnZV9kaXJ0eSgpIHdpdGhvdXQgYSBsb2NrIGFuZCBzbyBy
aXNrIGZzCj4+PiBjb3JydXB0aW9uLgo+Pgo+PiBTbyBpZiB0cnlsb2NrIHJhbmRvbWx5IGZhaWwg
d2UgZ2V0IGRhdGEgY29ycnVwdGlvbiBpbiB3aGF0ZXZlciBkYXRhIHNldAo+PiBhcHBsaWNhdGlv
biBpcyB3b3JraW5nIG9uLCB3aGljaCBpcyB3aGF0IHRoZSBvcmlnaW5hbCBwYXRjaCB3YXMgdHJ5
aW5nCj4+IHRvIGF2b2lkPyBBcmUgd2UgYWJsZSB0byBkZXRlY3QgdGhlIGJhY2tpbmcgc3RvcmUg
dHlwZSBzbyBhdCBsZWFzdCB3ZQo+PiBkb24ndCByaXNrIHNraXBwaW5nIHNldF9wYWdlX2RpcnR5
IHdpdGggYW5vbnltb3VzL3NobWVtZnM/Cj4gCj4gcGFnZS0+bWFwcGluZz8/PwoKV291bGQgcGFn
ZS0+bWFwcGluZyB3b3JrPyBXaGF0IGlzIGl0IHRlbGxpbmcgdXM/Cgo+IFdlIHN0aWxsIGhhdmUg
dGhlIGlzc3VlIHRoYXQgaWYgdGhlcmUgaXMgYSBtYXBwaW5nIHdlIHNob3VsZCBiZSB0YWtpbmcK
PiB0aGUgbG9jaywgYW5kIHdlIG1heSBoYXZlIGJvdGggYSBtYXBwaW5nIGFuZCBiZSBpbnNpZGUg
dHJ5X3RvX3VubWFwKCkuCgpJcyB0aGlzIGEgcHJvYmxlbT8gT24gYSBwYXRoIHdpdGggbWFwcGlu
Z3Mgd2UgdHJ5bG9jayBhbmQgc28gc29sdmUgdGhlIApzZXRfZGlydHlfbG9ja2VkIGFuZCByZWN1
cnNpdmUgZGVhZGxvY2sgaXNzdWVzLCBhbmQgd2l0aCBubyBtYXBwaW5ncyAKd2l0aCBhbHdheXMg
ZGlydHkgdGhlIHBhZ2UgYW5kIGF2b2lkIGRhdGEgY29ycnVwdGlvbi4KCj4gSSB0aGluayBpdCdz
IGxvc2UtbG9zZS4gVGhlIG9ubHkgd2F5IHRvIHdpbiBpcyBub3QgdG8gdXNlcnB0ciA6KQoKSXQn
cyBsb29raW5nIG1vcmUgYW5kIG1vcmUgbGlrZSB0aGlzIGluZGVlZC4KClJlZ2FyZHMsCgpUdnJ0
a28KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
