Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C669565E
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 06:59:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 553576E5CA;
	Tue, 20 Aug 2019 04:59:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C1256E5CA
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 04:59:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Aug 2019 21:59:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,407,1559545200"; d="scan'208";a="353456290"
Received: from dceraolo-mobl.amr.corp.intel.com (HELO [10.251.157.103])
 ([10.251.157.103])
 by orsmga005.jf.intel.com with ESMTP; 19 Aug 2019 21:59:08 -0700
To: "Summers, Stuart" <stuart.summers@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20190820012327.36443-1-daniele.ceraolospurio@intel.com>
 <ed03c2b4d93dd932589509e18871a8e7e28dd9ba.camel@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <42d0044b-50a6-4127-5355-3b9be732b3c0@intel.com>
Date: Mon, 19 Aug 2019 21:59:08 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <ed03c2b4d93dd932589509e18871a8e7e28dd9ba.camel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uc: define GuC and HuC FWs for EHL
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

CgpPbiA4LzE5LzIwMTkgOToyNSBQTSwgU3VtbWVycywgU3R1YXJ0IHdyb3RlOgo+IE9uIE1vbiwg
MjAxOS0wOC0xOSBhdCAxODoyMyAtMDcwMCwgRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyB3cm90ZToK
Pj4gRmlyc3QgdWMgZmlybXdhcmUgcmVsZWFzZSBmb3IgRUhMLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5
OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDwKPj4gZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVs
LmNvbT4KPj4gQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4+IENj
OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+Cj4+IENjOiBNaWNo
YWwgV2FqZGVjemtvIDxtaWNoYWwud2FqZGVjemtvQGludGVsLmNvbT4KPj4gLS0tCj4+ICAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYyB8IDEzICsrKysrKystLS0tLS0K
Pj4gICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+Pgo+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYwo+
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMKPj4gaW5kZXggYmQy
MmJmMTFhZGFkLi4yOTZhODI2MDNiZTAgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfdWNfZncuYwo+PiBAQCAtMzksMTIgKzM5LDEzIEBAIHZvaWQgaW50ZWxfdWNfZndf
Y2hhbmdlX3N0YXR1cyhzdHJ1Y3QgaW50ZWxfdWNfZncKPj4gKnVjX2Z3LAo+PiAgICAqIE11c3Qg
YmUgb3JkZXJlZCBiYXNlZCBvbiBwbGF0Zm9ybSArIHJldmlkLCBmcm9tIG5ld2VyIHRvIG9sZGVy
Lgo+PiAgICAqLwo+PiAgICNkZWZpbmUgSU5URUxfVUNfRklSTVdBUkVfREVGUyhmd19kZWYsIGd1
Y19kZWYsIGh1Y19kZWYpIFwKPj4gLQlmd19kZWYoSUNFTEFLRSwgICAgMCwgZ3VjX2RlZihpY2ws
IDMzLCAwLCAwKSwKPj4gaHVjX2RlZihpY2wsICA4LCAgNCwgMzIzOCkpIFwKPj4gLQlmd19kZWYo
Q09GRkVFTEFLRSwgMCwgZ3VjX2RlZihrYmwsIDMzLCAwLCAwKSwgaHVjX2RlZihrYmwsIDAyLAo+
PiAwMCwgMTgxMCkpIFwKPj4gLQlmd19kZWYoR0VNSU5JTEFLRSwgMCwgZ3VjX2RlZihnbGssIDMz
LCAwLCAwKSwgaHVjX2RlZihnbGssIDAzLAo+PiAwMSwgMjg5MykpIFwKPj4gLQlmd19kZWYoS0FC
WUxBS0UsICAgMCwgZ3VjX2RlZihrYmwsIDMzLCAwLCAwKSwgaHVjX2RlZihrYmwsIDAyLAo+PiAw
MCwgMTgxMCkpIFwKPj4gLQlmd19kZWYoQlJPWFRPTiwgICAgMCwgZ3VjX2RlZihieHQsIDMzLCAw
LCAwKSwgaHVjX2RlZihieHQsCj4+IDAxLCAgOCwgMjg5MykpIFwKPj4gLQlmd19kZWYoU0tZTEFL
RSwgICAgMCwgZ3VjX2RlZihza2wsIDMzLCAwLCAwKSwgaHVjX2RlZihza2wsIDAxLAo+PiAwNywg
MTM5OCkpCj4+ICsJZndfZGVmKEVMS0hBUlRMQUtFLCAwLCBndWNfZGVmKGVobCwgMzMsIDAsIDQp
LAo+PiBodWNfZGVmKGVobCwgIDksICAwLCAgICAwKSkgXAo+IElzIHRoZXJlIGEgcmVhc29uIHlv
dSBhcmUgYnVtcGluZyBzdHJhaWdodCB0byAzMy4wLjQgZm9yIEVITCByYXRoZXIKPiB0aGFuIHN0
aWNraW5nIHdpdGggdGhlIGV4aXN0aW5nIGZpcm13YXJlIHZlcnNpb24/IE9yIHdvcmRlZAo+IGRp
ZmZlcmVudGx5LCB3aHkgZG9uJ3Qgd2UgYnVtcCBldmVyeXRoaW5nIHRvIDMzLjAuNCBpZiB3ZSdy
ZSBhZGRpbmcgRUhMCj4gaGVyZSB0byBzdGF5IGluIHN5bmMgYmV0d2VlbiB0aGUgcGxhdGZvcm1z
PwoKMzMuMC40IGlzIHRoZSBmaXJzdCByZWxlYXNlIHRvIGluY2x1ZGUgYW4gRUhMIGJ1aWxkLCBz
byBJIGRpZG4ndCBoYXZlIAp0aGUgY2hvaWNlIHRvIHN0aWNrIHdpdGggMzMuMC4wIGZvciBpdCwg
b3RoZXJ3aXNlIEkgd291bGQgaGF2ZS4gQXMgZm9yIAp3aHkgSSBkaWRuJ3QgdXBkYXRlIGFsbCB0
aGUgb3RoZXIgYmxvYnMsIGl0IHdhcyBiZWNhdXNlIEFGQUlDUyBmcm9tIHRoZSAKcmVsZWFzZSBu
b3RlcyB0aGVyZSBhcmUgbm8gY2hhbmdlcyB0aGF0IHdlIG5lZWQgYXQgdGhlIG1vbWVudCwgbW9z
dGx5IApiZWNhdXNlIHRoZSBvbmx5IHRoaW5nIHdlIGRvIHdpdGggR3VDIGlzIGF1dGhlbnRpY2F0
aW5nIEh1QyBhbmQgdGhhdCAKZmxvdyBpcyBwcmV0dHkgc3RhdGljLiBBbGwgdGhlIDMzLjAuKiBy
ZWxlYXNlcyBhcmUgY29tcGF0aWJsZSBhdCB0aGUgCmludGVyZmFjZSBsZXZlbCBzbyBJIG9wdGVk
IHRvIGF2b2lkIHB1c2hpbmcgc2V2ZXJhbCBtb3JlIGJpbmFyaWVzIGp1c3QgCnRvIGtlZXAgdGhl
IG51bWJlcnMgdGhlIHNhbWUgd2l0aCBubyByZWFsIGJlbmVmaXQuCgpBcyBhIGdlbmVyYWwgcG9p
bnQsIEkgdGhpbmsgd2Ugc2hvdWxkIGV4cGVjdCB0aGF0IHRoZSBwYXRjaCBudW1iZXIgbWlnaHQg
CnZhcnkgYWNyb3NzIHBsYXRmb3JtcyBhcyB3ZSBnZXQgcGxhdGZvcm0tc3BlY2lmaWMgZmVhdHVy
ZXMvZml4ZXMsIGJ1dCAKbWFqb3IgYW5kIG1pbm9yLCB3aGljaCBpbmRpY2F0ZSB0aGUgaW50ZXJm
YWNlIHZlcnNpb24sIHdpbGwgYmUgaW4gc3luYy4KCkRhbmllbGUKCj4gVGhhbmtzLAo+IFN0dWFy
dAo+Cj4+ICsJZndfZGVmKElDRUxBS0UsICAgICAwLCBndWNfZGVmKGljbCwgMzMsIDAsIDApLAo+
PiBodWNfZGVmKGljbCwgIDgsICA0LCAzMjM4KSkgXAo+PiArCWZ3X2RlZihDT0ZGRUVMQUtFLCAg
MCwgZ3VjX2RlZihrYmwsIDMzLCAwLCAwKSwgaHVjX2RlZihrYmwsIDAyLAo+PiAwMCwgMTgxMCkp
IFwKPj4gKwlmd19kZWYoR0VNSU5JTEFLRSwgIDAsIGd1Y19kZWYoZ2xrLCAzMywgMCwgMCksIGh1
Y19kZWYoZ2xrLCAwMywKPj4gMDEsIDI4OTMpKSBcCj4+ICsJZndfZGVmKEtBQllMQUtFLCAgICAw
LCBndWNfZGVmKGtibCwgMzMsIDAsIDApLCBodWNfZGVmKGtibCwgMDIsCj4+IDAwLCAxODEwKSkg
XAo+PiArCWZ3X2RlZihCUk9YVE9OLCAgICAgMCwgZ3VjX2RlZihieHQsIDMzLCAwLCAwKSwgaHVj
X2RlZihieHQsCj4+IDAxLCAgOCwgMjg5MykpIFwKPj4gKwlmd19kZWYoU0tZTEFLRSwgICAgIDAs
IGd1Y19kZWYoc2tsLCAzMywgMCwgMCksIGh1Y19kZWYoc2tsLCAwMSwKPj4gMDcsIDEzOTgpKQo+
PiAgIAo+PiAgICNkZWZpbmUgX19NQUtFX1VDX0ZXX1BBVEgocHJlZml4XywgbmFtZV8sIHNlcGFy
YXRvcl8sIG1ham9yXywKPj4gbWlub3JfLCBwYXRjaF8pIFwKPj4gICAJImk5MTUvIiBcCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
