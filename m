Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 405F210B251
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 16:21:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94DEC8926C;
	Wed, 27 Nov 2019 15:21:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F3FA8926C
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 15:21:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 07:21:33 -0800
X-IronPort-AV: E=Sophos;i="5.69,249,1571727600"; d="scan'208";a="203105390"
Received: from kjbrenna-mobl1.ger.corp.intel.com (HELO [10.251.83.147])
 ([10.251.83.147])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 27 Nov 2019 07:21:32 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191127111742.3271036-1-chris@chris-wilson.co.uk>
 <b834e9b3-9654-12bd-09ef-cf7d13101a0f@linux.intel.com>
 <157486345282.18552.10939932504954999490@skylake-alporthouse-com>
 <7f917e43-d17d-5efc-0d8e-5d1221fbbb7e@linux.intel.com>
 <157486546437.18552.16720736370971433834@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <1a5555d7-77d5-3e5b-6008-44c285a7ec52@linux.intel.com>
Date: Wed, 27 Nov 2019 15:21:30 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157486546437.18552.16720736370971433834@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Copy across scheduler behaviour
 flags across submit fences
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

Ck9uIDI3LzExLzIwMTkgMTQ6MzcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTExLTI3IDE0OjIyOjM3KQo+Pgo+PiBPbiAyNy8xMS8yMDE5IDE0OjA0
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTEx
LTI3IDEzOjQ2OjE0KQo+Pj4+IE9uIDI3LzExLzIwMTkgMTE6MTcsIENocmlzIFdpbHNvbiB3cm90
ZToKPj4+Pj4gV2Ugd2FudCB0aGUgYm9uZGVkIHJlcXVlc3QgdG8gaGF2ZSB0aGUgc2FtZSBzY2hl
ZHVsZXIgcHJvcGVydGllcyBhcyBpdHMKPj4+Pj4gbWFzdGVyIHNvIHRoYXQgaXQgaXMgcGxhY2Vk
IGF0IHRoZSBzYW1lIGRlcHRoIGluIHRoZSBxdWV1ZS4gRm9yIGV4YW1wbGUsCj4+Pj4+IGNvbnNp
ZGVyIHdlIGhhdmUgcmVxdWVzdHMgQSwgQiBhbmQgQicsIHdoZXJlIEIgJiBCJyBhcmUgYSBib25k
ZWQgcGFpciB0bwo+Pj4+PiBydW4gaW4gcGFyYWxsZWwgb24gdHdvIGVuZ2luZXMuCj4+Pj4+Cj4+
Pj4+ICAgICAgICAgQSAtPiBCCj4+Pj4+ICAgICAgICAgICAgICAgICAgICAgIFwtIEInCj4+Pj4+
Cj4+Pj4+IEIgd2lsbCBydW4gYWZ0ZXIgQSBhbmQgc28gbWF5IGJlIHNjaGVkdWxlZCBvbiBhbiBp
ZGxlIGVuZ2luZSBhbmQgd2FpdCBvbgo+Pj4+PiBBIHVzaW5nIGEgc2VtYXBob3JlLiBCJyBzZWVz
IEIgYmVpbmcgZXhlY3V0ZWQgYW5kIHNvIGVudGVycyB0aGUgcXVldWUgb24KPj4+Pj4gdGhlIHNh
bWUgZW5naW5lIGFzIEEuIEFzIEInIGRpZCBub3QgaW5oZXJpdCB0aGUgc2VtYXBob3JlLWNoYWlu
IGZyb20gQiwKPj4+Pj4gaXQgbWF5IGhhdmUgaGlnaGVyIHByZWNlZGVuY2UgdGhhbiBBIGFuZCBz
byBwcmVlbXB0cyBleGVjdXRpb24uIEhvd2V2ZXIsCj4+Pj4+IEInIHRoZW4gc2l0cyBvbiBhIHNl
bWFwaG9yZSB3YWl0aW5nIGZvciBCLCB3aG8gaXMgd2FpdGluZyBmb3IgQSwgd2hvIGlzCj4+Pj4+
IGJsb2NrZWQgYnkgQi4KPj4+Pj4KPj4+Pj4gRXJnbyBCJyBuZWVkcyB0byBpbmhlcml0IHRoZSBz
Y2hlZHVsZXIgcHJvcGVydGllcyBmcm9tIEIgKGkuZS4gdGhlCj4+Pj4+IHNlbWFwaG9yZSBjaGFp
bikgc28gdGhhdCBpdCBpcyBzY2hlZHVsZWQgd2l0aCB0aGUgc2FtZSBwcmlvcml0eSBhcyBCIGFu
ZAo+Pj4+PiB3aWxsIG5vdCBiZSBleGVjdXRlZCBhaGVhZCBvZiBCcyBkZXBlbmRlbmNpZXMuCj4+
Pj4+Cj4+Pj4+IEZ1cnRoZXJtb3JlLCB0byBwcmV2ZW50IHRoZSBwcmlvcml0aWVzIGNoYW5naW5n
IHZpYSB0aGUgZXhwb3NlIGZlbmNlIG9uCj4+Pj4+IEInLCB3ZSBuZWVkIHRvIGNvdXBsZSBpbiB0
aGUgZGVwZW5kZW5jaWVzIGZvciBQSS4gVGhpcyByZXF1aXJlcyB1cyB0bwo+Pj4+PiByZWxheCBv
dXIgc2FuaXR5LWNoZWNrcyB0aGF0IGRlcGVuZGVuY2llcyBhcmUgc3RyaWN0bHkgaW4gb3JkZXIu
Cj4+Pj4KPj4+PiBHb29kIGNhdGNoLCB0aGlzIG5lZWRlZCBzb21lIGRlZXAgdGhpbmtpbmchIEFu
ZCBpdCBsb29rcyBva2F5LCBldmVuCj4+Pj4gdGhvdWdoIGlkZWFsbHkgd2Ugd291bGQgYmUgYWJs
ZSB0byBmaXggaXQgbm90IHRvIHNpZ25hbCB0aGUgc3VibWl0IGZlbmNlCj4+Pj4gdW50aWwgc2Vt
YXBob3JlIHdhcyBjb21wbGV0ZWQuIEJ1dCBmb3IgdGhhdCBJIHRoaW5rIHdlIHdvdWxkIG5lZWQg
dG8KPj4+PiBlbWl0IGEgcmVxdWVzdCB3aGlsZSBlbWl0dGluZyBhIHJlcXVlc3QsIHNvIHRoYXQg
dGhlIHNlbWFwaG9yZSB3YWl0Cj4+Pj4gd291bGQgYmUgaW4gaXRzIG93bi4KPj4+Cj4+PiBBdCBh
IHB1c2ggd2UgY291bGQgYWRkIGFuIE1JX1VTRVJfSU5URVJSVVBUIGFmdGVyIHRoZSBpbml0aWFs
IGJyZWFkY3J1bWIKPj4+IGFuZCBjb3VwbGUgdGhlIHN1Ym1pdCBmZW5jZSBpbnRvIHRoYXQuIFRo
YXQgd291bGQgYmUgdmlydHVhbGx5Cj4+PiBlcXVpdmFsZW50IHRvIGVtaXR0aW5nIGEgc2VwYXJh
dGUgcmVxdWVzdCBmb3Igc2VtYXBob3Jlcy4gU29tZXRoaW5nIHRvCj4+PiBwb25kZXIgb3Zlci4K
Pj4KPj4gSG0sIGlmIG5vdCB0b28gZGlmZmljdWx0IGl0IHdvdWxkIGRlZmluaXRlbHkgYmUgbXVj
aCBwcmVmZXJhYmxlIHNpbmNlCj4+IHJlbHlpbmcgb24gY29udHJvbGxpbmcgcHJlZW1wdGlvbiBk
ZWNpc2lvbnMgZmVlbHMgYSBiaXQgZnJhZ2lsZS9oYWNraXNoLgo+Pgo+PiBTaW1wbHkgbW92aW5n
IF9fbm90aWZ5X2V4ZWN1dGVfY2IgZnJvbSBfX2k5MTVfcmVxdWVzdF9zdWJtaXQgdG8KPj4gaW50
ZWxfZW5naW5lX2JyZWFkY3J1bWJzX2lycSwgdW5kZXIgYSBfX2k5MTVfcmVxdWVzdF9oYXNfc3Rh
cnRlZCBjaGVjaywKPj4gY291bGQgZG8gaXQ/Cj4gCj4gOTUlIG9mIHRoZSB3YXksIHllcy4KCklz
IHRoZSByZW1haW5pbmcgNSUganVzdCBhIG5ldyBmbGF2b3VyIG9mIF9faTkxNV9yZXF1ZXN0X2hh
c19zdGFydGVkIAp3aGljaCBkb2VzIGF3YXkgd2l0aCByY3VfcmVhZF9sb2NrPyA6KQoKUmVnYXJk
cywKClR2cnRrbwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
