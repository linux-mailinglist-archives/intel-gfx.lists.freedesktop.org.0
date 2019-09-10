Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47AF6AE36F
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 08:07:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 433DE895CA;
	Tue, 10 Sep 2019 06:07:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C5A6895CA
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 06:07:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18433096-1500050 for multiple; Tue, 10 Sep 2019 07:06:46 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <80c54575-7622-b75d-382d-924edf05eb02@intel.com>
References: <20190909225536.7037-1-chris@chris-wilson.co.uk>
 <20190909225536.7037-2-chris@chris-wilson.co.uk>
 <80c54575-7622-b75d-382d-924edf05eb02@intel.com>
Message-ID: <156809560493.582.16248418380013071034@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 10 Sep 2019 07:06:44 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Only unwedge if we can
 reset first
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA5LTEwIDAxOjU5OjM4KQo+IAo+
IAo+IE9uIDkvOS8xOSAzOjU1IFBNLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBVbndlZGdpbmcg
dGhlIEdQVSByZXF1aXJlcyBhIHN1Y2Nlc3NmdWwgR1BVIHJlc2V0IGJlZm9yZSB3ZSByZXN0b3Jl
IHRoZQo+ID4gZGVmYXVsdCBzdWJtaXNzaW9uLCBvciBlbHNlIHdlIG1heSBzZWUgcmVzaWR1YWwg
Y29udGV4dCBzd2l0Y2ggZXZlbnRzCj4gPiB0aGF0IHdlIHdlcmUgbm90IGV4cGVjdGluZy4KPiA+
IAo+ID4gUmVwb3J0ZWQtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8amFudXN6LmtyenlzenRvZmlr
QGxpbnV4LmludGVsLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gQ2M6IEphbnVzeiBLcnp5c3p0b2ZpayA8amFudXN6Lmty
enlzenRvZmlrQGxpbnV4LmludGVsLmNvbT4KPiA+IENjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlv
IDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMgfCA3ICsrKysrKy0KPiA+ICAgMSBmaWxlIGNo
YW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKPiA+IGluZGV4IGZlNTcyOTZiNzkwYy4uNTI0MjQ5NmE4
OTNhIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQu
Ywo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwo+ID4gQEAg
LTgwOSw2ICs4MDksNyBAQCBzdGF0aWMgYm9vbCBfX2ludGVsX2d0X3Vuc2V0X3dlZGdlZChzdHJ1
Y3QgaW50ZWxfZ3QgKmd0KQo+ID4gICAgICAgc3RydWN0IGludGVsX2d0X3RpbWVsaW5lcyAqdGlt
ZWxpbmVzID0gJmd0LT50aW1lbGluZXM7Cj4gPiAgICAgICBzdHJ1Y3QgaW50ZWxfdGltZWxpbmUg
KnRsOwo+ID4gICAgICAgdW5zaWduZWQgbG9uZyBmbGFnczsKPiA+ICsgICAgIGJvb2wgb2s7Cj4g
PiAgIAo+ID4gICAgICAgaWYgKCF0ZXN0X2JpdChJOTE1X1dFREdFRCwgJmd0LT5yZXNldC5mbGFn
cykpCj4gPiAgICAgICAgICAgICAgIHJldHVybiB0cnVlOwo+ID4gQEAgLTg1NCw3ICs4NTUsMTEg
QEAgc3RhdGljIGJvb2wgX19pbnRlbF9ndF91bnNldF93ZWRnZWQoc3RydWN0IGludGVsX2d0ICpn
dCkKPiA+ICAgICAgIH0KPiA+ICAgICAgIHNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnRpbWVsaW5l
cy0+bG9jaywgZmxhZ3MpOwo+ID4gICAKPiA+IC0gICAgIGludGVsX2d0X3Nhbml0aXplKGd0LCBm
YWxzZSk7Cj4gPiArICAgICBvayA9IGZhbHNlOwo+ID4gKyAgICAgaWYgKCFyZXNldF9jbG9iYmVy
c19kaXNwbGF5KGd0LT5pOTE1KSkKPiA+ICsgICAgICAgICAgICAgb2sgPSBfX2ludGVsX2d0X3Jl
c2V0KGd0LCBBTExfRU5HSU5FUykgPT0gMDsKPiAKPiBPZiB0aGUgdGhpbmcgd2UgaGFkIGluIHRo
ZSBndF9zYW5pdGl6ZSwgd2UncmUgb2sgc2tpcHBpbmcgdGhlIAo+IHVjX3Nhbml0aXplKCkgYmVj
YXVzZSB3ZSB0YWtlIGNhcmUgb2YgdGhhdCBkdXJpbmcgd2VkZ2UgKGZyb20gCj4gaW50ZWxfdWNf
cmVzZXRfcHJlcGFyZSksIGJ1dCB3aGF0IGFib3V0IHRoZSBsb29wIG9mIAo+IF9faW50ZWxfZW5n
aW5lX3Jlc2V0KCk/IElzIHRoYXQgc2FmZSB0byBza2lwIGhlcmU/CgpJIHRoaW5rIHllcywgYmVj
YXVzZSB3ZSBhbHdheXMgZm9sbG93IHRoZSB1bndlZGdlIHdpdGggYSBHVCByZXN0YXJ0LiBUaGF0
CmlzIGVpdGhlciB2aWEgdGhlIGZ1bGwgcmVzZXQgb3IgdGhlIHNhbml0aXplK3Jlc3RhcnQgb24g
cmVzdW1lLiBCb3RoIGNhbGwKcGF0aHMgd2lsbCBhbHNvIHNldCB0aGUgd2VkZ2VkIGJpdCBpZiB0
aGV5IGZhaWwuIGdlbV9laW8vc3VzcGVuZCBzaG91bGQKYmUgdGVzdGluZyB0aGUgcmVjb3Zlcnkg
dXBvbiByZXN1bWUgcGF0aCwgYW5kIGV2ZW4gZ2VtX2Vpby8qLXN0cmVzcwpzaG91bGQgZ2l2ZSBy
ZXNwb25zaWJsZSBjb3ZlcmFnZSBvZiB0aGUgbm9ybWFsIHJlY292ZXJ5IHZpYSBmdWxsIHJlc2V0
LgogCj4gQXBhcnQgZnJvbSB0aGF0LCB0aGUgcGF0Y2ggTEdUTS4gV29ydGggbm90aW5nIHRoYXQg
d2l0aCB0aGlzIGNoYW5nZSBhIAo+IHN1Y2Nlc3NmdWwgcmVzZXQgaXMgcmVxdWlyZWQgdG8gdW53
ZWRnZSBldmVuIGFmdGVyIGEgc3VzcGVuZC9yZXN1bWUgCj4gY3ljbGUgKGluIGdlbV9zYW5pdGl6
ZSksIHdoaWNoIGlzIGEgZ29vZCB0aGluZyBJTU8uCgpIZW5jZSB3aHkgcmVsYXhpbmcgdGhlIGdw
dV9jbG9iYmVyc19kaXNwbGF5IGlzIGltcG9ydGFudCB0byByZXRhaW4gdGhlCmFiaWxpdHkgdG8g
Y2xlYXIgd2VkZ2VkIGFjcm9zcyBzdXNwZW5kIG9uIG9sZGVyIGRldmljZXMuCi1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
