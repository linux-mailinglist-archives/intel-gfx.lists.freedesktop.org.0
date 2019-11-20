Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0CA1103AE3
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 14:18:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 505966E5D1;
	Wed, 20 Nov 2019 13:18:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BB936E5D1
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 13:18:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 05:18:29 -0800
X-IronPort-AV: E=Sophos;i="5.69,222,1571727600"; d="scan'208";a="200713119"
Received: from unknown (HELO [10.252.30.240]) ([10.252.30.240])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 20 Nov 2019 05:18:28 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191120093302.3723715-1-chris@chris-wilson.co.uk>
 <20191120093302.3723715-6-chris@chris-wilson.co.uk>
 <aa1f7967-6ff5-f341-b3bd-5ec0afe102b0@linux.intel.com>
 <157425477060.13839.10577920977636430794@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <5eda82de-a7a3-d4d3-13ec-6ed4b70986b7@linux.intel.com>
Date: Wed, 20 Nov 2019 13:18:27 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157425477060.13839.10577920977636430794@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915/selftests: Force bonded
 submission to overlap
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

Ck9uIDIwLzExLzIwMTkgMTI6NTksIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTExLTIwIDEyOjU1OjQyKQo+Pgo+PiBPbiAyMC8xMS8yMDE5IDA5OjMy
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBCb25kZWQgcmVxdWVzdCBzdWJtaXNzaW9uIGlzIGRl
c2lnbmVkIHRvIGFsbG93IHJlcXVlc3RzIHRvIGV4ZWN1dGUgaW4KPj4+IHBhcmFsbGVsIGFzIGxh
aWQgb3V0IGJ5IHRoZSB1c2VyLiBJZiB0aGUgbWFzdGVyIHJlcXVlc3QgaXMgYWxyZWFkeQo+Pj4g
ZmluaXNoZWQgYmVmb3JlIGl0cyBib25kZWQgcGFpciBpcyBzdWJtaXR0ZWQsIHRoZSBwYWlyIHdl
cmUgbm90IGRlc3RpbmVkCj4+PiB0byBydW4gaW4gcGFyYWxsZWwgYW5kIHdlIGxvc2UgdGhlIGlu
Zm9ybWF0aW9uIGFib3V0IHRoZSBtYXN0ZXIgZW5naW5lCj4+PiB0byBkaWN0YXRlIHNlbGVjdGlv
biBvZiB0aGUgc2Vjb25kYXJ5LiBJZiB0aGUgc2Vjb25kIHJlcXVlc3Qgd2FzCj4+PiByZXF1aXJl
ZCB0byBiZSBydW4gb24gYSBwYXJ0aWN1bGFyIGVuZ2luZSBpbiBhIHZpcnR1YWwgc2V0LCB0aGF0
IHNob3VsZAo+Pj4gaGF2ZSBiZWVuIHNwZWNpZmllZCwgcmF0aGVyIHRoYW4gbGVmdCB0byB0aGUg
d2hpbXMgb2YgYSByYW5kb20KPj4+IHVuY29ubmVjdGVkIHJlcXVlc3RzIQo+Pj4KPj4+IEluIHRo
ZSBzZWxmdGVzdCwgSSBtYWRlIHRoZSBtaXN0YWtlIG9mIG5vdCBlbnN1cmluZyB0aGUgbWFzdGVy
IHdvdWxkCj4+PiBvdmVybGFwIHdpdGggaXRzIGJvbmRlZCBwYWlycywgbWVhbmluZyB0aGF0IGl0
IGNvdWxkIGluZGVlZCBjb21wbGV0ZQo+Pj4gYmVmb3JlIHdlIHN1Ym1pdHRlZCB0aGUgYm9uZHMu
IFRob3NlIGJvbmRzIHdlcmUgdGhlbiBmcmVlIHRvIHNlbGVjdCBhbnkKPj4+IGF2YWlsYWJsZSBl
bmdpbmUgaW4gdGhlaXIgdmlydHVhbCBzZXQsIGFuZCBub3QgdGhlIG9uZSBleHBlY3RlZCBieSB0
aGUKPj4+IHRlc3QuCj4+Cj4+IFRoZXJlIGlzIGEgc3VibWl0IGF3YWl0IHdoaWNoIGVuc3VyZXMg
bWFzdGVyIGlzIG5vdCBydW5uYWJsZSBiZWZvcmUKPj4gYm9uZGVkIHBhaXJzIGFyZSBzdWJtaXR0
ZWQuIFdoeSB3YXMgdGhhdCBub3QgZW5vdWdoPyBBcmUgdGhlIHNwb3JhZGljCj4+IHRlc3QgZmFp
bHVyZXM/Cj4gCj4gT25lIHRlc3QgaXMgdXNpbmcgdGhlIHN1Ym1pdF9hd2FpdCwgdGhlIG90aGVy
IGRvZXMgbm90LiBJdCB0YWtlcyB0aGUKPiBiYWNrZ3JvdW5kIHJldGlyZSB3b3JrZXIgdG8gcnVu
IGFzIHdlIGFyZSBzdWJtaXR0aW5nIHRoZSBzZWNvbmRhcmllcy4uLgo+IEJ1dCBJIGhhdmUgbm90
IG5vdGljZWQgdGhpcyBmYWlsdXJlIGJlZm9yZSBob29raW5nIHVwIHJldGlyZW1lbnQgdG8KPiBw
cm9jZXNzX2NzYi4gSG93ZXZlciwgdGhlIGlzc3VlIGlzIGRlZmluaXRlbHkgcHJlc2VudCBpbiB0
aGUgY3VycmVudAo+IHRlc3QuCgpTbyB3aGF0IGhhcHBlbnM/IElzIHRoaXMgYW5vdGhlciBpc3N1
ZSBsaW1pdGVkIHRvIHNlbGZ0ZXN0cz8gQmVjYXVzZSBJIApkb24ndCBzZWUgdGhhdCB1QVBJIGl0
c2VsZiBjYW4ndCBiZSB1c2VkIGluIHRoaXMgd2F5LgoKUmVnYXJkcywKClR2cnRrbwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
