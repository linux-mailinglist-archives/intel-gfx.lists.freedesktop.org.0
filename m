Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D809D1C8B
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 01:17:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E2696E34B;
	Wed,  9 Oct 2019 23:17:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B62836E34B
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 23:17:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 16:17:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,277,1566889200"; d="scan'208";a="368893338"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga005.jf.intel.com with ESMTP; 09 Oct 2019 16:17:32 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: Martin Peres <martin.peres@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190927214243.18558-1-daniele.ceraolospurio@intel.com>
 <20190927214243.18558-3-daniele.ceraolospurio@intel.com>
 <245bc71a-fdc4-c65c-c0c8-8bc86e0ac60d@linux.intel.com>
 <f4182a48-5a86-fba5-9616-29ae95efd925@intel.com>
Message-ID: <762fb5d0-b5d7-7def-bd7b-da23c8a18d3f@intel.com>
Date: Wed, 9 Oct 2019 16:17:39 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <f4182a48-5a86-fba5-9616-29ae95efd925@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/huc: improve documentation
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

CgpPbiAxMC85LzE5IDI6NDQgUE0sIERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gd3JvdGU6Cj4gCj4g
Cj4gT24gMTAvOS8xOSA3OjQxIEFNLCBNYXJ0aW4gUGVyZXMgd3JvdGU6Cj4+IE9uIDI4LzA5LzIw
MTkgMDA6NDIsIERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gd3JvdGU6Cj4+PiBCZXR0ZXIgZXhwbGFp
biB0aGUgdXNhZ2Ugb2YgdGhlIG1pY3JvY29udHJvbGxlciBhbmQgd2hhdCBpOTE1IGlzCj4+PiBy
ZXNwb25zaWJsZSBvZi4gV2hpbGUgYXQgaXQsIGZpeCB0aGUgZG9jdW1lbnRhdGlvbiBmb3IgdGhl
IGF1dGgKPj4+IGZ1bmN0aW9uLCB3aGljaCBkb2Vzbid0IGRvIGFueSBwaW5uaW5nIGFueW1vcmUu
Cj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5j
ZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPj4+IENjOiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwu
d2FqZGVjemtvQGludGVsLmNvbT4KPj4+IC0tLQo+Pj4gwqAgRG9jdW1lbnRhdGlvbi9ncHUvaTkx
NS5yc3TCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAxMCArKysrKysrKy0tCj4+PiDC
oCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWMuY8KgwqDCoCB8IDE5ICsrKysr
KysrKysrKysrKy0tLS0KPj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1
Y19mdy5jIHwgMTUgLS0tLS0tLS0tLS0tLS0tCj4+PiDCoCAzIGZpbGVzIGNoYW5nZWQsIDIzIGlu
c2VydGlvbnMoKyksIDIxIGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVu
dGF0aW9uL2dwdS9pOTE1LnJzdCBiL0RvY3VtZW50YXRpb24vZ3B1L2k5MTUucnN0Cj4+PiBpbmRl
eCAzNTdlOWRmYTdkZTEuLmJmYjY0MzM3ZGI2NiAxMDA2NDQKPj4+IC0tLSBhL0RvY3VtZW50YXRp
b24vZ3B1L2k5MTUucnN0Cj4+PiArKysgYi9Eb2N1bWVudGF0aW9uL2dwdS9pOTE1LnJzdAo+Pj4g
QEAgLTQ3MSw4ICs0NzEsMTQgQEAgR3VDLWJhc2VkIGNvbW1hbmQgc3VibWlzc2lvbgo+Pj4gwqAg
SHVDCj4+PiDCoCAtLS0KPj4+IC0uLiBrZXJuZWwtZG9jOjogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfaHVjX2Z3LmMKPj4+IC3CoMKgIDpkb2M6IEh1QyBGaXJtd2FyZQo+Pj4gKy4u
IGtlcm5lbC1kb2M6OiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWMuYwo+Pj4g
K8KgwqAgOmRvYzogSHVDCj4+PiArLi4ga2VybmVsLWRvYzo6IGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX2h1Yy5jCj4+PiArwqDCoCA6ZnVuY3Rpb25zOiBpbnRlbF9odWNfYXV0aAo+
Pj4gKwo+Pj4gK0h1QyBGaXJtd2FyZSBMYXlvdXQKPj4+ICt+fn5+fn5+fn5+fn5+fn5+fn5+Cj4+
PiArVGhlIEh1QyBGVyBsYXlvdXQgaXMgdGhlIHNhbWUgYXMgdGhlIEd1QyBvbmUsIHNlZSBgR3VD
IEZpcm13YXJlIAo+Pj4gTGF5b3V0YF8KPj4+IMKgIERNQwo+Pj4gwqAgLS0tCj4+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfaHVjLmMgCj4+PiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Yy5jCj4+PiBpbmRleCBkNDYyNWM5N2I0Zjku
LjZlMTBmZTg5OGM5MCAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX2h1Yy5jCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9o
dWMuYwo+Pj4gQEAgLTksNiArOSwxOCBAQAo+Pj4gwqAgI2luY2x1ZGUgImludGVsX2h1Yy5oIgo+
Pj4gwqAgI2luY2x1ZGUgImk5MTVfZHJ2LmgiCj4+PiArLyoqCj4+PiArICogRE9DOiBIdUMKPj4+
ICsgKgo+Pj4gKyAqIFRoZSBIdUMgaXMgYSBkZWRpY2F0ZWQgbWljcm9jb250cm9sbGVyIGZvciB1
c2FnZSBpbiBtZWRpYSBIRVZDIChIaWdoCj4+PiArICogRWZmaWNpZW5jeSBWaWRlbyBDb2Rpbmcp
IG9wZXJhdGlvbnMuIFVzZXJzcGFjZSBjYW4gZGlyZWN0bHkgdXNlIAo+Pj4gdGhlIGZpcm13YXJl
Cj4+PiArICogY2FwYWJpbGl0aWVzIGJ5IGFkZGluZyBIdUMgc3BlY2lmaWMgY29tbWFuZHMgdG8g
YmF0Y2ggYnVmZmVycy4KPj4+ICsgKiBUaGUga2VybmVsIGRyaXZlciBpcyBvbmx5IHJlc3BvbnNp
YmxlIGZvciBsb2FkaW5nIHRoZSBIdUMgCj4+PiBmaXJtd2FyZSBhbmQKPj4+ICsgKiB0cmlnZ2Vy
aW5nIGl0cyBzZWN1cml0eSBhdXRoZW50aWNhdGlvbiwgd2hpY2ggaXMgcGVyZm9ybWVkIGJ5IHRo
ZSAKPj4+IEd1Qy4gRm9yCj4+PiArICogVGhlIEd1QyB0byBjb3JyZWN0bHkgcGVyZm9ybSB0aGUg
YXV0aGVudGljYXRpb24sIHRoZSBIdUMgYmluYXJ5IAo+Pj4gbXVzdCBiZQo+Pj4gKyAqIGxvYWRl
ZCBiZWZvcmUgdGhlIEd1QyBvbmUuCj4+PiArICovCj4+PiArCj4+PiDCoCB2b2lkIGludGVsX2h1
Y19pbml0X2Vhcmx5KHN0cnVjdCBpbnRlbF9odWMgKmh1YykKPj4+IMKgIHsKPj4+IMKgwqDCoMKg
wqAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBodWNfdG9fZ3QoaHVjKS0+aTkxNTsK
Pj4+IEBAIC0xMTgsMTAgKzEzMCw5IEBAIHZvaWQgaW50ZWxfaHVjX2Zpbmkoc3RydWN0IGludGVs
X2h1YyAqaHVjKQo+Pj4gwqDCoCAqCj4+PiDCoMKgICogQ2FsbGVkIGFmdGVyIEh1QyBhbmQgR3VD
IGZpcm13YXJlIGxvYWRpbmcgZHVyaW5nIAo+Pj4gaW50ZWxfdWNfaW5pdF9odygpLgo+Pj4gwqDC
oCAqCj4+PiAtICogVGhpcyBmdW5jdGlvbiBwaW5zIEh1QyBmaXJtd2FyZSBpbWFnZSBvYmplY3Qg
aW50byBHR1RULgo+Pj4gLSAqIFRoZW4gaXQgaW52b2tlcyBHdUMgYWN0aW9uIHRvIGF1dGhlbnRp
Y2F0ZSBwYXNzaW5nIHRoZSBvZmZzZXQgdG8gUlNBCj4+PiAtICogc2lnbmF0dXJlIHRocm91Z2gg
aW50ZWxfZ3VjX2F1dGhfaHVjKCkuIEl0IHRoZW4gd2FpdHMgZm9yIDUwbXMgZm9yCj4+PiAtICog
ZmlybXdhcmUgdmVyaWZpY2F0aW9uIEFDSyBhbmQgdW5waW5zIHRoZSBvYmplY3QuCj4+PiArICog
VGhpcyBmdW5jdGlvbiBpbnZva2VzIHRoZSBHdUMgYWN0aW9uIHRvIGF1dGhlbnRpY2F0ZSB0aGUg
SHVDIAo+Pj4gZmlybXdhcmUsCj4+PiArICogcGFzc2luZyB0aGUgb2Zmc2V0IG9mIHRoZSBSU0Eg
c2lnbmF0dXJlIHRvIGludGVsX2d1Y19hdXRoX2h1YygpLiAKPj4+IEl0IHRoZW4KPj4+ICsgKiB3
YWl0cyBmb3IgdXAgdG8gNTBtcyBmb3IgZmlybXdhcmUgdmVyaWZpY2F0aW9uIEFDSy4KPj4+IMKg
wqAgKi8KPj4+IMKgIGludCBpbnRlbF9odWNfYXV0aChzdHJ1Y3QgaW50ZWxfaHVjICpodWMpCj4+
PiDCoCB7Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
aHVjX2Z3LmMgCj4+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Y19mdy5j
Cj4+PiBpbmRleCA3NDYwMjQ4N2VkNjcuLmQ2NTQzNDBkNGQwMyAxMDA2NDQKPj4+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2h1Y19mdy5jCj4+PiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9odWNfZncuYwo+Pj4gQEAgLTcsMjEgKzcsNiBAQAo+
Pj4gwqAgI2luY2x1ZGUgImludGVsX2h1Y19mdy5oIgo+Pj4gwqAgI2luY2x1ZGUgImk5MTVfZHJ2
LmgiCj4+PiAtLyoqCj4+PiAtICogRE9DOiBIdUMgRmlybXdhcmUKPj4+IC0gKgo+Pj4gLSAqIE1v
dGl2YXRpb246Cj4+PiAtICogR0VOOSBpbnRyb2R1Y2VzIGEgbmV3IGRlZGljYXRlZCBmaXJtd2Fy
ZSBmb3IgdXNhZ2UgaW4gbWVkaWEgSEVWQyAKPj4+IChIaWdoCj4+PiAtICogRWZmaWNpZW5jeSBW
aWRlbyBDb2RpbmcpIG9wZXJhdGlvbnMuIFVzZXJzcGFjZSBjYW4gdXNlIHRoZSBmaXJtd2FyZQo+
Pj4gLSAqIGNhcGFiaWxpdGllcyBieSBhZGRpbmcgSHVDIHNwZWNpZmljIGNvbW1hbmRzIHRvIGJh
dGNoIGJ1ZmZlcnMuCj4+Cj4+IEhhdmluZyBhIGxpbmsgdG8gdGhlIG1lZGlhIGRyaXZlciBoZXJl
IHRoYXQgd291bGQgZXhwbGFpbiB3aGF0IHRoZSBIdUMKPj4gZW5hYmxlcyB3b3VsZCBiZSBiZW5l
ZmljaWFsICh3ZSBkb24ndCB3YW50IHRvIG1haW50YWluIHRoYXQpLgo+Pgo+Pj4gLSAqCj4+PiAt
ICogSW1wbGVtZW50YXRpb246Cj4+PiAtICogVGhlIHNhbWUgZmlybXdhcmUgbG9hZGVyIGlzIHVz
ZWQgYXMgdGhlIEd1Qy4gSG93ZXZlciwgdGhlIGFjdHVhbAo+Pj4gLSAqIGxvYWRpbmcgdG8gSFcg
aXMgZGVmZXJyZWQgdW50aWwgR0VNIGluaXRpYWxpemF0aW9uIGlzIGRvbmUuCj4+PiAtICoKPj4+
IC0gKiBOb3RlIHRoYXQgSHVDIGZpcm13YXJlIGxvYWRpbmcgbXVzdCBiZSBkb25lIGJlZm9yZSBH
dUMgbG9hZGluZy4KPj4+IC0gKi8KPj4KPj4gQ291bGQgd2UgYWRkIGEgc2VjdGlvbiBleHBsYWlu
aW5nIHRoZSBhY2Nlc3MgdGhlIEh1QyBoYXMgdG8gbWVtb3J5LCBhbmQKPiAKPiBJJ2xsIGhhdmUg
dG8gZm9sbG93IHVwIHdpdGggdGhlIEh1QyB0ZWFtIHRvIHVuZGVyc3RhbmQgaG93IHRoZSBtZW1v
cnkgCj4gYWNjZXNzIHdvcmtzIGJlY2F1c2UgSSdtIG5vdCB0b28gZmFtaWxpYXIgd2l0aCBIdUMu
IEFyZSB5b3Ugb2sgaWYgSSAKPiBhZGRyZXNzIGFsbCB5b3VyIG90aGVyIGNvbW1lbnRzIGZvciBH
dUMgYW5kIEh1QyBhbmQgYWRkIHRoaXMgYXMgYSBmb2xsb3cgCj4gdXAgbGF0ZXIgb25jZSBJIGdl
dCB0aGUgaW5mbz8KPiAKCk5ldmVyIG1pbmQsIEkgZm91bmQgdGhlIGluZm8gIEkgbmVlZGVkIChC
c3BlYyA0ODA1OCksIHNvIEkgY2FuIGRvIGFsbCAKdGhlIGNoYW5nZXMgaW4gb25lIGdvLgoKRGFu
aWVsZQoKPiBEYW5pZWxlCj4gCj4+IG9uZSBzdGF0aW5nIHRoYXQgdGhlIGZpcm13YXJlIGlzIG9w
dGlvbmFsPwo+Pgo+PiBBbnl3YXlzLCB0aGFua3MhIFRoZSBzZXJpZXMgY291bGQgYmUgbGFuZGVk
IGFzLWlzIGFscmVhZHksIGJ1dCBhIGZldwo+PiBtb3JlIGFkZGl0aW9ucyB3b3VsZCBiZSB3ZWxj
b21lZCA6KQo+Pgo+PiBNYXJ0aW4KPj4KPj4+IC0KPj4+IMKgIC8qKgo+Pj4gwqDCoCAqIGludGVs
X2h1Y19md19pbml0X2Vhcmx5KCkgLSBpbml0aWFsaXplcyBIdUMgZmlybXdhcmUgc3RydWN0Cj4+
PiDCoMKgICogQGh1YzogaW50ZWxfaHVjIHN0cnVjdAo+Pj4KPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
