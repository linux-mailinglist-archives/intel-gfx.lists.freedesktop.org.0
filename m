Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00AA1D6433
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 15:38:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F6516E4E8;
	Mon, 14 Oct 2019 13:38:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F17B96E4B7
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 13:38:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Oct 2019 06:38:05 -0700
X-IronPort-AV: E=Sophos;i="5.67,295,1566889200"; d="scan'208";a="185494157"
Received: from dwiesing-mobl.ger.corp.intel.com (HELO [10.252.31.172])
 ([10.252.31.172])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 14 Oct 2019 06:38:04 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191014090757.32111-1-chris@chris-wilson.co.uk>
 <20191014090757.32111-11-chris@chris-wilson.co.uk>
 <8b030734-330f-49e1-cbd0-d7d44c965983@linux.intel.com>
 <157105478333.18859.11636359770694964440@skylake-alporthouse-com>
 <9d2f73a9-745d-7c59-770e-c94fc40e7a1c@linux.intel.com>
 <157105647576.18859.18048479006793185492@skylake-alporthouse-com>
 <157105880297.18859.7992408403808576383@skylake-alporthouse-com>
 <3264aa4b-997b-f012-7d97-f1e1cf21f676@linux.intel.com>
 <157105938286.18859.17442370513635200680@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <fb23201a-1e20-f085-052d-b3f61b7c2298@linux.intel.com>
Date: Mon, 14 Oct 2019 14:38:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <157105938286.18859.17442370513635200680@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 11/15] drm/i915/execlists: Cancel banned
 contexts on schedule-out
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

