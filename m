Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E1643F18
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 17:55:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FEA7896ED;
	Thu, 13 Jun 2019 15:55:04 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0ECA2896ED
 for <Intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 15:55:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 08:55:02 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by orsmga003.jf.intel.com with ESMTP; 13 Jun 2019 08:55:01 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20190613133539.12620-1-tvrtko.ursulin@linux.intel.com>
 <20190613151904.16256-1-tvrtko.ursulin@linux.intel.com>
 <20190613151904.16256-3-tvrtko.ursulin@linux.intel.com>
 <156044053875.17012.733170391181015801@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <5639932b-f18c-0f18-34da-e4d18a8553e7@linux.intel.com>
Date: Thu, 13 Jun 2019 16:55:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <156044053875.17012.733170391181015801@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 26/28] drm/i915: Store ggtt pointer in intel_gt
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

Ck9uIDEzLzA2LzIwMTkgMTY6NDIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA2LTEzIDE2OjE5OjAyKQo+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBUaGlzIHdpbGwgYmVjb21lIHVzZWZ1bCBp
biB0aGUgZm9sbG93aW5nIHBhdGNoLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxp
biA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9ndF90eXBlcy5oIHwgMiArKwo+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX2d0dC5jICAgICAgfCAxICsKPj4gICAyIGZpbGVzIGNoYW5nZWQsIDMgaW5zZXJ0
aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Z3RfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVzLmgKPj4g
aW5kZXggOTllMzBmOGNmYmUwLi5jOTA5YWFlNmU0YjMgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVzLmgKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaAo+PiBAQCAtMTgsMTEgKzE4LDEzIEBACj4+ICAgI2lu
Y2x1ZGUgImludGVsX3dha2VyZWYuaCIKPj4gICAKPj4gICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZTsKPj4gK3N0cnVjdCBpOTE1X2dndHQ7Cj4+ICAgc3RydWN0IGludGVsX3VuY29yZTsKPj4gICAK
Pj4gICBzdHJ1Y3QgaW50ZWxfZ3Qgewo+PiAgICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNTsKPj4gICAgICAgICAgc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlOwo+PiArICAg
ICAgIHN0cnVjdCBpOTE1X2dndHQgKmdndHQ7Cj4gCj4gQnV0IG5vdCBtb3ZpbmcgaTkxNS0+Z2d0
dCBpdHNlbGY/CgpNb3ZpbmcgYXMgcmVtb3Zpbmc/IFRoYXQgbG9va3MgbGlrZSBhIGh1Z2Ugam9i
LiBJIGNhbiB0cnkgYW5kIGFzc2VzIApleGFjdGx5IGhvdyBiaWcgYnV0IEkgd2FzIGhvcGluZyB0
aGF0IEkgZG9uJ3QgaGF2ZSB0byBkbyBldmVyeXRoaW5nIGluIApvbmUgZ28uCgo+PiAgICAgICAg
ICBzdHJ1Y3QgaTkxNV9ndF90aW1lbGluZXMgewo+PiAgICAgICAgICAgICAgICAgIHN0cnVjdCBt
dXRleCBtdXRleDsgLyogcHJvdGVjdHMgbGlzdCwgdGFpbnRlZCBieSBHUFUgKi8KPj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPj4gaW5kZXggZWEyNzZlZDkwMjFhLi45YWEyNTc3MDA4
MWMgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4+IEBAIC0zNjE4LDYg
KzM2MTgsNyBAQCBzdGF0aWMgaW50IGdndHRfaW5pdF9odyhzdHJ1Y3QgaTkxNV9nZ3R0ICpnZ3R0
KQo+PiAgICAgICAgICBpOTE1X2FkZHJlc3Nfc3BhY2VfaW5pdCh2bSwgVk1fQ0xBU1NfR0dUVCk7
Cj4+ICAgCj4+ICAgICAgICAgIHZtLT5pc19nZ3R0ID0gdHJ1ZTsKPj4gKyAgICAgICB2bS0+Z3Qt
PmdndHQgPSBnZ3R0Owo+IAo+IFRoaXMgbG9va3MgdmVyeSBtdWNoIHRvIGJlIGEgbGF5ZXIgdmlv
bGF0aW9uLgoKQSBiaXQgeWVzLiBJIHRoaW5rIEkgY2FuIHdvcmsgYXJvdW5kIGl0IHdpdGggc29t
ZSByZWZhY3RvcmluZy4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
