Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6136EC3EB4
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 19:36:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FEE96E86D;
	Tue,  1 Oct 2019 17:36:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B6C36E86D
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 17:36:38 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18684015-1500050 for multiple; Tue, 01 Oct 2019 18:35:21 +0100
MIME-Version: 1.0
To: Ramalingam C <ramalingam.c@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191001172624.26479-1-ramalingam.c@intel.com>
References: <20191001172624.26479-1-ramalingam.c@intel.com>
Message-ID: <156995131579.1880.10276094944299738871@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 01 Oct 2019 18:35:15 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/tgl: Implement Wa_1604555607
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
Cc: Michel Thierry <michel.thierry@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBSYW1hbGluZ2FtIEMgKDIwMTktMTAtMDEgMTg6MjY6MjMpCj4gRnJvbTogTWljaGVs
IFRoaWVycnkgPG1pY2hlbC50aGllcnJ5QGludGVsLmNvbT4KPiAKPiBJbXBsZW1lbnQgV2FfMTYw
NDU1NTYwNyAoc2V0IHRoZSBEUyBwYWlyaW5nIHRpbWVyIHRvIDEyOCBjeWNsZXMpLgo+IEZGX01P
REUyIGlzIHBhcnQgb2YgdGhlIHJlZ2lzdGVyIHN0YXRlIGNvbnRleHQsIHRoYXQncyB3aHkgaXQg
aXMKPiBpbXBsZW1lbnRlZCBoZXJlLgo+IAo+IHYyOiBSZWJhc2VkIG9uIHRvcCBvZiB0aGUgV0Eg
cmVmYWN0b3JpbmcgKE9zY2FyKQo+IHYzOiBDb3JyZWN0bHkgYWRkIHRvIGN0eF93b3JrYXJvdW5k
c19pbml0IChNaWNoZWwpCj4gCj4gQlNwZWM6IDE5MzYzCj4gSFNERVM6IDE2MDQ1NTU2MDcKPiBT
aWduZWQtb2ZmLWJ5OiBNaWNoZWwgVGhpZXJyeSA8bWljaGVsLnRoaWVycnlAaW50ZWwuY29tPgo+
IFNpZ25lZC1vZmYtYnk6IFJhbWFsaW5nYW0gQyA8cmFtbGluZ2FtLmNAaW50ZWwuY29tPgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgOSArKysr
KysrKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICB8IDUg
KysrKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gaW5kZXggYmE2NWU1MDE4OTc4
Li40MDQ5Yjg3NjQ5MmEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfd29ya2Fyb3VuZHMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dv
cmthcm91bmRzLmMKPiBAQCAtNTY3LDkgKzU2NywxOCBAQCBzdGF0aWMgdm9pZCBpY2xfY3R4X3dv
cmthcm91bmRzX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+ICBzdGF0aWMg
dm9pZCB0Z2xfY3R4X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5n
aW5lLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaTkxNV93
YV9saXN0ICp3YWwpCj4gIHsKPiArICAgICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiA9IGVuZ2luZS0+aTkxNTsKPiArICAgICAgIHUzMiB2YWw7Cj4gKwo+ICAgICAgICAgLyog
V2FfMTQwOTE0MjI1OSAqLwo+ICAgICAgICAgV0FfU0VUX0JJVF9NQVNLRUQoR0VOMTFfQ09NTU9O
X1NMSUNFX0NISUNLRU4zLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgR0VOMTJfRElTQUJM
RV9DUFNfQVdBUkVfQ09MT1JfUElQRSk7Cj4gKwo+ICsgICAgICAgLyogV2FfMTYwNDU1NTYwNzp0
Z2wgKi8KPiArICAgICAgIHZhbCA9IEk5MTVfUkVBRChGRl9NT0RFMik7CgpObywgeW91IGNhbid0
IHVzZSBpbmRpc2NyaW1pbmF0ZSBtbWlvIGFjY2VzcyB0aGF0IG1heSBub3QgbWF0Y2ggdGhlIGVu
Z2luZQooZW5naW5lLT5ndC0+dW5jb3JlKS4KCkJ1dCByZWFsbHkgY29uc2lkZXIgZG9pbmcgdGhl
IHJtdyBhcyBwYXJ0IG9mIHRoZSB3YS4KCj4gKyAgICAgICB2YWwgJj0gfkZGX01PREUyX1REU19U
SU1FUl9NQVNLOwo+ICsgICAgICAgdmFsIHw9IEZGX01PREUyX1REU19USU1FUl8xMjg7Cj4gKyAg
ICAgICB3YV93cml0ZV9tYXNrZWRfb3Iod2FsLCBGRl9NT0RFMiwgRkZfTU9ERTJfVERTX1RJTUVS
X01BU0ssIHZhbCk7Cj4gIH0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
