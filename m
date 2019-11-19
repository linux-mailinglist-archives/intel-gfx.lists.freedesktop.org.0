Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B60A0102978
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 17:33:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FDE56E98D;
	Tue, 19 Nov 2019 16:33:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42CBE6E98D
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Nov 2019 16:33:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Nov 2019 08:33:21 -0800
X-IronPort-AV: E=Sophos;i="5.69,218,1571727600"; d="scan'208";a="200406263"
Received: from unknown (HELO [10.252.30.240]) ([10.252.30.240])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 19 Nov 2019 08:33:20 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191118230254.2615942-1-chris@chris-wilson.co.uk>
 <20191118230254.2615942-7-chris@chris-wilson.co.uk>
 <6c06a4a7-7719-c83b-0fa0-ddc47b4d91c9@linux.intel.com>
 <157418045491.12093.7455490803476182400@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <f8d09a9a-b45a-7960-d584-3315ca0c80f3@linux.intel.com>
Date: Tue, 19 Nov 2019 16:33:18 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157418045491.12093.7455490803476182400@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 06/19] drm/i915/gt: Schedule request
 retirement when submission idles
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

Ck9uIDE5LzExLzIwMTkgMTY6MjAsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTExLTE5IDE1OjA0OjQ2KQo+Pgo+PiBPbiAxOC8xMS8yMDE5IDIzOjAy
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+
Pj4gaW5kZXggMzNjZTI1OGQ0ODRmLi5mN2M4ZmVjNDM2YTkgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbHJjLmMKPj4+IEBAIC0xNDIsNiArMTQyLDcgQEAKPj4+ICAgICNpbmNs
dWRlICJpbnRlbF9lbmdpbmVfcG0uaCIKPj4+ICAgICNpbmNsdWRlICJpbnRlbF9ndC5oIgo+Pj4g
ICAgI2luY2x1ZGUgImludGVsX2d0X3BtLmgiCj4+PiArI2luY2x1ZGUgImludGVsX2d0X3JlcXVl
c3RzLmgiCj4+PiAgICAjaW5jbHVkZSAiaW50ZWxfbHJjX3JlZy5oIgo+Pj4gICAgI2luY2x1ZGUg
ImludGVsX21vY3MuaCIKPj4+ICAgICNpbmNsdWRlICJpbnRlbF9yZXNldC5oIgo+Pj4gQEAgLTIy
NzgsNiArMjI3OSwxOCBAQCBzdGF0aWMgdm9pZCBleGVjbGlzdHNfc3VibWlzc2lvbl90YXNrbGV0
KHVuc2lnbmVkIGxvbmcgZGF0YSkKPj4+ICAgICAgICAgICAgICAgIGlmICh0aW1lb3V0ICYmIHBy
ZWVtcHRfdGltZW91dChlbmdpbmUpKQo+Pj4gICAgICAgICAgICAgICAgICAgICAgICBwcmVlbXB0
X3Jlc2V0KGVuZ2luZSk7Cj4+PiAgICAgICAgfQo+Pj4gKwo+Pj4gKyAgICAgLyoKPj4+ICsgICAg
ICAqIElmIHRoZSBHUFUgaXMgY3VycmVudGx5IGlkbGUsIHJldGlyZSB0aGUgb3V0c3RhbmRpbmcg
Y29tcGxldGVkCj4+PiArICAgICAgKiByZXF1ZXN0cy4gVGhpcyB3aWxsIGFsbG93IHVzIHRvIGVu
dGVyIHNvZnQtcmM2IGFzIHNvb24gYXMgcG9zc2libGUsCj4+PiArICAgICAgKiBhbGJlaXQgYXQg
dGhlIGNvc3Qgb2YgcnVubmluZyB0aGUgcmV0aXJlIHdvcmtlciBtdWNoIG1vcmUgZnJlcXVlbnRs
eQo+Pj4gKyAgICAgICogKG92ZXIgdGhlIGVudGlyZSBHVCBub3QganVzdCB0aGlzIGVuZ2luZSkg
YW5kIGVtaXR0aW5nIG1vcmUgaWRsZQo+Pj4gKyAgICAgICogYmFycmllcnMgKGkuZS4ga2VybmVs
IGNvbnRleHQgc3dpdGNoZXMgdW5waW5uaW5nIGFsbCB0aGF0IHdlbnQKPj4+ICsgICAgICAqIGJl
Zm9yZSkgd2hpY2ggbWF5IGFkZCBzb21lIGV4dHJhIGxhdGVuY3kuCj4+PiArICAgICAgKi8KPj4+
ICsgICAgIGlmIChpbnRlbF9lbmdpbmVfcG1faXNfYXdha2UoZW5naW5lKSAmJgo+Pj4gKyAgICAg
ICAgICFleGVjbGlzdHNfYWN0aXZlKCZlbmdpbmUtPmV4ZWNsaXN0cykpCj4+PiArICAgICAgICAg
ICAgIGludGVsX2d0X3NjaGVkdWxlX3JldGlyZV9yZXF1ZXN0cyhlbmdpbmUtPmd0KTsKPj4KPj4g
SSBhbSBzdGlsbCBub3QgYSBmYW4gb2YgZG9pbmcgdGhpcyBmb3IgYWxsIHBsYXRmb3Jtcy4KPiAK
PiBJIHVuZGVyc3RhbmQuIEkgdGhpbmsgaXQgbWFrZXMgYSBmYWlyIGFtb3VudCBvZiBzZW5zZSB0
byBkbyBlYXJseQo+IHJldGlyZXMsIGFuZCB3aXNoIHRvIHB1cnN1ZSB0aGF0IGlmIEkgY2FuIHNo
b3cgdGhlcmUgaXMgbm8gaGFybS4KCkl0J3MgYWxzbyBhIGJpdCBvZiBhIGxheWVyaW5nIHByb2Js
ZW0uCgo+PiBJdHMgbm90IGp1c3QgdGhlIGNvc3Qgb2YgcmV0aXJlbWVudCBidXQgdGhlcmUgaXMK
Pj4gaW50ZWxfZW5naW5lX2ZsdXNoX3N1Ym1pc3Npb24gb24gYWxsIGVuZ2luZXMgaW4gdGhlcmUg
YXMgd2VsbCB3aGljaCB3ZQo+PiBjYW5ub3QgYXZvaWQgdHJpZ2dlcmluZyBmcm9tIHRoaXMgcGF0
aC4KPj4KPj4gV291bGQgaXQgYmUgd29ydGggZXhwZXJpbWVudGluZyB3aXRoIGFkZGl0aW9uYWwg
cGVyLWVuZ2luZSByZXRpcmUKPj4gd29ya2Vycz8gTW9zdCBvZiB0aGUgY29kZSBjb3VsZCBiZSBz
aGFyZWQsIGp1c3QgYSBsaXR0bGUgYml0IG9mCj4+IHNwZWNpYWxpemF0aW9uIHRvIGZpbHRlciBv
biBlbmdpbmUuCj4gCj4gSSBoYXZlbid0IHNrZXRjaGVkIG91dCBhbnl0aGluZyBtb3JlIHRoYW4g
cGVla2luZyBhdCB0aGUgbGFzdCByZXF1ZXN0IG9uCj4gdGhlIHRpbWVsaW5lIGFuZCBkb2luZyBh
IHJxLT5lbmdpbmUgPT0gZW5naW5lIGZpbHRlci4gV2Fsa2luZyB0aGUgZ2xvYmFsCj4gdGltZWxp
bmUuYWN0aXZlX2xpc3QgaW4gdGhhdCBjYXNlIGlzIGFsc28gYSBudWlzYW5jZS4KClRoYXQgdG9n
ZXRoZXIgd2l0aDoKCglmbHVzaF9zdWJtaXNzaW9uKGd0LCBlbmdpbmUgPyBlbmdpbmUtPm1hc2sg
OiBBTExfRU5HSU5FUyk7CgpNaWdodCBiZSBlbm91Z2g/IEF0IGxlYXN0IHRvIHNhdGlzZnkgbXkg
Y29uY2Vybi4KCkFwYXJ0IGxheWVyaW5nIGlzIHN0aWxsIGJhZC4uIEFuZCBJJ2Qgc3RpbGwgbGlt
aXQgaXQgdG8gd2hlbiBSQzYgV0EgaXMgCmFjdGl2ZSB1bmxlc3MgaXQgY2FuIGJlIHNob3duIHRo
ZXJlIGlzIG5vIHBlcmYvcG93ZXIgaW1wYWN0IGFjcm9zcyAKR1BVL0NQVSB0byBkbyB0aGlzIGV2
ZXJ5d2hlcmUuCgpBdCB3aGljaCBwb2ludCBpdCBiZWNvbWVzIGVhc2llciB0byBqdXN0IGxpbWl0
IGl0IGJlY2F1c2Ugd2UgaGF2ZSB0byAKaGF2ZSBpdCB0aGVyZS4KCkkgYWxzbyB3b25kZXIgaWYg
dGhlIGN1cnJlbnQgZmx1c2hfc3VibWlzc2lvbiB3YXNuJ3QgdGhlIHJlYXNvbiBmb3IgCnBlcmZv
cm1hbmNlIHJlZ3Jlc3Npb24geW91IHdlcmUgc2VlaW5nIHdpdGggdGhpcz8gSXQgbWFrZXMgdGhp
cyB0YXNrbGV0IAp3YWl0IGZvciBhbGwgb3RoZXIgZW5naW5lcywgaWYgdGhleSBhcmUgYnVzeS4g
QnV0IG5vdCBzdXJlLi4gcGVyaGFwcyBpdCAKaXMgd29yayB3aGljaCB3b3VsZCBiZSBkb25lIGFu
eXdheS4KCj4gVGhlcmUncyBkZWZpbml0ZWx5IHNjb3BlIGhlcmUgZm9yIHVzIHVzaW5nIHNvbWUg
bW9yZSBpbmZvcm1hdGlvbiBmcm9tCj4gcHJvY2Vzc19jc2IoKSBhYm91dCB3aGljaCBjb250ZXh0
IGNvbXBsZXRlZCBhbmQgbGltaXQgd29yayB0byB0aGF0Cj4gdGltZWxpbmUuIEhtbSwgc29tZXRo
aW5nIGFsb25nIHRob3NlIGxpbmVzIG1heWJlLi4uCgpCdXQgeW91IHdhbnQgdG8gcmV0aXJlIGFs
bCB0aW1lbGluZXMgd2hpY2ggaGF2ZSB3b3JrIG9uIHRoaXMgcGFydGljdWxhciAKcGh5c2ljYWwg
ZW5naW5lLiBPdGhlcndpc2UgaXQgZG9lc24ndCBnZXQgcGFya2VkLCBubz8KClJlZ2FyZHMsCgpU
dnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
