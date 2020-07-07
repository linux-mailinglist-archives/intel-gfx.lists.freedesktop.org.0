Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EAB5216AED
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 13:00:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDEE189B97;
	Tue,  7 Jul 2020 11:00:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC42289B97
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 11:00:16 +0000 (UTC)
IronPort-SDR: 636AETCXmYhETLmLFdT+5EcJJczjZ7BcO9WN1tYQ4zsq8IYpaIRxApA8l/tOJlYP7s3+Ntaxuc
 BpISCY5yCNlQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9674"; a="145072423"
X-IronPort-AV: E=Sophos;i="5.75,323,1589266800"; d="scan'208";a="145072423"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2020 04:00:14 -0700
IronPort-SDR: PavnDglrWkFDfelaXbWZUIZNrkQa2T8CwYYckss9s1z81qUowPNmcdGOUoJhRqV2U6W102IYU2
 MfCBByNiVLUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,323,1589266800"; d="scan'208";a="279567559"
Received: from smenzel-mobl1.ger.corp.intel.com (HELO [10.252.40.251])
 ([10.252.40.251])
 by orsmga003.jf.intel.com with ESMTP; 07 Jul 2020 04:00:13 -0700
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200703122221.591656-1-maarten.lankhorst@linux.intel.com>
 <20200703122221.591656-19-maarten.lankhorst@linux.intel.com>
 <017ac78c-8cfb-0d30-a686-91e34e5ecd14@linux.intel.com>
 <1ba4f588-fb98-289a-4a1b-edd6f10e0ad1@linux.intel.com>
 <c87f02f9-ed7c-34c9-4fcf-06b7e17780e3@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <cbd546f0-386c-5eec-51b1-1320b8cbd5bc@linux.intel.com>
Date: Tue, 7 Jul 2020 13:00:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <c87f02f9-ed7c-34c9-4fcf-06b7e17780e3@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 18/23] drm/i915: Dirty hack to fix selftests
 locking inversion
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

