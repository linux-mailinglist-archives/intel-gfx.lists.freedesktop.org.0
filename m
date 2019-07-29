Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C8878D94
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2019 16:16:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9785489FA9;
	Mon, 29 Jul 2019 14:16:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FB0289FA9
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2019 14:16:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17701716-1500050 for multiple; Mon, 29 Jul 2019 15:16:05 +0100
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190729140847.18557-1-jani.nikula@intel.com>
References: <20190729140847.18557-1-jani.nikula@intel.com>
Message-ID: <156440976334.6373.17742144058690324554@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 29 Jul 2019 15:16:03 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: use upstream version of header
 tests
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wNy0yOSAxNTowODo0NykKPiBUaHJvdyBvdXQgb3Vy
IGxvY2FsIGhhY2tzIG9mIGhlYWRlciB0ZXN0cyBub3cgdGhhdCB0aGUgbW9yZSBnZW5lcmljCj4g
a2J1aWxkIHZlcnNpb25zIGFyZSB1cHN0cmVhbS4KPiAKPiBBdCBsZWFzdCBmb3Igbm93LCBjb250
aW51ZSB0byBrZWVwIHRoZSBoZWFkZXIgdGVzdHMgYmVoaW5kCj4gQ09ORklHX0RSTV9JOTE1X1dF
UlJPUj15IGtub2IuCj4gCj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
Cj4gCj4gLS0tCj4gCj4gVGVjaG5pY2FsbHkgdGhlIHVwc3RyZWFtIHZlcnNpb25zIGFyZSBvbmx5
IGluIGRybS10aXAsIGFuZCBub3QgaW4gZGlucQo+IHVudGlsIGEgYmFja21lcmdlLCBidXQgSSB0
aGluayBpdCdzIGdvb2QgZW5vdWdoLiBJIGRvbid0IHRoaW5rIGl0IHNob3VsZAo+IG1lc3MgYW55
dGhpbmcgdXAuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLmRl
YnVnIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1Zwo+IGluZGV4IDRjZGMwMTgx
YTA5My4uODdhMzhjNmFhYTQxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tj
b25maWcuZGVidWcKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLmRlYnVnCj4g
QEAgLTcsNiArNyw3IEBAIGNvbmZpZyBEUk1fSTkxNV9XRVJST1IKPiAgICAgICAgICAjIFdlIHVz
ZSB0aGUgZGVwZW5kZW5jeSBvbiAhQ09NUElMRV9URVNUIHRvIG5vdCBiZSBlbmFibGVkIGluCj4g
ICAgICAgICAgIyBhbGxtb2Rjb25maWcgb3IgYWxseWVzY29uZmlnIGNvbmZpZ3VyYXRpb25zCj4g
ICAgICAgICAgZGVwZW5kcyBvbiAhQ09NUElMRV9URVNUCj4gKyAgICAgICBzZWxlY3QgSEVBREVS
X1RFU1QKPiAgICAgICAgICBkZWZhdWx0IG4KPiAgICAgICAgICBoZWxwCj4gICAgICAgICAgICBB
ZGQgLVdlcnJvciB0byB0aGUgYnVpbGQgZmxhZ3MgZm9yIChhbmQgb25seSBmb3IpIGk5MTUua28u
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvTWFrZWZpbGUKPiBpbmRleCA0MmMxN2E3YjBjYjAuLjMzMWIxOWNjODI0NyAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCj4gQEAgLTMyLDcgKzMyLDcgQEAgc3ViZGlyLWNjZmxh
Z3MteSArPSBcCj4gICAgICAgICAkKGNhbGwgYXMtaW5zdHIsbW92bnRkcWEgKCVlYXgpJChjb21t
YSkleG1tMCwtRENPTkZJR19BU19NT1ZOVERRQSkKPiAgCj4gICMgRXh0cmEgaGVhZGVyIHRlc3Rz
Cj4gLWluY2x1ZGUgJChzcmMpL01ha2VmaWxlLmhlYWRlci10ZXN0Cj4gK2hlYWRlci10ZXN0LXBh
dHRlcm4tJChDT05GSUdfRFJNX0k5MTVfV0VSUk9SKSA6PSAqLmgKCkJ1dCB3b24ndCB0aGF0IGFj
dHVhbGx5IGJyZWFrIGRpbnEgY29tcGlsYXRpb24gdW50aWwgdGhlIGJhY2ttZXJnZT8gRm9yCnRo
b3NlIG9mIHVzIHRoYXQgY29tcGlsZSB3aXRoIFdFUlJPUi4KLUNocmlzCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
