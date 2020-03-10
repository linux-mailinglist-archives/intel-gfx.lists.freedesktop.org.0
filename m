Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B72C91809B3
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 21:58:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9514489E5A;
	Tue, 10 Mar 2020 20:58:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D590389E5A
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 20:58:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 13:58:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,538,1574150400"; d="scan'208";a="353707850"
Received: from brockhau-mobl.ger.corp.intel.com (HELO [10.249.39.31])
 ([10.249.39.31])
 by fmsmga001.fm.intel.com with ESMTP; 10 Mar 2020 13:57:59 -0700
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200303221905.25866-1-umesh.nerlige.ramappa@intel.com>
 <20200303221905.25866-7-umesh.nerlige.ramappa@intel.com>
 <20200310200834.GE9651@orsosgc001.amr.corp.intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <c2c8c8c9-2b6b-33ca-adf7-f6a9cbd6541f@intel.com>
Date: Tue, 10 Mar 2020 22:57:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200310200834.GE9651@orsosgc001.amr.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915/perf: add interrupt enabling
 parameter
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTAvMDMvMjAyMCAyMjowOCwgVW1lc2ggTmVybGlnZSBSYW1hcHBhIHdyb3RlOgo+IE9uIFR1
ZSwgTWFyIDAzLCAyMDIwIGF0IDAyOjE5OjA0UE0gLTA4MDAsIFVtZXNoIE5lcmxpZ2UgUmFtYXBw
YSB3cm90ZToKPj4gRnJvbTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5A
aW50ZWwuY29tPgo+Pgo+PiBUaGlzIGxldCdzIHRoZSBhcHBsaWNhdGlvbiBjaG9vc2UgdG8gYmUg
ZHJpdmVuIGJ5IHRoZSBpbnRlcnJ1cHQKPj4gbWVjaGFuaXNtIG9mIHRoZSBIVy4gSW4gY29uanVj
dGlvbiB3aXRoIGxvbmcgcGVyaW9kcyBmb3IgY2hlY2tzIGZvcgo+PiB0aGUgYXZhaWxhYmlsaXR5
IG9mIGRhdGEgb24gdGhlIENQVSwgdGhpcyBjYW4gcmVkdWNlIHRoZSBDUFUgbG9hZCB3aGVuCj4+
IGRvaW5nIGNhcHR1cmUgb2YgT0EgZGF0YS4KPj4KPj4gdjI6IFZlcnNpb24gdGhlIG5ldyBwYXJh
bWV0ZXIgKEpvb25hcykKPj4gdjM6IFJlYmFzZSAoVW1lc2gpCj4+Cj4+IFNpZ25lZC1vZmYtYnk6
IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KPj4gU2ln
bmVkLW9mZi1ieTogVW1lc2ggTmVybGlnZSBSYW1hcHBhIDx1bWVzaC5uZXJsaWdlLnJhbWFwcGFA
aW50ZWwuY29tPgo+PiAtLS0KPj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgfCA1
OCArKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLQo+PiBpbmNsdWRlL3VhcGkvZHJtL2k5
MTVfZHJtLmjCoMKgwqDCoMKgIHwgMTAgKysrKysrCj4+IDIgZmlsZXMgY2hhbmdlZCwgNTMgaW5z
ZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BlcmYuYyAKPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bl
cmYuYwo+PiBpbmRleCA1MDI5NjFkYTg0MGQuLmFiNDFjYmE4NWI0MCAxMDA2NDQKPj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9wZXJmLmMKPj4gQEAgLTI1Miw3ICsyNTIsNyBAQAo+PiDCoCogb2FfYnVmZmVy
X2NoZWNrKCkuCj4+IMKgKgo+PiDCoCogTW9zdCBvZiB0aGUgaW1wbGVtZW50YXRpb24gZGV0YWls
cyBmb3IgdGhpcyB3b3JrYXJvdW5kIGFyZSBpbgo+PiAtICogb2FfYnVmZmVyX2NoZWNrX3VubG9j
a2VkKCkgYW5kIF9hcHBlbmRfb2FfcmVwb3J0cygpCj4+ICsgKiBvYV9idWZmZXJfY2hlY2soKSBh
bmQgX2FwcGVuZF9vYV9yZXBvcnRzKCkKPj4gwqAqCj4+IMKgKiBOb3RlIGZvciBwb3N0ZXJpdHk6
IHByZXZpb3VzbHkgdGhlIGRyaXZlciB1c2VkIHRvIGRlZmluZSBhbiAKPj4gZWZmZWN0aXZlIHRh
aWwKPj4gwqAqIHBvaW50ZXIgdGhhdCBsYWdnZWQgdGhlIHJlYWwgcG9pbnRlciBieSBhICd0YWls
IG1hcmdpbicgbWVhc3VyZWQgCj4+IGluIGJ5dGVzCj4+IEBAIC00NDcsOCArNDQ3LDkgQEAgc3Rh
dGljIHUzMiBnZW43X29hX2h3X3RhaWxfcmVhZChzdHJ1Y3QgCj4+IGk5MTVfcGVyZl9zdHJlYW0g
KnN0cmVhbSkKPj4gfQo+Pgo+PiAvKioKPj4gLSAqIG9hX2J1ZmZlcl9jaGVja191bmxvY2tlZCAt
IGNoZWNrIGZvciBkYXRhIGFuZCB1cGRhdGUgdGFpbCBwdHIgc3RhdGUKPj4gKyAqIG9hX2J1ZmZl
cl9jaGVjayAtIGNoZWNrIGZvciBkYXRhIGFuZCB1cGRhdGUgdGFpbCBwdHIgc3RhdGUKPj4gwqAq
IEBzdHJlYW06IGk5MTUgc3RyZWFtIGluc3RhbmNlCj4+ICsgKiBAbG9jazogd2hldGhlciB0byB0
YWtlIHRoZSBvYV9idWZmZXIgc3BpbiBsb2NrCj4+IMKgKgo+PiDCoCogVGhpcyBpcyBlaXRoZXIg
Y2FsbGVkIHZpYSBmb3BzIChmb3IgYmxvY2tpbmcgcmVhZHMgaW4gdXNlciBjdHgpIG9yIAo+PiB0
aGUgcG9sbAo+PiDCoCogY2hlY2sgaHJ0aW1lciAoYXRvbWljIGN0eCkgdG8gY2hlY2sgdGhlIE9B
IGJ1ZmZlciB0YWlsIHBvaW50ZXIgYW5kIAo+PiBjaGVjawo+PiBAQCAtNDcwLDggKzQ3MSw5IEBA
IHN0YXRpYyB1MzIgZ2VuN19vYV9od190YWlsX3JlYWQoc3RydWN0IAo+PiBpOTE1X3BlcmZfc3Ry
ZWFtICpzdHJlYW0pCj4+IMKgKgo+PiDCoCogUmV0dXJuczogJXRydWUgaWYgdGhlIE9BIGJ1ZmZl
ciBjb250YWlucyBkYXRhLCBlbHNlICVmYWxzZQo+PiDCoCovCj4+IC1zdGF0aWMgYm9vbCBvYV9i
dWZmZXJfY2hlY2tfdW5sb2NrZWQoc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSkKPj4g
K3N0YXRpYyBib29sIG9hX2J1ZmZlcl9jaGVjayhzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3Ry
ZWFtLCBib29sIGxvY2spCj4KPiBIaSBMaW9uZWwsCj4KPiBBbGwgY2FsbGVycyBzZWVtIHRvIHNl
dCB0aGUgbG9jayB0byB0cnVlIHdoZW4gY2FsbGluZyAKPiBvYV9idWZmZXJfY2hlY2soKS7CoCBE
byB5b3UgcmVjYWxsIHdoeSB0aGUgcGFyYW1ldGVyIHdhcyBpbnRyb2R1Y2VkP8KgIAo+IElmIG5v
dCwgd2UgcHJvYmFibHkgd2FudCB0byByZW1vdmUgdGhpcyBjaGFuZ2UuCj4KPiBUaGFua3MsCj4g
VW1lc2gKCgpFcnIuLi4gU29ycnksIEkgZG9uJ3QgcmVtZW1iZXIuCgpJdCdzIHByb2JhYmx5IGEg
bGVmdG92ZXIgdGhlIGluaXRpYWwgaXRlcmF0aW9uIHdoZXJlIEkgd2FzIHRyeWluZyB0byBnZXQg
CnRoZSBPQSBoZWFkL3RhaWwgcmVnaXN0ZXIgZnJvbSB0aGUgaW50ZXJydXB0LgoKSSBndWVzcyB5
b3UgY2FuIGRyb3AgdGhhdCBwYXJhbSBhbmQgbGVhdmUgdGhlIGZ1bmN0aW9uIHdpdGggdGhlIApf
dW5sb2NrZWQgcHJlZml4LgoKClRoYW5rcywKCgotTGlvbmVsCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
