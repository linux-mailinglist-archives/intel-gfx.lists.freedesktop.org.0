Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71831BDE50
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 14:51:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD08D6E84A;
	Wed, 25 Sep 2019 12:51:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D1A66E84A
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 12:51:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18611863-1500050 for multiple; Wed, 25 Sep 2019 13:51:44 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <063d6c67-0efb-89c6-4726-6006e64eb088@linux.intel.com>
References: <20190925100137.17956-1-chris@chris-wilson.co.uk>
 <20190925100137.17956-21-chris@chris-wilson.co.uk>
 <063d6c67-0efb-89c6-4726-6006e64eb088@linux.intel.com>
Message-ID: <156941589825.4979.9378610445541130440@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 25 Sep 2019 13:51:38 +0100
Subject: Re: [Intel-gfx] [PATCH 20/27] drm/i915: Remove logical HW ID
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOS0yNSAxMzo0MToxMCkKPiBbKyBEYW5pZWxl
LCBJIHRoaW5rIGhlIG1pZ2h0IHdhbnQgdG8gaGF2ZSBhIGxvb2sgYXQgdGhpcy5dCj4gCj4gT24g
MjUvMDkvMjAxOSAxMTowMSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gV2l0aCB0aGUgaW50cm9k
dWN0aW9uIG9mIGN0eC0+ZW5naW5lc1tdIHdlIGFsbG93IG11bHRpcGxlIGxvZ2ljYWwKPiA+IGNv
bnRleHRzIHRvIGJlIHVzZWQgb24gdGhlIHNhbWUgZW5naW5lIChlLmcuIHdpdGggdmlydHVhbCBl
bmdpbmVzKS4gRWFjaAo+ID4gbG9naWNhbCBjb250ZXh0IHJlcXVpcmVzIGEgdW5pcXVlIHRhZyBp
biBvcmRlciBmb3IgY29udGV4dC1zd2l0Y2hpbmcgdG8KPiA+IG9jY3VyIGNvcnJlY3RseSBiZXR3
ZWVuIHRoZW0uCj4gPiAKPiA+IFdlIG9ubHkgbmVlZCB0byBrZWVwIGEgdW5pcXVlIHRhZyBmb3Ig
dGhlIGFjdGl2ZSBsaWZldGltZSBvZiB0aGUKPiA+IGNvbnRleHQsIGFuZCBmb3IgYXMgbG9uZyBh
cyB3ZSBuZWVkIHRvIGlkZW50aWZ5IHRoYXQgY29udGV4dC4gVGhlIEhXCj4gPiB1c2VzIHRoZSB0
YWcgdG8gZGV0ZXJtaW5lIGlmIGl0IHNob3VsZCB1c2UgYSBsaXRlLXJlc3RvcmUgKHdoeSBub3Qg
dGhlCj4gPiBMUkNBPykgYW5kIHBhc3NlcyB0aGUgdGFnIGJhY2sgZm9yIHZhcmlvdXMgc3RhdHVz
IGlkZW50aWZpZXMuIFRoZSBvbmx5Cj4gPiBzdGF0dXMgd2UgbmVlZCB0byB0cmFjayBpcyBmb3Ig
T0EsIHNvIHdoZW4gdXNpbmcgcGVyZiwgd2UgYXNzaWduIHRoZQo+ID4gc3BlY2lmaWMgY29udGV4
dCBhIHVuaXF1ZSB0YWcuCj4gPiAKPiA+IEZpeGVzOiA5NzZiNTVmMGUxZGIgKCJkcm0vaTkxNTog
QWxsb3cgYSBjb250ZXh0IHRvIGRlZmluZSBpdHMgc2V0IG9mIGVuZ2luZXMiKQo+IAo+IEZpeGVz
PyBXaHk/CgpUaGUgYWJvdmUgcGFyYWdyYXBoIGV4cGxhaW5zIHRoYXQgYXMgd2UgZ2l2ZSB0d28g
ZGlzdGluY3QgY29udGV4dHMgdGhlCnNhbWUgdGFnIHRoZW4gaXQgd2lsbCBvbmx5IHBlcmZvcm0g
KGFjY29yZGluZyB0byBic3BlYykgYSBsaXRlLXJlc3RvcmUuCi1DaHJpcwoKPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaCBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oCj4gPiBpbmRleCBkYTRiNDVh
YTg0YjEuLjdiY2UxNzZlNjk2YyAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9lbmdpbmVfdHlwZXMuaAo+ID4gQEAgLTI5NiwxMCArMjk2LDEyIEBAIHN0cnVjdCBp
bnRlbF9lbmdpbmVfY3Mgewo+ID4gICAgICAgdTggdWFiaV9jbGFzczsKPiA+ICAgICAgIHU4IHVh
YmlfaW5zdGFuY2U7Cj4gPiAgIAo+ID4gKyAgICAgdTMyIHVhYmlfY2FwYWJpbGl0aWVzOwo+ID4g
ICAgICAgdTMyIGNvbnRleHRfc2l6ZTsKPiA+ICAgICAgIHUzMiBtbWlvX2Jhc2U7Cj4gPiAgIAo+
ID4gLSAgICAgdTMyIHVhYmlfY2FwYWJpbGl0aWVzOwo+ID4gKyAgICAgdW5zaWduZWQgaW50IGNv
bnRleHRfdGFnOwo+ID4gKyNkZWZpbmUgTlVNX0NPTlRFWFRfVEFHICgyNTYpCj4gCj4gQUZBSUNU
IHRoaXMgZGVmaW5lIG5vdyBkZWZpbmVzIGhvdyBkZWVwIEVMU1Agd2UgY2FuIGhhdmUgYmVmb3Jl
IHdlIHN0YXJ0IAo+IGdldHRpbmcgaGFyZCB0byBkZWJ1ZyBwcm9ibGVtcy4gR3VDIGFuZ2xlIG5l
ZWRzIGNvbnNpZGVyaW5nIGhlcmUuCgpUaGUgZ3VjIGlzIGltbWF0ZXJpYWwgaGVyZSwgc2luY2Ug
dGhleSB1c2UgdGhlaXIgb3duIG1lY2hhbmlzbS4gSXQganVzdApuZWVkcyB0byBiZSBhIHZhbHVl
IGxhcmdlciB0aGFuIDIgKiBFWEVDTElTVF9NQVhfUE9SVFMgYW5kIGxlc3MgdGhlbgpCSVQoMTAp
LgogCj4gPiBAQCAtOTc4LDYgKzk2NSwxNSBAQCBfX2V4ZWNsaXN0c19zY2hlZHVsZV9pbihzdHJ1
Y3QgaTkxNV9yZXF1ZXN0ICpycSkKPiA+ICAgCj4gPiAgICAgICBpbnRlbF9jb250ZXh0X2dldChj
ZSk7Cj4gPiAgIAo+ID4gKyAgICAgaWYgKGNlLT50YWcpIHsKPiA+ICsgICAgICAgICAgICAgY2Ut
PmxyY19kZXNjIHw9ICh1NjQpY2UtPnRhZyA8PCAzMjsKPiA+ICsgICAgIH0gZWxzZSB7Cj4gPiAr
ICAgICAgICAgICAgIGNlLT5scmNfZGVzYyAmPSB+R0VOTUFTS19VTEwoNDcsIDM3KTsKPiA+ICsg
ICAgICAgICAgICAgY2UtPmxyY19kZXNjIHw9Cj4gPiArICAgICAgICAgICAgICAgICAgICAgKHU2
NCkoZW5naW5lLT5jb250ZXh0X3RhZysrICUgTlVNX0NPTlRFWFRfVEFHKSA8PAo+ID4gKyAgICAg
ICAgICAgICAgICAgICAgIEdFTjExX1NXX0NUWF9JRF9TSElGVDsKPiA+ICsgICAgIH0KPiAKPiBT
byBodyBpZCBpcyB2YWxpZCBvbmx5IHdoaWxlIGNvbnRleHQgaXMgaW4gRUxTUCBhbmQgaXQgY2hh
bmdlcyB3aXRoIAo+IGV2ZXJ5IHN1Ym1pc3Npb24gZXhjZXB0IGluIHRoZSBPQSBjYXNlPwoKQXll
LiBPQSBiZWluZyBhIHBpdGEuCiAKPiBTaGlmdHMgYW5kIG1hc2tzIGxvb2sgZG9kZ3kuIEZvciA+
PSBnZW4xMSB0aGUgY3VycmVudCBjb2RlIGhhcyB0aGUgaHdfaWQgCj4gaW4gWzM3LCA0Ml0sIG90
aGVyd2lzZSBbMzIsIDUyXS4gVGhpcyBwYXRjaCBkb2VzIG5vdCBzZWVtIHRvIGhhbmRsZSB0aGUg
Cj4gZGlmZmVyZW5jZXMgYmV0d2VlbiBnZW5zLgoKQmVjYXVzZSB0aGUgdmFsdWVzIHdlIHN1cHBs
eSBkbyBub3QgbWF0dGVyICh0aGV5IGFyZSBjb29raWVzKSwganVzdCB0aGUKbGlmZXRpbWUuCgo+
ID4gKwo+ID4gICAgICAgaW50ZWxfZ3RfcG1fZ2V0KGVuZ2luZS0+Z3QpOwo+ID4gICAgICAgZXhl
Y2xpc3RzX2NvbnRleHRfc3RhdHVzX2NoYW5nZShycSwgSU5URUxfQ09OVEVYVF9TQ0hFRFVMRV9J
Tik7Cj4gPiAgICAgICBpbnRlbF9lbmdpbmVfY29udGV4dF9pbihlbmdpbmUpOwo+ID4gQEAgLTIy
MjQsNyArMjIyMCw2IEBAIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19jb250ZXh0X3VucGluKHN0cnVj
dCBpbnRlbF9jb250ZXh0ICpjZSkKPiA+ICAgICAgIGNoZWNrX3JlZHpvbmUoKHZvaWQgKiljZS0+
bHJjX3JlZ19zdGF0ZSAtIExSQ19TVEFURV9QTiAqIFBBR0VfU0laRSwKPiA+ICAgICAgICAgICAg
ICAgICAgICAgY2UtPmVuZ2luZSk7Cj4gPiAgIAo+ID4gLSAgICAgaTkxNV9nZW1fY29udGV4dF91
bnBpbl9od19pZChjZS0+Z2VtX2NvbnRleHQpOwo+ID4gICAgICAgaTkxNV9nZW1fb2JqZWN0X3Vu
cGluX21hcChjZS0+c3RhdGUtPm9iaik7Cj4gPiAgICAgICBpbnRlbF9yaW5nX3Jlc2V0KGNlLT5y
aW5nLCBjZS0+cmluZy0+dGFpbCk7Cj4gPiAgIH0KPiA+IEBAIC0yMjc0LDE4ICsyMjY5LDEyIEBA
IF9fZXhlY2xpc3RzX2NvbnRleHRfcGluKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKPiA+ICAg
ICAgICAgICAgICAgZ290byB1bnBpbl9hY3RpdmU7Cj4gPiAgICAgICB9Cj4gPiAgIAo+ID4gLSAg
ICAgcmV0ID0gaTkxNV9nZW1fY29udGV4dF9waW5faHdfaWQoY2UtPmdlbV9jb250ZXh0KTsKPiA+
IC0gICAgIGlmIChyZXQpCj4gPiAtICAgICAgICAgICAgIGdvdG8gdW5waW5fbWFwOwo+ID4gLQo+
ID4gICAgICAgY2UtPmxyY19kZXNjID0gbHJjX2Rlc2NyaXB0b3IoY2UsIGVuZ2luZSk7Cj4gPiAg
ICAgICBjZS0+bHJjX3JlZ19zdGF0ZSA9IHZhZGRyICsgTFJDX1NUQVRFX1BOICogUEFHRV9TSVpF
Owo+ID4gICAgICAgX19leGVjbGlzdHNfdXBkYXRlX3JlZ19zdGF0ZShjZSwgZW5naW5lKTsKPiA+
ICAgCj4gPiAgICAgICByZXR1cm4gMDsKPiA+ICAgCj4gPiAtdW5waW5fbWFwOgo+ID4gLSAgICAg
aTkxNV9nZW1fb2JqZWN0X3VucGluX21hcChjZS0+c3RhdGUtPm9iaik7Cj4gPiAgIHVucGluX2Fj
dGl2ZToKPiA+ICAgICAgIGludGVsX2NvbnRleHRfYWN0aXZlX3JlbGVhc2UoY2UpOwo+ID4gICBl
cnI6Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2t2bWd0LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQva3ZtZ3QuYwo+ID4gaW5kZXggMzQzZDc5YzFjYjdlLi4w
NGE1YTBkOTA4MjMgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQva3Zt
Z3QuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2t2bWd0LmMKPiA+IEBAIC0x
NTY0LDI3ICsxNTY0LDEwIEBAIHZncHVfaWRfc2hvdyhzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVj
dCBkZXZpY2VfYXR0cmlidXRlICphdHRyLAo+ID4gICAgICAgcmV0dXJuIHNwcmludGYoYnVmLCAi
XG4iKTsKPiA+ICAgfQo+ID4gICAKPiA+IC1zdGF0aWMgc3NpemVfdAo+ID4gLWh3X2lkX3Nob3co
c3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QgZGV2aWNlX2F0dHJpYnV0ZSAqYXR0ciwKPiA+IC0g
ICAgICAgIGNoYXIgKmJ1ZikKPiA+IC17Cj4gPiAtICAgICBzdHJ1Y3QgbWRldl9kZXZpY2UgKm1k
ZXYgPSBtZGV2X2Zyb21fZGV2KGRldik7Cj4gPiAtCj4gPiAtICAgICBpZiAobWRldikgewo+ID4g
LSAgICAgICAgICAgICBzdHJ1Y3QgaW50ZWxfdmdwdSAqdmdwdSA9IChzdHJ1Y3QgaW50ZWxfdmdw
dSAqKQo+ID4gLSAgICAgICAgICAgICAgICAgICAgIG1kZXZfZ2V0X2RydmRhdGEobWRldik7Cj4g
PiAtICAgICAgICAgICAgIHJldHVybiBzcHJpbnRmKGJ1ZiwgIiV1XG4iLAo+ID4gLSAgICAgICAg
ICAgICAgICAgICAgICAgICAgICB2Z3B1LT5zdWJtaXNzaW9uLnNoYWRvd1swXS0+Z2VtX2NvbnRl
eHQtPmh3X2lkKTsKPiA+IC0gICAgIH0KPiA+IC0gICAgIHJldHVybiBzcHJpbnRmKGJ1ZiwgIlxu
Iik7Cj4gPiAtfQo+ID4gLQo+ID4gICBzdGF0aWMgREVWSUNFX0FUVFJfUk8odmdwdV9pZCk7Cj4g
PiAtc3RhdGljIERFVklDRV9BVFRSX1JPKGh3X2lkKTsKPiA+ICAgCj4gPiAgIHN0YXRpYyBzdHJ1
Y3QgYXR0cmlidXRlICppbnRlbF92Z3B1X2F0dHJzW10gPSB7Cj4gPiAgICAgICAmZGV2X2F0dHJf
dmdwdV9pZC5hdHRyLAo+ID4gLSAgICAgJmRldl9hdHRyX2h3X2lkLmF0dHIsCj4gPiAgICAgICBO
VUxMCj4gPiAgIH07Cj4gPiAgIAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPiA+
IGluZGV4IGZkNDE1MDVkNTJlYy4uOGNhYWE0NDY0OTBmIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZGVidWdmcy5jCj4gPiBAQCAtMTUwNCw5ICsxNTA0LDYgQEAgc3RhdGljIGludCBp
OTE1X2NvbnRleHRfc3RhdHVzKHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqdW51c2VkKQo+ID4g
ICAgICAgICAgICAgICBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2U7Cj4gPiAgIAo+ID4gICAgICAg
ICAgICAgICBzZXFfcHV0cyhtLCAiSFcgY29udGV4dCAiKTsKPiA+IC0gICAgICAgICAgICAgaWYg
KCFsaXN0X2VtcHR5KCZjdHgtPmh3X2lkX2xpbmspKQo+ID4gLSAgICAgICAgICAgICAgICAgICAg
IHNlcV9wcmludGYobSwgIiV4IFtwaW4gJXVdIiwgY3R4LT5od19pZCwKPiA+IC0gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGF0b21pY19yZWFkKCZjdHgtPmh3X2lkX3Bpbl9jb3VudCkp
Owo+ID4gICAgICAgICAgICAgICBpZiAoY3R4LT5waWQpIHsKPiA+ICAgICAgICAgICAgICAgICAg
ICAgICBzdHJ1Y3QgdGFza19zdHJ1Y3QgKnRhc2s7Cj4gPiAgIAo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dwdV9lcnJvci5jCj4gPiBpbmRleCBhODZkMjhiZGE2ZGQuLjQ3MjM5ZGY2NTNmMiAx
MDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMKPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmMKPiA+IEBAIC00NzEs
OSArNDcxLDkgQEAgc3RhdGljIHZvaWQgZXJyb3JfcHJpbnRfY29udGV4dChzdHJ1Y3QgZHJtX2k5
MTVfZXJyb3Jfc3RhdGVfYnVmICptLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
Y29uc3QgY2hhciAqaGVhZGVyLAo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29u
c3Qgc3RydWN0IGRybV9pOTE1X2Vycm9yX2NvbnRleHQgKmN0eCkKPiA+ICAgewo+ID4gLSAgICAg
ZXJyX3ByaW50ZihtLCAiJXMlc1slZF0gaHdfaWQgJWQsIHByaW8gJWQsIGd1aWx0eSAlZCBhY3Rp
dmUgJWRcbiIsCj4gPiAtICAgICAgICAgICAgICAgIGhlYWRlciwgY3R4LT5jb21tLCBjdHgtPnBp
ZCwgY3R4LT5od19pZCwKPiA+IC0gICAgICAgICAgICAgICAgY3R4LT5zY2hlZF9hdHRyLnByaW9y
aXR5LCBjdHgtPmd1aWx0eSwgY3R4LT5hY3RpdmUpOwo+ID4gKyAgICAgZXJyX3ByaW50ZihtLCAi
JXMlc1slZF0gcHJpbyAlZCwgZ3VpbHR5ICVkIGFjdGl2ZSAlZFxuIiwKPiA+ICsgICAgICAgICAg
ICAgICAgaGVhZGVyLCBjdHgtPmNvbW0sIGN0eC0+cGlkLCBjdHgtPnNjaGVkX2F0dHIucHJpb3Jp
dHksCj4gPiArICAgICAgICAgICAgICAgIGN0eC0+Z3VpbHR5LCBjdHgtPmFjdGl2ZSk7Cj4gPiAg
IH0KPiA+ICAgCj4gPiAgIHN0YXRpYyB2b2lkIGVycm9yX3ByaW50X2VuZ2luZShzdHJ1Y3QgZHJt
X2k5MTVfZXJyb3Jfc3RhdGVfYnVmICptLAo+ID4gQEAgLTEyNjIsNyArMTI2Miw2IEBAIHN0YXRp
YyBib29sIHJlY29yZF9jb250ZXh0KHN0cnVjdCBkcm1faTkxNV9lcnJvcl9jb250ZXh0ICplLAo+
ID4gICAgICAgICAgICAgICByY3VfcmVhZF91bmxvY2soKTsKPiA+ICAgICAgIH0KPiA+ICAgCj4g
PiAtICAgICBlLT5od19pZCA9IGN0eC0+aHdfaWQ7Cj4gPiAgICAgICBlLT5zY2hlZF9hdHRyID0g
Y3R4LT5zY2hlZDsKPiA+ICAgICAgIGUtPmd1aWx0eSA9IGF0b21pY19yZWFkKCZjdHgtPmd1aWx0
eV9jb3VudCk7Cj4gPiAgICAgICBlLT5hY3RpdmUgPSBhdG9taWNfcmVhZCgmY3R4LT5hY3RpdmVf
Y291bnQpOwo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vy
cm9yLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5oCj4gPiBpbmRleCBj
YWFlZDUwOTNkOTUuLjRkYzM2ZDZlZTNhMiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmgKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ3B1X2Vycm9yLmgKPiA+IEBAIC0xMTcsNyArMTE3LDYgQEAgc3RydWN0IGk5MTVfZ3B1X3N0
YXRlIHsKPiA+ICAgICAgICAgICAgICAgc3RydWN0IGRybV9pOTE1X2Vycm9yX2NvbnRleHQgewo+
ID4gICAgICAgICAgICAgICAgICAgICAgIGNoYXIgY29tbVtUQVNLX0NPTU1fTEVOXTsKPiA+ICAg
ICAgICAgICAgICAgICAgICAgICBwaWRfdCBwaWQ7Cj4gPiAtICAgICAgICAgICAgICAgICAgICAg
dTMyIGh3X2lkOwo+ID4gICAgICAgICAgICAgICAgICAgICAgIGludCBhY3RpdmU7Cj4gPiAgICAg
ICAgICAgICAgICAgICAgICAgaW50IGd1aWx0eTsKPiA+ICAgICAgICAgICAgICAgICAgICAgICBz
dHJ1Y3QgaTkxNV9zY2hlZF9hdHRyIHNjaGVkX2F0dHI7Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bl
cmYuYwo+ID4gaW5kZXggODAwNTU1MDFlY2NiLi5kMzZiYTI0OGQ0MzggMTAwNjQ0Cj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wZXJmLmMKPiA+IEBAIC0xMjgzLDIyICsxMjgzLDE1IEBAIHN0YXRpYyBp
bnQgb2FfZ2V0X3JlbmRlcl9jdHhfaWQoc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSkK
PiA+ICAgICAgICAgICAgICAgfSBlbHNlIHsKPiA+ICAgICAgICAgICAgICAgICAgICAgICBzdHJl
YW0tPnNwZWNpZmljX2N0eF9pZF9tYXNrID0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICgxVSA8PCBHRU44X0NUWF9JRF9XSURUSCkgLSAxOwo+ID4gLSAgICAgICAgICAgICAgICAg
ICAgIHN0cmVhbS0+c3BlY2lmaWNfY3R4X2lkID0KPiA+IC0gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHVwcGVyXzMyX2JpdHMoY2UtPmxyY19kZXNjKTsKPiA+IC0gICAgICAgICAgICAgICAg
ICAgICBzdHJlYW0tPnNwZWNpZmljX2N0eF9pZCAmPQo+ID4gLSAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgc3RyZWFtLT5zcGVjaWZpY19jdHhfaWRfbWFzazsKPiA+ICsgICAgICAgICAgICAg
ICAgICAgICBzdHJlYW0tPnNwZWNpZmljX2N0eF9pZCA9IHN0cmVhbS0+c3BlY2lmaWNfY3R4X2lk
X21hc2s7Cj4gPiAgICAgICAgICAgICAgIH0KPiA+ICAgICAgICAgICAgICAgYnJlYWs7Cj4gPiAg
IAo+ID4gICAgICAgY2FzZSAxMToKPiA+ICAgICAgIGNhc2UgMTI6IHsKPiA+ICAgICAgICAgICAg
ICAgc3RyZWFtLT5zcGVjaWZpY19jdHhfaWRfbWFzayA9Cj4gPiAtICAgICAgICAgICAgICAgICAg
ICAgKCgxVSA8PCBHRU4xMV9TV19DVFhfSURfV0lEVEgpIC0gMSkgPDwgKEdFTjExX1NXX0NUWF9J
RF9TSElGVCAtIDMyKSB8Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgKCgxVSA8PCBHRU4xMV9F
TkdJTkVfSU5TVEFOQ0VfV0lEVEgpIC0gMSkgPDwgKEdFTjExX0VOR0lORV9JTlNUQU5DRV9TSElG
VCAtIDMyKSB8Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgKCgxIDw8IEdFTjExX0VOR0lORV9D
TEFTU19XSURUSCkgLSAxKSA8PCAoR0VOMTFfRU5HSU5FX0NMQVNTX1NISUZUIC0gMzIpOwo+ID4g
LSAgICAgICAgICAgICBzdHJlYW0tPnNwZWNpZmljX2N0eF9pZCA9IHVwcGVyXzMyX2JpdHMoY2Ut
PmxyY19kZXNjKTsKPiA+IC0gICAgICAgICAgICAgc3RyZWFtLT5zcGVjaWZpY19jdHhfaWQgJj0K
PiA+IC0gICAgICAgICAgICAgICAgICAgICBzdHJlYW0tPnNwZWNpZmljX2N0eF9pZF9tYXNrOwo+
ID4gKyAgICAgICAgICAgICAgICAgICAgICgoMVUgPDwgR0VOMTFfU1dfQ1RYX0lEX1dJRFRIKSAt
IDEpIDw8IChHRU4xMV9TV19DVFhfSURfU0hJRlQgLSAzMik7Cj4gPiArICAgICAgICAgICAgIHN0
cmVhbS0+c3BlY2lmaWNfY3R4X2lkID0gc3RyZWFtLT5zcGVjaWZpY19jdHhfaWRfbWFzazsKPiA+
ICAgICAgICAgICAgICAgYnJlYWs7Cj4gPiAgICAgICB9Cj4gPiAgIAo+ID4gQEAgLTEzMDYsNiAr
MTI5OSw4IEBAIHN0YXRpYyBpbnQgb2FfZ2V0X3JlbmRlcl9jdHhfaWQoc3RydWN0IGk5MTVfcGVy
Zl9zdHJlYW0gKnN0cmVhbSkKPiA+ICAgICAgICAgICAgICAgTUlTU0lOR19DQVNFKElOVEVMX0dF
TihpOTE1KSk7Cj4gPiAgICAgICB9Cj4gPiAgIAo+ID4gKyAgICAgY2UtPnRhZyA9IHN0cmVhbS0+
c3BlY2lmaWNfY3R4X2lkX21hc2s7Cj4gPiArCj4gPiAgICAgICBEUk1fREVCVUdfRFJJVkVSKCJm
aWx0ZXJpbmcgb24gY3R4X2lkPTB4JXggY3R4X2lkX21hc2s9MHgleFxuIiwKPiA+ICAgICAgICAg
ICAgICAgICAgICAgICAgc3RyZWFtLT5zcGVjaWZpY19jdHhfaWQsCj4gPiAgICAgICAgICAgICAg
ICAgICAgICAgIHN0cmVhbS0+c3BlY2lmaWNfY3R4X2lkX21hc2spOwo+ID4gQEAgLTEzMjQsMTIg
KzEzMTksMTQgQEAgc3RhdGljIHZvaWQgb2FfcHV0X3JlbmRlcl9jdHhfaWQoc3RydWN0IGk5MTVf
cGVyZl9zdHJlYW0gKnN0cmVhbSkKPiA+ICAgewo+ID4gICAgICAgc3RydWN0IGludGVsX2NvbnRl
eHQgKmNlOwo+ID4gICAKPiA+IC0gICAgIHN0cmVhbS0+c3BlY2lmaWNfY3R4X2lkID0gSU5WQUxJ
RF9DVFhfSUQ7Cj4gPiAtICAgICBzdHJlYW0tPnNwZWNpZmljX2N0eF9pZF9tYXNrID0gMDsKPiA+
IC0KPiA+ICAgICAgIGNlID0gZmV0Y2hfYW5kX3plcm8oJnN0cmVhbS0+cGlubmVkX2N0eCk7Cj4g
PiAtICAgICBpZiAoY2UpCj4gPiArICAgICBpZiAoY2UpIHsKPiA+ICsgICAgICAgICAgICAgY2Ut
PnRhZyA9IDA7Cj4gPiAgICAgICAgICAgICAgIGludGVsX2NvbnRleHRfdW5waW4oY2UpOwo+ID4g
KyAgICAgfQo+ID4gKwo+ID4gKyAgICAgc3RyZWFtLT5zcGVjaWZpY19jdHhfaWQgPSBJTlZBTElE
X0NUWF9JRDsKPiA+ICsgICAgIHN0cmVhbS0+c3BlY2lmaWNfY3R4X2lkX21hc2sgPSAwOwo+IAo+
IE9BIGh1bmtzIGxvb2tzIGRvZGd5IGFzIHdlbGwuIGNlLT50YWcgaXMgc2V0IHRvIAo+IHN0cmVh
bS0+c3BlY2lmaWNfY3R4X2lkX21hc2sgd2hpbGUgSSB0aGluayBpdCBzaG91bGQgYmUgaWQuIEZ1
cnRoZXJtb3JlIAo+IGlkIGlzIGFzc2lnbmVkIGZyb20gbWFzayB3aGljaCBpcyBmaXhlZCBhbmQg
bm90IHVuaXF1ZSBmb3IgZGlmZmVyZW50IAo+IGNvbnRleHRzLgoKSXQgaXMgc2luZ3VsYXIgaW4g
dGhlIGVudGlyZSBzeXN0ZW0uIFRoZSBtYXNrIGlzIGEgZ3VhcmFudGVlZCB1bmlxdWUKdmFsdWUu
Cgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X3Zt
YS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfdm1hLmMKPiA+IGluZGV4
IDFjOWRiMDhmN2MyOC4uYWMxZmY1NThlYjkwIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfdm1hLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L3NlbGZ0ZXN0cy9pOTE1X3ZtYS5jCj4gPiBAQCAtMTcwLDcgKzE3MCw3IEBAIHN0YXRpYyBp
bnQgaWd0X3ZtYV9jcmVhdGUodm9pZCAqYXJnKQo+ID4gICAgICAgICAgICAgICB9Cj4gPiAgIAo+
ID4gICAgICAgICAgICAgICBuYyA9IDA7Cj4gPiAtICAgICAgICAgICAgIGZvcl9lYWNoX3ByaW1l
X251bWJlcihudW1fY3R4LCBNQVhfQ09OVEVYVF9IV19JRCkgewo+ID4gKyAgICAgICAgICAgICBm
b3JfZWFjaF9wcmltZV9udW1iZXIobnVtX2N0eCwgMiAqIE5VTV9DT05URVhUX1RBRykgewo+ID4g
ICAgICAgICAgICAgICAgICAgICAgIGZvciAoOyBuYyA8IG51bV9jdHg7IG5jKyspIHsKPiA+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGN0eCA9IG1vY2tfY29udGV4dChpOTE1LCAibW9j
ayIpOwo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaWYgKCFjdHgpCj4gPiAKPiAK
PiBVbmxlc3MgSSBhbSBtaXNzaW5nIHNvbWV0aGluZyBJIHNlZSB0aGlzIHBhdGNoIGFzIHNpbXBs
aWZpY2F0aW9uIGFuZCBub3QgCj4gYSBmaXguIElmIHdlIGNhbiBnZXQgYXdheSB3aXRoIGl0IGlu
IHRoZSBHdUMgd29ybGQgdGhlbiBpdCdzIHF1aXRlIGEgYmlnIAo+IHNpbXBsaWZpY2F0aW9uIHNv
IGl0J3MgZmluZSBieSBtZS4KCkJzcGVjIHNheXMgdGhhdCBmb3IgbHJjX2Rlc2Mgd2l0aCBtYXRj
aGluZyB0YWdzIChhdCBsZWFzdCBmb3IgZ2VuOC1nZW4xMQpJIGJlbGlldmUpLCBpdCBwZXJmb3Jt
cyBhIGxpdGUgcmVzdG9yZSAocmVnYXJkbGVzcyBvZiBscmNhKS4gRXJnbyBpdCBpcwpxdWl0ZSBh
IG1ham9yIGZpeC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