T3AgMDctMDctMjAyMCBvbSAxMjo1NiBzY2hyZWVmIFR2cnRrbyBVcnN1bGluOgo+Cj4gT24gMDcv
MDcvMjAyMCAxMToxOSwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4+IE9wIDAzLTA3LTIwMjAg
b20gMTU6NDggc2NocmVlZiBUdnJ0a28gVXJzdWxpbjoKPj4+Cj4+PiBPbiAwMy8wNy8yMDIwIDEz
OjIyLCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToKPj4+PiBTb21lIGk5MTUgc2VsZnRlc3RzIHN0
aWxsIHVzZSBpOTE1X3ZtYV9sb2NrKCkgYXMgaW5uZXIgbG9jaywgYW5kCj4+Pj4gaW50ZWxfY29u
dGV4dF9jcmVhdGVfcmVxdWVzdCgpIGludGVsX3RpbWVsaW5lLT5tdXRleCBhcyBvdXRlciBsb2Nr
Lgo+Pj4+IEZvcnR1bmF0ZWx5IGZvciBzZWxmdGVzdHMgdGhpcyBpcyBub3QgYW4gaXNzdWUsIHRo
ZXkgc2hvdWxkIGJlIGZpeGVkCj4+Pj4gYnV0IHdlIGNhbiBtb3ZlIGFoZWFkIGFuZCBjbGVhbmlm
eSBsb2NrZGVwIG5vdy4KPj4+Cj4+PiBNZW50aW9ucyBhbmQgZXhpc3RlbmNlIG9mICJkaXJ0eSBo
YWNrcyIgd2lsbCBob3BlZnVsbHkgYmUgcmVtb3ZlZCBmcm9tIHRoZSBzZXJpZXMgYmVmb3JlIGl0
IGNhbiBiZSBjb25zaWRlcmVkIG1lcmdlIHJlYWR5Pwo+Pj4KPj4+IFJlZ2FyZHMsCj4+Pgo+Pj4g
VHZydGtvCj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVu
Lmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4+Pj4gLS0tCj4+Pj4gwqDCoCBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9jb250ZXh0LmMgfCAxMiArKysrKysrKysrKysKPj4+PiDCoMKg
IDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfY29udGV4dC5jCj4+Pj4gaW5kZXggNjQ5NDgzODY2MzBmLi5mZTlmZmY1
YTYzYjEgMTAwNjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29u
dGV4dC5jCj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5j
Cj4+Pj4gQEAgLTQ1OSw2ICs0NTksMTggQEAgc3RydWN0IGk5MTVfcmVxdWVzdCAqaW50ZWxfY29u
dGV4dF9jcmVhdGVfcmVxdWVzdChzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCj4+Pj4gwqDCoMKg
wqDCoMKgIHJxID0gaTkxNV9yZXF1ZXN0X2NyZWF0ZShjZSk7Cj4+Pj4gwqDCoMKgwqDCoMKgIGlu
dGVsX2NvbnRleHRfdW5waW4oY2UpOwo+Pj4+IMKgwqAgK8KgwqDCoCBpZiAoSVNfRVJSKHJxKSkK
Pj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIHJxOwo+Pj4+ICsKPj4+PiArwqDCoMKgIC8qCj4+
Pj4gK8KgwqDCoMKgICogdGltZWxpbmUtPm11dGV4IHNob3VsZCBiZSB0aGUgaW5uZXIgbG9jaywg
YnV0IGlzIHVzZWQgYXMgb3V0ZXIgbG9jay4KPj4+PiArwqDCoMKgwqAgKiBIYWNrIGFyb3VuZCB0
aGlzIHRvIHNodXQgdXAgbG9ja2RlcCBpbiBzZWxmdGVzdHMuLgo+Pj4+ICvCoMKgwqDCoCAqLwo+
Pj4+ICvCoMKgwqAgbG9ja2RlcF91bnBpbl9sb2NrKCZjZS0+dGltZWxpbmUtPm11dGV4LCBycS0+
Y29va2llKTsKPj4+PiArwqDCoMKgIG11dGV4X3JlbGVhc2UoJmNlLT50aW1lbGluZS0+bXV0ZXgu
ZGVwX21hcCwgX1JFVF9JUF8pOwo+Pj4+ICvCoMKgwqAgbXV0ZXhfYWNxdWlyZSgmY2UtPnRpbWVs
aW5lLT5tdXRleC5kZXBfbWFwLCBTSU5HTEVfREVQVEhfTkVTVElORywgMCwgX1JFVF9JUF8pOwo+
Pj4+ICvCoMKgwqAgcnEtPmNvb2tpZSA9IGxvY2tkZXBfcGluX2xvY2soJmNlLT50aW1lbGluZS0+
bXV0ZXgpOwo+Pj4+ICsKPj4+PiDCoMKgwqDCoMKgwqAgcmV0dXJuIHJxOwo+Pj4+IMKgwqAgfQo+
Pj4+IMKgIAo+Pgo+PiBIZXksCj4+Cj4+IFdlJ3JlIHRyeWluZyB0byBpbnZlcnQgdGhlIGxvY2tp
bmcgb3JkZXIgd2l0aCB2bWEgbG9jayB2cyByZXF1ZXN0IGxvY2ssIHdoaWxlIHRoaXMgaXMgYSBo
YWNrLAo+PiBpdCB3aWxsIG5vdCBhZmZlY3Qgbm9ybWFsIHJ1bm5pbmcgY29kZSwgaXQncyBvbmx5
IG1lYW50IHRvIHNodXQgdXAgbG9ja2RlcCBpbiB0aGUgc2VsZnRlc3RzLgo+Pgo+PiBUaGlzIGlz
IG1haW5seSBzbyB3ZSBjYW4gZml4IHRoZSBzZWxmdGVzdHMgb25lIGJ5IG9uZSwgd2l0aG91dCBi
cmVha2luZyB0aGUgd29ybGQuIElkZWFsbHkKPj4gd2hlbiBtbS5vYmogbGFuZHMsIHdlIGFscmVh
ZHkgY29ycmVjdGVkIHRoZSBsb2NrIG9yZGVyaW5nLiBXZSBtYXkga2VlcCB0aGlzIG1hY3JvIGZv
ciBzZWxmdGVzdHMsCj4+IGJ1dCB1bnRpbCBsb2NrIHJlb3JkZXJpbmcgaW4gc2VsZnRlc3RzIGlz
IGNvbXBsZXRlIHdlIHdpbGwgbmVlZCB0aGlzIHRlbXBvcmFyaWx5Lgo+Cj4gSXMgdGhlcmUgYSBy
ZWxhdGlvbnNoaXAgYmV0d2VlbiBvYmotPm1tLmxvY2sgYW5kIHRoaXMgcGFydGljdWxhciBsb2Nr
IGludmVyc2lvbj8gSSBkb24ndCBzZWUgaXQuIEl0IHdpbGwgYmVjb21lIGNyaXRpY2FsIHRvIGhh
dmUgc2VsZnRlc3RzIGFkanVzdGVkIHRvIHByb3BlciBsb2NraW5nIG9yZGVyIGZvciBldmVyeSB3
aGljaCB3aWxsL2NhbiB0cmlnZ2VyIGV2aWN0aW9uLiBCdXQgb2theSxpZiB5b3Ugd2FudCB0byBz
dGFnZSB0aGUgcGllY2VzIHBlcmhhcHMgaXQgaXMgYWNjZXB0YWJsZS4KCkl0J3MgdGhlIHJlcXVl
c3QgdGltZWxpbmUgbG9jayBiZWluZyBpbnZlcnRlZCwgbm90IHRoZSBtbS5sb2NrLiA6KQoKSXQg
bmVlZHMgZml4aW5nLCBiZWNhdXNlIHdlIHdhbnQgdG8gd2lyZSB3dyBldmVyeXdoZXJlLCBidXQg
aXQgc2hvdWxkIGJlIG9rIGluIHRoZSBtZWFudGltZSBmb3IganVzdCBzZWxmdGVzdHMuCgpGb3Ig
bW0ubG9jayByZW1vdmFsLCB3ZSB3aWxsIG5lZWQgdG8gZml4IHRoaXMgY29tcGxldGVseSwgYXMg
dGhpcyBmdW5jdGlvbiB3aWxsIHVzZSBpdHMgb3duIHd3IGNvbnRleHQsIGFuZCBhbGwgcGlucyBz
aG91bGQgYmUgZml4ZWQgdG8gdXNlIHRoZSBzY29wZSBvZiB0aGUgd3cgbG9jayBvbmx5LgoKPiBB
cyBwcmV2aW91cyBwYXRjaCBpbiB0aGUgc2VyaWVzIHJlbW92ZXMgaW50ZWxfY29udGV4dF9jcmVh
dGVfcmVxdWVzdCB1c2FnZXMgb3V0c2lkZSBzZWxmdGVzdHMgSSBzdWdnZXN0IHlvdSBtZW50aW9u
IHRoaXMgaW4gdGhpcyBjb21taXQgbWVzc2FnZSwgYXMgcGFydCBvZiBqdXN0aWZpY2F0aW9uIHdo
eSBpdCBpcyBzYWZlLgpUcnVlLgo+IEFsc28gaXQgd291bGQgYmUgZ29vZCB0byB3cmFwIGludGVs
X2NvbnRleHRfY3JlYXRlX3JlcXVlc3QgaW4gYSBzZWxmdGVzdCAjaWZkZWYgc28gdGhhdCBhY2Np
ZGVudGFsIHVzYWdlIGlzIHByZXZlbnRlZCBpbiB0aGUgaW50ZXItcmltIHN0YWdlcyBvZiByZWZh
Y3RvcmluZy4gClNvdW5kcyBnb29kLiA6KQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
