Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19AAFD5EE7
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 11:31:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E49089F41;
	Mon, 14 Oct 2019 09:31:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75BFF89F41
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 09:31:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18829029-1500050 for multiple; Mon, 14 Oct 2019 10:31:17 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191013193115.16844-1-chris@chris-wilson.co.uk>
 <15bcf769-999a-20bc-6884-af74c731b6b7@linux.intel.com>
 <157104527935.18859.15288695469053949608@skylake-alporthouse-com>
 <157104533390.18859.11553622986226230475@skylake-alporthouse-com>
In-Reply-To: <157104533390.18859.11553622986226230475@skylake-alporthouse-com>
Message-ID: <157104547490.18859.11781813464506707667@skylake-alporthouse-com>
Date: Mon, 14 Oct 2019 10:31:14 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Assert tasklet is
 locked for process_csb()
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTAtMTQgMTA6Mjg6NTMpCj4gUXVvdGluZyBDaHJp
cyBXaWxzb24gKDIwMTktMTAtMTQgMTA6Mjc6NTkpCj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1bGlu
ICgyMDE5LTEwLTE0IDEwOjI1OjA0KQo+ID4gPiAKPiA+ID4gT24gMTMvMTAvMjAxOSAyMDozMSwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gPiA+IFdlIHJlbHkgb24gb25seSB0aGUgdGFza2xldCBi
ZWluZyBhbGxvd2VkIHRvIGNhbGwgaW50byBwcm9jZXNzX2NzYigpLCBzbwo+ID4gPiA+IGFzc2Vy
dCB0aGF0IGlzIGxvY2tlZCB3aGVuIHdlIGRvLiBBcyB0aGUgdGFza2xldCB1c2VzIGEgc2ltcGxl
IGJpdGxvY2ssCj4gPiA+ID4gdGhlcmUgaXMgbm8gc3Ryb25nIGxvY2tkZXAgY2hlY2tpbmcgc28g
d2UgbXVzdCBtYWtlIGRvIHdpdGggYSBwbGFpbgo+ID4gPiA+IGFzc2VydGlvbiB0aGF0IHRoZSB0
YXNrbGV0IGlzIHJ1bm5pbmcgYW5kIGFzc3VtZSB0aGF0IHdlIGFyZSB0aGUKPiA+ID4gPiB0YXNr
bGV0IQo+ID4gPiA+IAo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gPiA+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVy
c3VsaW5AaW50ZWwuY29tPgo+ID4gPiA+IC0tLQo+ID4gPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjLmMgfCAxICsKPiA+ID4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtLmggICAgIHwgNSArKysrKwo+ID4gPiA+ICAgMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2Vy
dGlvbnMoKykKPiA+ID4gPiAKPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+
ID4gPiA+IGluZGV4IDhiZTllNjlkNTcxOC4uYWIyMDQzMzE4MmQxIDEwMDY0NAo+ID4gPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gPiA+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiA+ID4gPiBAQCAtMTk4NCw2ICsxOTg0
LDcgQEAgc3RhdGljIHZvaWQgcHJvY2Vzc19jc2Ioc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5n
aW5lKQo+ID4gPiA+ICAgICAgIHU4IGhlYWQsIHRhaWw7Cj4gPiA+ID4gICAKPiA+ID4gPiAgICAg
ICBHRU1fQlVHX09OKFVTRVNfR1VDX1NVQk1JU1NJT04oZW5naW5lLT5pOTE1KSk7Cj4gPiA+ID4g
KyAgICAgR0VNX0JVR19PTighdGFza2xldF9pc19sb2NrZWQoJmV4ZWNsaXN0cy0+dGFza2xldCkp
Owo+ID4gPiAKPiA+ID4gSSBzZWUgc29tZSByZXNldCBwYXRocyBjYWxsaW5nIHByb2Nlc3NfY3Ni
IHdoaWNoIGxvb2tzIGxpa2UgYSBwcm9ibGVtIAo+ID4gPiBmb3IgdGhpcyBhc3NlcnQuCj4gPiAK
PiA+IE9oLCBubyBpdCdzIG5vdCA6KQo+ID4gCj4gPiBleGVjbGlzdHNfcmVzZXQoKSBpcyBzdXJy
b3VuZGVkIGJ5IHJlc2V0X3ByZXBhcmUgYW5kIHJlc2V0X2ZpbmlzaCB3aG8KPiA+IGFyZSByZXNw
b25zaWJsZSBmb3IgZGlzYWJsaW5nIHRoZSB0YXNrbGV0IGFuZCBzZXJpYWxpc2luZyB3aXRoIGRp
cmVjdAo+ID4gc3VibWlzc2lvbiBhcm91bmQgdGhlIHJlc2V0Lgo+IAo+IFNhbWUgYmVpbmcgdHJ1
ZSBmb3IgY2FuY2VsX3JlcXVlc3RzLCBvbiB3ZWRnaW5nIHdlIGhhdmUgdG8gZGlzYWJsZSB0aGUK
PiB0YXNrbGV0IGJlZm9yZSB0YWtpbmcgY29udHJvbCBvZiB0aGUgc3RhdGUuCgpIbW0uIFRoYXQg
YmVpbmcgc2FpZCB3ZSBkbyBoYXZlIHRoYXQgc2FuaXRpemUgcGF0aCB3aGljaCBjdXRzIGEgZmV3
CmNvcm5lcnMuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
