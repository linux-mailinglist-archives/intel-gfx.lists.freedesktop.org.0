Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C42163BBB3
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 20:17:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FCAD890F2;
	Mon, 10 Jun 2019 18:17:57 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7E5E890F2
 for <Intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 18:17:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jun 2019 11:17:51 -0700
X-ExtLoop1: 1
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga005.jf.intel.com with ESMTP; 10 Jun 2019 11:17:51 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org, 
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190610155419.23723-1-tvrtko.ursulin@linux.intel.com>
 <20190610155419.23723-9-tvrtko.ursulin@linux.intel.com>
 <156018341785.383.14827754445562949685@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <1b9b317e-915c-5ffe-e904-cf281a84e972@intel.com>
Date: Mon, 10 Jun 2019 11:17:38 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <156018341785.383.14827754445562949685@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 08/14] drm/i915: Store backpointer to intel_gt
 in the engine
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

CgpPbiA2LzEwLzE5IDk6MTYgQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA2LTEwIDE2OjU0OjEzKQo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaAo+PiBpbmRleCAwMTIyMzg2NDIzN2EuLjM0M2M0NDU5
ZThhMyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5l
X3R5cGVzLmgKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5
cGVzLmgKPj4gQEAgLTM0LDYgKzM0LDcgQEAgc3RydWN0IGRybV9pOTE1X3JlZ190YWJsZTsKPj4g
ICBzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dDsKPj4gICBzdHJ1Y3QgaTkxNV9yZXF1ZXN0Owo+PiAg
IHN0cnVjdCBpOTE1X3NjaGVkX2F0dHI7Cj4+ICtzdHJ1Y3QgaW50ZWxfZ3Q7Cj4+ICAgc3RydWN0
IGludGVsX3VuY29yZTsKPj4gICAKPj4gICB0eXBlZGVmIHU4IGludGVsX2VuZ2luZV9tYXNrX3Q7
Cj4+IEBAIC0yNjYsNiArMjY3LDcgQEAgc3RydWN0IGludGVsX2VuZ2luZV9leGVjbGlzdHMgewo+
PiAgIAo+PiAgIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3Mgewo+PiAgICAgICAgICBzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNTsKPj4gKyAgICAgICBzdHJ1Y3QgaW50ZWxfZ3QgKmd0Owo+IAo+
IEknZCBwdXNoIGZvciBndCBhcyBiZWluZyB0aGUgYmFja3BvaW50ZXIsIGFuZCBpOTE1IGl0cyBk
aXN0YW50IGdyYW5kCj4gcGFyZW50LiBOb3Qgc3VyZSBob3cgbXVjaCBwYWluIHRoYXQgd291bGQg
YnJpbmcganVzdCBmb3IgdGhlIGVsaW1pbmF0aW9uCj4gb2Ygb25lIG1vcmUgZHJtX2k5MTVfcHJp
dmF0ZSwgYnV0IHRoYXQncyBob3cgSSBwaWN0dXJlIHRoZQo+IGVuY2Fwc3VsYXRpb24uCj4gCgpX
b3VsZCBpdCBiZSB3b3J0aCBtb3Zpbmcgc29tZSBvZiB0aGUgZmxhZ3MgaW4gdGhlIGRldmljZV9p
bmZvIHN0cnVjdHVyZSAKaW4gYSBndCBzdWJzdHJ1Y3R1cmUsIGxpa2Ugd2UgZGlkIGZvciBkaXNw
bGF5LCBhbmQgZ2V0IGEgcG9pbnRlciB0byB0aGF0IAppbiBpbnRlbF9ndD8gV2UgY291bGQgc2F2
ZSBzb21lIGp1bXBzIGJhY2sgdGhhdCB3YXkgYW5kIGJlIG1vcmUgY29oZXJlbnQgCmluIHdoZXJl
IHdlIHN0b3JlIHRoZSBpbmZvLgoKRGFuaWVsZQoKPiBJJ20gc3VyZSBJJ20gbWlzc2luZyBhIGxp
bmsgb3IgdHdvIDopCj4gLUNocmlzCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
