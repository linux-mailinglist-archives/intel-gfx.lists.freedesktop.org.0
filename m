Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1491F5ECF0
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 21:43:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 076046E180;
	Wed,  3 Jul 2019 19:43:08 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3478D6E180
 for <Intel-GFX@lists.freedesktop.org>; Wed,  3 Jul 2019 19:43:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 12:43:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,446,1557212400"; d="scan'208";a="172246328"
Received: from johnharr-mobl3.ger.corp.intel.com (HELO [10.72.65.174])
 ([10.72.65.174])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Jul 2019 12:43:05 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-GFX@Lists.FreeDesktop.Org
References: <20190703020604.20369-1-John.C.Harrison@Intel.com>
 <20190703020604.20369-3-John.C.Harrison@Intel.com>
 <156214277736.2466.571113921317258469@skylake-alporthouse-com>
From: John Harrison <John.C.Harrison@Intel.com>
Message-ID: <364de560-d346-049d-a00a-f664d7ef738c@Intel.com>
Date: Wed, 3 Jul 2019 12:43:04 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <156214277736.2466.571113921317258469@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Implement read-only support
 in whitelist selftest
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

T24gNy8zLzIwMTkgMDE6MzIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIEpvaG4uQy5I
YXJyaXNvbkBJbnRlbC5jb20gKDIwMTktMDctMDMgMDM6MDY6MDQpCj4+IEZyb206IEpvaG4gSGFy
cmlzb24gPEpvaG4uQy5IYXJyaXNvbkBJbnRlbC5jb20+Cj4+Cj4+IE5ld2VyIGhhcmR3YXJlIHN1
cHBvcnRzIGV4dHJhIGZlYXR1cmUgaW4gdGhlIHdoaXRlbGlzdCByZWdpc3RlcnMuIFRoaXMKPj4g
cGF0Y2ggdXBkYXRlcyB0aGUgc2VsZnRlc3QgdG8gdGVzdCB0aGF0IGVudHJpZXMgbWFya2VkIGFz
IHJlYWQgb25seQo+PiBhcmUgYWN0dWFsbHkgcmVhZCBvbmx5Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5
OiBKb2huIEhhcnJpc29uIDxKb2huLkMuSGFycmlzb25ASW50ZWwuY29tPgo+PiBDQzogVHZydGtv
IFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPj4gLS0tCj4+ICAgLi4uL2dwdS9k
cm0vaTkxNS9ndC9zZWxmdGVzdF93b3JrYXJvdW5kcy5jICAgIHwgNDMgKysrKysrKysrKysrKy0t
LS0tLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAzMSBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMo
LSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3dv
cmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF93b3JrYXJvdW5k
cy5jCj4+IGluZGV4IGY4MTUxZDU5NDZjOC4uNWNkMmIxNzEwNWJhIDEwMDY0NAo+PiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF93b3JrYXJvdW5kcy5jCj4+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3dvcmthcm91bmRzLmMKPj4gQEAgLTQ4Miwx
MiArNDgyLDEyIEBAIHN0YXRpYyBpbnQgY2hlY2tfZGlydHlfd2hpdGVsaXN0KHN0cnVjdCBpOTE1
X2dlbV9jb250ZXh0ICpjdHgsCj4+ICAgICAgICAgICAgICAgICAgdTMyIHNybSwgbHJtLCByc3Zk
Owo+PiAgICAgICAgICAgICAgICAgIHUzMiBleHBlY3Q7Cj4+ICAgICAgICAgICAgICAgICAgaW50
IGlkeDsKPj4gKyAgICAgICAgICAgICAgIGJvb2wgcm9fcmVnOwo+PiAgIAo+PiAgICAgICAgICAg
ICAgICAgIGlmICh3b19yZWdpc3RlcihlbmdpbmUsIHJlZykpCj4+ICAgICAgICAgICAgICAgICAg
ICAgICAgICBjb250aW51ZTsKPj4gICAKPj4gLSAgICAgICAgICAgICAgIGlmIChyb19yZWdpc3Rl
cihyZWcpKQo+PiAtICAgICAgICAgICAgICAgICAgICAgICBjb250aW51ZTsKPj4gKyAgICAgICAg
ICAgICAgIHJvX3JlZyA9IHJvX3JlZ2lzdGVyKHJlZyk7Cj4+ICAgCj4+ICAgICAgICAgICAgICAg
ICAgc3JtID0gTUlfU1RPUkVfUkVHSVNURVJfTUVNOwo+PiAgICAgICAgICAgICAgICAgIGxybSA9
IE1JX0xPQURfUkVHSVNURVJfTUVNOwo+PiBAQCAtNTg4LDI0ICs1ODgsMzcgQEAgc3RhdGljIGlu
dCBjaGVja19kaXJ0eV93aGl0ZWxpc3Qoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwKPj4g
ICAgICAgICAgICAgICAgICB9Cj4+ICAgCj4+ICAgICAgICAgICAgICAgICAgR0VNX0JVR19PTih2
YWx1ZXNbQVJSQVlfU0laRSh2YWx1ZXMpIC0gMV0gIT0gMHhmZmZmZmZmZik7Cj4+IC0gICAgICAg
ICAgICAgICByc3ZkID0gcmVzdWx0c1tBUlJBWV9TSVpFKHZhbHVlcyldOyAvKiBkZXRlY3Qgd3Jp
dGUgbWFza2luZyAqLwo+PiAtICAgICAgICAgICAgICAgaWYgKCFyc3ZkKSB7Cj4+IC0gICAgICAg
ICAgICAgICAgICAgICAgIHByX2VycigiJXM6IFVuYWJsZSB0byB3cml0ZSB0byB3aGl0ZWxpc3Rl
ZCByZWdpc3RlciAleFxuIiwKPj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGVuZ2lu
ZS0+bmFtZSwgcmVnKTsKPj4gLSAgICAgICAgICAgICAgICAgICAgICAgZXJyID0gLUVJTlZBTDsK
Pj4gLSAgICAgICAgICAgICAgICAgICAgICAgZ290byBvdXRfdW5waW47Cj4+ICsgICAgICAgICAg
ICAgICBpZiAocm9fcmVnKSB7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgIHJzdmQgPSAweEZG
RkZGRkZGOwo+IHJzdmQgPSAwOwo+Cj4gcmVnX3dyaXRlKCkgd2lsbCB0aGVuIGR0cnQuCkl0IHNl
ZW1lZCB0b28gc3VzcGljaW91c2x5IGJyb2tlbiB0byBoYXZlIHRoZSB0ZXN0IGNsYWltIGEgcmVh
ZC1vbmx5IApyZWdpc3RlciB3YXMgc3VjY2Vzc2Z1bGx5IHdyaXR0ZW4gdG8uIFRoaXMgd2F5IG1h
a2VzIGl0IGNsZWFyIHRoYXQgdGhlIAp0ZXN0IGV4cGVjdHMgcmVhZC1vbmx5IHRvIGFsd2F5cyBy
ZXR1cm4gdGhlIGZpcnN0IHZhbHVlIHJlYWQuCgo+IERvZXMgdGhpcyBub3QgcmVwbGFjZSB0aGUg
c2tpcCBwbGFjZWQgaW4gY2hlY2tfd2hpdGVsaXN0ZWRfcmVnaXN0ZXJzKCk/ClRoZSB0d28gdmVy
c2lvbnMgb2YgdGhhdCB0ZXN0IGxvb2tzIGxpa2UgdGhleSBuZWVkIHRvIGJlIGFibGUgdG8gc2V0
IAp2YWx1ZXMuIFNvIHRoZXkgY2FuJ3QgYmUgcnVuIG9uIHJlYWQtb25seSByZWdpc3RlcnMuCgo+
IFdlIHN0aWxsIG5lZWQgYSB3YXkgdG8gdmVyaWZ5IHRoYXQgdGhlIHJlZ2lzdGVyIGV4aXN0cywg
YXMgZXZlbiB3cml0aW5nCj4gZnJvbSBhIHNlY3VyZSBiYXRjaCBmYWlscyAobm90IHRyaWVkIHJp
bmcgdGhvdWdoKS4gRG8gd2UgbG9hZCBhIHNwaW5uZXIsCj4gdHdlYWsgdmlhIG1taW8/CgpJIGRv
bid0IHRoaW5rIHRoZXJlIGlzIGEgcmVsaWFibGUsIGdlbmVyaWMgbWVjaGFuaXNtIHRvIHRlc3Qg
dGhhdCB5b3UgCmNhbiBhY3R1YWxseSByZWFkIGZyb20gYSByZWFkIG9ubHkgcmVnaXN0ZXIuIFlv
dSBuZWVkIHRvIGtub3cgd2hhdCAKY29udGVudCBpdCBzaG91bGQgcHJvdmlkZS4gRXZlbiB0aGUg
Y3VycmVudCB0ZXN0ICh0aGF0IGl0IGFsd2F5cyByZXR1cm5zIAp0aGUgc2FtZSB2YWx1ZSkgd291
bGQgYnJlYWsgaWYgdGhlIHJlZ2lzdGVyIGNoYW5nZXMgZHluYW1pY2FsbHkgKGUuZy4gCml0J3Mg
YSBoYXJkd2FyZSBjb3VudGVyKS4KCkpvaG4uCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
