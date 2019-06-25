Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D90A55C50
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 01:29:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A9CD6E162;
	Tue, 25 Jun 2019 23:29:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 265116E162
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 23:29:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 16:29:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,417,1557212400"; d="scan'208";a="313239531"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga004.jf.intel.com with ESMTP; 25 Jun 2019 16:29:11 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190625130128.11009-1-chris@chris-wilson.co.uk>
 <20190625130128.11009-16-chris@chris-wilson.co.uk>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <89da287b-4825-f3f5-49a4-2d19107e0c92@intel.com>
Date: Tue, 25 Jun 2019 16:28:59 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190625130128.11009-16-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 16/20] drm/i915/gt: Drop stale commentary
 for timeline density
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

CgpPbiA2LzI1LzE5IDY6MDEgQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPiBXZSBubyBsb25nZXIg
YWxsb2NhdGUgYSBjb250aW5ndW91cyBzZXQgb2YgdGltZWxpbmUgaWRzIGZvciBhbGwgZW5naW5l
cwo+IHVwb24gY3JlYXRpb24sIHNvIHdlIG5vIGxvbmdlciBzaG91bGQgYXNzdW1lIHRoYXQgdGhl
IHRpbWVsaW5lcyBhcmUKPiBkZW5zaXR5IGFsbG9jYXRlZCB3aXRoaW4gYSBjb250ZXh0LiBIb3Bl
ZnVsbHksIHN0aWxsIGRlbnNlIGVub3VnaCBmb3IgdXMKPiB0byB0YWtlIGFkdmFudGFnZSBvZiB0
aGUgY29tcHJlc3NlZCByYWRpeCB0cmVlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKUmV2aWV3ZWQtYnk6IERhbmllbGUgQ2VyYW9s
byBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+CgpEYW5pZWxlCgo+IC0t
LQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmUuYyB8IDE0ICsrLS0t
LS0tLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlv
bnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGlt
ZWxpbmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lLmMKPiBpbmRl
eCA3ZmI1ZGVmZDllNzEuLjdiNDc2Y2Q1NWRhYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF90aW1lbGluZS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfdGltZWxpbmUuYwo+IEBAIC0yMTAsMjEgKzIxMCwxMSBAQCBpbnQgaW50ZWxfdGlt
ZWxpbmVfaW5pdChzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRpbWVsaW5lLAo+ICAgewo+ICAgCXZv
aWQgKnZhZGRyOwo+ICAgCj4gLQkvKgo+IC0JICogSWRlYWxseSB3ZSB3YW50IGEgc2V0IG9mIGVu
Z2luZXMgb24gYSBzaW5nbGUgbGVhZiBhcyB3ZSBleHBlY3QKPiAtCSAqIHRvIG1vc3RseSBiZSB0
cmFja2luZyBzeW5jaHJvbmlzYXRpb24gYmV0d2VlbiBlbmdpbmVzLiBJdCBpcyBub3QKPiAtCSAq
IGEgaHVnZSBpc3N1ZSBpZiB0aGlzIGlzIG5vdCB0aGUgY2FzZSwgYnV0IHdlIG1heSB3YW50IHRv
IG1pdGlnYXRlCj4gLQkgKiBhbnkgcGFnZSBjcm9zc2luZyBwZW5hbHRpZXMgaWYgdGhleSBiZWNv
bWUgYW4gaXNzdWUuCj4gLQkgKgo+IC0JICogQ2FsbGVkIGR1cmluZyBlYXJseV9pbml0IGJlZm9y
ZSB3ZSBrbm93IGhvdyBtYW55IGVuZ2luZXMgdGhlcmUgYXJlLgo+IC0JICovCj4gLQlCVUlMRF9C
VUdfT04oS1NZTkNNQVAgPCBJOTE1X05VTV9FTkdJTkVTKTsKPiAtCj4gLQl0aW1lbGluZS0+Z3Qg
PSBndDsKPiAtCj4gICAJa3JlZl9pbml0KCZ0aW1lbGluZS0+a3JlZik7Cj4gICAJYXRvbWljX3Nl
dCgmdGltZWxpbmUtPnBpbl9jb3VudCwgMCk7Cj4gICAKPiArCXRpbWVsaW5lLT5ndCA9IGd0Owo+
ICsKPiAgIAl0aW1lbGluZS0+aGFzX2luaXRpYWxfYnJlYWRjcnVtYiA9ICFod3NwOwo+ICAgCXRp
bWVsaW5lLT5od3NwX2NhY2hlbGluZSA9IE5VTEw7Cj4gICAKPiAKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
