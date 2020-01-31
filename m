Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EFF14F3B4
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 22:24:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF4CC6FBEC;
	Fri, 31 Jan 2020 21:24:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF4BC6FBEC
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 21:24:02 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 13:24:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,387,1574150400"; d="scan'208";a="224554375"
Received: from orsosgc001.ra.intel.com (HELO orsosgc001.amr.corp.intel.com)
 ([10.23.184.150])
 by fmsmga008.fm.intel.com with ESMTP; 31 Jan 2020 13:24:02 -0800
Date: Fri, 31 Jan 2020 13:24:01 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <20200131212401.GD39410@orsosgc001.amr.corp.intel.com>
References: <20200124013701.40609-1-umesh.nerlige.ramappa@intel.com>
 <0f632875-e78a-22f1-2259-d65fa5e74ef5@intel.com>
 <20200127053052.GB35901@orsosgc001.amr.corp.intel.com>
 <fcd5d9ab-6687-890a-c872-ea048718792d@intel.com>
 <20200130235414.GB39410@orsosgc001.amr.corp.intel.com>
 <36baf9cc-f3d7-cfd1-1de3-ade6c8657793@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <36baf9cc-f3d7-cfd1-1de3-ade6c8657793@intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Fix OA context id overlap
 with idle context id
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris.p.wilson@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBKYW4gMzEsIDIwMjAgYXQgMDE6MDA6NTRQTSArMDIwMCwgTGlvbmVsIExhbmR3ZXJs
aW4gd3JvdGU6Cj5PbiAzMS8wMS8yMDIwIDAxOjU0LCBVbWVzaCBOZXJsaWdlIFJhbWFwcGEgd3Jv
dGU6Cj4+T24gTW9uLCBKYW4gMjcsIDIwMjAgYXQgMTE6MTY6MzJBTSArMDIwMCwgTGlvbmVsIExh
bmR3ZXJsaW4gd3JvdGU6Cj4+Cj4+W3NuaXBdCj4+Cj4+Pj4+Pi0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcGVyZi5jCj4+Pj4+PisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cGVyZi5jCj4+Pj4+PkBAIC0xMzIzLDcgKzEzMjMsMTIgQEAgc3RhdGljIGludCAKPj4+Pj4+b2Ff
Z2V0X3JlbmRlcl9jdHhfaWQoc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSkKPj4+Pj4+
wqDCoMKgwqAgY2FzZSAxMjogewo+Pj4+Pj7CoMKgwqDCoMKgwqDCoMKgIHN0cmVhbS0+c3BlY2lm
aWNfY3R4X2lkX21hc2sgPQo+Pj4+Pj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKCgxVSA8PCBH
RU4xMV9TV19DVFhfSURfV0lEVEgpIC0gMSkgPDwgCj4+Pj4+PihHRU4xMV9TV19DVFhfSURfU0hJ
RlQgLSAzMik7Cj4+Pj4+Pi3CoMKgwqDCoMKgwqDCoCBzdHJlYW0tPnNwZWNpZmljX2N0eF9pZCA9
IHN0cmVhbS0+c3BlY2lmaWNfY3R4X2lkX21hc2s7Cj4+Pj4+PivCoMKgwqDCoMKgwqDCoCAvKiBQ
aWNrIGFuIHVudXNlZCBjb250ZXh0IGlkCj4+Pj4+PivCoMKgwqDCoMKgwqDCoMKgICogMCAtIChO
VU1fQ09OVEVYVF9UQUcgLSAxKSBhcmUgdXNlZCBieSBvdGhlciBjb250ZXh0cwo+Pj4+Pj4rwqDC
oMKgwqDCoMKgwqDCoCAqIEdFTjEyX01BWF9DT05URVhUX0hXX0lEICgweDdmZikgaXMgdXNlZCBi
eSBpZGxlIGNvbnRleHQKPj4+Pj4+K8KgwqDCoMKgwqDCoMKgwqAgKi8KPj4+Pj4+K8KgwqDCoMKg
wqDCoMKgIHN0cmVhbS0+c3BlY2lmaWNfY3R4X2lkID0gKEdFTjEyX01BWF9DT05URVhUX0hXX0lE
IAo+Pj4+Pj4tIDEpIDw8IChHRU4xMV9TV19DVFhfSURfU0hJRlQgLSAzMik7Cj4+Pj4+PivCoMKg
wqDCoMKgwqDCoCBCVUlMRF9CVUdfT04oKEdFTjEyX01BWF9DT05URVhUX0hXX0lEIC0gMSkgPCAK
Pj4+Pj4+TlVNX0NPTlRFWFRfVEFHKTsKPj4+Pj4KPj4+Pj4KPj4+Pj5BcmcgeWVhaCwgd2UgY2Fu
J3QgdXNlIGFuIGlkIHRoYXQgaGFzIGFsbCBiaXRzIHRvIDEgYmVjYXVzZSAKPj4+Pj50aGF0IG1h
dGNoZXMgdGhlIGlkbGUgdmFsdWUgaW4gdGhlIE9BIHJlcG9ydHMgOi8KPj4+Pj4KPj4+Pj5UaGlz
IGFsc28gYWZmZWN0cyBnZW44LTEwIGNhc2VzIChhZmFpaykuCj4+Pj4KPj4+PkZvciBnZW44LTEw
LCBJIGRpZCBub3Qgc2VlIGEgc3BlY2lmaWMgZGVmaW5pdGlvbiBmb3IgYW4gaWRsZSAKPj4+PmNv
bnRleHQgaWQuwqAgVGhlIGZyb20vdG8gaWRsZSBjb250ZXh0IHN3aXRjaGVzIGFyZSBpbmRpY2F0
ZWQgYnkgCj4+Pj5kZWRpY2F0ZWQgYml0cyBpbiB0aGUgQ1NCIGluc3RlYWQgKGZyb20gc3BlYyku
Cj4+Pgo+Pj4KPj4+SSBtZWFudCB0aGF0IEkgcmVtZW1iZXIgdGhlIHBlcmlvZGljIE9BIHJlcG9y
dHMgd2hlbiBIVyBpcyBpZGxlIHRvIAo+Pj5oYXZlIHRoZSBjb250ZXhfaWQ9MHhmZmZmZmZmZi4K
Pj4KPj5Gb3IgdGhlc2UgZ2VucyB3ZSB1c2UgMHgxZmZmZmYgYXMgdGhlIGNvbnRleHQgaWQuIEJl
Zm9yZSB3ZSByZXR1cm4gCj4+cmVwb3J0cyB0byB0aGUgdXNlciwgd2UgYXJlIHNldHRpbmcgY29u
dGV4dCBpZCB0byAweGZmZmZmZmZmIGZvciAKPj5pbnZhbGlkIGFuZCBpcnJlbGV2YW50IGNvbnRl
eHRzLgo+Pgo+PlRoYW5rcywKPj5VbWVzaAo+Cj4KPlNvcnJ5LCBJJ3ZlIGJlZW4gYSBiaXQgb3V0
IG9mIHRoZSBsb29wIG9uIE9BIHJlcG9ydHMgbGF0ZWx5Lgo+Cj5JIGp1c3Qgbm90aWNlZCB0aGF0
IHRoZSBjb250ZXh0IHZhbGlkIGJpdCBpcyBub3QgY2hlY2tlZCBvbiBnZW4xMiBhbnltb3JlLgo+
Cj5UaGUgZG9jdW1lbnRhdGlvbiBpcyByZWFsbHkgaG9ycmlibGUsIGJ1dCBCU3BlYyA1MjE5OCBz
ZWVtcyB0byAKPmluZGljYXRlIHRoZSBiaXQgaXMgc3RpbGwgYXJvdW5kLgoKSSBhbSBsb29raW5n
IGF0IHRoZSBmaXJzdCB0YWJsZSBkZXNjcmliaW5nIHRoZSByZXBvcnQgSUQgaW4gNTIxOTggd2hp
Y2ggCmhhcyBUR0wgbmV4dCB0byBpdC4gSSBkb24ndCBzZWUgYSBkZWZpbml0aW9uIGZvciB0aGlz
IGJpdC4KCkkgd2lsbCB0cnkgdG8gYXNrIGFyb3VuZCB0byBzZWUgaWYgdGhhdCdzIG5vdCB0aGUg
Y2FzZS4KPgo+Cj5Db3VsZCBpdCBiZSB0aGUgc291cmNlIG9mIHRoZSBpc3N1ZT8KWW91IG1lYW4g
LSBzZWVpbmcgMHhmZmZmZmZmZiBkdXJpbmcgaWRsZSBpbiBwZXJpb2RpYyByZXBvcnRzPwoKVGhh
bmtzLApVbWVzaAoKPgo+Cj5UaGFua3MgZm9yIHlvdXIgaGVscCA6KQo+Cj4KPi1MaW9uZWwKPgo+
Cj4+Pgo+Pj5JIGNvdWxkIHJlbWVtYmVyIHdyb25nIDovCj4+Pgo+Pj4KPj4+LUxpb25lbAo+Pj4K
Pj4+Cj4+Pj4KPj4+PlRoYW5rcywKPj4+PlVtZXNoCj4+Pj4KPj4+Pj4KPj4+Pj4KPj4+Pj5UaGFu
a3MgZm9yIHNwb3R0aW5nIHRoaXMhCj4+Pj4+Cj4+Pj4+Cj4+Pj4+LUxpb25lbAo+Pj4+Pgo+Pj4+
Pgo+Pj4+Pj7CoMKgwqDCoMKgwqDCoMKgIGJyZWFrOwo+Pj4+Pj7CoMKgwqDCoCB9Cj4+Pj4+PkBA
IC0xMzMxLDcgKzEzMzYsNyBAQCBzdGF0aWMgaW50IG9hX2dldF9yZW5kZXJfY3R4X2lkKHN0cnVj
dCAKPj4+Pj4+aTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQo+Pj4+Pj7CoMKgwqDCoMKgwqDCoMKg
IE1JU1NJTkdfQ0FTRShJTlRFTF9HRU4oY2UtPmVuZ2luZS0+aTkxNSkpOwo+Pj4+Pj7CoMKgwqDC
oCB9Cj4+Pj4+Pi3CoMKgwqAgY2UtPnRhZyA9IHN0cmVhbS0+c3BlY2lmaWNfY3R4X2lkX21hc2s7
Cj4+Pj4+PivCoMKgwqAgY2UtPnRhZyA9IHN0cmVhbS0+c3BlY2lmaWNfY3R4X2lkOwo+Pj4+Pj7C
oMKgwqDCoCBEUk1fREVCVUdfRFJJVkVSKCJmaWx0ZXJpbmcgb24gY3R4X2lkPTB4JXggY3R4X2lk
X21hc2s9MHgleFxuIiwKPj4+Pj4+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RyZWFtLT5z
cGVjaWZpY19jdHhfaWQsCj4+Pj4+Cj4+Pj4+Cj4+Pgo+Cl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
