Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B109382535
	for <lists+intel-gfx@lfdr.de>; Mon, 17 May 2021 09:19:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCCFE6E102;
	Mon, 17 May 2021 07:19:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72D546E102;
 Mon, 17 May 2021 07:19:00 +0000 (UTC)
IronPort-SDR: nmKDC9T4BfiZF00zreattFKk8PXAoIaQVrjeSJaTr0V2LZVWtAbBUd+m+YIr7XJYoUpXUdVsAC
 644ulf3t0vhA==
X-IronPort-AV: E=McAfee;i="6200,9189,9986"; a="179998323"
X-IronPort-AV: E=Sophos;i="5.82,306,1613462400"; d="scan'208";a="179998323"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 00:18:59 -0700
IronPort-SDR: PnIqeWS5ets5qspARUY06Bm1PmFk7CQuXMAnlhLSmi4WO4BcCoCtZtErh8sSU3UiMpzb3BhoA8
 +5GTctVDmodg==
X-IronPort-AV: E=Sophos;i="5.82,306,1613462400"; d="scan'208";a="472275178"
Received: from rminkov-mobl3.ger.corp.intel.com ([10.249.254.204])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 00:18:56 -0700
Message-ID: <c7b0e1ef628fc71b812ebd3d88c6ba09e6b8f65f.camel@linux.intel.com>
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
In-Reply-To: <CAM0jSHN4iuq+nYkWq0aZ-K8q9NBbQy7TLc1Zp6=DEV_fCaAN3A@mail.gmail.com>
References: <20210511132525.377190-1-thomas.hellstrom@linux.intel.com>
 <20210511132525.377190-4-thomas.hellstrom@linux.intel.com>
 <CAM0jSHN4iuq+nYkWq0aZ-K8q9NBbQy7TLc1Zp6=DEV_fCaAN3A@mail.gmail.com>
