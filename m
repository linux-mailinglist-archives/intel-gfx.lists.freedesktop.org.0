Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A3D2C85B9
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 14:40:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC5D789C6B;
	Mon, 30 Nov 2020 13:40:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30DB989C6B
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 13:39:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23162672-1500050 for multiple; Mon, 30 Nov 2020 13:39:54 +0000
MIME-Version: 1.0
In-Reply-To: <f8856a1a-48ad-9a26-3658-bfbcef1c7a95@linux.intel.com>
References: <20201128184040.20150-1-chris@chris-wilson.co.uk>
 <20201128184040.20150-4-chris@chris-wilson.co.uk>
 <f8856a1a-48ad-9a26-3658-bfbcef1c7a95@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Mon, 30 Nov 2020 13:39:54 +0000
Message-ID: <160674359480.9503.7150298801559341502@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [RFC 4/4] drm/i915/gt: Pipelined page migration
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAyMC0xMS0zMCAxMzoxMjo1NSkKPiAKPiBPbiAyOC8x
MS8yMDIwIDE4OjQwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBJZiB3ZSBwaXBlbGluZSB0aGUg
UFRFIHVwZGF0ZXMgYW5kIHRoZW4gZG8gdGhlIGNvcHkgb2YgdGhvc2UgcGFnZXMKPiA+IHdpdGhp
biBhIHNpbmdsZSB1bnByZWVtcHRpYmxlIGNvbW1hbmQgcGFja2V0LCB3ZSBjYW4gc3VibWl0IHRo
ZSBjb3BpZXMKPiA+IGFuZCBsZWF2ZSB0aGVtIHRvIGJlIHNjaGVkdWxlZCB3aXRob3V0IGhhdmlu
ZyB0byBzeW5jaHJvbm91c2x5IHdhaXQKPiA+IHVuZGVyIGEgZ2xvYmFsIGxvY2suCj4gPiAKPiA+
IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+
ID4gLS0tCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAg
ICB8ICAgMSArCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZS5oICAg
ICAgICB8ICAgMSArCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21pZ3JhdGUu
YyAgICAgICB8IDM3MCArKysrKysrKysrKysrKysrKysKPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbWlncmF0ZS5oICAgICAgIHwgIDMzICsrCj4gPiAgIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3NlbGZ0ZXN0X21pZ3JhdGUuYyAgICB8IDEwNSArKysrKwo+ID4gICAuLi4vZHJt
L2k5MTUvc2VsZnRlc3RzL2k5MTVfbGl2ZV9zZWxmdGVzdHMuaCAgfCAgIDEgKwo+ID4gICA2IGZp
bGVzIGNoYW5nZWQsIDUxMSBpbnNlcnRpb25zKCspCj4gPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9taWdyYXRlLmMKPiA+ICAgY3JlYXRlIG1vZGUg
MTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21pZ3JhdGUuaAo+ID4gICBjcmVh
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbWlncmF0ZS5j
Cj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCj4gPiBpbmRleCBlNTU3NGU1MDZhNWMuLjBiMmUx
MmM4N2Y5ZCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQo+ID4gQEAgLTEwMyw2ICsxMDMs
NyBAQCBndC15ICs9IFwKPiA+ICAgICAgIGd0L2ludGVsX2d0dC5vIFwKPiA+ICAgICAgIGd0L2lu
dGVsX2xsYy5vIFwKPiA+ICAgICAgIGd0L2ludGVsX2xyYy5vIFwKPiA+ICsgICAgIGd0L2ludGVs
X21pZ3JhdGUubyBcCj4gPiAgICAgICBndC9pbnRlbF9tb2NzLm8gXAo+ID4gICAgICAgZ3QvaW50
ZWxfcHBndHQubyBcCj4gPiAgICAgICBndC9pbnRlbF9yYzYubyBcCj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lLmggYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9lbmdpbmUuaAo+ID4gaW5kZXggYWM1OGZjZGE0OTI3Li4wNzlkMjZiNDdh
OTcgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmUu
aAo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lLmgKPiA+IEBA
IC0xODgsNiArMTg4LDcgQEAgaW50ZWxfd3JpdGVfc3RhdHVzX3BhZ2Uoc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lLCBpbnQgcmVnLCB1MzIgdmFsdWUpCj4gPiAgICNkZWZpbmUgSTkxNV9H
RU1fSFdTX1BSRUVNUFRfQUREUiAgIChJOTE1X0dFTV9IV1NfUFJFRU1QVCAqIHNpemVvZih1MzIp
KQo+ID4gICAjZGVmaW5lIEk5MTVfR0VNX0hXU19TRVFOTyAgICAgICAgICAweDQwCj4gPiAgICNk
ZWZpbmUgSTkxNV9HRU1fSFdTX1NFUU5PX0FERFIgICAgICAgICAgICAgKEk5MTVfR0VNX0hXU19T
RVFOTyAqIHNpemVvZih1MzIpKQo+ID4gKyNkZWZpbmUgSTkxNV9HRU1fSFdTX01JR1JBVEUgICAg
ICAgICAoMHg0MiAqIHNpemVvZih1MzIpKQo+ID4gICAjZGVmaW5lIEk5MTVfR0VNX0hXU19TQ1JB
VENIICAgICAgICAgICAgICAgIDB4ODAKPiA+ICAgCj4gPiAgICNkZWZpbmUgSTkxNV9IV1NfQ1NC
X0JVRjBfSU5ERVggICAgICAgICAgICAgMHgxMAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX21pZ3JhdGUuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX21pZ3JhdGUuYwo+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+IGluZGV4IDAwMDAwMDAw
MDAwMC4uNGQ3YmQzMmViOGQ0Cj4gPiAtLS0gL2Rldi9udWxsCj4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9taWdyYXRlLmMKPiA+IEBAIC0wLDAgKzEsMzcwIEBACj4gPiAr
Ly8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAo+ID4gKy8qCj4gPiArICogQ29weXJpZ2h0
IMKpIDIwMjAgSW50ZWwgQ29ycG9yYXRpb24KPiA+ICsgKi8KPiA+ICsKPiA+ICsjaW5jbHVkZSAi
aTkxNV9kcnYuaCIKPiA+ICsjaW5jbHVkZSAiaW50ZWxfY29udGV4dC5oIgo+ID4gKyNpbmNsdWRl
ICJpbnRlbF9ndC5oIgo+ID4gKyNpbmNsdWRlICJpbnRlbF9ndHQuaCIKPiA+ICsjaW5jbHVkZSAi
aW50ZWxfbHJjLmgiIC8qIHZpcnR1YWwgZW5naW5lICovCj4gPiArI2luY2x1ZGUgImludGVsX21p
Z3JhdGUuaCIKPiA+ICsjaW5jbHVkZSAiaW50ZWxfcmluZy5oIgo+ID4gKwo+ID4gKyNkZWZpbmUg
Q0hVTktfU1ogU1pfOE0gLyogfjFtcyBhdCA4R2lCL3MgcHJlZW1wdGlvbiBkZWxheSAqLwo+ID4g
Kwo+ID4gK3N0YXRpYyB2b2lkIGluc2VydF9wdGUoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAq
dm0sCj4gPiArICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaTkxNV9wYWdlX3RhYmxlICpwdCwK
PiA+ICsgICAgICAgICAgICAgICAgICAgIHZvaWQgKmRhdGEpCj4gPiArewo+ID4gKyAgICAgdTY0
ICpvZmZzZXQgPSBkYXRhOwo+ID4gKwo+ID4gKyAgICAgdm0tPmluc2VydF9wYWdlKHZtLCBweF9k
bWEocHQpLCAqb2Zmc2V0LCBJOTE1X0NBQ0hFX05PTkUsIDApOwo+ID4gKyAgICAgKm9mZnNldCAr
PSBQQUdFX1NJWkU7Cj4gPiArfQo+ID4gKwo+ID4gK3N0YXRpYyBzdHJ1Y3QgaTkxNV9hZGRyZXNz
X3NwYWNlICptaWdyYXRlX3ZtKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCj4gPiArewo+ID4gKyAgICAg
c3RydWN0IGk5MTVfdm1fcHRfc3Rhc2ggc3Rhc2ggPSB7fTsKPiA+ICsgICAgIHN0cnVjdCBpOTE1
X3BwZ3R0ICp2bTsKPiA+ICsgICAgIHU2NCBvZmZzZXQsIHN6Owo+ID4gKyAgICAgaW50IGVycjsK
PiA+ICsKPiA+ICsgICAgIHZtID0gaTkxNV9wcGd0dF9jcmVhdGUoZ3QpOwo+ID4gKyAgICAgaWYg
KElTX0VSUih2bSkpCj4gPiArICAgICAgICAgICAgIHJldHVybiBFUlJfQ0FTVCh2bSk7Cj4gPiAr
Cj4gPiArICAgICBpZiAoIXZtLT52bS5hbGxvY2F0ZV92YV9yYW5nZSB8fCAhdm0tPnZtLmZvcmVh
Y2gpIHsKPiA+ICsgICAgICAgICAgICAgZXJyID0gLUVOT0RFVjsKPiA+ICsgICAgICAgICAgICAg
Z290byBlcnJfdm07Cj4gPiArICAgICB9Cj4gPiArCj4gPiArICAgICAvKgo+ID4gKyAgICAgICog
V2UgY29weSBpbiA4TWlCIGNodW5rcy4gRWFjaCBQREUgY292ZXJzIDJNaUIsIHNvIHdlIG5lZWQK
PiA+ICsgICAgICAqIDR4MiBwYWdlIGRpcmVjdG9yaWVzIGZvciBzb3VyY2UvZGVzdGluYXRpb24u
Cj4gPiArICAgICAgKi8KPiA+ICsgICAgIHN6ID0gMiAqIENIVU5LX1NaOwo+ID4gKyAgICAgb2Zm
c2V0ID0gc3o7Cj4gPiArCj4gPiArICAgICAvKgo+ID4gKyAgICAgICogV2UgbmVlZCBhbm90aGVy
IHBhZ2UgZGlyZWN0b3J5IHNldHVwIHNvIHRoYXQgd2UgY2FuIHdyaXRlCj4gPiArICAgICAgKiB0
aGUgOHg1MTIgUFRFIGluIGVhY2ggY2h1bmsuCj4gPiArICAgICAgKi8KPiA+ICsgICAgIHN6ICs9
IChzeiA+PiAxMikgKiBzaXplb2YodTY0KTsKPiA+ICsKPiA+ICsgICAgIGVyciA9IGk5MTVfdm1f
YWxsb2NfcHRfc3Rhc2goJnZtLT52bSwgJnN0YXNoLCBzeik7Cj4gPiArICAgICBpZiAoZXJyKQo+
ID4gKyAgICAgICAgICAgICBnb3RvIGVycl92bTsKPiA+ICsKPiA+ICsgICAgIGVyciA9IGk5MTVf
dm1fcGluX3B0X3N0YXNoKCZ2bS0+dm0sICZzdGFzaCk7Cj4gPiArICAgICBpZiAoZXJyKSB7Cj4g
PiArICAgICAgICAgICAgIGk5MTVfdm1fZnJlZV9wdF9zdGFzaCgmdm0tPnZtLCAmc3Rhc2gpOwo+
ID4gKyAgICAgICAgICAgICBnb3RvIGVycl92bTsKPiA+ICsgICAgIH0KPiA+ICsKPiA+ICsgICAg
IHZtLT52bS5hbGxvY2F0ZV92YV9yYW5nZSgmdm0tPnZtLCAmc3Rhc2gsIDAsIHN6KTsKPiA+ICsg
ICAgIGk5MTVfdm1fZnJlZV9wdF9zdGFzaCgmdm0tPnZtLCAmc3Rhc2gpOwo+ID4gKwo+ID4gKyAg
ICAgLyogTm93IGFsbG93IHRoZSBHUFUgdG8gcmV3cml0ZSB0aGUgUFRFIHZpYSBpdHMgb3duIHBw
R1RUICovCj4gPiArICAgICB2bS0+dm0uZm9yZWFjaCgmdm0tPnZtLCAwLCBzeiwgaW5zZXJ0X3B0
ZSwgJm9mZnNldCk7Cj4gCj4gVGhpcyBpcyBqdXN0IG1ha2luZyB0aGUgWzAgLSBzeikgZ3ZhIHBv
aW50IHRvIHRoZSBhbGxvY2F0ZWQgc3ogYnl0ZXMgb2YgCj4gYmFja2luZyBzdG9yZT8KCk5vdCBx
dWl0ZSwgd2UgYXJlIHBvaW50aW5nIFtvZmZzZXQsIHN6KSB0byB0aGUgcGFnZSBkaXJlY3Rvcmll
cwp0aGVtc2VsdmVzLiBXaGVuIHdlIHdyaXRlIGludG8gdGhhdCByYW5nZSwgd2UgYXJlIG1vZGlm
eWluZyB0aGUgUFRFIG9mCnRoaXMgcHBHVFQuIChCcmVha2luZyB0aGUgZm91cnRoIHdhbGwsIGFs
bG93aW5nIHRoZSBub24tcHJpdmlsZWdlZApjb250ZXh0IHRvIHVwZGF0ZSBpdHMgb3duIHBhZ2Ug
dGFibGVzLikKClRoaXMgdm0gY291bGQgYmUgZW5naW5lLT52bSwgYnV0IEkgZG9uJ3QgdGhpbmsg
d2UgYWN0dWFsbHkgc2F2ZSBhbnl0aGluZwpieSBrZWVwaW5nIHRoZW0gaW5kZXBlbmRlbnQsIGFu
ZCB3ZSBnYWluIHRoZSBzYWZldHkgb2Ygbm90IGZ1dHppbmcgd2l0aAp0aGUga2VybmVsX2NvbnRl
eHQuCgpSZW1pbmQgbWUgdGhhdCBrZXJuZWxfdm0gY2FuIHNoYXJlIHRoZWlyIHNjcmF0Y2hlcywg
ZXZlbiB3aGVuIHJlYWQtb25seQppcyBub3Qgc3VwcG9ydGVkLgoKPiAKPiA+ICsKPiA+ICsgICAg
IHJldHVybiAmdm0tPnZtOwo+ID4gKwo+ID4gK2Vycl92bToKPiA+ICsgICAgIGk5MTVfdm1fcHV0
KCZ2bS0+dm0pOwo+ID4gKyAgICAgcmV0dXJuIEVSUl9QVFIoZXJyKTsKPiA+ICt9Cj4gPiArCj4g
PiArc3RydWN0IGk5MTVfcmVxdWVzdCAqCj4gPiAraW50ZWxfY29udGV4dF9taWdyYXRlX3BhZ2Vz
KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
c3RydWN0IHNjYXR0ZXJsaXN0ICpzcmMsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgIHN0
cnVjdCBzY2F0dGVybGlzdCAqZHN0KQo+ID4gK3sKPiA+ICsgICAgIHN0cnVjdCBzZ3RfZG1hIGl0
X3MgPSBzZ19zZ3Qoc3JjKSwgaXRfZCA9IHNnX3NndChkc3QpOwo+ID4gKyAgICAgdTY0IGVuY29k
ZSA9IGNlLT52bS0+cHRlX2VuY29kZSgwLCBJOTE1X0NBQ0hFX0xMQywgMCk7IC8qIGZsYWdzICov
Cj4gPiArICAgICBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKPiA+ICsgICAgIGludCBsZW47Cj4g
PiArICAgICBpbnQgZXJyOwo+ID4gKwo+ID4gKyAgICAgLyogR0VNX0JVR19PTihjZS0+dm0gIT0g
bWlncmF0ZV92bSk7ICovCj4gPiArCj4gPiArICAgICBlcnIgPSBpbnRlbF9jb250ZXh0X3Bpbihj
ZSk7Cj4gPiArICAgICBpZiAoZXJyKQo+ID4gKyAgICAgICAgICAgICByZXR1cm4gRVJSX1BUUihl
cnIpOwo+ID4gKwo+ID4gKyAgICAgR0VNX0JVR19PTihjZS0+cmluZy0+c2l6ZSA8IFNaXzY0Syk7
Cj4gPiArCj4gPiArICAgICBkbyB7Cj4gPiArICAgICAgICAgICAgIHJxID0gaTkxNV9yZXF1ZXN0
X2NyZWF0ZShjZSk7Cj4gPiArICAgICAgICAgICAgIGlmIChJU19FUlIocnEpKSB7Cj4gPiArICAg
ICAgICAgICAgICAgICAgICAgZXJyID0gUFRSX0VSUihycSk7Cj4gPiArICAgICAgICAgICAgICAg
ICAgICAgZ290byBvdXRfY2U7Cj4gPiArICAgICAgICAgICAgIH0KPiA+ICsKPiA+ICsgICAgICAg
ICAgICAgbGVuID0gZW1pdF9wdGUocnEsICZpdF9zLCBlbmNvZGUsIDAsIENIVU5LX1NaKTsKPiA+
ICsgICAgICAgICAgICAgaWYgKGxlbiA8PSAwKSB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAg
ZXJyID0gbGVuOwo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGdvdG8gb3V0X3JxOwo+ID4gKyAg
ICAgICAgICAgICB9Cj4gPiArCj4gPiArICAgICAgICAgICAgIGlmIChlbWl0X3B0ZShycSwgJml0
X2QsIGVuY29kZSwgQ0hVTktfU1osIGxlbikgPCBsZW4pIHsKPiA+ICsgICAgICAgICAgICAgICAg
ICAgICBlcnIgPSAtRUlOVkFMOwo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGdvdG8gb3V0X3Jx
Owo+ID4gKyAgICAgICAgICAgICB9Cj4gCj4gU291cmNlIGFuZCBkZXN0aW5hdGlvbiBQVEVzIGlu
dG8gdGhlIHJlc2VydmVkIFswLCBzeiAqIDIpIGFyZWE/CgpZZXMuCgo+IAo+ID4gKwo+ID4gKyAg
ICAgICAgICAgICBlcnIgPSBycS0+ZW5naW5lLT5lbWl0X2ZsdXNoKHJxLCBFTUlUX0lOVkFMSURB
VEUpOwo+ID4gKyAgICAgICAgICAgICBpZiAoZXJyKQo+ID4gKyAgICAgICAgICAgICAgICAgICAg
IGdvdG8gb3V0X3JxOwo+ID4gKwo+ID4gKyAgICAgICAgICAgICBlcnIgPSBlbWl0X2NvcHkocnEs
IGxlbik7Cj4gCj4gUmlnaHQgc28gY29weSBjYW4gdXNlIGZpeGVkIG9mZnNldHMuCj4gCj4gPiAr
ICAgICAgICAgICAgIGlmIChlcnIpCj4gPiArICAgICAgICAgICAgICAgICAgICAgZ290byBvdXRf
cnE7Cj4gPiArCj4gPiArICAgICAgICAgICAgIGlmICghaXRfcy5zZykKPiA+ICsgICAgICAgICAg
ICAgICAgICAgICBpOTE1X3JlcXVlc3RfZ2V0KHJxKTsKPiA+ICtvdXRfcnE6Cj4gPiArICAgICAg
ICAgICAgIGk5MTVfcmVxdWVzdF9hZGQocnEpOwo+ID4gKyAgICAgICAgICAgICBpZiAoaXRfcy5z
ZykKPiA+ICsgICAgICAgICAgICAgICAgICAgICBjb25kX3Jlc2NoZWQoKTsKPiAKPiAgRnJvbSB3
aGF0IGNvbnRleHQgZG9lcyB0aGlzIHJ1bj8gTm8gcHJlZW1wdGlibGU/CgpIYXMgdG8gYmUgcHJv
Y2VzcyBjb250ZXh0OyBudW1lcm91cyBhbGxvY2F0aW9ucywgaW1wbGljaXQgd2FpdHMgKHRoYXQg
d2UKd2FudCB0byBhdm9pZCBpbiBwcmFjdGljZSksIGFuZCB0aGUgdGltZWxpbmUgKHBlci1jb250
ZXh0KSBtdXRleCB0bwpndWFyZCBhY2Nlc3MgdG8gdGhlIHJpbmdidWZmZXIuCgo+ID4gKyAgICAg
fSB3aGlsZSAoZXJyID09IDAgJiYgaXRfcy5zZyk7Cj4gPiArCj4gPiArb3V0X2NlOgo+ID4gKyAg
ICAgaW50ZWxfY29udGV4dF91bnBpbihjZSk7Cj4gPiArICAgICByZXR1cm4gZXJyID8gRVJSX1BU
UihlcnIpIDogcnE7Cj4gPiArfQo+ID4gKwo+ID4gK3N0cnVjdCBpOTE1X3JlcXVlc3QgKgo+ID4g
K2ludGVsX21pZ3JhdGVfcGFnZXMoc3RydWN0IGludGVsX21pZ3JhdGUgKm0sCj4gPiArICAgICAg
ICAgICAgICAgICBzdHJ1Y3Qgc2NhdHRlcmxpc3QgKnNyYywKPiA+ICsgICAgICAgICAgICAgICAg
IHN0cnVjdCBzY2F0dGVybGlzdCAqZHN0KQo+ID4gK3sKPiA+ICsgICAgIHN0cnVjdCBpbnRlbF9j
b250ZXh0ICpjZTsKPiA+ICsgICAgIHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxOwo+ID4gKwo+ID4g
KyAgICAgaWYgKCFtLT5jZSkKPiA+ICsgICAgICAgICAgICAgcmV0dXJuIEVSUl9QVFIoLUVOT0RF
Vik7Cj4gPiArCj4gPiArICAgICBjZSA9IGludGVsX21pZ3JhdGVfY3JlYXRlX2NvbnRleHQobSk7
Cj4gPiArICAgICBpZiAoSVNfRVJSKGNlKSkKPiA+ICsgICAgICAgICAgICAgY2UgPSBpbnRlbF9j
b250ZXh0X2dldChtLT5jZSk7Cj4gCj4gSWYgdmlydHVhbCBjYW5ub3QgYmUgY3JlYXRlIHVzZSBh
IGNvbW1vbiBwcmUtY3JlYXRlZCBjb250ZXh0PwoKWWVzLCBJIGFsc28gaGFkIHRoZSB0cnktdG8t
cGluIGFuZCBmYWxsYmFjayB0byB1c2luZyBzaW5nbGUgcGVybWEtcGlubmVkCmNvbnRleHQgYXQg
b25lIHBvaW50LiBUaGVyZSdzIGEgYmFsYW5jZSB0byBiZSBmb3VuZCBiZXR3ZWVuIGF1dG9tYWdp
YwpmYWlsdXJlIGhhbmRsaW5nIG9yIGVycm9yIHByb3BhZ2F0aW9uLgoKPiA+ICsgICAgIEdFTV9C
VUdfT04oSVNfRVJSKGNlKSk7Cj4gPiArCj4gPiArICAgICBycSA9IGludGVsX2NvbnRleHRfbWln
cmF0ZV9wYWdlcyhjZSwgc3JjLCBkc3QpOwo+ID4gKwo+ID4gKyAgICAgaW50ZWxfY29udGV4dF9w
dXQoY2UpOwo+IAo+IENvbnRleHQgaXMgc2luZ2xlIHVzZSBmb3Igc29tZSBjb25jcmV0ZSByZWFz
b24/CgpUaGUgaW50ZW5kZWQgdXNlIGNhc2UgaXMgZm9yIGVhY2ggY2xpZW50IHRvIGhhdmUgdGhl
aXIgb3duIGNvbnRleHQsIEkKd2FzIHRoaW5raW5nIGFsb25nIHRoZSBsaW5lcyBvZiBnZW1fY29u
dGV4dC5taWdyYXRlOyB3aXRoIHRoZSBnbG9iYWwgb25lCmZvciB1bmRlciBwcmVzc3VyZSBhbmQg
d2hlcmUgd2UgY2Fubm90IGxpbmsgYmFjayB0byBhIHVzZXIuCgpBcyBmb3Igc2luZ2xlLXVzZSwg
b25lIHVwb24gYSB0aW1lIEkgZXhwZWN0ZWQgdGhhdCB3ZSB3b3VsZCBoYXZlIGEKcG9vbCBvZiBj
b250ZXh0cyBmb3IgcmV1c2UuIEF0bSwgSSBsaWtlIHRoZSBpZGVhIG9mIGdlbV9jb250ZXh0Lm1p
Z3JhdGUKbW9yZSwgYnV0IGl0IGFsbCBkZXBlbmRzIG9uIGdldHRpbmcgY29udGV4dHMgZG93biBp
bnRvIHRoZSBnZXRfcGFnZXMuCgpCZWVuIHRoZXJlLCBkb25lIHRoYXQuIDp8Cgo+IEJ1dCBpdCBo
YXMgZmFsbGJhY2sgdG8gYSAKPiBzaW5nbGUgY29udGV4dCBzbyBub3Qgc3VyZS4gUGxhbiB0byBh
bGxvdyB1c2luZyB1c2VycyBjb250ZXh0LCBvciB0byAKPiBpbmhlcml0IHRoZWlyIHByaW9yaXR5
IHNvIGJlY2F1c2Ugb2YgdGhhdD8KCkV4YWN0bHksIGFsbG93IHRvIGNyZWF0ZSBhbmQgdXNlIGNv
bnRleHRzIHBlciB1c2VyIHRvIGFsbG93IGluZGl2aWR1YWwKcHJpb3JpdGllcyBhbmQgcmVzY2hl
ZHVsaW5nLgoKPiBTbyBJIGd1ZXNzIG92ZXJhbGwgdGhpcyBpcyBhbiBhbHRlcm5hdGl2ZSB0byBm
aXhlZCB2bWEgd2luZG93cyBidXQgY2FuIAo+IGJlIHBpcGVsaW5lZC4KPiAKPiBJIGRpZCBub3Qg
Z2V0IHRoZSBmb3JlYWNoIHBhcnQuIFdoeSBkbyB5b3UgaGF2ZSB0byBpdGVyYXRlIGV4aXN0aW5n
IAo+IGVudHJpZXMgdG8gYWRkIGVudHJpZXM/IENhbid0IHlvdSBqdXN0IHBvcHVsYXRlIHRoZSBy
ZXNlcnZlZCByYW5nZSBmcm9tIAo+IHRoZSBzdGFzaGVkIGJvIGRtYSBhZGRyZXNzZXM/CgpUaGlz
IGlzIGlkZW50aWNhbCB0byB0aGUgY3VycmVudCB3aW5kb3cgc2NoZW1lLCBleGNlcHQgdGhhdCBp
bnN0ZWFkIG9mCmhhdmluZyB0byBsb2NrIHRoZSBtaWdyYXRpb24gdm0gZm9yIHRoZSBkdXJhdGlv
biBvZiB0aGUgZW50aXJlIGV4ZWN1dGlvbiwKYXMgdGhlIHBwR1RUIGlzIG1hbmFnZWQgc3luY2hy
b25vdXNseSBvbiB0aGUgQ1BVIChhbmQgc28gb25seSBvbmUgdGhyZWFkCmNhbiB1c2UgdGhlIG1p
Z3JhdGlvbiB2bSBhbmQgbXVzdCB3YWl0IGZvciB0aGUgZXhlY3V0aW9uIHRvIGZpbmlzaApiZWZv
cmUgdGhlIG5leHQgY2FuIGFkanVzdCB0aGUgd2luZG93KSwgd2UgcHVzaCB0aGUgcHBHVFQgbWFu
YWdlbWVudCBpbnRvCnRoZSBHUFUgY29tbWFuZCBwYWNrZXQuIEVhY2ggY2xpZW50L2NvbnRleHQg
Y2FuIHRoZW4gYnVpbGQgdGhlaXIgY29weQpyZXF1ZXN0IGluIHBhcmFsbGVsIGFuZCBsZWF2ZSBp
dCB0byB0aGUgc2NoZWR1bGVyLiBBbmQgdGhlbiB3aXRoIHRoZQpmZW5jZSByZXR1cm5lZCwgc3Vi
c2VxdWVudCB1c2Ugb2YgdGhlIHBhZ2VzIGNhbiBhbHNvIGJlIHNjaGVkdWxlZAphc3luY2hyb25v
dXNseS4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
