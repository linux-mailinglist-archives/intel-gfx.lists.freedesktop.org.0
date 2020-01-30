Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B74C14E63B
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 00:54:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D60B06E0D9;
	Thu, 30 Jan 2020 23:54:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02FD06E0D9
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 23:54:14 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jan 2020 15:54:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,383,1574150400"; d="scan'208";a="253175672"
Received: from orsosgc001.ra.intel.com (HELO orsosgc001.amr.corp.intel.com)
 ([10.23.184.150])
 by fmsmga004.fm.intel.com with ESMTP; 30 Jan 2020 15:54:14 -0800
Date: Thu, 30 Jan 2020 15:54:14 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Message-ID: <20200130235414.GB39410@orsosgc001.amr.corp.intel.com>
References: <20200124013701.40609-1-umesh.nerlige.ramappa@intel.com>
 <0f632875-e78a-22f1-2259-d65fa5e74ef5@intel.com>
 <20200127053052.GB35901@orsosgc001.amr.corp.intel.com>
 <fcd5d9ab-6687-890a-c872-ea048718792d@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fcd5d9ab-6687-890a-c872-ea048718792d@intel.com>
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

T24gTW9uLCBKYW4gMjcsIDIwMjAgYXQgMTE6MTY6MzJBTSArMDIwMCwgTGlvbmVsIExhbmR3ZXJs
aW4gd3JvdGU6Cgpbc25pcF0KCj4+Pj4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bl
cmYuYwo+Pj4+KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMKPj4+PkBAIC0x
MzIzLDcgKzEzMjMsMTIgQEAgc3RhdGljIGludCBvYV9nZXRfcmVuZGVyX2N0eF9pZChzdHJ1Y3Qg
Cj4+Pj5pOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0pCj4+Pj7CoMKgwqDCoCBjYXNlIDEyOiB7Cj4+
Pj7CoMKgwqDCoMKgwqDCoMKgIHN0cmVhbS0+c3BlY2lmaWNfY3R4X2lkX21hc2sgPQo+Pj4+wqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgICgoMVUgPDwgR0VOMTFfU1dfQ1RYX0lEX1dJRFRIKSAtIDEp
IDw8IAo+Pj4+KEdFTjExX1NXX0NUWF9JRF9TSElGVCAtIDMyKTsKPj4+Pi3CoMKgwqDCoMKgwqDC
oCBzdHJlYW0tPnNwZWNpZmljX2N0eF9pZCA9IHN0cmVhbS0+c3BlY2lmaWNfY3R4X2lkX21hc2s7
Cj4+Pj4rwqDCoMKgwqDCoMKgwqAgLyogUGljayBhbiB1bnVzZWQgY29udGV4dCBpZAo+Pj4+K8Kg
wqDCoMKgwqDCoMKgwqAgKiAwIC0gKE5VTV9DT05URVhUX1RBRyAtIDEpIGFyZSB1c2VkIGJ5IG90
aGVyIGNvbnRleHRzCj4+Pj4rwqDCoMKgwqDCoMKgwqDCoCAqIEdFTjEyX01BWF9DT05URVhUX0hX
X0lEICgweDdmZikgaXMgdXNlZCBieSBpZGxlIGNvbnRleHQKPj4+PivCoMKgwqDCoMKgwqDCoMKg
ICovCj4+Pj4rwqDCoMKgwqDCoMKgwqAgc3RyZWFtLT5zcGVjaWZpY19jdHhfaWQgPSAoR0VOMTJf
TUFYX0NPTlRFWFRfSFdfSUQgLSAxKSAKPj4+Pjw8IChHRU4xMV9TV19DVFhfSURfU0hJRlQgLSAz
Mik7Cj4+Pj4rwqDCoMKgwqDCoMKgwqAgQlVJTERfQlVHX09OKChHRU4xMl9NQVhfQ09OVEVYVF9I
V19JRCAtIDEpIDwgTlVNX0NPTlRFWFRfVEFHKTsKPj4+Cj4+Pgo+Pj5BcmcgeWVhaCwgd2UgY2Fu
J3QgdXNlIGFuIGlkIHRoYXQgaGFzIGFsbCBiaXRzIHRvIDEgYmVjYXVzZSB0aGF0IAo+Pj5tYXRj
aGVzIHRoZSBpZGxlIHZhbHVlIGluIHRoZSBPQSByZXBvcnRzIDovCj4+Pgo+Pj5UaGlzIGFsc28g
YWZmZWN0cyBnZW44LTEwIGNhc2VzIChhZmFpaykuCj4+Cj4+Rm9yIGdlbjgtMTAsIEkgZGlkIG5v
dCBzZWUgYSBzcGVjaWZpYyBkZWZpbml0aW9uIGZvciBhbiBpZGxlIGNvbnRleHQgCj4+aWQuwqAg
VGhlIGZyb20vdG8gaWRsZSBjb250ZXh0IHN3aXRjaGVzIGFyZSBpbmRpY2F0ZWQgYnkgZGVkaWNh
dGVkIAo+PmJpdHMgaW4gdGhlIENTQiBpbnN0ZWFkIChmcm9tIHNwZWMpLgo+Cj4KPkkgbWVhbnQg
dGhhdCBJIHJlbWVtYmVyIHRoZSBwZXJpb2RpYyBPQSByZXBvcnRzIHdoZW4gSFcgaXMgaWRsZSB0
byAKPmhhdmUgdGhlIGNvbnRleF9pZD0weGZmZmZmZmZmLgoKRm9yIHRoZXNlIGdlbnMgd2UgdXNl
IDB4MWZmZmZmIGFzIHRoZSBjb250ZXh0IGlkLiBCZWZvcmUgd2UgcmV0dXJuIApyZXBvcnRzIHRv
IHRoZSB1c2VyLCB3ZSBhcmUgc2V0dGluZyBjb250ZXh0IGlkIHRvIDB4ZmZmZmZmZmYgZm9yIGlu
dmFsaWQgCmFuZCBpcnJlbGV2YW50IGNvbnRleHRzLgoKVGhhbmtzLApVbWVzaAo+Cj5JIGNvdWxk
IHJlbWVtYmVyIHdyb25nIDovCj4KPgo+LUxpb25lbAo+Cj4KPj4KPj5UaGFua3MsCj4+VW1lc2gK
Pj4KPj4+Cj4+Pgo+Pj5UaGFua3MgZm9yIHNwb3R0aW5nIHRoaXMhCj4+Pgo+Pj4KPj4+LUxpb25l
bAo+Pj4KPj4+Cj4+Pj7CoMKgwqDCoMKgwqDCoMKgIGJyZWFrOwo+Pj4+wqDCoMKgwqAgfQo+Pj4+
QEAgLTEzMzEsNyArMTMzNiw3IEBAIHN0YXRpYyBpbnQgb2FfZ2V0X3JlbmRlcl9jdHhfaWQoc3Ry
dWN0IAo+Pj4+aTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQo+Pj4+wqDCoMKgwqDCoMKgwqDCoCBN
SVNTSU5HX0NBU0UoSU5URUxfR0VOKGNlLT5lbmdpbmUtPmk5MTUpKTsKPj4+PsKgwqDCoMKgIH0K
Pj4+Pi3CoMKgwqAgY2UtPnRhZyA9IHN0cmVhbS0+c3BlY2lmaWNfY3R4X2lkX21hc2s7Cj4+Pj4r
wqDCoMKgIGNlLT50YWcgPSBzdHJlYW0tPnNwZWNpZmljX2N0eF9pZDsKPj4+PsKgwqDCoMKgIERS
TV9ERUJVR19EUklWRVIoImZpbHRlcmluZyBvbiBjdHhfaWQ9MHgleCBjdHhfaWRfbWFzaz0weCV4
XG4iLAo+Pj4+wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RyZWFtLT5zcGVjaWZpY19jdHhf
aWQsCj4+Pgo+Pj4KPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
