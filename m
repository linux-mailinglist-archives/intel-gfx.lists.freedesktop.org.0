Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D42ED92BD
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 15:42:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3C7E6E049;
	Wed, 16 Oct 2019 13:42:13 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24C076E049
 for <Intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 13:42:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18857675-1500050 for multiple; Wed, 16 Oct 2019 14:42:00 +0100
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <fd9f9b65-e3ad-50e1-c440-af3be4407c53@linux.intel.com>
References: <20191016122843.9429-1-tvrtko.ursulin@linux.intel.com>
 <20191016122843.9429-2-tvrtko.ursulin@linux.intel.com>
 <157123101407.22469.10360475997002619905@skylake-alporthouse-com>
 <fd9f9b65-e3ad-50e1-c440-af3be4407c53@linux.intel.com>
Message-ID: <157123331832.4215.17105436831176165205@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 16 Oct 2019 14:41:58 +0100
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Store engine mask in intel_gt
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0xNiAxNDozMTo0NSkKPiAKPiBPbiAxNi8x
MC8yMDE5IDE0OjAzLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTEwLTE2IDEzOjI4OjQyKQo+ID4+IEZyb206IFR2cnRrbyBVcnN1bGluIDx0dnJ0
a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gPj4KPiA+PiBNZWRpdW0gdGVybSBnb2FsIGlzIHRvIGVs
aW1pbmF0ZSB0aGUgaTkxNS0+ZW5naW5lW10gYXJyYXkgYW5kIHRvIGdldCB0aGVyZQo+ID4+IHdl
IGhhdmUgcmVjZW50bHkgaW50cm9kdWNlZCBlcXVpdmFsZW50IGFycmF5IGluIGludGVsX2d0LiBO
b3cgd2UgbmVlZCB0bwo+ID4+IG1pZ3JhdGUgdGhlIGNvZGUgZnVydGhlciB0b3dhcmRzIHRoaXMg
c3RhdGUuCj4gPj4KPiA+PiBUbyBhbGxvdyBmb3JfZWFjaF9lbmdpbmVfbWFza2VkIGNhbGwgc2l0
ZXMgdG8gcGFzcyBpbiBndCBpbnN0ZWFkIG9mIGk5MTUKPiA+PiB3ZSBuZWVkIHRvIGhhdmUgYSBj
b3B5IG9mIElOVEVMX0lORk8oKS0+ZW5naW5lX21hc2sgaW4gaW50ZWxfZ3QuCj4gPj4KPiA+PiBG
b3IgdGhpcyB0byB3b3JrIHdlIGFsc28gbmVlZCB0byB1c2UgZW5naW5lLT5pZCBhcyBpbmRleCB3
aGVuIHBvcHVsYXRpbmcKPiA+PiB0aGUgZ3QtPmVuZ2luZVtdIGFycmF5Lgo+ID4+Cj4gPj4gU2ln
bmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiA+
PiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPj4gLS0tCj4g
Pj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdXNlci5jIHwgNCArKy0t
Cj4gPj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jICAgICAgICAgIHwgNSAr
KysrKwo+ID4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuaCAgICAgICAgICB8
IDEgKwo+ID4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaCAgICB8
IDQgKysrKwo+ID4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICAg
ICB8IDIgKysKPiA+PiAgIDUgZmlsZXMgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKPiA+Pgo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9lbmdpbmVfdXNlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5l
X3VzZXIuYwo+ID4+IGluZGV4IDc3Y2Q1ZGU4MzkzMC4uMDk5YWJhZTg2MGVjIDEwMDY0NAo+ID4+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV91c2VyLmMKPiA+PiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdXNlci5jCj4gPj4gQEAg
LTE4Myw4ICsxODMsOCBAQCBzdGF0aWMgdm9pZCBhZGRfbGVnYWN5X3Jpbmcoc3RydWN0IGxlZ2Fj
eV9yaW5nICpyaW5nLAo+ID4+ICAgICAgICAgIGlmICh1bmxpa2VseShpZHggPT0gLTEpKQo+ID4+
ICAgICAgICAgICAgICAgICAgcmV0dXJuOwo+ID4+ICAgCj4gPj4gLSAgICAgICBHRU1fQlVHX09O
KGlkeCA+PSBBUlJBWV9TSVpFKHJpbmctPmd0LT5lbmdpbmUpKTsKPiA+PiAtICAgICAgIHJpbmct
Pmd0LT5lbmdpbmVbaWR4XSA9IGVuZ2luZTsKPiA+IAo+ID4gVGhpcyBpcyB1c2VkIGZvciB0aGUg
bGVnYWN5IHVhcGkgbWFwcGluZy4gU28gd2UgbmVlZCB0byBhZGp1c3QgdGhlIGxvb3AKPiA+IGlu
IGk5MTVfZ2VtX2NvbnRleHQuYzo6ZGVmYXVsdF9lbmdpbmVzKCkgdG8gdXNlIGVuZ2luZS0+bGVn
YWN5X2lkeAo+ID4gaW5zdGVhZCBvZiBpZC4gQW5kIGFsbCBvdGhlciB1c2VycyBvZiBlbmdpbmUt
PmxlZ2FjeV9pZHggYXJlIG5vdwo+ID4gYmFja3dhcmRzLgo+IAo+IEhtbW0gdGhhdCdzIGV2aWwu
LiBJIG1lYW4gc28gd2VsbCBoaWRkZW4gZGVwZW5kZW5jeSBhbmQgY29udHJhcnkgdG8gCj4geWVh
cnMgb2YgZGVjb3VwbGluZyBlZmZvcnRzLiBCdXQgSSBnYXRoZXIgc29tZSBtZXNzIGlzIGV4cGVj
dGVkIGluIHRoZXNlIAo+IGNpcmN1bXN0YW5jZXMuIEknbGwgdXBkYXRlLgoKVGhlIGRlY291cGxp
bmcgZWZmb3J0IGlzIG9uIHRoZSB1QVBJIHNpZGUsIEkgZG8gdGhpbmsgdGhlIGVmZm9ydCBpbgpt
b3ZpbmcgYWxsIHRoZSBpbXBsaWNpdCBsZWdhY3kgbGF5b3V0IHRvIGEgc3Vic2V0IG9mIHRoZSBl
eHBsaWNpdCB1c2VyCmNvbnRyb2xzIGlzIHBheWluZyBvZmYgbmljZWx5LiBUaGUgbmV4dCBnb2Fs
IHdhcyB0byByZW1vdmUgZ3QtPmVuZ2luZVtdLApzbyBhc3N1bXB0aW9ucyB0aGF0IGl0IGV4aXN0
ZWQgYW5kIGVuZ2luZS0+aWQgd2FzIGFuIGluZGV4IGludG8gaXQgd2VyZQpyZW1vdmVkLgotQ2hy
aXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
