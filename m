Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C97F2103A30
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 13:40:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B0576E4B3;
	Wed, 20 Nov 2019 12:40:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 840D66E4B3
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 12:40:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 04:40:16 -0800
X-IronPort-AV: E=Sophos;i="5.69,221,1571727600"; d="scan'208";a="200702822"
Received: from unknown (HELO [10.252.30.240]) ([10.252.30.240])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 20 Nov 2019 04:40:15 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191120093302.3723715-1-chris@chris-wilson.co.uk>
 <20191120093302.3723715-3-chris@chris-wilson.co.uk>
 <c8196701-7459-5f02-ee09-d48c6216b547@linux.intel.com>
 <157425165727.13839.12483018227008886642@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b560217a-5e19-c43d-59b7-b6957c50e59d@linux.intel.com>
Date: Wed, 20 Nov 2019 12:40:13 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157425165727.13839.12483018227008886642@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/9] drm/i915/gt: Unlock engine-pm after
 queuing the kernel context switch
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

Ck9uIDIwLzExLzIwMTkgMTI6MDcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTExLTIwIDExOjU4OjI3KQo+Pgo+PiBPbiAyMC8xMS8yMDE5IDA5OjMy
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBJbiBjb21taXQgYTc5Y2E2NTZiNjQ4ICgiZHJtL2k5
MTU6IFB1c2ggdGhlIHdha2VyZWYtPmNvdW50IGRlZmVycmFsIHRvCj4+PiB0aGUgYmFja2VuZCIp
LCBJIGVycm9uZW91c2x5IGNvbmNsdWRlZCB0aGF0IHdlIGxhc3QgbW9kaWZ5IHRoZSBlbmdpbmUK
Pj4+IGluc2lkZSBfX2k5MTVfcmVxdWVzdF9jb21taXQoKSBtZWFuaW5nIHRoYXQgd2UgY291bGQg
ZW5hYmxlIGNvbmN1cnJlbnQKPj4+IHN1Ym1pc3Npb24gZm9yIHVzZXJzcGFjZSBhcyB3ZSBlbnF1
ZXVlZCB0aGlzIHJlcXVlc3QuIEhvd2V2ZXIsIHRoaXMKPj4+IGZhbGxzIGludG8gYSB0cmFwIHdp
dGggb3RoZXIgdXNlcnMgb2YgdGhlIGVuZ2luZS0+a2VybmVsX2NvbnRleHQgd2FraW5nCj4+PiB1
cCBhbmQgc3VibWl0dGluZyB0aGVpciByZXF1ZXN0IGJlZm9yZSB0aGUgaWRsZS1zd2l0Y2ggaXMg
cXVldWVkLCB3aXRoCj4+PiB0aGUgcmVzdWx0IHRoYXQgdGhlIGtlcm5lbF9jb250ZXh0IGlzIGV4
ZWN1dGVkIG91dC1vZi1zZXF1ZW5jZSBtb3N0Cj4+PiBsaWtlbHkgdXBzZXR0aW5nIHRoZSBHUFUg
YW5kIGNlcnRhaW5seSBvdXJzZWx2ZXMgd2hlbiB3ZSB0cnkgdG8gcmV0aXJlCj4+PiB0aGUgb3V0
LW9mLXNlcXVlbmNlIHJlcXVlc3RzLgo+Pj4KPj4+IEFzIHN1Y2ggd2UgbmVlZCB0byBob2xkIG9u
dG8gdGhlIGVmZmVjdGl2ZSBlbmdpbmUtPmtlcm5lbF9jb250ZXh0IG11dGV4Cj4+PiBsb2NrICh2
aWEgdGhlIGVuZ2luZSBwbSBtdXRleCBwcm94eSkgdW50aWwgd2UgaGF2ZSBmaW5pc2ggcXVldWlu
ZyB0aGUKPj4+IHJlcXVlc3QgdG8gdGhlIGVuZ2luZS4KPj4+Cj4+PiB2MjogU2VyaWFsaXNlIGFn
YWluc3QgY29uY3VycmVudCBpbnRlbF9ndF9yZXRpcmVfcmVxdWVzdHMoKQo+Pj4gdjM6IERlc2Ny
aWJlIHRoZSBoYWlyeSBsb2NraW5nIHNjaGVtZSB3aXRoIGludGVsX2d0X3JldGlyZV9yZXF1ZXN0
cygpCj4+PiBmb3IgZnV0dXJlIHJlZmVyZW5jZS4KPj4+IHY0OiBDb21iaW5lIHRpbWVsaW5lLT5s
b2NrIGFuZCBlbmdpbmUgcG0gcmVsZWFzZTsgaXQncyBoYWlyeS4KPj4+Cj4+PiBGaXhlczogYTc5
Y2E2NTZiNjQ4ICgiZHJtL2k5MTU6IFB1c2ggdGhlIHdha2VyZWYtPmNvdW50IGRlZmVycmFsIHRv
IHRoZSBiYWNrZW5kIikKPj4+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgo+Pj4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGlu
dXguaW50ZWwuY29tPgo+Pj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRl
bC5jb20+Cj4+PiAtLS0KPj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2lu
ZV9wbS5jIHwgNDcgKysrKysrKysrKysrKysrKysrKy0tLS0KPj4+ICAgIDEgZmlsZSBjaGFuZ2Vk
LCA0MCBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5jCj4+PiBpbmRleCAzYzBmNDkwZmYyYzcuLjFmNTE3
MzU3YTI2OCAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2Vu
Z2luZV9wbS5jCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVf
cG0uYwo+Pj4gQEAgLTczLDggKzczLDI1IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBfX3RpbWVsaW5l
X21hcmtfdW5sb2NrKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKPj4+ICAgIAo+Pj4gICAgI2Vu
ZGlmIC8qICFJU19FTkFCTEVEKENPTkZJR19MT0NLREVQKSAqLwo+Pj4gICAgCj4+PiArc3RhdGlj
IHZvaWQKPj4+ICtfX2ludGVsX3RpbWVsaW5lX2VudGVyX2FuZF9wbV9yZWxlYXNlKHN0cnVjdCBp
bnRlbF90aW1lbGluZSAqdGwsCj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4+PiArewo+Pj4gKyAgICAgc3RydWN0
IGludGVsX2d0X3RpbWVsaW5lcyAqdGltZWxpbmVzID0gJmVuZ2luZS0+Z3QtPnRpbWVsaW5lczsK
Pj4+ICsKPj4+ICsgICAgIHNwaW5fbG9jaygmdGltZWxpbmVzLT5sb2NrKTsKPj4+ICsKPj4+ICsg
ICAgIGlmICghYXRvbWljX2ZldGNoX2luYygmdGwtPmFjdGl2ZV9jb3VudCkpCj4+PiArICAgICAg
ICAgICAgIGxpc3RfYWRkX3RhaWwoJnRsLT5saW5rLCAmdGltZWxpbmVzLT5hY3RpdmVfbGlzdCk7
Cj4+Cj4+IEhtbSB3aXRoIHRoZXNlIG5ldyBwYXJ0IGl0IG1heWJlIG1hdGNoZXMvYW5zd2VycyBt
eSBxdWVzdGlvbiBmcm9tCj4+ICJkcm0vaTkxNS9ndDogQ2xvc2UgcmFjZSBiZXR3ZWVuIGVuZ2lu
ZV9wYXJrIGFuZAo+PiBpbnRlbF9ndF9yZXRpcmVfcmVxdWVzdHMiLiBJIHRoaW5rIGF0IGxlYXN0
LiBTaW5jZSBpdCBub3cgYWRkcyBhIHNlY29uZAo+PiBwbGFjZSB0aW1lbGluZSBjYW4gZW50ZXIg
dGhlIGFjdGl2ZV9saXN0Lgo+Pgo+PiBCdXQgbm8sIHdoZXJlIGRvZXMgdGhlIGludGVsX3RpbWVs
aW5lX2VudGVyIHJhY2UgY29tZSBmcm9tPyBDYW4ndCBiZQo+PiB1c2Vyc3BhY2Ugc3VibWlzc2lv
biBzaW5jZSB0aGV5IGFyZSBibG9ja2VkIG9uIHdmLT5sb2NrLgo+IAo+IFRoZSByYWNlIGlzIG5v
dCBqdXN0IHdpdGggaW50ZWxfdGltZWxpbmVfZW50ZXIsIGJ1dCB3aXRoCj4gaW50ZWxfZ3RfcmV0
aXJlX3JlcXVlc3RzLgo+IAo+IEFzIHNvb24gYXMgd2UgYXJlIG9uIHRoYXQgbGlzdCwgd2UgbWF5
IGJlIHJldGlyZWQuIElmIHdlIGFyZSByZXRpcmVkCj4gYmVmb3JlIGFkanVzdGluZyB0aGUgZW5n
aW5lLT53YWtlcmVmLmNvdW50LCB3ZSBhcmUgYjBya2VkLgo+IAo+IEFzIHNvb24gYXMgd2UgYWRq
dXN0IHRoZSBlbmdpbmUtPndha2VyZWYuY291bnQsIGFub3RoZXIgc3VibWlzc2lvbiBtYXkKPiBj
YWxsIGludGVsX3RpbWVsaW5lX2VudGVyLCBhbmQgYWdhaW4gbWF5IGV2ZW4gcmV0aXJlIHRoaXMg
cmVxdWVzdC4gVGhlCj4gZW50ZXIgaXRzZWxmIGlzIHBlcmZlY3RseSBmaW5lLCBidXQgd2UgbmVl
ZCB0byBzZXJpYWxpc2UgYWdhaW5zdCB0aGUKPiByZXRpcmVzLgoKSSB0aGluayB0aGUgdHdvIHBh
dGNoZXMgY29tYmluZWQgd29yaywgSSBhbSBqdXN0IG5vdCBzdXJlIHR3byAKYXRvbWljX2ZldGNo
X2luYygpLT5saXN0X2FkZCgpIGFyZSBuZWVkZWQgbm93IHRoYXQgeW91IHJlLW9yZGVyZWQgCl9f
aTkxNV9yZXF1ZXN0c19xdWV1ZSBhbmQgX19pbnRlbF93YWtlcmVmX2RlZmVyX3BhcmsgLSB0aGF0
J3MgdGhlIHBhcnQgCndoaWNoIGlzIGNvbmZ1c2luZyBtZS4gQnV0IGl0IGFsc28gZG9lc24ndCBo
YXJtLi4uCgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
