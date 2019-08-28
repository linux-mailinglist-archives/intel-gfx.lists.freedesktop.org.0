Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5830BA0A97
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 21:39:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5820B890DF;
	Wed, 28 Aug 2019 19:39:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55B85890DF
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 19:39:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18295763-1500050 for multiple; Wed, 28 Aug 2019 20:39:29 +0100
MIME-Version: 1.0
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 kbuild test robot <lkp@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <201908290308.WB5m8lf9%lkp@intel.com>
References: <20190828143327.7965-7-lionel.g.landwerlin@intel.com>
 <201908290308.WB5m8lf9%lkp@intel.com>
Message-ID: <156702116649.15406.9983080169205017105@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 28 Aug 2019 20:39:26 +0100
Subject: Re: [Intel-gfx] [PATCH v11 06/10] drm/i915/perf: implement active
 wait for noa configurations
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
Cc: intel-gfx@lists.freedesktop.org, kbuild-all@01.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBrYnVpbGQgdGVzdCByb2JvdCAoMjAxOS0wOC0yOCAyMDozNDoxNCkKPiBIaSBMaW9u
ZWwsCj4gCj4gVGhhbmsgeW91IGZvciB0aGUgcGF0Y2ghIFBlcmhhcHMgc29tZXRoaW5nIHRvIGlt
cHJvdmU6Cj4gCj4gW2F1dG8gYnVpbGQgdGVzdCBXQVJOSU5HIG9uIGRybS1pbnRlbC9mb3ItbGlu
dXgtbmV4dF0KPiBbY2Fubm90IGFwcGx5IHRvIHY1LjMtcmM2IG5leHQtMjAxOTA4MjhdCj4gW2lm
IHlvdXIgcGF0Y2ggaXMgYXBwbGllZCB0byB0aGUgd3JvbmcgZ2l0IHRyZWUsIHBsZWFzZSBkcm9w
IHVzIGEgbm90ZSB0byBoZWxwIGltcHJvdmUgdGhlIHN5c3RlbV0KPiAKPiB1cmw6ICAgIGh0dHBz
Oi8vZ2l0aHViLmNvbS8wZGF5LWNpL2xpbnV4L2NvbW1pdHMvTGlvbmVsLUxhbmR3ZXJsaW4vZHJt
LWk5MTUtVnVsa2FuLXBlcmZvcm1hbmNlLXF1ZXJ5LXN1cHBvcnQvMjAxOTA4MjktMDIwODQxCj4g
YmFzZTogICBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9wLm9yZy9kcm0taW50ZWwgZm9yLWxpbnV4
LW5leHQKPiBjb25maWc6IGkzODYtZGVmY29uZmlnIChhdHRhY2hlZCBhcyAuY29uZmlnKQo+IGNv
bXBpbGVyOiBnY2MtNyAoRGViaWFuIDcuNC4wLTExKSA3LjQuMAo+IHJlcHJvZHVjZToKPiAgICAg
ICAgICMgc2F2ZSB0aGUgYXR0YWNoZWQgLmNvbmZpZyB0byBsaW51eCBidWlsZCB0cmVlCj4gICAg
ICAgICBtYWtlIEFSQ0g9aTM4NiAKPiAKPiBJZiB5b3UgZml4IHRoZSBpc3N1ZSwga2luZGx5IGFk
ZCBmb2xsb3dpbmcgdGFnCj4gUmVwb3J0ZWQtYnk6IGtidWlsZCB0ZXN0IHJvYm90IDxsa3BAaW50
ZWwuY29tPgo+IAo+IEFsbCB3YXJuaW5ncyAobmV3IG9uZXMgcHJlZml4ZWQgYnkgPj4pOgo+IAo+
ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jOiBJbiBmdW5jdGlvbiAnaTkx
NV9wZXJmX25vYV9kZWxheV9zZXQnOgo+ID4+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVi
dWdmcy5jOjM1ODg6MTg6IHdhcm5pbmc6IGxlZnQgc2hpZnQgY291bnQgPj0gd2lkdGggb2YgdHlw
ZSBbLVdzaGlmdC1jb3VudC1vdmVyZmxvd10KPiAgICAgIGlmICh2YWwgPiAoKDF1bCA8PCAzMikg
LSAxKSAqIFJVTlRJTUVfSU5GTyhpOTE1KS0+Y3NfdGltZXN0YW1wX2ZyZXF1ZW5jeV9raHopCj4g
ICAgICAgICAgICAgICAgICAgICAgXn4KPiAKPiB2aW0gKzM1ODggZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kZWJ1Z2ZzLmMKPiAKPiAgIDM1NzUgIAo+ICAgMzU3NiAgREVGSU5FX1NJTVBMRV9B
VFRSSUJVVEUoaTkxNV93ZWRnZWRfZm9wcywKPiAgIDM1NzcgICAgICAgICAgICAgICAgICAgICAg
ICAgIGk5MTVfd2VkZ2VkX2dldCwgaTkxNV93ZWRnZWRfc2V0LAo+ICAgMzU3OCAgICAgICAgICAg
ICAgICAgICAgICAgICAgIiVsbHVcbiIpOwo+ICAgMzU3OSAgCj4gICAzNTgwICBzdGF0aWMgaW50
Cj4gICAzNTgxICBpOTE1X3BlcmZfbm9hX2RlbGF5X3NldCh2b2lkICpkYXRhLCB1NjQgdmFsKQo+
ICAgMzU4MiAgewo+ICAgMzU4MyAgICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSA9IGRhdGE7Cj4gICAzNTg0ICAKPiAgIDM1ODUgICAgICAgICAgLyogVGhpcyB3b3VsZCBsZWFk
IHRvIGluZmluaXRlIHdhaXRzIGFzIHdlJ3JlIGRvaW5nIHRpbWVzdGFtcAo+ICAgMzU4NiAgICAg
ICAgICAgKiBkaWZmZXJlbmNlIG9uIHRoZSBDUyB3aXRoIG9ubHkgMzJiaXRzLgo+ICAgMzU4NyAg
ICAgICAgICAgKi8KPiA+IDM1ODggICAgICAgICAgaWYgKHZhbCA+ICgoMXVsIDw8IDMyKSAtIDEp
ICogUlVOVElNRV9JTkZPKGk5MTUpLT5jc190aW1lc3RhbXBfZnJlcXVlbmN5X2toeikKCmlmICh2
YWwgPiBtdWxfdTMyX3UzMihVMzJfTUFYLCBSVU5USU1FX0lORk8oaTkxNSktPmNzX3RpbWVzdGFt
cF9mcmVxdWVuY3lfa2h6KSkKCj4gICAzNTg5ICAgICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5W
QUw7Cj4gICAzNTkwICAKPiAgIDM1OTEgICAgICAgICAgYXRvbWljNjRfc2V0KCZpOTE1LT5wZXJm
Lm5vYV9wcm9ncmFtbWluZ19kZWxheSwgdmFsKTsKPiAgIDM1OTIgICAgICAgICAgcmV0dXJuIDA7
Cj4gICAzNTkzICB9Cj4gICAzNTk0ICAKPiAKPiAtLS0KPiAwLURBWSBrZXJuZWwgdGVzdCBpbmZy
YXN0cnVjdHVyZSAgICAgICAgICAgICAgICBPcGVuIFNvdXJjZSBUZWNobm9sb2d5IENlbnRlcgo+
IGh0dHBzOi8vbGlzdHMuMDEub3JnL3BpcGVybWFpbC9rYnVpbGQtYWxsICAgICAgICAgICAgICAg
ICAgIEludGVsIENvcnBvcmF0aW9uCj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
