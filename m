Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4CD8E07AD
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 17:43:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 155536E856;
	Tue, 22 Oct 2019 15:43:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FE2F6E856
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 15:43:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 08:43:20 -0700
X-IronPort-AV: E=Sophos;i="5.68,216,1569308400"; d="scan'208";a="191504777"
Received: from mdlugoke-mobl1.ger.corp.intel.com (HELO [10.251.81.75])
 ([10.251.81.75])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 22 Oct 2019 08:43:19 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191022130221.20644-1-chris@chris-wilson.co.uk>
 <23ee42f0-2bcf-b4ee-f83c-2688c09bdfec@linux.intel.com>
 <157175260226.8049.267478411352132140@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <7c1619b1-e5ef-105d-40a4-367183bdc6c3@linux.intel.com>
Date: Tue, 22 Oct 2019 16:43:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157175260226.8049.267478411352132140@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Teach record_defaults to
 operate on the intel_gt
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

Ck9uIDIyLzEwLzIwMTkgMTQ6NTYsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTEwLTIyIDE0OjQwOjQyKQo+Pgo+PiBPbiAyMi8xMC8yMDE5IDE0OjAy
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBBZ2FpbiB3ZSB3aXNoIHRvIG9wZXJhdGUgb24gdGhl
IGVuZ2luZXMsIHdoaWNoIGFyZSBvd25lZCBieSB0aGUKPj4+IGludGVsX2d0LiBBcyBzdWNoIGl0
IGlzIGVhc2llciwgYW5kIG11Y2ggbW9yZSBjb25zaXN0ZW50LCB0byBwYXNzIHRoZQo+Pj4gaW50
ZWxfZ3QgcGFyYW1ldGVyLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+Pj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJz
dWxpbkBpbnRlbC5jb20+Cj4+PiAtLS0KPj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Z2VtLmMgfCAxNCArKysrKysrKy0tLS0tLQo+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0
aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKPj4+
IGluZGV4IGNhNjRhMGM5Yjc2Mi4uYjg4Mjk4ODA1NmJkIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW0uYwo+Pj4gQEAgLTQ4LDYgKzQ4LDcgQEAKPj4+ICAgICNpbmNsdWRlICJndC9pbnRl
bF9lbmdpbmVfdXNlci5oIgo+Pj4gICAgI2luY2x1ZGUgImd0L2ludGVsX2d0LmgiCj4+PiAgICAj
aW5jbHVkZSAiZ3QvaW50ZWxfZ3RfcG0uaCIKPj4+ICsjaW5jbHVkZSAiZ3QvaW50ZWxfZ3RfcmVx
dWVzdHMuaCIKPj4+ICAgICNpbmNsdWRlICJndC9pbnRlbF9tb2NzLmgiCj4+PiAgICAjaW5jbHVk
ZSAiZ3QvaW50ZWxfcmVzZXQuaCIKPj4+ICAgICNpbmNsdWRlICJndC9pbnRlbF9yZW5kZXJzdGF0
ZS5oIgo+Pj4gQEAgLTEwNzIsNyArMTA3Myw3IEBAIHZvaWQgaTkxNV9nZW1fc2FuaXRpemUoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4+PiAgICAgICAgaW50ZWxfcnVudGltZV9wbV9w
dXQoJmk5MTUtPnJ1bnRpbWVfcG0sIHdha2VyZWYpOwo+Pj4gICAgfQo+Pj4gICAgCj4+PiAtc3Rh
dGljIGludCBfX2ludGVsX2VuZ2luZXNfcmVjb3JkX2RlZmF1bHRzKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1KQo+Pj4gK3N0YXRpYyBpbnQgX19pbnRlbF9lbmdpbmVzX3JlY29yZF9kZWZh
dWx0cyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQo+Pj4gICAgewo+Pj4gICAgICAgIHN0cnVjdCBpOTE1
X3JlcXVlc3QgKnJlcXVlc3RzW0k5MTVfTlVNX0VOR0lORVNdID0ge307Cj4+PiAgICAgICAgc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwo+Pj4gQEAgLTEwODgsNyArMTA4OSw3IEBAIHN0
YXRpYyBpbnQgX19pbnRlbF9lbmdpbmVzX3JlY29yZF9kZWZhdWx0cyhzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSkKPj4+ICAgICAgICAgKiBmcm9tIHRoZSBzYW1lIGRlZmF1bHQgSFcgdmFs
dWVzLgo+Pj4gICAgICAgICAqLwo+Pj4gICAgCj4+PiAtICAgICBmb3JfZWFjaF9lbmdpbmUoZW5n
aW5lLCBpOTE1LCBpZCkgewo+Pj4gKyAgICAgZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgZ3QsIGlk
KSB7Cj4+PiAgICAgICAgICAgICAgICBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2U7Cj4+PiAgICAg
ICAgICAgICAgICBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKPj4+ICAgIAo+Pj4gQEAgLTEwOTYs
NyArMTA5Nyw4IEBAIHN0YXRpYyBpbnQgX19pbnRlbF9lbmdpbmVzX3JlY29yZF9kZWZhdWx0cyhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPj4+ICAgICAgICAgICAgICAgIEdFTV9CVUdf
T04oIWVuZ2luZS0+a2VybmVsX2NvbnRleHQpOwo+Pj4gICAgICAgICAgICAgICAgZW5naW5lLT5z
ZXJpYWwrKzsgLyogZm9yY2UgdGhlIGtlcm5lbCBjb250ZXh0IHN3aXRjaCAqLwo+Pj4gICAgCj4+
PiAtICAgICAgICAgICAgIGNlID0gaW50ZWxfY29udGV4dF9jcmVhdGUoaTkxNS0+a2VybmVsX2Nv
bnRleHQsIGVuZ2luZSk7Cj4+PiArICAgICAgICAgICAgIGNlID0gaW50ZWxfY29udGV4dF9jcmVh
dGUoZW5naW5lLT5rZXJuZWxfY29udGV4dC0+Z2VtX2NvbnRleHQsCj4+PiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgZW5naW5lKTsKPj4+ICAgICAgICAgICAgICAgIGlm
IChJU19FUlIoY2UpKSB7Cj4+PiAgICAgICAgICAgICAgICAgICAgICAgIGVyciA9IFBUUl9FUlIo
Y2UpOwo+Pj4gICAgICAgICAgICAgICAgICAgICAgICBnb3RvIG91dDsKPj4+IEBAIC0xMTI1LDcg
KzExMjcsNyBAQCBzdGF0aWMgaW50IF9faW50ZWxfZW5naW5lc19yZWNvcmRfZGVmYXVsdHMoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4+PiAgICAgICAgfQo+Pj4gICAgCj4+PiAgICAg
ICAgLyogRmx1c2ggdGhlIGRlZmF1bHQgY29udGV4dCBpbWFnZSB0byBtZW1vcnksIGFuZCBlbmFi
bGUgcG93ZXJzYXZpbmcuICovCj4+PiAtICAgICBpZiAoIWk5MTVfZ2VtX2xvYWRfcG93ZXJfY29u
dGV4dChpOTE1KSkgewo+Pj4gKyAgICAgaWYgKGludGVsX2d0X3dhaXRfZm9yX2lkbGUoZ3QsIEk5
MTVfR0VNX0lETEVfVElNRU9VVCkgPT0gLUVUSU1FKSB7Cj4+Cj4+IFdoYXQgYXJlIHRoZSBwbGFu
cyBmb3IgaTkxNV9nZW1fbG9hZF9wb3dlcl9jb250ZXh0PyBJdCBkb2VzIGEgbGl0dGxlIGJpdAo+
PiBleHRyYS4gQnV0IGFsc28gYmVjb21lcyBjb25maW5lZCB0byBpOTE1X2dlbV9wbS5jIGlmIG5v
dCBuZWVkZWQgaGVyZSBhbnkKPj4gbW9yZSBzbyBjb3VsZCBiZSB1bmV4cG9ydGVkLgo+IAo+IEl0
J3MgdG8gYmUgc3Vic3VtZWQgZW50aXJlbHkgb250byB0aGUgZ3QuIE9uIHJlc3VtZSwgd2Ugc2lt
cGx5IGNhbGwKPiBpbnRlbF9ndF9yZXN1bWUoKSB3aGljaCBkb2VzIHRoZSBwb3dlciBzYXZpbmcg
c2V0dXAgYW5kIGVuc3VyZXMgd2UgaGF2ZQo+IGEga2VybmVsX2NvbnRleHQgcHJpbWVkLiBJJ20g
c3RpbGwgd2FpdGluZyBvbiBBbmRpJ3Mgb3ZlcmhhdWwgb2YgR1QKPiBwb3dlcnNhdmluZyB0byBs
YW5kIGJlZm9yZSBwdWxsaW5nIHRoZSBwbHVnLgoKV2h5IGl0IGlzIGJhZCwgb3Igbm90IG5lZWRl
ZCwgdG8gY2FsbCBpbnRlbF9ndF9wbV93YWl0X2Zvcl9pZGxlIGF0IHRoaXMgCnBvaW50PwoKUmVn
YXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
