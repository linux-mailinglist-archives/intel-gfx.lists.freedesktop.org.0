Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 934709CBC5
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2019 10:39:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2394189AEB;
	Mon, 26 Aug 2019 08:39:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 279EA89AB6
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2019 08:39:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18263570-1500050 for multiple; Mon, 26 Aug 2019 09:39:50 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190825224801.19117-1-prathap.kumar.valsan@intel.com>
 <20190825233527.17841-1-prathap.kumar.valsan@intel.com>
In-Reply-To: <20190825233527.17841-1-prathap.kumar.valsan@intel.com>
Message-ID: <156680878805.2672.9336263545662894176@skylake-alporthouse-com>
Date: Mon, 26 Aug 2019 09:39:48 +0100
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/tgl: Add sysfs interface to
 control class-of-service
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

UXVvdGluZyBQcmF0aGFwIEt1bWFyIFZhbHNhbiAoMjAxOS0wOC0yNiAwMDozNToyNykKPiBUbyBw
cm92aWRlIHNoYXJlZCBsYXN0LWxldmVsLWNhY2hlIGlzb2xhdGlvbiB0byBjcHUgd29ya2xvYWRz
IHJ1bm5pbmcKPiBjb25jdXJyZW50bHkgd2l0aCBncHUgd29ya2xvYWRzLCB0aGUgZ3B1IGFsbG9j
YXRpb24gb2YgY2FjaGUgbGluZXMgbmVlZHMKPiB0byBiZSByZXN0cmljdGVkIHRvIGNlcnRhaW4g
d2F5cy4gQ3VycmVudGx5IEdQVSBoYXJkd2FyZSBzdXBwb3J0cyBmb3VyCj4gY2xhc3Mtb2Ytc2Vy
dmljZShDTE9TKSBsZXZlbHMgYW5kIHRoZXJlIGlzIGFuIGFzc29jaWF0ZWQgd2F5LW1hc2sgZm9y
Cj4gZWFjaCBDTE9TLgo+IAo+IEhhcmR3YXJlIHN1cHBvcnRzIHJlYWRpbmcgc3VwcG9ydGVkIHdh
eS1tYXNrIGNvbmZpZ3VyYXRpb24gZm9yIEdQVSB1c2luZwo+IGEgYmlvcyBwY29kZSBpbnRlcmZh
Y2UuIFRoZSBzdXBwb3J0ZWQgd2F5LW1hc2tzIGFuZCB0aGUgb25lIGN1cnJlbnRseQo+IGFjdGl2
ZSBpcyBjb21tdW5pY2F0ZWQgdG8gdXNlcnNwYWNlIHZpYSBhIHN5c2ZzIGZpbGUtLWNsb3NjdHJs
LiBBZG1pbiB1c2VyCj4gY2FuIHRoZW4gc2VsZWN0IGEgbmV3IG1hc2sgYnkgd3JpdGluZyB0aGUg
bWFzayB2YWx1ZSB0byB0aGUgZmlsZS4KPiAKPiBOb3RlIG9mIENhdXRpb246IFJlc3RyaWN0aW5n
IGNhY2hlIHdheXMgdXNpbmcgdGhpcyBtZWNoYW5pc20gcHJlc2VudHMgYQo+IGxhcmdlciBhdHRh
Y2sgc3VyZmFjZSBmb3Igc2lkZS1jaGFubmVsIGF0dGFja3MuCj4gCj4gRXhhbXBsZSB1c2FnZToK
PiBUaGUgYWN0aXZlIHdheS1tYXNrIGlzIGhpZ2hsaWdodGVkIHdpdGhpbiBzcXVhcmUgYnJhY2tl
dHMuCj4gPiBjYXQgL3N5cy9jbGFzcy9kcm0vY2FyZDAvY2xvc2N0cmwKPiBbMHhmZmZmXSAweGZm
MDAgMHhjMDAwIDB4ODAwMAo+IAo+IENMT1MwIGlzIGN1cnJlbnRseSBhY3RpdmUuCj4gCj4gPiBl
Y2hvIDB4ODAwMCA+IC9zeXMvY2xhc3MvZHJtL2NhcmQwL2Nsb3NjdHJsCj4gPiBjYXQgL3N5cy9j
bGFzcy9kcm0vY2FyZDAvY2xvc2N0cmwKPiAweGZmZmYgMHhmZjAwIDB4YzAwMCBbMHg4MDAwXQo+
IAo+IENMT1MzIGlzIGN1cnJlbnRseSBhY3RpdmUKPiAKPiBTaWduZWQtb2ZmLWJ5OiBQcmF0aGFw
IEt1bWFyIFZhbHNhbiA8cHJhdGhhcC5rdW1hci52YWxzYW5AaW50ZWwuY29tPgo+IC0tLQo+IENo
YW5nZXMgaW4gdjI6Cj4gRGVjbGFyZSBjbG9zY3RybF9zaG93IGFuZCBjbG9zY3RybF9zdG9yZSBh
cyBzdGF0aWMgZnVuY3Rpb25zLgo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2Nz
LmMgfCA1NyArKysrKysrKysrKysrKysrKysrKy0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9tb2NzLmggfCAgMSArCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2Lmgg
ICAgICB8ICA4ICsrKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgIHwg
IDEgKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3N5c2ZzLmMgICAgfCA2NyArKysrKysr
KysrKysrKysrKysrKysrKysrKysrCj4gIDUgZmlsZXMgY2hhbmdlZCwgMTI5IGluc2VydGlvbnMo
KyksIDUgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX21vY3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYwo+
IGluZGV4IDcyODcwNGJiYmUxOC4uZGQxM2U2MTk0NGZkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX21vY3MuYwo+IEBAIC0yNiw2ICsyNiw3IEBACj4gICNpbmNsdWRlICJpbnRlbF9n
dC5oIgo+ICAjaW5jbHVkZSAiaW50ZWxfbW9jcy5oIgo+ICAjaW5jbHVkZSAiaW50ZWxfbHJjLmgi
Cj4gKyNpbmNsdWRlICJpbnRlbF9zaWRlYmFuZC5oIgo+ICAKPiAgLyogc3RydWN0dXJlcyByZXF1
aXJlZCAqLwo+ICBzdHJ1Y3QgZHJtX2k5MTVfbW9jc19lbnRyeSB7Cj4gQEAgLTUxLDYgKzUyLDcg
QEAgc3RydWN0IGRybV9pOTE1X21vY3NfdGFibGUgewo+ICAjZGVmaW5lIExFX1NDRih2YWx1ZSkg
ICAgICAgICAgKCh2YWx1ZSkgPDwgMTQpCj4gICNkZWZpbmUgTEVfQ09TKHZhbHVlKSAgICAgICAg
ICAoKHZhbHVlKSA8PCAxNSkKPiAgI2RlZmluZSBMRV9TU0UodmFsdWUpICAgICAgICAgICgodmFs
dWUpIDw8IDE3KQo+ICsjZGVmaW5lIExFX0NPU19NQVNLICAgICAgICAgICAgR0VOTUFTSygxNiwg
MTUpCj4gIAo+ICAvKiBEZWZpbmVzIGZvciB0aGUgdGFibGVzIChMTkNGTU9DUzAgLSBMTkNGTU9D
UzMxKSAtIHR3byBlbnRyaWVzIHBlciB3b3JkICovCj4gICNkZWZpbmUgTDNfRVNDKHZhbHVlKSAg
ICAgICAgICAoKHZhbHVlKSA8PCAwKQo+IEBAIC00MDgsMTAgKzQxMCwxMyBAQCB2b2lkIGludGVs
X21vY3NfaW5pdF9lbmdpbmUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdW51c2VkX3ZhbHVlKTsKPiAgfQo+ICAK
PiAtc3RhdGljIHZvaWQgaW50ZWxfbW9jc19pbml0X2dsb2JhbChzdHJ1Y3QgaW50ZWxfZ3QgKmd0
KQo+ICt2b2lkIGludGVsX21vY3NfaW5pdF9nbG9iYWwoc3RydWN0IGludGVsX2d0ICpndCkKPiAg
ewo+ICsgICAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBndC0+aTkxNTsKPiAg
ICAgICAgIHN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9IGd0LT51bmNvcmU7Cj4gICAgICAg
ICBzdHJ1Y3QgZHJtX2k5MTVfbW9jc190YWJsZSB0YWJsZTsKPiArICAgICAgIHVuc2lnbmVkIGlu
dCBhY3RpdmVfY2xvczsKPiArICAgICAgIHUzMiB2YWx1ZSwgdW51c2VkX3ZhbHVlOwo+ICAgICAg
ICAgdW5zaWduZWQgaW50IGluZGV4Owo+ICAKPiAgICAgICAgIEdFTV9CVUdfT04oIUhBU19HTE9C
QUxfTU9DU19SRUdJU1RFUlMoZ3QtPmk5MTUpKTsKPiBAQCAtNDIyLDIwICs0MjcsMzEgQEAgc3Rh
dGljIHZvaWQgaW50ZWxfbW9jc19pbml0X2dsb2JhbChzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQo+ICAg
ICAgICAgaWYgKEdFTV9ERUJVR19XQVJOX09OKHRhYmxlLnNpemUgPiB0YWJsZS5uX2VudHJpZXMp
KQo+ICAgICAgICAgICAgICAgICByZXR1cm47Cj4gIAo+IC0gICAgICAgZm9yIChpbmRleCA9IDA7
IGluZGV4IDwgdGFibGUuc2l6ZTsgaW5kZXgrKykKPiArICAgICAgIGFjdGl2ZV9jbG9zID0gYXRv
bWljX3JlYWQoJmk5MTUtPmNsb3MuYWN0aXZlX2Nsb3MpOwo+ICsKPiArICAgICAgIGZvciAoaW5k
ZXggPSAwOyBpbmRleCA8IHRhYmxlLnNpemU7IGluZGV4KyspIHsKPiArICAgICAgICAgICAgICAg
dmFsdWUgPSB0YWJsZS50YWJsZVtpbmRleF0uY29udHJvbF92YWx1ZTsKPiArICAgICAgICAgICAg
ICAgdmFsdWUgJj0gfkxFX0NPU19NQVNLOwo+ICsgICAgICAgICAgICAgICB2YWx1ZSB8PSBGSUVM
RF9QUkVQKExFX0NPU19NQVNLLCBhY3RpdmVfY2xvcyk7Cj4gKwo+ICAgICAgICAgICAgICAgICBp
bnRlbF91bmNvcmVfd3JpdGUodW5jb3JlLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgR0VOMTJfR0xPQkFMX01PQ1MoaW5kZXgpLAo+IC0gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgdGFibGUudGFibGVbaW5kZXhdLmNvbnRyb2xfdmFsdWUpOwo+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgdmFsdWUpOwo+ICsgICAgICAgfQo+ICAKPiAgICAg
ICAgIC8qCj4gICAgICAgICAgKiBPaywgbm93IHNldCB0aGUgdW51c2VkIGVudHJpZXMgdG8gdGhl
IGludmFsaWQgZW50cnkgKGluZGV4IDApLiBUaGVzZQo+ICAgICAgICAgICogZW50cmllcyBhcmUg
b2ZmaWNpYWxseSB1bmRlZmluZWQgYW5kIG5vIGNvbnRyYWN0IGZvciB0aGUgY29udGVudHMgYW5k
Cj4gICAgICAgICAgKiBzZXR0aW5ncyBpcyBnaXZlbiBmb3IgdGhlc2UgZW50cmllcy4KPiAgICAg
ICAgICAqLwo+ICsgICAgICAgdW51c2VkX3ZhbHVlID0gdGFibGUudGFibGVbMF0uY29udHJvbF92
YWx1ZTsKPiArICAgICAgIHVudXNlZF92YWx1ZSAmPSB+TEVfQ09TX01BU0s7Cj4gKyAgICAgICB1
bnVzZWRfdmFsdWUgfD0gRklFTERfUFJFUChMRV9DT1NfTUFTSywgYWN0aXZlX2Nsb3MpOwo+ICsK
PiAgICAgICAgIGZvciAoOyBpbmRleCA8IHRhYmxlLm5fZW50cmllczsgaW5kZXgrKykKPiAgICAg
ICAgICAgICAgICAgaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwKPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIEdFTjEyX0dMT0JBTF9NT0NTKGluZGV4KSwKPiAtICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHRhYmxlLnRhYmxlWzBdLmNvbnRyb2xfdmFsdWUpOwo+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdW51c2VkX3ZhbHVlKTsKPiAgfQo+
ICAKPiAgc3RhdGljIGludCBlbWl0X21vY3NfY29udHJvbF90YWJsZShzdHJ1Y3QgaTkxNV9yZXF1
ZXN0ICpycSwKPiBAQCAtNjI1LDEwICs2NDEsNDEgQEAgaW50IGludGVsX21vY3NfZW1pdChzdHJ1
Y3QgaTkxNV9yZXF1ZXN0ICpycSkKPiAgICAgICAgIHJldHVybiAwOwo+ICB9Cj4gIAo+ICtzdGF0
aWMgdm9pZCBpbnRlbF9yZWFkX2Nsb3Nfd2F5X21hc2soc3RydWN0IGludGVsX2d0ICpndCkKPiAr
ewo+ICsgICAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBndC0+aTkxNTsKPiAr
ICAgICAgIHN0cnVjdCBkcm1faTkxNV9tb2NzX3RhYmxlIHRhYmxlOwo+ICsgICAgICAgaW50IHJl
dCwgaTsKPiArICAgICAgIHUzMiB2YWw7Cj4gKwo+ICsgICAgICAgaWYgKCFnZXRfbW9jc19zZXR0
aW5ncyhndCwgJnRhYmxlKSkKPiArICAgICAgICAgICAgICAgcmV0dXJuOwo+ICsKPiArICAgICAg
IC8qIENPUyBpcyBzYW1lIGZvciBhbGwgZW50cmllcyAqLwo+ICsgICAgICAgYXRvbWljX3NldCgm
aTkxNS0+Y2xvcy5hY3RpdmVfY2xvcywKPiArICAgICAgICAgICAgICAgICAgRklFTERfR0VUKExF
X0NPU19NQVNLLCBnZXRfZW50cnlfY29udHJvbCgmdGFibGUsIDApKSk7Cj4gKyAgICAgICBmb3Ig
KGkgPSAwOyBpIDwgTlVNX09GX0NMT1M7IGkrKykgewo+ICsgICAgICAgICAgICAgICB2YWwgPSBp
Owo+ICsgICAgICAgICAgICAgICByZXQgPSBzYW5keWJyaWRnZV9wY29kZV9yZWFkKGk5MTUsCj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgSUNMX1BDT0RFX0xM
Q19DT1NfV0FZX01BU0tfSU5GTywKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAmdmFsLCBOVUxMKTsKPiArICAgICAgICAgICAgICAgaWYgKHJldCkgewo+ICsg
ICAgICAgICAgICAgICAgICAgICAgIERSTV9FUlJPUigiTWFpbGJveCByZWFkIGVycm9yID0gJWRc
biIsIHJldCk7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuOwo+ICsgICAgICAgICAg
ICAgICB9Cj4gKwo+ICsgICAgICAgICAgICAgICBpOTE1LT5jbG9zLndheV9tYXNrW2ldID0gdmFs
Owo+ICsgICAgICAgfQo+ICsKPiArICAgICAgIGk5MTUtPmNsb3Muc3VwcG9ydF93YXlfbWFza19y
ZWFkID0gdHJ1ZTsKPiArfQo+ICsKPiAgdm9pZCBpbnRlbF9tb2NzX2luaXQoc3RydWN0IGludGVs
X2d0ICpndCkKPiAgewo+ICAgICAgICAgaW50ZWxfbW9jc19pbml0X2wzY2NfdGFibGUoZ3QpOwo+
ICAKPiAtICAgICAgIGlmIChIQVNfR0xPQkFMX01PQ1NfUkVHSVNURVJTKGd0LT5pOTE1KSkKPiAr
ICAgICAgIGlmIChIQVNfR0xPQkFMX01PQ1NfUkVHSVNURVJTKGd0LT5pOTE1KSkgewo+ICsgICAg
ICAgICAgICAgICBpbnRlbF9yZWFkX2Nsb3Nfd2F5X21hc2soZ3QpOwo+ICAgICAgICAgICAgICAg
ICBpbnRlbF9tb2NzX2luaXRfZ2xvYmFsKGd0KTsKPiArICAgICAgIH0KPiAgfQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9tb2NzLmgKPiBpbmRleCAyYWU4MTZiN2NhMTkuLmU2NGUxYjEwNDc1
MyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmgKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmgKPiBAQCAtNTMsNiArNTMs
NyBAQCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0Owo+ICBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzOwo+ICBz
dHJ1Y3QgaW50ZWxfZ3Q7Cj4gIAo+ICt2b2lkIGludGVsX21vY3NfaW5pdF9nbG9iYWwoc3RydWN0
IGludGVsX2d0ICpndCk7Cj4gIHZvaWQgaW50ZWxfbW9jc19pbml0KHN0cnVjdCBpbnRlbF9ndCAq
Z3QpOwo+ICB2b2lkIGludGVsX21vY3NfaW5pdF9lbmdpbmUoc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqZW5naW5lKTsKPiAgCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
ZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gaW5kZXggYjQyNjUxYTM4
N2Q5Li4wZTI1MDQxNmM1YTkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiBAQCAtMTYy
MSw2ICsxNjIxLDE0IEBAIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlIHsKPiAgICAgICAgICAgICAg
ICAgYm9vbCBkaXN0cnVzdF9iaW9zX3dtOwo+ICAgICAgICAgfSB3bTsKPiAgCj4gKyAgICAgICAv
KiBMYXN0IExldmVsIENhY2hlICBDbGFzcyBvZiBTZXJ2aWNlICovCj4gKyAgICAgICBzdHJ1Y3Qg
ewo+ICsgICAgICAgICAgICAgICBib29sIHN1cHBvcnRfd2F5X21hc2tfcmVhZDsKPiArICAgICAg
ICAgICAgICAgYXRvbWljX3QgYWN0aXZlX2Nsb3M7Cj4gKyNkZWZpbmUgTlVNX09GX0NMT1MgNAo+
ICsgICAgICAgICAgICAgICB1MTYgd2F5X21hc2tbTlVNX09GX0NMT1NdOwo+ICsgICAgICAgfSBj
bG9zOwo+ICsKPiAgICAgICAgIHN0cnVjdCBkcmFtX2luZm8gewo+ICAgICAgICAgICAgICAgICBi
b29sIHZhbGlkOwo+ICAgICAgICAgICAgICAgICBib29sIGlzXzE2Z2JfZGltbTsKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmgKPiBpbmRleCAwMmUxZWYxMGM0N2UuLjM5OWFjYjdhMzZkOCAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+IEBAIC04ODQ1LDYgKzg4NDUsNyBAQCBlbnVtIHsKPiAg
I2RlZmluZSAgIElDTF9QQ09ERV9NRU1fU1VCU1lTWVNURU1fSU5GTyAgICAgICAweGQKPiAgI2Rl
ZmluZSAgICAgSUNMX1BDT0RFX01FTV9TU19SRUFEX0dMT0JBTF9JTkZPICAoMHgwIDw8IDgpCj4g
ICNkZWZpbmUgICAgIElDTF9QQ09ERV9NRU1fU1NfUkVBRF9RR1ZfUE9JTlRfSU5GTyhwb2ludCkg
ICAgICAgICgoKHBvaW50KSA8PCAxNikgfCAoMHgxIDw8IDgpKQo+ICsjZGVmaW5lICAgSUNMX1BD
T0RFX0xMQ19DT1NfV0FZX01BU0tfSU5GTyAgICAgIDB4MWQKPiAgI2RlZmluZSAgIEdFTjZfUENP
REVfUkVBRF9EX0NPTVAgICAgICAgICAgICAgICAweDEwCj4gICNkZWZpbmUgICBHRU42X1BDT0RF
X1dSSVRFX0RfQ09NUCAgICAgICAgICAgICAgMHgxMQo+ICAjZGVmaW5lICAgSFNXX1BDT0RFX0RF
X1dSSVRFX0ZSRVFfUkVRICAgICAgICAgIDB4MTcKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9zeXNmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zeXNmcy5j
Cj4gaW5kZXggZDhhM2IxODBjMDg0Li5iNTMxNDM0MTYzOTYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9zeXNmcy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9zeXNmcy5jCj4gQEAgLTM0LDYgKzM0LDcgQEAKPiAgI2luY2x1ZGUgImk5MTVfc3lzZnMu
aCIKPiAgI2luY2x1ZGUgImludGVsX3BtLmgiCj4gICNpbmNsdWRlICJpbnRlbF9zaWRlYmFuZC5o
Igo+ICsjaW5jbHVkZSAiZ3QvaW50ZWxfbW9jcy5oIgo+ICAKPiAgc3RhdGljIGlubGluZSBzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqa2Rldl9taW5vcl90b19pOTE1KHN0cnVjdCBkZXZpY2UgKmtk
ZXYpCj4gIHsKPiBAQCAtMjU3LDYgKzI1OCw2MiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGJpbl9h
dHRyaWJ1dGUgZHBmX2F0dHJzXzEgPSB7Cj4gICAgICAgICAucHJpdmF0ZSA9ICh2b2lkICopMQo+
ICB9Owo+ICAKPiArc3RhdGljIHNzaXplX3QgY2xvc2N0cmxfc2hvdyhzdHJ1Y3QgZGV2aWNlICpr
ZGV2LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGRldmljZV9hdHRyaWJ1
dGUgKmF0dHIsIGNoYXIgKmJ1ZikKPiArewo+ICsgICAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2ID0ga2Rldl9taW5vcl90b19pOTE1KGtkZXYpOwo+ICsgICAgICAgc3NpemVf
dCBsZW4gPSAwOwo+ICsgICAgICAgaW50IGk7Cj4gKwo+ICsgICAgICAgZm9yIChpID0gMDsgaSA8
IE5VTV9PRl9DTE9TOyBpKyspIHsKPiArICAgICAgICAgICAgICAgaWYgKGkgPT0gYXRvbWljX3Jl
YWQoJmRldl9wcml2LT5jbG9zLmFjdGl2ZV9jbG9zKSkKClJlYWRpbmcgYW4gYXRvbWljIG1vcmUg
dGhhbiBvbmNlIGlzIGxpYWJsZSB0byBnaXZlIHlvdSBkaWZmZXJlbnQKYW5zd2Vycy4KCj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgbGVuICs9IHNucHJpbnRmKGJ1ZiArIGxlbiwgUEFHRV9TSVpF
LCAiJXMweCV4JXMgIiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IlsiLCBkZXZfcHJpdi0+Y2xvcy53YXlfbWFza1tpXSwgIl0iKTsKPiArICAgICAgICAgICAgICAg
ZWxzZQo+ICsgICAgICAgICAgICAgICAgICAgICAgIGxlbiArPSBzbnByaW50ZihidWYgKyBsZW4s
IFBBR0VfU0laRSwgIjB4JXggIiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgZGV2X3ByaXYtPmNsb3Mud2F5X21hc2tbaV0pOwo+ICsgICAgICAgfQo+ICsgICAgICAg
bGVuICs9IHNucHJpbnRmKGJ1ZiArIGxlbiwgUEFHRV9TSVpFLCAiXG4iKTsKPiArCj4gKyAgICAg
ICByZXR1cm4gbGVuOwo+ICt9Cj4gKwo+ICtzdGF0aWMgc3NpemVfdCBjbG9zY3RybF9zdG9yZShz
dHJ1Y3QgZGV2aWNlICprZGV2LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVj
dCBkZXZpY2VfYXR0cmlidXRlICphdHRyLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IGNvbnN0IGNoYXIgKmJ1Ziwgc2l6ZV90IGNvdW50KQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBrZGV2X21pbm9yX3RvX2k5MTUoa2Rldik7Cj4gKyAg
ICAgICB1OCBhY3RpdmVfY2xvcywgY2xvc19pbmRleDsKPiArICAgICAgIGJvb2wgdmFsaWRfbWFz
ayA9IGZhbHNlOwo+ICsgICAgICAgc3NpemVfdCByZXQ7Cj4gKyAgICAgICB1MTYgd2F5X21hc2s7
Cj4gKwo+ICsgICAgICAgcmV0ID0ga3N0cnRvdTE2KGJ1ZiwgMCwgJndheV9tYXNrKTsKPiArICAg
ICAgIGlmIChyZXQpCj4gKyAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gKwo+ICsgICAgICAg
YWN0aXZlX2Nsb3MgPSBhdG9taWNfcmVhZCgmZGV2X3ByaXYtPmNsb3MuYWN0aXZlX2Nsb3MpOwo+
ICsKPiArICAgICAgIGlmIChkZXZfcHJpdi0+Y2xvcy53YXlfbWFza1thY3RpdmVfY2xvc10gPT0g
d2F5X21hc2spCj4gKyAgICAgICAgICAgICAgIHJldHVybiBjb3VudDsKPiArCj4gKyAgICAgICBm
b3IgKGNsb3NfaW5kZXggPSAwOyBjbG9zX2luZGV4IDwgTlVNX09GX0NMT1M7IGNsb3NfaW5kZXgr
Kykgewo+ICsgICAgICAgICAgICAgICBpZiAoZGV2X3ByaXYtPmNsb3Mud2F5X21hc2tbY2xvc19p
bmRleF0gPT0gd2F5X21hc2spIHsKPiArICAgICAgICAgICAgICAgICAgICAgICBhdG9taWNfc2V0
KCZkZXZfcHJpdi0+Y2xvcy5hY3RpdmVfY2xvcywgY2xvc19pbmRleCk7Cj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgdmFsaWRfbWFzayA9IHRydWU7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAg
YnJlYWs7Cj4gKyAgICAgICAgICAgICAgIH0KPiArICAgICAgIH0KCkhvdyBpcyB0aGlzIHNlcmlh
bGlzZWQgYWdhaW5zdCBtdWx0aXBsZSB1c2VycyBjaGFuZ2luZyB0aGUgc2V0dGluZz8KClRoaXMg
aXMgbm90IGFuIGF0b21pYyBvcGVyYXRpb24sIGF0b21pY190IHNob3VsZCBoYXZlIGJlZW4gYSB3
YXJuaW5nLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
