Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8646D6367
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 15:08:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84C0C89F38;
	Mon, 14 Oct 2019 13:08:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A94F89F38
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 13:08:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Oct 2019 06:08:17 -0700
X-IronPort-AV: E=Sophos;i="5.67,295,1566889200"; d="scan'208";a="185487611"
Received: from dwiesing-mobl.ger.corp.intel.com (HELO [10.252.31.172])
 ([10.252.31.172])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 14 Oct 2019 06:08:16 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191010071434.31195-1-chris@chris-wilson.co.uk>
 <20191010071434.31195-10-chris@chris-wilson.co.uk>
 <a087c394-da92-e35c-f5c8-f1baefe0342f@linux.intel.com>
 <157080671963.31572.12487101325975352392@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b9f4ee95-4f07-f6fe-3569-ff693c5905ad@linux.intel.com>
Date: Mon, 14 Oct 2019 14:08:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <157080671963.31572.12487101325975352392@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 10/10] drm/i915: Flush idle barriers when
 waiting
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

Ck9uIDExLzEwLzIwMTkgMTY6MTEsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTEwLTExIDE1OjU2OjM1KQo+Pgo+PiBPbiAxMC8xMC8yMDE5IDA4OjE0
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBJZiB3ZSBkbyBmaW5kIG91cnNlbHZlcyB3aXRoIGFu
IGlkbGUgYmFycmllciBpbnNpZGUgb3VyIGFjdGl2ZSB3aGlsZQo+Pj4gd2FpdGluZywgYXR0ZW1w
dCB0byBmbHVzaCBpdCBieSBlbWl0dGluZyBhIHB1bHNlIHVzaW5nIHRoZSBrZXJuZWwKPj4+IGNv
bnRleHQuCj4+Cj4+IFRoZSBwb2ludCBvZiB0aGlzIG9uZSBjb21wbGV0ZWx5IGVzY2FwZXMgbWUg
YXQgdGhlIG1vbWVudC4gSWRsZSBiYXJyaWVycwo+PiBhcmUga2VwdCBpbiB0aGVyZSB0byBiZSBj
b25zdW1lZCBieSB0aGUgZW5naW5lX3BtIHBhcmtpbmcsIHNvIGlmIGFueQo+PiByYW5kb20gd2Fp
dGVyIGZpbmRzIHNvbWUgKHRoZXJlIHdpbGwgYWx3YXlzIGJlIHNvbWUsIGFzIGxvbmcgYXMgdGhl
Cj4+IGVuZ2luZSBleGVjdXRlZCBzb21lIHVzZXIgY29udGV4dCwgcmlnaHQ/KSwKPiAKPiBOb3Qg
YW55IHJhbmRvbSB3YWl0ZXI7IHRoZSB3YWl0ZXIgaGFzIHRvIGJlIHdhaXRpbmcgb24gYSBjb250
ZXh0IHRoYXQKPiB3YXMgYWN0aXZlIGFuZCBzbyBzZXR1cCBhIGJhcnJpZXIuCj4gCj4+IHdoeSB3
b3VsZCBpdCB3YW50IHRvIGhhbmRsZQo+PiB0aGVtPyBBZ2FpbiBqdXN0IHRvIHVzZSB0aGUgb3Bw
b3J0dW5pdHkgZm9yIHNvbWUgaG91c2Uga2VlcGluZz8gQnV0IHdoYXQKPj4gaWYgdGhlIHN5c3Rl
bSBpcyBvdGhlcndpc2UgcXVpdGUgYnVzeSBhbmQgYSBsb3ctcHJpb3JpdHkgY2xpZW50IGp1c3QK
Pj4gaGFwcGVucyB0byB3YW50IHRvIHdhaXQgb24gc29tZXRoaW5nIHNpbGx5Pwo+IAo+IFRoZXJl
J3Mgbm8gZ3VhcmFudGVlIHRoYXQgaXQgd2lsbCBldmVyIGJlIGZsdXNoZWQuIFNvIHdoeSB3b3Vs
ZG4ndCB3ZQo+IHVzZSBhIGxvdyBwcmlvcml0eSByZXF1ZXN0IHRvIGdpdmUgYSBzZW1ibGFuY2Ug
b2YgZm9yd2FyZCBwcm9ncmVzcyBhbmQKPiBnaXZlIGEgZ3VhcmFudGVlIHRoYXQgdGhlIHdhaXQg
d2lsbCBjb21wbGV0ZS4KPiAKPiBJdCdzIGEgaHlwb3RoZXRpY2FsIHBvaW50LCB0aGVyZSBhcmUg
bm8gd2FpdGVycyB0aGF0IG5lZWQgdG8gd2FpdCB1cG9uCj4gdGhlaXIgb3duIGJhcnJpZXJzIGF0
IHByZXNlbnQuIFdlIGFyZSBqdXN0IGNvbXBsZXRpbmcgdGhlIHBpY3R1cmUgZm9yCj4gaWRsZSBi
YXJyaWVyIHRyYWNraW5nLgoKSG0gSSB3YXMgbWlzdGFrZW5seSByZW1lbWJlcmluZyB0aGluZ3Mg
bGlrZSBycGNzIHJlY29uZmlndXJhdGlvbiB3b3VsZCAKd2FpdCBvbiBjZS0+YWN0aXZlLCBidXQg
SSBmb3Jnb3QgYWJvdXQgeW91ciB0cmljayB3aXRoIHB1dHRpbmcga2VybmVsIApjb250ZXh0IHJl
cXVlc3Qgb24gYW4gdXNlciB0aW1lbGluZS4KCkkgZ3Vlc3MgaXQgaXMgZmluZSB0aGVyZSwgYnV0
IHNpbmNlLCBhbmQgYXMgeW91IGhhdmUgc2FpZCwgaXQgaXMgCmh5cG90aGV0aWNhbCwgdGhlbiB0
aGlzIHBhdGNoIGlzIGRlYWQgY29kZSBhbmQgY2FuIHdhaXQuCgpSZWdhcmRzLAoKVHZydGtvCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