Ck9uIDE0LzEwLzIwMTkgMTQ6MjMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTEwLTE0IDE0OjE5OjE5KQo+Pgo+PiBPbiAxNC8xMC8yMDE5IDE0OjEz
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBRdW90aW5nIENocmlzIFdpbHNvbiAoMjAxOS0xMC0x
NCAxMzozNDozNSkKPj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTEwLTE0IDEzOjI1
OjU4KQo+Pj4+Pgo+Pj4+PiBPbiAxNC8xMC8yMDE5IDEzOjA2LCBDaHJpcyBXaWxzb24gd3JvdGU6
Cj4+Pj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTEwLTE0IDEzOjAwOjAxKQo+Pj4+
Pj4+Cj4+Pj4+Pj4gT24gMTQvMTAvMjAxOSAxMDowNywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+Pj4+
Pj4+PiArc3RhdGljIHZvaWQgY2FuY2VsX2FjdGl2ZShzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwK
Pj4+Pj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
ZW5naW5lKQo+Pj4+Pj4+PiArewo+Pj4+Pj4+PiArICAgICBzdHJ1Y3QgaW50ZWxfY29udGV4dCAq
IGNvbnN0IGNlID0gcnEtPmh3X2NvbnRleHQ7Cj4+Pj4+Pj4+ICsKPj4+Pj4+Pj4gKyAgICAgLyoK
Pj4+Pj4+Pj4gKyAgICAgICogVGhlIGV4ZWN1dGluZyBjb250ZXh0IGhhcyBiZWVuIGNhbmNlbGxl
ZC4gRml4dXAgdGhlIGNvbnRleHQgc28gdGhhdAo+Pj4+Pj4+PiArICAgICAgKiBpdCB3aWxsIGJl
IG1hcmtlZCBhcyBpbmNvbXBsZXRlIFstRUlPXSB1cG9uIHJlc3VibWlzc2lvbiBhbmQgbm90Cj4+
Pj4+Cj4+Pj4+IChyZWFkIGJlbG93IGZpcnN0KQo+Pj4+Pgo+Pj4+PiAuLi4gYW5kIG5vdCBtaXNs
ZWFkaW5nbHkgc2F5ICJGaXh1cCB0aGUgY29udGV4dCBzbyB0aGF0IGl0IHdpbGwgYmUKPj4+Pj4g
bWFya2VkIGFzIGluY29tcGxldGUiIGJlY2F1c2UgdGhlcmUgaXMgbm90aGluZyBpbiB0aGlzIGZ1
bmN0aW9uIHdoaWNoCj4+Pj4+IGRvZXMgdGhhdC4gSXQgbW9zdGx5IGhhcHBlbnMgYnkgdGhlIHZp
cnR1YWwgb2YgY29udGV4dCBhbHJlYWR5IGJlaW5nCj4+Pj4+IG1hcmtlZCBhcyBiYW5uZWQgc29t
ZXdoZXJlIGVsc2UuIFRoaXMgY29tbWVudCBzaG91bGQganVzdCBleHBsYWluIHRoZQo+Pj4+PiBk
ZWNpc2lvbiB0byByZXdpbmQgdGhlIHJpbmctPmhlYWQgZm9yIG1vcmUgZGV0ZXJtaW5pc20uIEl0
IGNhbiBzdGlsbAo+Pj4+PiBtZW50aW9uIGNhbmNlbGluZyBvZiB1c2VyIHBheWxvYWQgYW5kIC1F
SU8uIEp1c3QgbmVlZHMgdG8gYmUgY2xlYXIgb2YKPj4+Pj4gdGhlIHNpbmdsZSBleHRyYSB0aGlu
ZyBhY2hpZXZlZCBoZXJlIGJ5IHRoZSBoZWFkIHJld2luZCBhbmQgY29udGV4dCBlZGl0Lgo+Pj4+
Cj4+Pj4gSSB0aG91Z2h0IEkgd2FzIGNsZWFyOiAidXBvbiByZXN1Ym1pc3Npb24iLiBTbyB1c2Ug
YSBtb3JlIGFjdGl2ZSB2b2ljZSB0bwo+Pj4+IHJlZHVjZSBhbWJpZ3VpdHksIGdvdGNoYS4KPj4+
Cj4+PiAgICAgICAgICAgLyoKPj4+ICAgICAgICAgICAgKiBUaGUgZXhlY3V0aW5nIGNvbnRleHQg
aGFzIGJlZW4gY2FuY2VsbGVkLiBXZSB3YW50IHRvIHByZXZlbnQKPj4+ICAgICAgICAgICAgKiBm
dXJ0aGVyIGV4ZWN1dGlvbiBhbG9uZyB0aGlzIGNvbnRleHQgYW5kIHByb3BhZ2F0ZSB0aGUgZXJy
b3Igb24KPj4+ICAgICAgICAgICAgKiB0byBhbnl0aGluZyBkZXBlbmRpbmcgb24gaXRzIHJlc3Vs
dHMuCj4+PiAgICAgICAgICAgICoKPj4+ICAgICAgICAgICAgKiBJbiBfX2k5MTVfcmVxdWVzdF9z
dWJtaXQoKSwgd2UgYXBwbHkgdGhlIC1FSU8gYW5kIHJlbW92ZSB0aGUKPj4+ICAgICAgICAgICAg
KiByZXF1ZXN0cyBwYXlsb2FkIGZvciBhbnkgYmFubmVkIHJlcXVlc3RzLiBCdXQgZmlyc3QsIHdl
IG11c3QKPj4+ICAgICAgICAgICAgKiByZXdpbmQgdGhlIGNvbnRleHQgYmFjayB0byB0aGUgc3Rh
cnQgb2YgdGhlIGluY29tcGxldGUgcmVxdWVzdCBzbwo+Pj4gICAgICAgICAgICAqIHRoYXQgd2Ug
ZG9uJ3QganVtcCBiYWNrIGludG8gdGhlIG1pZGRsZSBvZiB0aGUgYmF0Y2guCj4+PiAgICAgICAg
ICAgICoKPj4+ICAgICAgICAgICAgKiBXZSBwcmVzZXJ2ZSB0aGUgYnJlYWRjcnVtYnMgYW5kIHNl
bWFwaG9yZXMgb2YgdGhlIGluY29tcGxldGUKPj4+ICAgICAgICAgICAgKiByZXF1ZXN0cyBzbyB0
aGF0IGludGVyLXRpbWVsaW5lIGRlcGVuZGVuY2llcyAoaS5lIG90aGVyIHRpbWVsaW5lcykKPj4+
ICAgICAgICAgICAgKiByZW1haW4gY29ycmVjdGx5IG9yZGVyZWQuCj4+PiAgICAgICAgICAgICov
Cj4+Pgo+Pgo+PiBTb3VuZHMgZ29vZC4KPj4KPj4gQnR3Li4gZG9lcyB0aGlzIHdvcms/IDopIElm
IGNvbnRleHQgd2FzIHByZWVtcHRlZCBpbiB0aGUgbWlkZGxlIG9mIGEKPj4gYmF0Y2ggYnVmZmVy
IHRoZXJlIG11c3QgYmUgc29tZSBvdGhlciBzdGF0ZSBzYXZlZCAob3RoZXIgdGhhbiBSSU5HX0hF
QUQpCj4+IHdoaWNoIG9uIGNvbnRleHQgcmVzdG9yZSBlbmFibGVzIGl0IHRvIGNvbnRpbnVlIGZy
b20gdGhlIHJpZ2h0IHBsYWNlCj4+ICp3aXRoaW4qIHRoZSBiYXRjaC4gSXMgdGhpcyBjb2RlIHph
cHBpbmcgdGhhdCBzdGF0ZSBhcyB3ZWxsIHNvIEdQVSB3aWxsCj4+IGZ1bGx5IGZvcmdldCBpdCB3
YXMgaW5zaWRlIHRoZSBiYXRjaD8KPiAKPiBZZXMuIFdlIGFyZSByZXNldHRpbmcgdGhlIGNvbnRl
eHQgaW1hZ2UgYmFjayB0byB2YW5pbGxhLCBhbmQgdGhlbgo+IHJlc3RvcmUgdGhlIHJpbmcgcmVn
aXN0ZXJzIHRvIHJlc3RhcnQgZnJvbSB0aGlzIHJlcXVlc3QuIFRoZSBzZWxmdGVzdHMKPiBhcmUg
dXNpbmcgc3Bpbm5pbmcgYmF0Y2hlcyB0byBzaW11bGF0ZSB0aGUgYmFubmVkIGNvbnRleHQuCgpP
a2F5LCBpbiB0aGF0IGNhc2U6CgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51
cnN1bGluQGludGVsLmNvbT4KClJlZ2FyZHMsCgpUdnJ0a28KCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
