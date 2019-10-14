Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6D6D63A3
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 15:19:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC48D6E2E0;
	Mon, 14 Oct 2019 13:19:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69C0D6E2E0
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 13:19:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Oct 2019 06:19:22 -0700
X-IronPort-AV: E=Sophos;i="5.67,295,1566889200"; d="scan'208";a="185490681"
Received: from dwiesing-mobl.ger.corp.intel.com (HELO [10.252.31.172])
 ([10.252.31.172])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 14 Oct 2019 06:19:21 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191014090757.32111-1-chris@chris-wilson.co.uk>
 <20191014090757.32111-11-chris@chris-wilson.co.uk>
 <8b030734-330f-49e1-cbd0-d7d44c965983@linux.intel.com>
 <157105478333.18859.11636359770694964440@skylake-alporthouse-com>
 <9d2f73a9-745d-7c59-770e-c94fc40e7a1c@linux.intel.com>
 <157105647576.18859.18048479006793185492@skylake-alporthouse-com>
 <157105880297.18859.7992408403808576383@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3264aa4b-997b-f012-7d97-f1e1cf21f676@linux.intel.com>
Date: Mon, 14 Oct 2019 14:19:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <157105880297.18859.7992408403808576383@skylake-alporthouse-com>
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

Ck9uIDE0LzEwLzIwMTkgMTQ6MTMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIENocmlz
IFdpbHNvbiAoMjAxOS0xMC0xNCAxMzozNDozNSkKPj4gUXVvdGluZyBUdnJ0a28gVXJzdWxpbiAo
MjAxOS0xMC0xNCAxMzoyNTo1OCkKPj4+Cj4+PiBPbiAxNC8xMC8yMDE5IDEzOjA2LCBDaHJpcyBX
aWxzb24gd3JvdGU6Cj4+Pj4gUXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0xNCAxMzow
MDowMSkKPj4+Pj4KPj4+Pj4gT24gMTQvMTAvMjAxOSAxMDowNywgQ2hyaXMgV2lsc29uIHdyb3Rl
Ogo+Pj4+Pj4gK3N0YXRpYyB2b2lkIGNhbmNlbF9hY3RpdmUoc3RydWN0IGk5MTVfcmVxdWVzdCAq
cnEsCj4+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmUpCj4+Pj4+PiArewo+Pj4+Pj4gKyAgICAgc3RydWN0IGludGVsX2NvbnRleHQgKiBj
b25zdCBjZSA9IHJxLT5od19jb250ZXh0Owo+Pj4+Pj4gKwo+Pj4+Pj4gKyAgICAgLyoKPj4+Pj4+
ICsgICAgICAqIFRoZSBleGVjdXRpbmcgY29udGV4dCBoYXMgYmVlbiBjYW5jZWxsZWQuIEZpeHVw
IHRoZSBjb250ZXh0IHNvIHRoYXQKPj4+Pj4+ICsgICAgICAqIGl0IHdpbGwgYmUgbWFya2VkIGFz
IGluY29tcGxldGUgWy1FSU9dIHVwb24gcmVzdWJtaXNzaW9uIGFuZCBub3QKPj4+Cj4+PiAocmVh
ZCBiZWxvdyBmaXJzdCkKPj4+Cj4+PiAuLi4gYW5kIG5vdCBtaXNsZWFkaW5nbHkgc2F5ICJGaXh1
cCB0aGUgY29udGV4dCBzbyB0aGF0IGl0IHdpbGwgYmUKPj4+IG1hcmtlZCBhcyBpbmNvbXBsZXRl
IiBiZWNhdXNlIHRoZXJlIGlzIG5vdGhpbmcgaW4gdGhpcyBmdW5jdGlvbiB3aGljaAo+Pj4gZG9l
cyB0aGF0LiBJdCBtb3N0bHkgaGFwcGVucyBieSB0aGUgdmlydHVhbCBvZiBjb250ZXh0IGFscmVh
ZHkgYmVpbmcKPj4+IG1hcmtlZCBhcyBiYW5uZWQgc29tZXdoZXJlIGVsc2UuIFRoaXMgY29tbWVu
dCBzaG91bGQganVzdCBleHBsYWluIHRoZQo+Pj4gZGVjaXNpb24gdG8gcmV3aW5kIHRoZSByaW5n
LT5oZWFkIGZvciBtb3JlIGRldGVybWluaXNtLiBJdCBjYW4gc3RpbGwKPj4+IG1lbnRpb24gY2Fu
Y2VsaW5nIG9mIHVzZXIgcGF5bG9hZCBhbmQgLUVJTy4gSnVzdCBuZWVkcyB0byBiZSBjbGVhciBv
Zgo+Pj4gdGhlIHNpbmdsZSBleHRyYSB0aGluZyBhY2hpZXZlZCBoZXJlIGJ5IHRoZSBoZWFkIHJl
d2luZCBhbmQgY29udGV4dCBlZGl0Lgo+Pgo+PiBJIHRob3VnaHQgSSB3YXMgY2xlYXI6ICJ1cG9u
IHJlc3VibWlzc2lvbiIuIFNvIHVzZSBhIG1vcmUgYWN0aXZlIHZvaWNlIHRvCj4+IHJlZHVjZSBh
bWJpZ3VpdHksIGdvdGNoYS4KPiAKPiAgICAgICAgICAvKgo+ICAgICAgICAgICAqIFRoZSBleGVj
dXRpbmcgY29udGV4dCBoYXMgYmVlbiBjYW5jZWxsZWQuIFdlIHdhbnQgdG8gcHJldmVudAo+ICAg
ICAgICAgICAqIGZ1cnRoZXIgZXhlY3V0aW9uIGFsb25nIHRoaXMgY29udGV4dCBhbmQgcHJvcGFn
YXRlIHRoZSBlcnJvciBvbgo+ICAgICAgICAgICAqIHRvIGFueXRoaW5nIGRlcGVuZGluZyBvbiBp
dHMgcmVzdWx0cy4KPiAgICAgICAgICAgKgo+ICAgICAgICAgICAqIEluIF9faTkxNV9yZXF1ZXN0
X3N1Ym1pdCgpLCB3ZSBhcHBseSB0aGUgLUVJTyBhbmQgcmVtb3ZlIHRoZQo+ICAgICAgICAgICAq
IHJlcXVlc3RzIHBheWxvYWQgZm9yIGFueSBiYW5uZWQgcmVxdWVzdHMuIEJ1dCBmaXJzdCwgd2Ug
bXVzdAo+ICAgICAgICAgICAqIHJld2luZCB0aGUgY29udGV4dCBiYWNrIHRvIHRoZSBzdGFydCBv
ZiB0aGUgaW5jb21wbGV0ZSByZXF1ZXN0IHNvCj4gICAgICAgICAgICogdGhhdCB3ZSBkb24ndCBq
dW1wIGJhY2sgaW50byB0aGUgbWlkZGxlIG9mIHRoZSBiYXRjaC4KPiAgICAgICAgICAgKgo+ICAg
ICAgICAgICAqIFdlIHByZXNlcnZlIHRoZSBicmVhZGNydW1icyBhbmQgc2VtYXBob3JlcyBvZiB0
aGUgaW5jb21wbGV0ZQo+ICAgICAgICAgICAqIHJlcXVlc3RzIHNvIHRoYXQgaW50ZXItdGltZWxp
bmUgZGVwZW5kZW5jaWVzIChpLmUgb3RoZXIgdGltZWxpbmVzKQo+ICAgICAgICAgICAqIHJlbWFp
biBjb3JyZWN0bHkgb3JkZXJlZC4KPiAgICAgICAgICAgKi8KPiAKClNvdW5kcyBnb29kLgoKQnR3
Li4gZG9lcyB0aGlzIHdvcms/IDopIElmIGNvbnRleHQgd2FzIHByZWVtcHRlZCBpbiB0aGUgbWlk
ZGxlIG9mIGEgCmJhdGNoIGJ1ZmZlciB0aGVyZSBtdXN0IGJlIHNvbWUgb3RoZXIgc3RhdGUgc2F2
ZWQgKG90aGVyIHRoYW4gUklOR19IRUFEKSAKd2hpY2ggb24gY29udGV4dCByZXN0b3JlIGVuYWJs
ZXMgaXQgdG8gY29udGludWUgZnJvbSB0aGUgcmlnaHQgcGxhY2UgCip3aXRoaW4qIHRoZSBiYXRj
aC4gSXMgdGhpcyBjb2RlIHphcHBpbmcgdGhhdCBzdGF0ZSBhcyB3ZWxsIHNvIEdQVSB3aWxsIApm
dWxseSBmb3JnZXQgaXQgd2FzIGluc2lkZSB0aGUgYmF0Y2g/CgpSZWdhcmRzLAoKVHZydGtvCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
