Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAFD63D2BE
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 18:43:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A6CC891E3;
	Tue, 11 Jun 2019 16:43:02 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44452891E3
 for <Intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 16:43:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jun 2019 09:42:59 -0700
X-ExtLoop1: 1
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.254.178.41])
 ([10.254.178.41])
 by fmsmga005.fm.intel.com with ESMTP; 11 Jun 2019 09:42:59 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org, 
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190610155419.23723-1-tvrtko.ursulin@linux.intel.com>
 <20190610155419.23723-9-tvrtko.ursulin@linux.intel.com>
 <156018341785.383.14827754445562949685@skylake-alporthouse-com>
 <1b9b317e-915c-5ffe-e904-cf281a84e972@intel.com>
 <d44bae42-9ccb-2135-7787-3f9efde94000@linux.intel.com>
 <156024578887.2497.16355057690352237734@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <bbbb1dd5-c357-9b24-6662-61b9aebeafb4@intel.com>
Date: Tue, 11 Jun 2019 09:42:57 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <156024578887.2497.16355057690352237734@skylake-alporthouse-com>
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

CgpPbiA2LzExLzIwMTkgMjozNiBBTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgVHZy
dGtvIFVyc3VsaW4gKDIwMTktMDYtMTEgMDk6NDE6MDIpCj4+IE9uIDEwLzA2LzIwMTkgMTk6MTcs
IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gd3JvdGU6Cj4+PiBPbiA2LzEwLzE5IDk6MTYgQU0sIENo
cmlzIFdpbHNvbiB3cm90ZToKPj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA2LTEw
IDE2OjU0OjEzKQo+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZW5naW5lX3R5cGVzLmgKPj4+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9l
bmdpbmVfdHlwZXMuaAo+Pj4+PiBpbmRleCAwMTIyMzg2NDIzN2EuLjM0M2M0NDU5ZThhMyAxMDA2
NDQKPj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVz
LmgKPj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVz
LmgKPj4+Pj4gQEAgLTM0LDYgKzM0LDcgQEAgc3RydWN0IGRybV9pOTE1X3JlZ190YWJsZTsKPj4+
Pj4gIMKgIHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0Owo+Pj4+PiAgwqAgc3RydWN0IGk5MTVfcmVx
dWVzdDsKPj4+Pj4gIMKgIHN0cnVjdCBpOTE1X3NjaGVkX2F0dHI7Cj4+Pj4+ICtzdHJ1Y3QgaW50
ZWxfZ3Q7Cj4+Pj4+ICDCoCBzdHJ1Y3QgaW50ZWxfdW5jb3JlOwo+Pj4+PiAgwqAgdHlwZWRlZiB1
OCBpbnRlbF9lbmdpbmVfbWFza190Owo+Pj4+PiBAQCAtMjY2LDYgKzI2Nyw3IEBAIHN0cnVjdCBp
bnRlbF9lbmdpbmVfZXhlY2xpc3RzIHsKPj4+Pj4gIMKgIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3Mg
ewo+Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNTsK
Pj4+Pj4gK8KgwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxfZ3QgKmd0Owo+Pj4+IEknZCBwdXNoIGZv
ciBndCBhcyBiZWluZyB0aGUgYmFja3BvaW50ZXIsIGFuZCBpOTE1IGl0cyBkaXN0YW50IGdyYW5k
Cj4+Pj4gcGFyZW50LiBOb3Qgc3VyZSBob3cgbXVjaCBwYWluIHRoYXQgd291bGQgYnJpbmcganVz
dCBmb3IgdGhlIGVsaW1pbmF0aW9uCj4+Pj4gb2Ygb25lIG1vcmUgZHJtX2k5MTVfcHJpdmF0ZSwg
YnV0IHRoYXQncyBob3cgSSBwaWN0dXJlIHRoZQo+Pj4+IGVuY2Fwc3VsYXRpb24uCj4+IEl0IGRl
cGVuZHMgb24gb3ZlcmFsbCBkaXJlY3Rpb24uIEFyZSB3ZSBnb2luZyB0byBnbyB3aXRoIGhlbHBl
cnMKPj4gKFhYWF90b19pOTE1KSBvciBub3QuIFdlbGwgZm9yIHJlbW92aW5nIGVuZ2luZS0+aTkx
NSB0aGVyZSB3b3VsZCBiZQo+PiBjaHVybiBhbHJlYWR5LiBCdXQgc2FtZSBjaHVybiByZWdhcmRs
ZXNzIG9mIHdoZXRoZXIgd2UgcGljawo+PiBlbmdpbmVfdG9faTkxNSBvciBlbmdpbmUtPmd0LT5p
OTE1Lgo+Pgo+PiBCdXQgSSBkb24ndCBzZWUgYSBwcm9ibGVtIHdpdGggaGF2aW5nIGJvdGggaTkx
NSBhbmQgZ3QgcG9pbnRlcnMgaW4gdGhlCj4+IGVuZ2luZS4gSXQncyBhIHNob3J0IGN1dCB0byBh
dm9pZCBwb2ludGVyIGNoYXNpbmcgYW5kIHZlcmJvc2l0eS4gT3VyCj4+IGNvZGUgaXMgZnVuZGFt
ZW50YWxseSBzdGlsbCB2ZXJ5IGRlcGVuZGVudCBvbiBydW50aW1lIGNoZWNrcyBhZ2FpbnN0Cj4+
IElOVEVMX0dFTiBhbmQgSU5URUxfSU5GTywgc28gaTkxNSBpcyBwcmV0dHkgbXVjaCBpbiBuZWVk
IGFsbCBvdmVyIHRoZSBwbGFjZS4KPj4KPj4+IFdvdWxkIGl0IGJlIHdvcnRoIG1vdmluZyBzb21l
IG9mIHRoZSBmbGFncyBpbiB0aGUgZGV2aWNlX2luZm8gc3RydWN0dXJlCj4+PiBpbiBhIGd0IHN1
YnN0cnVjdHVyZSwgbGlrZSB3ZSBkaWQgZm9yIGRpc3BsYXksIGFuZCBnZXQgYSBwb2ludGVyIHRv
IHRoYXQKPj4+IGluIGludGVsX2d0PyBXZSBjb3VsZCBzYXZlIHNvbWUganVtcHMgYmFjayB0aGF0
IHdheSBhbmQgYmUgbW9yZSBjb2hlcmVudAo+Pj4gaW4gd2hlcmUgd2Ugc3RvcmUgdGhlIGluZm8u
Cj4+IFNvIGV2ZW4gd2l0aCB0aGlzIHdlIG1heWJlIHJlZHVjZSB0aGUgbmVlZCB0byBjaGFzZSBh
bGwgdGhlIHdheSB0byBpOTE1Cj4+IGEgYml0LCBidXQgbm90IGZ1bGx5LiBVbmxlc3Mgd2UgZGVj
aWRlIHRvIGR1cGxpY2F0ZSBnZW4gaW4gaW50ZWxfZ3QgYXMKPj4gd2VsbC4gV2VsbC4uIG5vdyBJ
IGFtIHNjYXJlZCB3ZSB3aWxsIGp1c3QgZGVjaWRlIHRvIGRvIHRoYXQuIDpECj4gS2luZCBvZmYs
IHdlIGFyZSBhbHJlYWR5IHJlZHVjaW5nIHRoZSBydW50aW1lIGNoZWNrcyBpbnRvIGZlYXR1cmUg
ZmxhZ3MKPiBvciB2ZnVuY3MgZm9yIGhvdCBwYXRocy4gSSBkbyBob3BlIHRoZSBvbmx5IHRpbWUg
d2UgbmVlZCB0byBnbyBiYWNrIHRvCj4gaTkxNSBpcyBkdXJpbmcgaW5pdC4gVGhpcyBzaG91bGQg
YmUgcmVhc29uYWJseSB0cnVlIGZvciBlbmdpbmU7IGxvb2tpbmcKPiBhdCBpbnRlbF9scmMuYyB0
aGUgY29tbW9uIGFjY2VzcyBpcyBmb3IgaTkxNS0+c2NyYXRjaCwgd2hpY2ggd2UgbmVlZCB0bwo+
IG1vdmUgdW5kZXIgaW50ZWxfZ3QuIEFuZCBJIGV4cGVjdCB0aGF0IHdlIHdpbGwgc2VlIHNpbWls
YXIgbmF0dXJhbAo+IHRyYW5zaXRpb25zIGZvciBlbmdpbmUtPmk5MTUuCj4gLUNocmlzCgpUaGVy
ZSB3YXMgYWxzbyBhIG1lbnRpb24gYSB3aGlsZSBiYWNrIG9mIHNwbGl0dGluZyBndCBhbmQgZGlz
cGxheSBnZW5zIAooaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy81MTg2
MC8pLCBpZiB3ZSBldmVyIGRlY2lkZSAKdGhhdCB0aGF0IG1ha2VzIHNlbnNlIHRoZSBndCBnZW4g
d2lsbCBqdXN0IG5hdHVyYWxseSBtb3ZlIGFuZCB3ZSdsbCBzYXZlIAptb3N0IG9mIHRoZSBqdW1w
cyB0byBpOTE1LgoKRGFuaWVsZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