MIME-Version: 1.0
Date: Mon, 17 May 2021 09:18:17 +0200
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33) 
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915/ttm,
 drm/ttm: Initialize the ttm device and memory managers.
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIxLTA1LTEyIGF0IDA5OjU3ICswMTAwLCBNYXR0aGV3IEF1bGQgd3JvdGU6Cj4g
T24gVHVlLCAxMSBNYXkgMjAyMSBhdCAxNDoyNiwgVGhvbWFzIEhlbGxzdHLDtm0KPiA8dGhvbWFz
LmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+ID4gCj4gPiBUZW1wb3JhcmlseSBy
ZW1vdmUgdGhlIGJ1ZGR5IGFsbG9jYXRvciBhbmQgcmVsYXRlZCBzZWxmdGVzdHMKPiA+IGFuZCBo
b29rIHVwIHRoZSBUVE0gcmFuZ2UgbWFuYWdlciBmb3IgaTkxNSByZWdpb25zLgo+ID4gCj4gPiBJ
biBvcmRlciB0byBzdXBwb3J0IHNvbWUgb2YgdGhlIG1vY2sgcmVnaW9uLXJlbGF0ZWQgc2VsZnRl
c3RzLCB3ZQo+ID4gbmVlZCB0bwo+ID4gYmUgYWJsZSB0byBpbml0aWFsaXplIHRoZSBUVE0gcmFu
Z2UtbWFuYWdlciBzdGFuZGFsb25lIHdpdGhvdXQgYQo+ID4gc3RydWN0Cj4gPiB0dG1fZGV2aWNl
LiBBZGQgdHdvIGZ1bmN0aW9ucyB0byBhbGxvdyB0aGF0IHRvIHRoZSBUVE0gYXBpLgo+ID4gCj4g
PiBGaW5hbGx5IG1vZGlmeSB0aGUgbW9jayByZWdpb24gc2VsZnRlc3RzIHNvbWV3aGF0IHRvIGFj
Y291bnQgZm9yIGEKPiA+IGZyYWdtZW50aW5nIG1hbmFnZXIuCj4gPiAKPiA+IENjOiBDaHJpc3Rp
YW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBU
aG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Cj4gPiAt
LS0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZ8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgfMKgwqAgMSArCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2Vm
aWxlwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgMiArLQo+ID4gwqBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbG1lbS5jwqDCoMKgwqDCoCB8wqAgNTggKy0K
PiA+IMKgLi4uL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmjCoCB8wqDC
oCA2ICstCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wYWdlcy5jwqDC
oMKgwqAgfMKgwqAgMyArLQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
cmVnaW9uLmPCoMKgwqAgfCAxMjAgLS0tCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9yZWdpb24uaMKgwqDCoCB8wqDCoCA0IC0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX3NobWVtLmPCoMKgwqDCoCB8wqDCoCA0ICstCj4gPiDCoGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zdG9sZW4uY8KgwqDCoCB8wqAgMTAgKy0KPiA+IMKg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3N0b2xlbi5owqDCoMKgIHzCoMKgIDkg
Ky0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuY8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgfMKgwqAgMiAtCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jl
Z2lvbl9sbWVtLmPCoMKgIHzCoCAyNyArLQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2J1ZGR5LmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCA0MzUgLS0tLS0tLS0tLQo+ID4gwqBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2J1ZGR5LmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
fCAxMzEgLS0tCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmPCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDggKwo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5owqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCA3ICstCj4gPiDCoGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHzCoMKgIDEgKwo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dsb2JhbHMuY8KgwqDC
oMKgwqDCoMKgwqDCoMKgIHzCoMKgIDEgLQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dsb2JhbHMuaMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDEgLQo+ID4gwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3NjYXR0ZXJsaXN0LmPCoMKgwqDCoMKgwqAgfMKgIDcwICsrCj4gPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc2NhdHRlcmxpc3QuaMKgwqDCoMKgwqDCoCB8wqAg
MzUgKwo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmPCoMKg
wqAgfCAxODAgKystLQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVn
aW9uLmjCoMKgwqAgfMKgIDQ0ICstCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Jl
Z2lvbl90dG0uY8KgwqDCoMKgwqDCoCB8IDI0NiArKysrKysKPiA+IMKgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfcmVnaW9uX3R0bS5owqDCoMKgwqDCoMKgIHzCoCAyOSArCj4gPiDCoGRyaXZl
cnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2J1ZGR5LmPCoMKgIHwgNzg5IC0tLS0tLS0t
LS0tLS0tCj4gPiAtLS0tCj4gPiDCoC4uLi9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9tb2NrX3Nl
bGZ0ZXN0cy5owqAgfMKgwqAgMSAtCj4gPiDCoC4uLi9kcm0vaTkxNS9zZWxmdGVzdHMvaW50ZWxf
bWVtb3J5X3JlZ2lvbi5jwqAgfCAxMzMgKy0tCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L3Nl
bGZ0ZXN0cy9tb2NrX3JlZ2lvbi5jwqAgfMKgIDUxICstCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS90
dG0vdHRtX3JhbmdlX21hbmFnZXIuY8KgwqDCoMKgwqDCoCB8wqAgNTUgKy0KPiA+IMKgaW5jbHVk
ZS9kcm0vdHRtL3R0bV9ib19kcml2ZXIuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKg
IDIzICsKPiA+IMKgMzEgZmlsZXMgY2hhbmdlZCwgNzE1IGluc2VydGlvbnMoKyksIDE3NzEgZGVs
ZXRpb25zKC0pCj4gPiDCoGRlbGV0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2J1ZGR5LmMKPiA+IMKgZGVsZXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfYnVkZHkuaAo+ID4gwqBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcmVnaW9uX3R0bS5jCj4gPiDCoGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9yZWdpb25fdHRtLmgKPiA+IMKgZGVsZXRlIG1vZGUgMTAwNjQ0IGRy
aXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2J1ZGR5LmMKPiA+IAo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcKPiA+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvS2NvbmZpZwo+ID4gaW5kZXggMWUxY2IyNDVmY2E3Li5iNjNkMzc0ZGZmMjMgMTAwNjQ0
Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9LY29uZmlnCj4gPiBAQCAtMjYsNiArMjYsNyBAQCBjb25maWcgRFJNX0k5
MTUKPiA+IMKgwqDCoMKgwqDCoMKgIHNlbGVjdCBTTkRfSERBX0k5MTUgaWYgU05EX0hEQV9DT1JF
Cj4gPiDCoMKgwqDCoMKgwqDCoCBzZWxlY3QgQ0VDX0NPUkUgaWYgQ0VDX05PVElGSUVSCj4gPiDC
oMKgwqDCoMKgwqDCoCBzZWxlY3QgVk1BUF9QRk4KPiA+ICvCoMKgwqDCoMKgwqAgc2VsZWN0IERS
TV9UVE0KPiA+IMKgwqDCoMKgwqDCoMKgIGhlbHAKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoCBDaG9v
c2UgdGhpcyBvcHRpb24gaWYgeW91IGhhdmUgYSBzeXN0ZW0gdGhhdCBoYXMgIkludGVsCj4gPiBH
cmFwaGljcwo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgIE1lZGlhIEFjY2VsZXJhdG9yIiBvciAiSEQg
R3JhcGhpY3MiIGludGVncmF0ZWQgZ3JhcGhpY3MsCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvTWFrZWZpbGUKPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUK
PiA+IGluZGV4IGQwZDkzNmQ5MTM3Yi4uY2I4ODIzNTcwOTk2IDEwMDY0NAo+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L01ha2VmaWxlCj4gPiBAQCAtNTAsNiArNTAsNyBAQCBpOTE1LXkgKz0gaTkxNV9kcnYubyBcCj4g
PiDCoMKgwqDCoMKgwqDCoMKgwqAgaW50ZWxfbWVtb3J5X3JlZ2lvbi5vIFwKPiA+IMKgwqDCoMKg
wqDCoMKgwqDCoCBpbnRlbF9wY2gubyBcCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqAgaW50ZWxfcG0u
byBcCj4gPiArwqDCoMKgwqDCoMKgwqDCoCBpbnRlbF9yZWdpb25fdHRtLm8gXAo+ID4gwqDCoMKg
wqDCoMKgwqDCoMKgIGludGVsX3J1bnRpbWVfcG0ubyBcCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqAg
aW50ZWxfc2lkZWJhbmQubyBcCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqAgaW50ZWxfc3RlcC5vIFwK
PiA+IEBAIC0xNjAsNyArMTYxLDYgQEAgZ2VtLXkgKz0gXAo+ID4gwqBpOTE1LXkgKz0gXAo+ID4g
wqDCoMKgwqDCoMKgwqDCoMKgICQoZ2VtLXkpIFwKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoCBpOTE1
X2FjdGl2ZS5vIFwKPiA+IC3CoMKgwqDCoMKgwqDCoMKgIGk5MTVfYnVkZHkubyBcCj4gPiDCoMKg
wqDCoMKgwqDCoMKgwqAgaTkxNV9jbWRfcGFyc2VyLm8gXAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKg
IGk5MTVfZ2VtX2V2aWN0Lm8gXAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgIGk5MTVfZ2VtX2d0dC5v
IFwKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fbG1l
bS5jCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9sbWVtLmMKPiA+IGlu
ZGV4IGY0NGJkZDA4ZjdjYi4uZjQyODAzZWE0OGYyIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2xtZW0uYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2xtZW0uYwo+ID4gQEAgLTQsMTYgKzQsNzAgQEAKPiA+IMKgICov
Cj4gPiAKPiA+IMKgI2luY2x1ZGUgImludGVsX21lbW9yeV9yZWdpb24uaCIKPiA+ICsjaW5jbHVk
ZSAiaW50ZWxfcmVnaW9uX3R0bS5oIgo+ID4gwqAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX3JlZ2lv
bi5oIgo+ID4gwqAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX2xtZW0uaCIKPiA+IMKgI2luY2x1ZGUg
Imk5MTVfZHJ2LmgiCj4gPiAKPiA+ICtzdGF0aWMgdm9pZCBsbWVtX3B1dF9wYWdlcyhzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IHNnX3RhYmxlICpw
YWdlcykKPiA+ICt7Cj4gPiArwqDCoMKgwqDCoMKgIGludGVsX3JlZ2lvbl90dG1fbm9kZV9mcmVl
KG9iai0+bW0ucmVnaW9uLCBvYmotCj4gPiA+bW0uc3RfbW1fbm9kZSk7Cj4gPiArwqDCoMKgwqDC
oMKgIG9iai0+bW0uZGlydHkgPSBmYWxzZTsKPiA+ICvCoMKgwqDCoMKgwqAgc2dfZnJlZV90YWJs
ZShwYWdlcyk7Cj4gPiArwqDCoMKgwqDCoMKgIGtmcmVlKHBhZ2VzKTsKPiA+ICt9Cj4gPiArCj4g
PiArc3RhdGljIGludCBsbWVtX2dldF9wYWdlcyhzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAq
b2JqKQo+ID4gK3sKPiA+ICvCoMKgwqDCoMKgwqAgdW5zaWduZWQgaW50IGZsYWdzOwo+ID4gK8Kg
wqDCoMKgwqDCoCBzdHJ1Y3Qgc2dfdGFibGUgKnBhZ2VzOwo+ID4gKwo+ID4gK8KgwqDCoMKgwqDC
oCBmbGFncyA9IEk5MTVfQUxMT0NfTUlOX1BBR0VfU0laRTsKPiA+ICvCoMKgwqDCoMKgwqAgaWYg
KG9iai0+ZmxhZ3MgJiBJOTE1X0JPX0FMTE9DX0NPTlRJR1VPVVMpCj4gPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBmbGFncyB8PSBJOTE1X0FMTE9DX0NPTlRJR1VPVVM7Cj4gPiArCj4g
PiArwqDCoMKgwqDCoMKgIG9iai0+bW0uc3RfbW1fbm9kZSA9IGludGVsX3JlZ2lvbl90dG1fbm9k
ZV9hbGxvYyhvYmotCj4gPiA+bW0ucmVnaW9uLAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG9iai0KPiA+ID5iYXNlLnNpemUsCj4gPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZmxh
Z3MpOwo+ID4gK8KgwqDCoMKgwqDCoCBpZiAoSVNfRVJSKG9iai0+bW0uc3RfbW1fbm9kZSkpCj4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gUFRSX0VSUihvYmotPm1tLnN0
X21tX25vZGUpOwo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoCAvKiBSYW5nZSBtYW5hZ2VyIGlzIGFs
d2F5cyBjb250aWdvdXMgKi8KPiA+ICvCoMKgwqDCoMKgwqAgaWYgKG9iai0+bW0ucmVnaW9uLT5p
c19yYW5nZV9tYW5hZ2VyKQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb2JqLT5m
bGFncyB8PSBJOTE1X0JPX0FMTE9DX0NPTlRJR1VPVVM7Cj4gPiArwqDCoMKgwqDCoMKgIHBhZ2Vz
ID0gaW50ZWxfcmVnaW9uX3R0bV9ub2RlX3RvX3N0KG9iai0+bW0ucmVnaW9uLCBvYmotCj4gPiA+
bW0uc3RfbW1fbm9kZSk7Cj4gPiArwqDCoMKgwqDCoMKgIGlmIChJU19FUlIocGFnZXMpKQo+ID4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIFBUUl9FUlIocGFnZXMpOwo+IAo+
IGVycm9yIHVud2luZD8KPiAKPiA+ICsKPiA+ICvCoMKgwqDCoMKgwqAgX19pOTE1X2dlbV9vYmpl
Y3Rfc2V0X3BhZ2VzKG9iaiwgcGFnZXMsCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaTkxNV9zZ19kbWFfcGFn
ZV9zaXplcyhwYWdlcy0KPiA+ID5zZ2wpKTsKPiA+ICsKPiA+ICvCoMKgwqDCoMKgwqAgaWYgKG9i
ai0+ZmxhZ3MgJiBJOTE1X0JPX0FMTE9DX0NQVV9DTEVBUikgewo+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgdm9pZCBfX2lvbWVtICp2YWRkciA9Cj4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaTkxNV9nZW1fb2JqZWN0X2xtZW1faW9fbWFw
KG9iaiwgMCwgb2JqLQo+ID4gPmJhc2Uuc2l6ZSk7Cj4gPiArCj4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBpZiAoIXZhZGRyKSB7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IHNnX3RhYmxlICpwYWdlcyA9Cj4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIF9f
aTkxNV9nZW1fb2JqZWN0X3Vuc2V0X3BhZ2VzKG9iaik7Cj4gPiArCj4gPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKCFJU19FUlJfT1JfTlVMTChwYWdl
cykpCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGxtZW1fcHV0X3BhZ2VzKG9iaiwgcGFnZXMpOwo+ID4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgfQo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgbWVtc2V0X2lvKHZhZGRyLCAwLCBvYmotPmJhc2Uuc2l6ZSk7Cj4gPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBpb19tYXBwaW5nX3VubWFwKHZhZGRyKTsKPiA+ICvCoMKgwqDCoMKg
wqAgfQo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoCByZXR1cm4gMDsKPiA+ICt9Cj4gCj4gPHNuaXA+
Cj4gCj4gPiArLyoqCj4gPiArICogaTkxNV9zZ19kbWFfcGFnZV9zaXplcyAtIENhbGN1bGF0ZSBw
YWdlIHNpemVzIGZyb20gYQo+ID4gc2NhdHRlcmxpc3QKPiA+ICsgKiBAc2c6IFRoZSBzY2F0dGVy
bGlzdCBmcm9tIHdoaWNoIHRvIGNhbGN1bGF0ZSBwYWdlIHNpemVzCj4gPiArICoKPiA+ICsgKiBS
ZXR1cm46IGEgdmFsdWUgd2l0aCBiaXRzIHNldHMgZm9yIHJlbGV2YW50IHBhZ2Ugc2l6ZXMuCj4g
PiArICovCj4gPiArc3RhdGljIGlubGluZSB1bnNpZ25lZCBpbnQgaTkxNV9zZ19kbWFfcGFnZV9z
aXplcyhzdHJ1Y3QKPiA+IHNjYXR0ZXJsaXN0ICpzZykKPiA+ICt7Cj4gPiArwqDCoMKgwqDCoMKg
IHVuc2lnbmVkIGludCBwYWdlX3NpemVzOwo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoCBwYWdlX3Np
emVzID0gMDsKPiA+ICvCoMKgwqDCoMKgwqAgd2hpbGUgKHNnKSB7Cj4gPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBHRU1fQlVHX09OKHNnLT5vZmZzZXQpOwo+ID4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgR0VNX0JVR19PTighSVNfQUxJR05FRChzZy0+ZG1hX2xlbmd0aCwg
UEFHRV9TSVpFKSk7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwYWdlX3NpemVz
IHw9IHNnLT5kbWFfbGVuZ3RoOwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc2cg
PSBfX3NnX25leHQoc2cpOwo+ID4gK8KgwqDCoMKgwqDCoCB9Cj4gPiArCj4gPiArwqDCoMKgwqDC
oMKgIC8qCj4gPiArwqDCoMKgwqDCoMKgwqAgKiBJcyB0aGlzIG5lY2Vzc2FyeSB0byBzdXBwb3J0
IGJ1aWxkaW5nIGxhcmdlIEdQVSBwYWdlcwo+ID4gZnJvbQo+ID4gK8KgwqDCoMKgwqDCoMKgICog
ZXZlbiBsYXJnZXIgc2VnbWVudHM/Cj4gPiArwqDCoMKgwqDCoMKgwqAgKi8KPiAKPiBXZSBqdXN0
IG5lZWQgdG8ga25vdyB0aGUgYWJvdmUgc2cgcGFnZV9zaXplcywgd2hpY2ggaXMgdGhlIG1hc2sg
b2YKPiBzZy0+ZG1hX2xlbmd0aCBmb3IgZWFjaCBzZy4gTGF0ZXIgaW4gX19pOTE1X2dlbV9vYmpl
Y3Rfc2V0X3BhZ2VzKCkgd2UKPiB1c2UgdGhpcyB0byBkZXRlcm1pbmUgdGhlIHBvdGVudGlhbCBH
UFUgcGFnZSBzaXplcyBmb3IgdGhlIG9iamVjdCwKPiBkZXBlbmRpbmcgb24gd2hhdCB0aGUgZGV2
aWNlIHN1cHBvcnRzLiBTbyB0aGUgYmVsb3cgc3R1ZmYgc2hvdWxkbid0Cj4gYmUKPiBuZWVkZWQu
IEFsc28gd2UgY2FuIGp1c3QgdXNlIGk5MTVfc2dfcGFnZV9zaXplcygpIGhlcmUuCgpJIG5vdGlj
ZWQgdGhhdCBpOTE1X3NnX3BhZ2Vfc2l6ZXMoKSB1c2VzIHNnLT5sZW5ndGgoKSBpbnN0ZWFkIG9m
IHNnLQo+ZG1hX2xlbmd0aCgpLiBUaGF0IGRvZXNuJ3QgbG9vayBsaWtlIHdoYXQgd2UncmUgYWZ0
ZXIgaGVyZS4gRG8geW91Cmtub3cgaWYgdGhlcmUgaXMgYSByZWFzb24gZm9yIHRoYXQ/CgpUaGFu
a3MsClRob21hcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
