Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5794938BD7
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 15:41:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B494E89DA3;
	Fri,  7 Jun 2019 13:41:44 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D728289DA3
 for <Intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 13:41:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 06:41:43 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 07 Jun 2019 06:41:41 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org
In-Reply-To: <a471eb99-349e-f7b7-0350-00307f54b614@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190607120838.20514-1-tvrtko.ursulin@linux.intel.com>
 <20190607120838.20514-8-tvrtko.ursulin@linux.intel.com>
 <87k1dxzgj8.fsf@intel.com>
 <a471eb99-349e-f7b7-0350-00307f54b614@linux.intel.com>
Date: Fri, 07 Jun 2019 16:44:45 +0300
Message-ID: <87ef45zf02.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC 07/12] drm/i915: Remove I915_READ8
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

T24gRnJpLCAwNyBKdW4gMjAxOSwgVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gMDcvMDYvMjAxOSAxNDoxMSwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4+IE9uIEZyaSwgMDcgSnVuIDIwMTksIFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxp
bkBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+Pj4gRnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRr
by51cnN1bGluQGludGVsLmNvbT4KPj4+Cj4+PiBPbmx5IGEgZmV3IGNhbGwgc2l0ZXMgcmVtYWlu
IHdoaWNoIGhhdmUgYmVlbiBjb252ZXJ0ZWQgdG8gdW5jb3JlIG1taW8KPj4+IGFjY2Vzc29ycyBh
bmQgc28gdGhlIG1hY3JvIGNhbiBiZSByZW1vdmVkLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IFR2
cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4+IAo+PiBJIGhhdmUgc29t
ZSByZXNlcnZhdGlvbnMgYWJvdXQgdGhpcyBvbmUgYW5kIHBhdGNoIDExLiBBZ2FpbiwgSSdtIGZp
bmUKPj4gd2l0aCBudWtpbmcgSTkxNV9SRUFEOCBhbmQgSTkxNV9SRUFEX05PVFJBQ0UgKGluIHBh
dGNoIDExKS4gSSB0aGluawo+PiB0aGV5J3JlIHNwZWNpYWwgY2FzZXMgYW5kIGl0J3Mgb2theSBp
ZiB0aGV5IGdyb3cgaW50byBhIGJpdCBsb25nZXIgbGluZXMKPj4gb3IgbXVsdGlwbGUgbGluZXMu
Cj4+IAo+PiBUaGUgcHJvYmxlbSBpcyBjb252ZXJ0aW5nIHJlZ3VsYXIgSTkxNV9SRUFEIGFuZCBJ
OTE1X1dSSVRFIGluIGRpc3BsYXkKPj4gY29kZSB3aGlsZSBhdCBpdC4KPj4gCj4+IEkgZG9uJ3Qg
dGhpbmsgZW4gbWFzc2UgY29udmVyc2lvbiBvZiB0aGVtIHRvIGludGVsX3VuY29yZV9yZWFkIGFu
ZAo+PiBpbnRlbF91bmNvcmVfd3JpdGUgZGlyZWN0bHkgaXMgZ29pbmcgdG8gaGFwcGVuIGluIGRp
c3BsYXkgY29kZSwgYmVjYXVzZQo+PiB0aGVyZSdzIHRvbyBtdWNoIGNvZGUgdGhhdCBnZXRzIHR1
cm5lZCB0b28gdWdseSB3aXRoIHRoZSBpbmNyZWFzZSBpbgo+PiBmdW5jdGlvbiBuYW1lIGxlbmd0
aCBhbmQgdGhlIGV4dHJhIHBhc3NlZCBwYXJhbWV0ZXIuIEkgdGhpbmsgbWFueSBvZgo+PiB0aG9z
ZSBwbGFjZXMgYXJlIHByZXR0eSB1Z2x5IGFzIGl0IGlzIGFscmVhZHkuIFRoYXQncyBteSBmZWVs
aW5nIGFueXdheS4KPj4gCj4+IEkgdW5kZXJzdGFuZCB5b3VyIHJlYXNvbmluZyBpcyB0byBhdm9p
ZCB0aGUgbWl4ZWQgdXNlIG9mIGludGVsX3VuY29yZV8qCj4KPiBFeGFjdGx5Lgo+Cj4+IGFuZCBJ
OTE1XyouIEJ1dCBJIGZlYXIgdXNpbmcgaW50ZWxfdW5jb3JlX3JlYWQgYW5kIGludGVsX3VuY29y
ZV93cml0ZQo+PiBub3cgaXMgZ29pbmcgdG8gcHJvbW90ZSB0aGVpciB1c2UgYWxsIG92ZXIgdGhl
IHBsYWNlLCBhbmQgKnRoYXQqIHdpbGwKPj4gbGVhZCB0byBtaXhlZCB1c2UuIFdoaWNoIGlzIG5v
dCBvcHRpbWFsIGlmIHRoZSBvdmVyYWxsIGZlZWxpbmcgaXMgdGhhdAo+PiB3ZSBuZWVkIHRvIGNv
bWUgdXAgd2l0aCBhIHNob3J0ZXIgZnVuY3Rpb24vbWFjcm8gZm9yIGRpc3BsYXkgY29kZSByZWFk
cwo+PiBhbmQgd3JpdGVzLgo+Cj4gSSBhbSBmaW5lIHdpdGggdGhlIGFyZ3VtZW50IHRoYXQgeW91
IG1heSBkZXNpcmUgc29tZXRoaW5nIHNob3J0ZXIgZm9yIAo+IGRpc3BsYXkuIEJ1dCBJIGRvbid0
IHRoaW5rIGNvbnZlcnRpbmcgd2hvbGUgZnVuY3Rpb25zIHdvdWxkIGNyZWF0ZSBhbnkgCj4gbW9y
ZSBmdXR1cmUgbWl4ZWQgdXNlIHRoYW4gY29udmVydGluZyBmdW5jdGlvbnMgcGFydGlhbGx5Lgo+
Cj4gQnR3IGhhdmUgeW91IHNlZW4gdGhlIGxhdGVzdCBSRkMgZnJvbSBEYW5pZWxlPwoKWWVzLCBi
dXQgaGF2ZW4ndCBoYWQgdGhlIHRpbWUgdG8gZGlnZXN0IGl0LgoKPiBUaGF0IHdvdWxkIGFsbG93
IHRoYXQgeW91IAo+IG9ubHkgcmVwbGFjZSB0aGUgYXNzaWduZW1udHMgYXQgdGhlIHRvcCBvZiBm
dW5jdGlvbnMgcGVyaGFwcyBsaWtlIGZyb206Cj4KPiAJc3RydWN0IGludGVsX3VuY29yZSAqdW5j
b3JlID0gJmRldl9wcml2LT51bmNvcmU7Cj4KPiB0bzoKPgo+IAlzdHJ1Y3QgaW50ZWxfdW5jb3Jl
ICp1bmNvcmUgPSAmZGV2X3ByaXYtPmRpc3BsYXlfdW5jb3JlOwo+Cj4gQnV0IHN1cmUsIGlmIHlv
dSBkZXNpcmUgc2hvcnRlciBhY2Nlc3NvcnMgdGhlbiBsZXRzIGZpcnN0IGhhdmUgYSAKPiBkZWZp
bml0aXZlIGRlY2lzaW9uIG9mIHRoYXQuCgpJZiB0aGVyZSB3ZXJlIGRpc3BsYXkgYWNjZXNzb3Jz
IHRoZXkgbWlnaHQganVzdCB0YWtlIGk5MTUgYXMgcG9pbnRlcjoKCiNkZWZpbmUgRk9PX1JFQUQo
aTkxNSwgcmVnKSBpbnRlbF91bmNvcmVfcmVhZCgmaTkxNS0+ZGlzcGxheV91bmNvcmUsIHJlZykK
CkR1bm5vLgoKPgo+PiBJIHByZXN1bWUgVmlsbGUgaGFzIHNvbWV0aGluZyB0byBzYXkgYWJvdXQg
dGhlIGd0IHZzLiBkaXNwbGF5IHN0dWZmIGFzCj4+IHdlbGw7IGRvZXMgdGhlIHdob2xlIHNlcmll
cyBtYWtlIHRoYXQgaGFyZGVyPyBJIGhvcGUgbm90LCBiZWNhdXNlIEkgZG8KPj4gbGlrZSB0aGUg
cmVzdCBvZiB3aGF0J3MgYmVpbmcgZG9uZSBoZXJlLgo+Cj4gSXQgZG9lc24ndCBtYWtlIGl0IGhh
cmRlci4gSSBjYW4gZWFzaWx5IGRyb3AgdGhlIGJpdHMgeW91IGRvbid0IGxpa2UgaWYgCj4gdGhh
dCB3aWxsIGJlIHRoZSBmaW5hbCBkZWNpc2lvbi4gSW4gZmFjdCwgSSBzaG91bGQgcHJvYmFibHkg
ZG8gdGhhdCAKPiBzdHJhaWdodCBhd2F5IGlmIHRoYXQgd291bGQgdW5ibG9jayB0aGUgcmVtYWlu
aW5nIHR3byBwYXRjaGVzIGJlY2F1c2UgCj4gdGhlbiBJIGNhbiBwcm9jZWVkIHdpdGggb3RoZXIg
cmVmYWN0b3JpbmdzIG9uIHRvcC4KCkh1bSwgeW91IGtub3cgd2hhdCwgaXQncyBub3QgKnRoYXQq
IGJpZyBvZiBhIGRlYWwuIEFjayBvbiB0aGUgd2hvbGUKc2VyaWVzLCB3ZSBjYW4gdGlkeSB1cCBs
YXRlciBvbiBpZiBuZWVkZWQuCgpJIGd1ZXNzIEknZCBsaWtlIHRvIGdldCBWaWxsZSdzIGFjayBv
biB0aGUgc2VyaWVzIHRvby4gVmlsbGU/CgoKQlIsCkphbmkuCgoKPgo+IFJlZ2FyZHMsCj4KPiBU
dnJ0a28KPgo+PiAKPj4gCj4+IEJSLAo+PiBKYW5pLgo+PiAKPj4gCj4+IAo+Pj4gLS0tCj4+PiAg
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggIHwgIDIgLS0KPj4+ICAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfY3J0LmMgfCA0MSArKysrKysrKysrKysrKysrKystLS0tLS0tLS0t
LS0tLQo+Pj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jICB8ICA2ICsrLS0tCj4+
PiAgIDMgZmlsZXMgY2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKSwgMjMgZGVsZXRpb25zKC0pCj4+
Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4+PiBpbmRleCBiMjc2MzcyMWI3NmQuLjEzODE1
Nzk1ZTE5NyAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgK
Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPj4+IEBAIC0yODUyLDgg
KzI4NTIsNiBAQCBleHRlcm4gdm9pZCBpbnRlbF9kaXNwbGF5X3ByaW50X2Vycm9yX3N0YXRlKHN0
cnVjdCBkcm1faTkxNV9lcnJvcl9zdGF0ZV9idWYgKmUsCj4+PiAgICNkZWZpbmUgX19JOTE1X1JF
R19PUChvcF9fLCBkZXZfcHJpdl9fLCAuLi4pIFwKPj4+ICAgCWludGVsX3VuY29yZV8jI29wX18o
JihkZXZfcHJpdl9fKS0+dW5jb3JlLCBfX1ZBX0FSR1NfXykKPj4+ICAgCj4+PiAtI2RlZmluZSBJ
OTE1X1JFQUQ4KHJlZ19fKQkgIF9fSTkxNV9SRUdfT1AocmVhZDgsIGRldl9wcml2LCAocmVnX18p
KQo+Pj4gLQo+Pj4gICAjZGVmaW5lIEk5MTVfUkVBRDE2KHJlZ19fKQkgICBfX0k5MTVfUkVHX09Q
KHJlYWQxNiwgZGV2X3ByaXYsIChyZWdfXykpCj4+PiAgICNkZWZpbmUgSTkxNV9XUklURTE2KHJl
Z19fLCB2YWxfXykgX19JOTE1X1JFR19PUCh3cml0ZTE2LCBkZXZfcHJpdiwgKHJlZ19fKSwgKHZh
bF9fKSkKPj4+ICAgCj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
Y3J0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jcnQuYwo+Pj4gaW5kZXggYmI1NjUx
ODU3NmExLi4zZmNmMmY4NGJjY2UgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9jcnQuYwo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY3J0LmMK
Pj4+IEBAIC02NDMsNiArNjQzLDcgQEAgaW50ZWxfY3J0X2xvYWRfZGV0ZWN0KHN0cnVjdCBpbnRl
bF9jcnQgKmNydCwgdTMyIHBpcGUpCj4+PiAgIHsKPj4+ICAgCXN0cnVjdCBkcm1fZGV2aWNlICpk
ZXYgPSBjcnQtPmJhc2UuYmFzZS5kZXY7Cj4+PiAgIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYgPSB0b19pOTE1KGRldik7Cj4+PiArCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29y
ZSA9ICZkZXZfcHJpdi0+dW5jb3JlOwo+Pj4gICAJdTMyIHNhdmVfYmNscnBhdDsKPj4+ICAgCXUz
MiBzYXZlX3Z0b3RhbDsKPj4+ICAgCXUzMiB2dG90YWwsIHZhY3RpdmU7Cj4+PiBAQCAtNjYzLDkg
KzY2NCw5IEBAIGludGVsX2NydF9sb2FkX2RldGVjdChzdHJ1Y3QgaW50ZWxfY3J0ICpjcnQsIHUz
MiBwaXBlKQo+Pj4gICAJcGlwZWNvbmZfcmVnID0gUElQRUNPTkYocGlwZSk7Cj4+PiAgIAlwaXBl
X2RzbF9yZWcgPSBQSVBFRFNMKHBpcGUpOwo+Pj4gICAKPj4+IC0Jc2F2ZV9iY2xycGF0ID0gSTkx
NV9SRUFEKGJjbHJwYXRfcmVnKTsKPj4+IC0Jc2F2ZV92dG90YWwgPSBJOTE1X1JFQUQodnRvdGFs
X3JlZyk7Cj4+PiAtCXZibGFuayA9IEk5MTVfUkVBRCh2YmxhbmtfcmVnKTsKPj4+ICsJc2F2ZV9i
Y2xycGF0ID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBiY2xycGF0X3JlZyk7Cj4+PiArCXNh
dmVfdnRvdGFsID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCB2dG90YWxfcmVnKTsKPj4+ICsJ
dmJsYW5rID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCB2YmxhbmtfcmVnKTsKPj4+ICAgCj4+
PiAgIAl2dG90YWwgPSAoKHNhdmVfdnRvdGFsID4+IDE2KSAmIDB4ZmZmKSArIDE7Cj4+PiAgIAl2
YWN0aXZlID0gKHNhdmVfdnRvdGFsICYgMHg3ZmYpICsgMTsKPj4+IEBAIC02NzQsMjEgKzY3NSwy
MyBAQCBpbnRlbF9jcnRfbG9hZF9kZXRlY3Qoc3RydWN0IGludGVsX2NydCAqY3J0LCB1MzIgcGlw
ZSkKPj4+ICAgCXZibGFua19lbmQgPSAoKHZibGFuayA+PiAxNikgJiAweGZmZikgKyAxOwo+Pj4g
ICAKPj4+ICAgCS8qIFNldCB0aGUgYm9yZGVyIGNvbG9yIHRvIHB1cnBsZS4gKi8KPj4+IC0JSTkx
NV9XUklURShiY2xycGF0X3JlZywgMHg1MDAwNTApOwo+Pj4gKwlpbnRlbF91bmNvcmVfd3JpdGUo
dW5jb3JlLCBiY2xycGF0X3JlZywgMHg1MDAwNTApOwo+Pj4gICAKPj4+ICAgCWlmICghSVNfR0VO
KGRldl9wcml2LCAyKSkgewo+Pj4gLQkJdTMyIHBpcGVjb25mID0gSTkxNV9SRUFEKHBpcGVjb25m
X3JlZyk7Cj4+PiAtCQlJOTE1X1dSSVRFKHBpcGVjb25mX3JlZywgcGlwZWNvbmYgfCBQSVBFQ09O
Rl9GT1JDRV9CT1JERVIpOwo+Pj4gLQkJUE9TVElOR19SRUFEKHBpcGVjb25mX3JlZyk7Cj4+PiAr
CQl1MzIgcGlwZWNvbmYgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIHBpcGVjb25mX3JlZyk7
Cj4+PiArCQlpbnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLAo+Pj4gKwkJCQkgICBwaXBlY29uZl9y
ZWcsCj4+PiArCQkJCSAgIHBpcGVjb25mIHwgUElQRUNPTkZfRk9SQ0VfQk9SREVSKTsKPj4+ICsJ
CWludGVsX3VuY29yZV9wb3N0aW5nX3JlYWQodW5jb3JlLCBwaXBlY29uZl9yZWcpOwo+Pj4gICAJ
CS8qIFdhaXQgZm9yIG5leHQgVmJsYW5rIHRvIHN1YnN0aXR1ZQo+Pj4gICAJCSAqIGJvcmRlciBj
b2xvciBmb3IgQ29sb3IgaW5mbyAqLwo+Pj4gICAJCWludGVsX3dhaXRfZm9yX3ZibGFuayhkZXZf
cHJpdiwgcGlwZSk7Cj4+PiAtCQlzdDAwID0gSTkxNV9SRUFEOChfVkdBX01TUl9XUklURSk7Cj4+
PiArCQlzdDAwID0gaW50ZWxfdW5jb3JlX3JlYWQ4KHVuY29yZSwgX1ZHQV9NU1JfV1JJVEUpOwo+
Pj4gICAJCXN0YXR1cyA9ICgoc3QwMCAmICgxIDw8IDQpKSAhPSAwKSA/Cj4+PiAgIAkJCWNvbm5l
Y3Rvcl9zdGF0dXNfY29ubmVjdGVkIDoKPj4+ICAgCQkJY29ubmVjdG9yX3N0YXR1c19kaXNjb25u
ZWN0ZWQ7Cj4+PiAgIAo+Pj4gLQkJSTkxNV9XUklURShwaXBlY29uZl9yZWcsIHBpcGVjb25mKTsK
Pj4+ICsJCWludGVsX3VuY29yZV93cml0ZSh1bmNvcmUsIHBpcGVjb25mX3JlZywgcGlwZWNvbmYp
Owo+Pj4gICAJfSBlbHNlIHsKPj4+ICAgCQlib29sIHJlc3RvcmVfdmJsYW5rID0gZmFsc2U7Cj4+
PiAgIAkJaW50IGNvdW50LCBkZXRlY3Q7Cj4+PiBAQCAtNzAyLDkgKzcwNSwxMCBAQCBpbnRlbF9j
cnRfbG9hZF9kZXRlY3Qoc3RydWN0IGludGVsX2NydCAqY3J0LCB1MzIgcGlwZSkKPj4+ICAgCQkJ
dTMyIHZzeW5jX3N0YXJ0ID0gKHZzeW5jICYgMHhmZmZmKSArIDE7Cj4+PiAgIAo+Pj4gICAJCQl2
Ymxhbmtfc3RhcnQgPSB2c3luY19zdGFydDsKPj4+IC0JCQlJOTE1X1dSSVRFKHZibGFua19yZWcs
Cj4+PiAtCQkJCSAgICh2Ymxhbmtfc3RhcnQgLSAxKSB8Cj4+PiAtCQkJCSAgICgodmJsYW5rX2Vu
ZCAtIDEpIDw8IDE2KSk7Cj4+PiArCQkJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwKPj4+ICsJ
CQkJCSAgIHZibGFua19yZWcsCj4+PiArCQkJCQkgICAodmJsYW5rX3N0YXJ0IC0gMSkgfAo+Pj4g
KwkJCQkJICAgKCh2YmxhbmtfZW5kIC0gMSkgPDwgMTYpKTsKPj4+ICAgCQkJcmVzdG9yZV92Ymxh
bmsgPSB0cnVlOwo+Pj4gICAJCX0KPj4+ICAgCQkvKiBzYW1wbGUgaW4gdGhlIHZlcnRpY2FsIGJv
cmRlciwgc2VsZWN0aW5nIHRoZSBsYXJnZXIgb25lICovCj4+PiBAQCAtNzE2LDkgKzcyMCwxMCBA
QCBpbnRlbF9jcnRfbG9hZF9kZXRlY3Qoc3RydWN0IGludGVsX2NydCAqY3J0LCB1MzIgcGlwZSkK
Pj4+ICAgCQkvKgo+Pj4gICAJCSAqIFdhaXQgZm9yIHRoZSBib3JkZXIgdG8gYmUgZGlzcGxheWVk
Cj4+PiAgIAkJICovCj4+PiAtCQl3aGlsZSAoSTkxNV9SRUFEKHBpcGVfZHNsX3JlZykgPj0gdmFj
dGl2ZSkKPj4+ICsJCXdoaWxlIChpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIHBpcGVfZHNsX3Jl
ZykgPj0gdmFjdGl2ZSkKPj4+ICAgCQkJOwo+Pj4gLQkJd2hpbGUgKChkc2wgPSBJOTE1X1JFQUQo
cGlwZV9kc2xfcmVnKSkgPD0gdnNhbXBsZSkKPj4+ICsJCXdoaWxlICgoZHNsID0gaW50ZWxfdW5j
b3JlX3JlYWQodW5jb3JlLCBwaXBlX2RzbF9yZWcpKSA8PQo+Pj4gKwkJICAgICAgIHZzYW1wbGUp
Cj4+PiAgIAkJCTsKPj4+ICAgCQkvKgo+Pj4gICAJCSAqIFdhdGNoIFNUMDAgZm9yIGFuIGVudGly
ZSBzY2FubGluZQo+Pj4gQEAgLTcyOCwxNCArNzMzLDE0IEBAIGludGVsX2NydF9sb2FkX2RldGVj
dChzdHJ1Y3QgaW50ZWxfY3J0ICpjcnQsIHUzMiBwaXBlKQo+Pj4gICAJCWRvIHsKPj4+ICAgCQkJ
Y291bnQrKzsKPj4+ICAgCQkJLyogUmVhZCB0aGUgU1QwMCBWR0Egc3RhdHVzIHJlZ2lzdGVyICov
Cj4+PiAtCQkJc3QwMCA9IEk5MTVfUkVBRDgoX1ZHQV9NU1JfV1JJVEUpOwo+Pj4gKwkJCXN0MDAg
PSBpbnRlbF91bmNvcmVfcmVhZDgodW5jb3JlLCBfVkdBX01TUl9XUklURSk7Cj4+PiAgIAkJCWlm
IChzdDAwICYgKDEgPDwgNCkpCj4+PiAgIAkJCQlkZXRlY3QrKzsKPj4+IC0JCX0gd2hpbGUgKChJ
OTE1X1JFQUQocGlwZV9kc2xfcmVnKSA9PSBkc2wpKTsKPj4+ICsJCX0gd2hpbGUgKChpbnRlbF91
bmNvcmVfcmVhZCh1bmNvcmUsIHBpcGVfZHNsX3JlZykgPT0gZHNsKSk7Cj4+PiAgIAo+Pj4gICAJ
CS8qIHJlc3RvcmUgdmJsYW5rIGlmIG5lY2Vzc2FyeSAqLwo+Pj4gICAJCWlmIChyZXN0b3JlX3Zi
bGFuaykKPj4+IC0JCQlJOTE1X1dSSVRFKHZibGFua19yZWcsIHZibGFuayk7Cj4+PiArCQkJaW50
ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwgdmJsYW5rX3JlZywgdmJsYW5rKTsKPj4+ICAgCQkvKgo+
Pj4gICAJCSAqIElmIG1vcmUgdGhhbiAzLzQgb2YgdGhlIHNjYW5saW5lIGRldGVjdGVkIGEgbW9u
aXRvciwKPj4+ICAgCQkgKiB0aGVuIGl0IGlzIGFzc3VtZWQgdG8gYmUgcHJlc2VudC4gVGhpcyB3
b3JrcyBldmVuIG9uIGk4MzAsCj4+PiBAQCAtNzQ4LDcgKzc1Myw3IEBAIGludGVsX2NydF9sb2Fk
X2RldGVjdChzdHJ1Y3QgaW50ZWxfY3J0ICpjcnQsIHUzMiBwaXBlKQo+Pj4gICAJfQo+Pj4gICAK
Pj4+ICAgCS8qIFJlc3RvcmUgcHJldmlvdXMgc2V0dGluZ3MgKi8KPj4+IC0JSTkxNV9XUklURShi
Y2xycGF0X3JlZywgc2F2ZV9iY2xycGF0KTsKPj4+ICsJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29y
ZSwgYmNscnBhdF9yZWcsIHNhdmVfYmNscnBhdCk7Cj4+PiAgIAo+Pj4gICAJcmV0dXJuIHN0YXR1
czsKPj4+ICAgfQo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bt
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCj4+PiBpbmRleCBkNzI3MmQ0ZmYy
NTguLjkzZTQxMWU2YWQxOSAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3BtLmMKPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKPj4+IEBA
IC04MTYwLDE1ICs4MTYwLDE1IEBAIHVuc2lnbmVkIGxvbmcgaTkxNV9jaGlwc2V0X3ZhbChzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4+PiAgIAlyZXR1cm4gdmFsOwo+Pj4gICB9
Cj4+PiAgIAo+Pj4gLXVuc2lnbmVkIGxvbmcgaTkxNV9tY2hfdmFsKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdikKPj4+ICt1bnNpZ25lZCBsb25nIGk5MTVfbWNoX3ZhbChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPj4+ICAgewo+Pj4gICAJdW5zaWduZWQgbG9uZyBtLCB4
LCBiOwo+Pj4gICAJdTMyIHRzZnM7Cj4+PiAgIAo+Pj4gLQl0c2ZzID0gSTkxNV9SRUFEKFRTRlMp
Owo+Pj4gKwl0c2ZzID0gaW50ZWxfdW5jb3JlX3JlYWQoJmk5MTUtPnVuY29yZSwgVFNGUyk7Cj4+
PiAgIAo+Pj4gICAJbSA9ICgodHNmcyAmIFRTRlNfU0xPUEVfTUFTSykgPj4gVFNGU19TTE9QRV9T
SElGVCk7Cj4+PiAtCXggPSBJOTE1X1JFQUQ4KFRSMSk7Cj4+PiArCXggPSBpbnRlbF91bmNvcmVf
cmVhZDgoJmk5MTUtPnVuY29yZSwgVFIxKTsKPj4+ICAgCj4+PiAgIAliID0gdHNmcyAmIFRTRlNf
SU5UUl9NQVNLOwo+PiAKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhp
Y3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
