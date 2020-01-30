Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B79DB14DD5D
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 15:53:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E3F26E866;
	Thu, 30 Jan 2020 14:53:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2D8A6E866
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 14:53:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20061043-1500050 for multiple; Thu, 30 Jan 2020 14:53:47 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200130142109.1896498-1-chris@chris-wilson.co.uk>
 <c4959ae2-3290-9d43-f86f-2a746d5b1a80@linux.intel.com>
In-Reply-To: <c4959ae2-3290-9d43-f86f-2a746d5b1a80@linux.intel.com>
Message-ID: <158039602592.16598.518465165960389223@skylake-alporthouse-com>
Date: Thu, 30 Jan 2020 14:53:45 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Skip rmw for masked registers
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAyMC0wMS0zMCAxNDo0ODo0NykKPiAKPiBPbiAzMC8w
MS8yMDIwIDE0OjIxLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBBIG1hc2tlZCByZWdpc3RlciBk
b2VzIG5vdCBuZWVkIHJtdyB0byB1cGRhdGUsIGFuZCBpdCBpcyBiZXN0IG5vdCB0byB1c2UKPiA+
IHN1Y2ggYSBzZXF1ZW5jZS4KPiA+IAo+ID4gUmVwb3J0ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IENjOiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+ID4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0
dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDI5ICsrKysrKysrKysrKysrLS0tLS0tLQo+ID4g
ICAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCj4gPiAK
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5k
cy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+ID4gaW5k
ZXggNWE3ZGIyNzlmNzAyLi44OTQ3NGE0ZmE5YjkgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gPiBAQCAtMTY3LDEyICsxNjcsNiBAQCB3
YV93cml0ZV9tYXNrZWRfb3Ioc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsLCBpOTE1X3JlZ190IHJl
ZywgdTMyIG1hc2ssCj4gPiAgICAgICB3YV9hZGQod2FsLCByZWcsIG1hc2ssIHZhbCwgbWFzayk7
Cj4gPiAgIH0KPiA+ICAgCj4gPiAtc3RhdGljIHZvaWQKPiA+IC13YV9tYXNrZWRfZW4oc3RydWN0
IGk5MTVfd2FfbGlzdCAqd2FsLCBpOTE1X3JlZ190IHJlZywgdTMyIHZhbCkKPiA+IC17Cj4gPiAt
ICAgICB3YV93cml0ZV9tYXNrZWRfb3Iod2FsLCByZWcsIHZhbCwgX01BU0tFRF9CSVRfRU5BQkxF
KHZhbCkpOwo+ID4gLX0KPiA+IC0KPiA+ICAgc3RhdGljIHZvaWQKPiA+ICAgd2Ffd3JpdGUoc3Ry
dWN0IGk5MTVfd2FfbGlzdCAqd2FsLCBpOTE1X3JlZ190IHJlZywgdTMyIHZhbCkKPiA+ICAgewo+
ID4gQEAgLTE4NSwxNCArMTc5LDI2IEBAIHdhX3dyaXRlX29yKHN0cnVjdCBpOTE1X3dhX2xpc3Qg
KndhbCwgaTkxNV9yZWdfdCByZWcsIHUzMiB2YWwpCj4gPiAgICAgICB3YV93cml0ZV9tYXNrZWRf
b3Iod2FsLCByZWcsIHZhbCwgdmFsKTsKPiA+ICAgfQo+ID4gICAKPiA+ICtzdGF0aWMgdm9pZAo+
ID4gK3dhX21hc2tlZF9lbihzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwsIGk5MTVfcmVnX3QgcmVn
LCB1MzIgdmFsKQo+ID4gK3sKPiA+ICsgICAgIHdhX2FkZCh3YWwsIHJlZywgMCwgX01BU0tFRF9C
SVRfRU5BQkxFKHZhbCksIHZhbCk7Cj4gPiArfQo+ID4gKwo+ID4gK3N0YXRpYyB2b2lkCj4gPiAr
d2FfbWFza2VkX2RpcyhzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwsIGk5MTVfcmVnX3QgcmVnLCB1
MzIgdmFsKQo+ID4gK3sKPiA+ICsgICAgIHdhX2FkZCh3YWwsIHJlZywgMCwgX01BU0tFRF9CSVRf
RElTQUJMRSh2YWwpLCB2YWwpOwo+ID4gK30KPiA+ICsKPiA+ICAgI2RlZmluZSBXQV9TRVRfQklU
X01BU0tFRChhZGRyLCBtYXNrKSBcCj4gPiAtICAgICB3YV93cml0ZV9tYXNrZWRfb3Iod2FsLCAo
YWRkciksIChtYXNrKSwgX01BU0tFRF9CSVRfRU5BQkxFKG1hc2spKQo+ID4gKyAgICAgd2FfbWFz
a2VkX2VuKHdhbCwgKGFkZHIpLCBtYXNrKQo+ID4gICAKPiA+ICAgI2RlZmluZSBXQV9DTFJfQklU
X01BU0tFRChhZGRyLCBtYXNrKSBcCj4gPiAtICAgICB3YV93cml0ZV9tYXNrZWRfb3Iod2FsLCAo
YWRkciksIChtYXNrKSwgX01BU0tFRF9CSVRfRElTQUJMRShtYXNrKSkKPiA+ICsgICAgIHdhX21h
c2tlZF9kaXMod2FsLCAoYWRkciksIG1hc2spCj4gPiAgIAo+ID4gICAjZGVmaW5lIFdBX1NFVF9G
SUVMRF9NQVNLRUQoYWRkciwgbWFzaywgdmFsdWUpIFwKPiA+IC0gICAgIHdhX3dyaXRlX21hc2tl
ZF9vcih3YWwsIChhZGRyKSwgKG1hc2spLCBfTUFTS0VEX0ZJRUxEKChtYXNrKSwgKHZhbHVlKSkp
Cj4gPiArICAgICB3YV93cml0ZV9tYXNrZWRfb3Iod2FsLCAoYWRkciksIDAsIF9NQVNLRURfRklF
TEQoKG1hc2spLCAodmFsdWUpKSkKPiA+ICAgCj4gPiAgIHN0YXRpYyB2b2lkIGdlbjhfY3R4X3dv
cmthcm91bmRzX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+ID4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQo+
ID4gQEAgLTEwMjAsNyArMTAyNiwxMCBAQCB3YV9saXN0X2FwcGx5KHN0cnVjdCBpbnRlbF91bmNv
cmUgKnVuY29yZSwgY29uc3Qgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQo+ID4gICAgICAgaW50
ZWxfdW5jb3JlX2ZvcmNld2FrZV9nZXRfX2xvY2tlZCh1bmNvcmUsIGZ3KTsKPiAKPiBJbiB0aGUg
cmVhbG0gb2YgcG9pbnRsZXNzIHdlIGNvdWxkIGFsc28gY29uc2lkZXIgdGhlIHJtdyB2cyB3ciB3
aGVuIAo+IGNhbGN1bGF0aW5nIHRoZSByZXF1aXJlZCBmb3JjZXdha2UgZG9tYWlucy4KCkluIGFs
bCBsaWtlbGlob29kIHdlIGhhdmUgYSBibGFua2V0IEZPUkNFV0FLRV9BTEwgYW55d2F5IDopCgo+
ID4gICAgICAgZm9yIChpID0gMCwgd2EgPSB3YWwtPmxpc3Q7IGkgPCB3YWwtPmNvdW50OyBpKyss
IHdhKyspIHsKPiA+IC0gICAgICAgICAgICAgaW50ZWxfdW5jb3JlX3Jtd19mdyh1bmNvcmUsIHdh
LT5yZWcsIHdhLT5tYXNrLCB3YS0+dmFsKTsKPiA+ICsgICAgICAgICAgICAgaWYgKHdhLT5tYXNr
KQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGludGVsX3VuY29yZV9ybXdfZncodW5jb3JlLCB3
YS0+cmVnLCB3YS0+bWFzaywgd2EtPnZhbCk7Cj4gPiArICAgICAgICAgICAgIGVsc2UKPiA+ICsg
ICAgICAgICAgICAgICAgICAgICBpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLCB3YS0+cmVnLCB3
YS0+dmFsKTsKPiA+ICAgICAgICAgICAgICAgaWYgKElTX0VOQUJMRUQoQ09ORklHX0RSTV9JOTE1
X0RFQlVHX0dFTSkpCj4gPiAgICAgICAgICAgICAgICAgICAgICAgd2FfdmVyaWZ5KHdhLAo+ID4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbnRlbF91bmNvcmVfcmVhZF9mdyh1bmNv
cmUsIHdhLT5yZWcpLAo+ID4gCj4gCj4gTG9va3MgY29ycmVjdC4KPiAKPiBSZXZpZXdlZC1ieTog
VHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiAKPiBXaGF0IHdlcmUg
dGhlIHJlYWwgd29ybGQgY29uc2VxdWVuY2VzIG9mIGdldHRpbmcgaXQgd3Jvbmc/CgpXZSdyZSBz
cGVjdWxhdGluZyB0aGUgQnJvYWR3YXRlciBmYWlsdXJlIHRvIHByZXNlcnZlIE1JX01PREUgbWln
aHQgYmUKc3VjaCBhIGNhc2UuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
