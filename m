Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E75E3023A4
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 11:29:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88E786E04E;
	Mon, 25 Jan 2021 10:29:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B84D6E04B;
 Mon, 25 Jan 2021 10:29:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23691261-1500050 for multiple; Mon, 25 Jan 2021 10:29:44 +0000
MIME-Version: 1.0
In-Reply-To: <d1870062-0fa9-757d-d2a1-a3be9c9cefc0@linux.intel.com>
References: <20210122213404.1146945-1-chris@chris-wilson.co.uk>
 <20210122214909.1159801-1-chris@chris-wilson.co.uk>
 <d1870062-0fa9-757d-d2a1-a3be9c9cefc0@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
Date: Mon, 25 Jan 2021 10:29:45 +0000
Message-ID: <161157058584.27462.14123646650670921487@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915: Exercise sysfs client
 properties
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAyMS0wMS0yNSAxMDoyMDoxNSkKPiAKPiBPbiAyMi8w
MS8yMDIxIDIxOjQ5LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBXZSBzdG9yZSBldmVyeSBjbGll
bnQgbmFtZSwgcGlkIGFuZCBydW50aW1lIHVuZGVyIHN5c2ZzLiBCZXR0ZXIgY2hlY2sKPiA+IHRo
YXQgbWF0Y2hlcyB3aXRoIHRoZSBhY3R1YWwgY2xpZW50Lgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IC0tLQo+ID4gICBs
aWIvaWd0X3N5c2ZzLmMgICAgICAgICAgICB8ICAzNiArKysKPiA+ICAgbGliL2lndF9zeXNmcy5o
ICAgICAgICAgICAgfCAgIDMgKwo+ID4gICB0ZXN0cy9NYWtlZmlsZS5zb3VyY2VzICAgICB8ICAg
MyArCj4gPiAgIHRlc3RzL2k5MTUvc3lzZnNfY2xpZW50cy5jIHwgNDUwICsrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysKPiA+ICAgdGVzdHMvbWVzb24uYnVpbGQgICAgICAgICAg
fCAgIDEgKwo+ID4gICA1IGZpbGVzIGNoYW5nZWQsIDQ5MyBpbnNlcnRpb25zKCspCj4gPiAgIGNy
ZWF0ZSBtb2RlIDEwMDY0NCB0ZXN0cy9pOTE1L3N5c2ZzX2NsaWVudHMuYwo+ID4gCj4gPiBkaWZm
IC0tZ2l0IGEvbGliL2lndF9zeXNmcy5jIGIvbGliL2lndF9zeXNmcy5jCj4gPiBpbmRleCA2YWFm
ZTUzNDkuLmU3MzQxNDNiYSAxMDA2NDQKPiA+IC0tLSBhL2xpYi9pZ3Rfc3lzZnMuYwo+ID4gKysr
IGIvbGliL2lndF9zeXNmcy5jCj4gPiBAQCAtMzc4LDYgKzM3OCw0MiBAQCB1aW50MzJfdCBpZ3Rf
c3lzZnNfZ2V0X3UzMihpbnQgZGlyLCBjb25zdCBjaGFyICphdHRyKQo+ID4gICAgICAgcmV0dXJu
IHJlc3VsdDsKPiA+ICAgfQo+ID4gICAKPiA+ICsvKioKPiA+ICsgKiBpZ3Rfc3lzZnNfZ2V0X3U2
NDoKPiA+ICsgKiBAZGlyOiBkaXJlY3RvcnkgZm9yIHRoZSBkZXZpY2UgZnJvbSBpZ3Rfc3lzZnNf
b3BlbigpCj4gPiArICogQGF0dHI6IG5hbWUgb2YgdGhlIHN5c2ZzIG5vZGUgdG8gb3Blbgo+ID4g
KyAqCj4gPiArICogQ29udmVuaWVuY2Ugd3JhcHBlciB0byByZWFkIGEgdW5zaWduZWQgNjRiaXQg
aW50ZWdlciBmcm9tIGEgc3lzZnMgZmlsZS4KPiA+ICsgKgo+ID4gKyAqIFJldHVybnM6Cj4gPiAr
ICogVGhlIHZhbHVlIHJlYWQuCj4gPiArICovCj4gPiArdWludDY0X3QgaWd0X3N5c2ZzX2dldF91
NjQoaW50IGRpciwgY29uc3QgY2hhciAqYXR0cikKPiA+ICt7Cj4gPiArICAgICB1aW50NjRfdCBy
ZXN1bHQ7Cj4gPiArCj4gPiArICAgICBpZiAoaWd0X3N5c2ZzX3NjYW5mKGRpciwgYXR0ciwgIiUi
UFJJdTY0LCAmcmVzdWx0KSAhPSAxKQo+ID4gKyAgICAgICAgICAgICByZXR1cm4gMDsKPiA+ICsK
PiA+ICsgICAgIHJldHVybiByZXN1bHQ7Cj4gPiArfQo+ID4gKwo+ID4gKy8qKgo+ID4gKyAqIGln
dF9zeXNmc19zZXRfdTY0Ogo+ID4gKyAqIEBkaXI6IGRpcmVjdG9yeSBmb3IgdGhlIGRldmljZSBm
cm9tIGlndF9zeXNmc19vcGVuKCkKPiA+ICsgKiBAYXR0cjogbmFtZSBvZiB0aGUgc3lzZnMgbm9k
ZSB0byBvcGVuCj4gPiArICogQHZhbHVlOiB2YWx1ZSB0byBzZXQKPiA+ICsgKgo+ID4gKyAqIENv
bnZlbmllbmNlIHdyYXBwZXIgdG8gd3JpdGUgYSB1bnNpZ25lZCA2NGJpdCBpbnRlZ2VyIHRvIGEg
c3lzZnMgZmlsZS4KPiA+ICsgKgo+ID4gKyAqIFJldHVybnM6Cj4gPiArICogVHJ1ZSBpZiBzdWNj
ZXNzZnVsbHkgd3JpdHRlbgo+ID4gKyAqLwo+ID4gK2Jvb2wgaWd0X3N5c2ZzX3NldF91NjQoaW50
IGRpciwgY29uc3QgY2hhciAqYXR0ciwgdWludDY0X3QgdmFsdWUpCj4gPiArewo+ID4gKyAgICAg
cmV0dXJuIGlndF9zeXNmc19wcmludGYoZGlyLCBhdHRyLCAiJSJQUkl1NjQsIHZhbHVlKSA+IDA7
Cj4gPiArfQo+ID4gKwo+ID4gICAvKioKPiA+ICAgICogaWd0X3N5c2ZzX3NldF91MzI6Cj4gPiAg
ICAqIEBkaXI6IGRpcmVjdG9yeSBmb3IgdGhlIGRldmljZSBmcm9tIGlndF9zeXNmc19vcGVuKCkK
PiA+IGRpZmYgLS1naXQgYS9saWIvaWd0X3N5c2ZzLmggYi9saWIvaWd0X3N5c2ZzLmgKPiA+IGlu
ZGV4IDY0OTM1YTVjYS4uNTY3NDFhMGEzIDEwMDY0NAo+ID4gLS0tIGEvbGliL2lndF9zeXNmcy5o
Cj4gPiArKysgYi9saWIvaWd0X3N5c2ZzLmgKPiA+IEBAIC00Nyw2ICs0Nyw5IEBAIGludCBpZ3Rf
c3lzZnNfcHJpbnRmKGludCBkaXIsIGNvbnN0IGNoYXIgKmF0dHIsIGNvbnN0IGNoYXIgKmZtdCwg
Li4uKQo+ID4gICB1aW50MzJfdCBpZ3Rfc3lzZnNfZ2V0X3UzMihpbnQgZGlyLCBjb25zdCBjaGFy
ICphdHRyKTsKPiA+ICAgYm9vbCBpZ3Rfc3lzZnNfc2V0X3UzMihpbnQgZGlyLCBjb25zdCBjaGFy
ICphdHRyLCB1aW50MzJfdCB2YWx1ZSk7Cj4gPiAgIAo+ID4gK3VpbnQ2NF90IGlndF9zeXNmc19n
ZXRfdTY0KGludCBkaXIsIGNvbnN0IGNoYXIgKmF0dHIpOwo+ID4gK2Jvb2wgaWd0X3N5c2ZzX3Nl
dF91NjQoaW50IGRpciwgY29uc3QgY2hhciAqYXR0ciwgdWludDY0X3QgdmFsdWUpOwo+ID4gKwo+
ID4gICBib29sIGlndF9zeXNmc19nZXRfYm9vbGVhbihpbnQgZGlyLCBjb25zdCBjaGFyICphdHRy
KTsKPiA+ICAgYm9vbCBpZ3Rfc3lzZnNfc2V0X2Jvb2xlYW4oaW50IGRpciwgY29uc3QgY2hhciAq
YXR0ciwgYm9vbCB2YWx1ZSk7Cj4gPiAgIAo+ID4gZGlmZiAtLWdpdCBhL3Rlc3RzL01ha2VmaWxl
LnNvdXJjZXMgYi90ZXN0cy9NYWtlZmlsZS5zb3VyY2VzCj4gPiBpbmRleCAxYzIyN2U3NTAuLjNm
NjYzZmU3ZSAxMDA2NDQKPiA+IC0tLSBhL3Rlc3RzL01ha2VmaWxlLnNvdXJjZXMKPiA+ICsrKyBi
L3Rlc3RzL01ha2VmaWxlLnNvdXJjZXMKPiA+IEBAIC0xMTQsNiArMTE0LDkgQEAgVEVTVFNfcHJv
Z3MgPSBcCj4gPiAgIFRFU1RTX3Byb2dzICs9IGFwaV9pbnRlbF9iYgo+ID4gICBhcGlfaW50ZWxf
YmJfU09VUkNFUyA9IGk5MTUvYXBpX2ludGVsX2JiLmMKPiA+ICAgCj4gPiArVEVTVFNfcHJvZ3Mg
Kz0gc3lzZnNfY2xpZW50cwo+ID4gK3N5c2ZzX2NsaWVudHNfU09VUkNFUyA9IGk5MTUvc3lzZnNf
Y2xpZW50cy5jCj4gPiArCj4gPiAgIFRFU1RTX3Byb2dzICs9IHN5c2ZzX2RlZmF1bHRzCj4gPiAg
IHN5c2ZzX2RlZmF1bHRzX1NPVVJDRVMgPSBpOTE1L3N5c2ZzX2RlZmF1bHRzLmMKPiA+ICAgCj4g
PiBkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9zeXNmc19jbGllbnRzLmMgYi90ZXN0cy9pOTE1L3N5
c2ZzX2NsaWVudHMuYwo+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+IGluZGV4IDAwMDAwMDAw
MC4uYTc3YWRlYzZkCj4gPiAtLS0gL2Rldi9udWxsCj4gPiArKysgYi90ZXN0cy9pOTE1L3N5c2Zz
X2NsaWVudHMuYwo+ID4gQEAgLTAsMCArMSw0NTAgQEAKPiA+ICsvKiBTUERYLUxpY2Vuc2UtSWRl
bnRpZmllcjogTUlUICovCj4gPiArLyoKPiA+ICsgKiBDb3B5cmlnaHQgwqkgMjAyMSBJbnRlbCBD
b3Jwb3JhdGlvbgo+ID4gKyAqLwo+ID4gKwo+ID4gKyNpbmNsdWRlIDxjdHlwZS5oPgo+ID4gKyNp
bmNsdWRlIDxkaXJlbnQuaD4KPiA+ICsjaW5jbHVkZSA8ZXJybm8uaD4KPiA+ICsjaW5jbHVkZSA8
ZmNudGwuaD4KPiA+ICsjaW5jbHVkZSA8aW50dHlwZXMuaD4KPiA+ICsjaW5jbHVkZSA8c3lzL3N0
YXQuaD4KPiA+ICsjaW5jbHVkZSA8c3lzL3R5cGVzLmg+Cj4gPiArI2luY2x1ZGUgPHVuaXN0ZC5o
Pgo+ID4gKwo+ID4gKyNpbmNsdWRlICJkcm10ZXN0LmgiCj4gPiArI2luY2x1ZGUgImk5MTUvZ2Vt
LmgiCj4gPiArI2luY2x1ZGUgImk5MTUvZ2VtX2NvbnRleHQuaCIKPiA+ICsjaW5jbHVkZSAiaTkx
NS9nZW1fZW5naW5lX3RvcG9sb2d5LmgiCj4gPiArI2luY2x1ZGUgImlndF9hdXguaCIKPiA+ICsj
aW5jbHVkZSAiaWd0X2R1bW15bG9hZC5oIgo+ID4gKyNpbmNsdWRlICJpZ3Rfc3lzZnMuaCIKPiA+
ICsjaW5jbHVkZSAiaW9jdGxfd3JhcHBlcnMuaCIKPiA+ICsKPiA+ICtzdGF0aWMgdm9pZCBwaWRu
YW1lKGludCBpOTE1LCBpbnQgY2xpZW50cykKPiA+ICt7Cj4gPiArICAgICBzdHJ1Y3QgZGlyZW50
ICpkZTsKPiA+ICsgICAgIGludCBzdlsyXSwgcnZbMl07Cj4gPiArICAgICBjaGFyIGJ1ZlsyODBd
Owo+ID4gKyAgICAgaW50IG1lID0gLTE7Cj4gPiArICAgICBsb25nIGNvdW50Owo+ID4gKyAgICAg
cGlkX3QgcGlkOwo+ID4gKyAgICAgRElSICpkaXI7Cj4gPiArICAgICBpbnQgbGVuOwo+ID4gKwo+
ID4gKyAgICAgZGlyID0gZmRvcGVuZGlyKGR1cChjbGllbnRzKSk7Cj4gPiArICAgICBpZ3RfYXNz
ZXJ0KGRpcik7Cj4gPiArICAgICByZXdpbmRkaXIoZGlyKTsKPiA+ICsKPiA+ICsgICAgIGNvdW50
ID0gMDsKPiA+ICsgICAgIHdoaWxlICgoZGUgPSByZWFkZGlyKGRpcikpKSB7Cj4gPiArICAgICAg
ICAgICAgIGlmICghaXNkaWdpdChkZS0+ZF9uYW1lWzBdKSkKPiA+ICsgICAgICAgICAgICAgICAg
ICAgICBjb250aW51ZTsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgc25wcmludGYoYnVmLCBzaXpl
b2YoYnVmKSwgIiVzL25hbWUiLCBkZS0+ZF9uYW1lKTsKPiA+ICsgICAgICAgICAgICAgbGVuID0g
aWd0X3N5c2ZzX3JlYWQoY2xpZW50cywgYnVmLCBidWYsIHNpemVvZihidWYpKTsKPiA+ICsgICAg
ICAgICAgICAgaWd0X2Fzc2VydF9mKGxlbiA+IDAsICJmYWlsZWQgdG8gb3BlbiAnJXMvbmFtZSdc
biIsIGRlLT5kX25hbWUpOwo+ID4gKyAgICAgICAgICAgICBidWZbbGVuIC0gMV0gPSAnXDAnOwo+
ID4gKyAgICAgICAgICAgICBpZ3RfZGVidWcoIiVzOiAlc1xuIiwgZGUtPmRfbmFtZSwgYnVmKTsK
PiA+ICsKPiA+ICsgICAgICAgICAgICAgLyogSWdub3JlIGNsb3NlZCBjbGllbnRzIGNyZWF0ZWQg
YnkgZHJtX2RyaXZlcl9vcGVuKCkgKi8KPiA+ICsgICAgICAgICAgICAgaWYgKCpidWYgPT0gJzwn
KQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+ID4gKwo+ID4gKyAgICAgICAg
ICAgICBjbG9zZShtZSk7Cj4gPiArICAgICAgICAgICAgIG1lID0gb3BlbmF0KGNsaWVudHMsIGRl
LT5kX25hbWUsIE9fRElSRUNUT1JZIHwgT19SRE9OTFkpOwo+ID4gKyAgICAgICAgICAgICBjb3Vu
dCsrOwo+ID4gKyAgICAgfQo+ID4gKyAgICAgY2xvc2VkaXIoZGlyKTsKPiA+ICsKPiA+ICsgICAg
IC8qIFdlIGV4cGVjdCB0aGVyZSB0byBiZSBvbmx5IHRoZSBzaW5nbGUgY2xpZW50ICh1cykgcnVu
bmluZyAqLwo+ID4gKyAgICAgaWd0X2Fzc2VydF9lcShjb3VudCwgMSk7Cj4gPiArICAgICBpZ3Rf
YXNzZXJ0KG1lID49IDApOwo+ID4gKwo+ID4gKyAgICAgbGVuID0gaWd0X3N5c2ZzX3JlYWQobWUs
ICJuYW1lIiwgYnVmLCBzaXplb2YoYnVmKSk7Cj4gPiArICAgICBpZ3RfYXNzZXJ0KGxlbiA+IDAp
Owo+ID4gKyAgICAgYnVmW2xlbiAtIDFdID0gJ1wwJzsKPiAKPiBXZSBjb3VsZCBhZGQgYSBoZWxw
ZXIgbGlrZSBpZ3Rfc3lmc19zdHIgb3Igc29tZXRoaW5nIHNpbmNlIHRoaXMgcmVwZWF0cyAKPiBh
IGxvdCBidXQgbm90IGltcG9ydGFudCBzdHJhaWdodCBhd2F5LgoKLT4gc3RydGVybSgpCgo+IAo+
ID4gKwo+ID4gKyAgICAgaWd0X2luZm8oIk15IG5hbWU6ICVzXG4iLCBidWYpOwo+ID4gKyAgICAg
aWd0X2Fzc2VydChzdHJjbXAoYnVmLCBpZ3RfdGVzdF9uYW1lKCkpID09IDApOwo+ID4gKwo+ID4g
KyAgICAgaWd0X2Fzc2VydChwaXBlKHN2KSA9PSAwKTsKPiA+ICsgICAgIGlndF9hc3NlcnQocGlw
ZShydikgPT0gMCk7Cj4gPiArCj4gPiArICAgICAvKiBJZiBnaXZlIG91ciBmZCB0byBzb21lb25l
IGVsc2UsIHRoZXkgdGFrZSBvdmVyIG93bmVyc2hpcCBvZiBjbGllbnQgKi8KPiA+ICsgICAgIGln
dF9mb3JrKGNoaWxkLCAxKSB7Cj4gPiArICAgICAgICAgICAgIHJlYWQoc3ZbMF0sICZwaWQsIHNp
emVvZihwaWQpKTsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgZ2VtX2NvbnRleHRfZGVzdHJveShp
OTE1LCBnZW1fY29udGV4dF9jcmVhdGUoaTkxNSkpOwo+ID4gKwo+ID4gKyAgICAgICAgICAgICBw
aWQgPSBnZXRwaWQoKTsKPiA+ICsgICAgICAgICAgICAgd3JpdGUocnZbMV0sICZwaWQsIHNpemVv
ZihwaWQpKTsKPiA+ICsgICAgIH0KPiA+ICsgICAgIGNsb3NlKHN2WzBdKTsKPiA+ICsgICAgIGNs
b3NlKHJ2WzFdKTsKPiA+ICsKPiA+ICsgICAgIC8qIENoaWxkIGV4aXN0cywgYnV0IG5vdCB5ZXQg
cnVubmluZywgd2Ugc3RpbGwgb3duIHRoZSBjbGllbnQgKi8KPiA+ICsgICAgIGxlbiA9IGlndF9z
eXNmc19yZWFkKG1lLCAicGlkIiwgYnVmLCBzaXplb2YoYnVmKSk7Cj4gPiArICAgICBpZ3RfYXNz
ZXJ0KGxlbiA+IDApOwo+ID4gKyAgICAgYnVmW2xlbiAtIDFdID0gJ1wwJzsKPiA+ICsKPiA+ICsg
ICAgIHBpZCA9IGdldHBpZCgpOwo+ID4gKyAgICAgaWd0X2luZm8oIk15IHBpZDogJXNcbiIsIGJ1
Zik7Cj4gPiArICAgICBpZ3RfYXNzZXJ0X2VxKGF0b2koYnVmKSwgcGlkKTsKPiA+ICsKPiA+ICsg
ICAgIC8qIFJlbGVhc2UgYW5kIHdhaXQgZm9yIHRoZSBjaGlsZCAqLwo+ID4gKyAgICAgaWd0X2Fz
c2VydF9lcSh3cml0ZShzdlsxXSwgJnBpZCwgc2l6ZW9mKHBpZCkpLCBzaXplb2YocGlkKSk7Cj4g
PiArICAgICBpZ3RfYXNzZXJ0X2VxKHJlYWQocnZbMF0sICZwaWQsIHNpemVvZihwaWQpKSwgc2l6
ZW9mKHBpZCkpOwo+ID4gKwo+ID4gKyAgICAgLyogTm93IGNoaWxkIG93bnMgdGhlIGNsaWVudCBh
bmQgcGlkIHNob3VsZCBiZSB1cGRhdGVkIHRvIG1hdGNoICovCj4gPiArICAgICBsZW4gPSBpZ3Rf
c3lzZnNfcmVhZChtZSwgInBpZCIsIGJ1Ziwgc2l6ZW9mKGJ1ZikpOwo+ID4gKyAgICAgaWd0X2Fz
c2VydChsZW4gPiAwKTsKPiA+ICsgICAgIGJ1ZltsZW4gLSAxXSA9ICdcMCc7Cj4gPiArCj4gPiAr
ICAgICBpZ3RfaW5mbygiTmV3IHBpZDogJXNcbiIsIGJ1Zik7Cj4gPiArICAgICBpZ3RfYXNzZXJ0
X2VxKGF0b2koYnVmKSwgcGlkKTsKPiA+ICsgICAgIGlndF93YWl0Y2hpbGRyZW4oKTsKPiA+ICsK
PiA+ICsgICAgIC8qIENoaWxkIGhhcyBkZWZpbml0ZWx5IGdvbmUsIGJ1dCB0aGUgY2xpZW50IHNo
b3VsZCByZW1haW4gKi8KPiA+ICsgICAgIGxlbiA9IGlndF9zeXNmc19yZWFkKG1lLCAicGlkIiwg
YnVmLCBzaXplb2YoYnVmKSk7Cj4gPiArICAgICBpZ3RfYXNzZXJ0KGxlbiA+IDApOwo+ID4gKyAg
ICAgYnVmW2xlbiAtIDFdID0gJ1wwJzsKPiA+ICsKPiA+ICsgICAgIGlndF9pbmZvKCJPbGQgcGlk
OiAlc1xuIiwgYnVmKTsKPiA+ICsgICAgIGlndF9hc3NlcnRfZXEoYXRvaShidWYpLCBwaWQpOwo+
IAo+ICJPbGQgcGlkIiBhcyBpbiBwaWQgb2YgdGhlIGNoaWxkIHdoaWNoIGV4aXRlZC4gRG8gd2Ug
aGF2ZSBhIElHVCBoZWxwZXIgCj4gdG8gY3Jvc3MgY2hlY2sgd2hhdCB0aGUgY2hpbGQgc2VudCB2
aWEgcGlwZSBtYXRjaGVzIHdoYXQgZm9yayBzYWlkPyBPciAKPiB3aGF0IHdhaXRwaWQgcmVwb3J0
ZWQgYXMgZXhpdGVkLgoKRm9yIHRoZSBzYWtlIG9mIHRoZSB0ZXN0LCB5b3UgY2FuIGp1c3Qgc2Ny
b2xsIGJhY2sgYW5kIGNoZWNrIDspCiAKPiBBbHNvLCB3b3VsZCBpdCByZXZlcnQgYmFjayB0byBw
YXJlbnQgcGlkIGlmIHBhcmVudCBkaWQgb25lIGNvbnRleHQgCj4gY3JlYXRlIGF0IHRoaXMgcG9p
bnQ/IENvdWxkIGJlIHdvcnRoIGNoZWNraW5nIGlmIHNvLgoKSSBhZGRlZCBzdWNoIGEgdGVzdC4K
IAo+ID4gKwo+ID4gKyAgICAgY2xvc2Uoc3ZbMV0pOwo+ID4gKyAgICAgY2xvc2UocnZbMF0pOwo+
ID4gKyAgICAgY2xvc2UobWUpOwo+ID4gK30KPiA+ICsKPiA+ICtzdGF0aWMgbG9uZyBjb3VudF9j
bGllbnRzKGludCBjbGllbnRzKQo+ID4gK3sKPiA+ICsgICAgIHN0cnVjdCBkaXJlbnQgKmRlOwo+
ID4gKyAgICAgbG9uZyBjb3VudCA9IDA7Cj4gPiArICAgICBjaGFyIGJ1ZlsyODBdOwo+ID4gKyAg
ICAgRElSICpkaXI7Cj4gPiArCj4gPiArICAgICBkaXIgPSBmZG9wZW5kaXIoZHVwKGNsaWVudHMp
KTsKPiA+ICsgICAgIGlndF9hc3NlcnQoZGlyKTsKPiA+ICsgICAgIHJld2luZGRpcihkaXIpOwo+
ID4gKwo+ID4gKyAgICAgd2hpbGUgKChkZSA9IHJlYWRkaXIoZGlyKSkpIHsKPiA+ICsgICAgICAg
ICAgICAgaW50IGxlbjsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgaWYgKCFpc2RpZ2l0KGRlLT5k
X25hbWVbMF0pKQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOwo+ID4gKwo+ID4g
KyAgICAgICAgICAgICBzbnByaW50ZihidWYsIHNpemVvZihidWYpLCAiJXMvbmFtZSIsIGRlLT5k
X25hbWUpOwo+ID4gKyAgICAgICAgICAgICBsZW4gPSBpZ3Rfc3lzZnNfcmVhZChjbGllbnRzLCBi
dWYsIGJ1Ziwgc2l6ZW9mKGJ1ZikpOwo+ID4gKyAgICAgICAgICAgICBpZiAobGVuIDwgMCkKPiA+
ICsgICAgICAgICAgICAgICAgICAgICBjb250aW51ZTsKPiA+ICsKPiA+ICsgICAgICAgICAgICAg
Y291bnQgKz0gKmJ1ZiAhPSAnPCc7Cj4gPiArICAgICB9Cj4gPiArICAgICBjbG9zZWRpcihkaXIp
Owo+ID4gKwo+ID4gKyAgICAgcmV0dXJuIGNvdW50Owo+ID4gK30KPiA+ICsKPiA+ICtzdGF0aWMg
dm9pZCBjcmVhdGUoaW50IGk5MTUsIGludCBjbGllbnRzKQo+ID4gK3sKPiA+ICsgICAgIGludCBm
ZFsxNl07Cj4gPiArCj4gPiArICAgICAvKiBFYWNoIG5ldyBvcGVuKCIvZGV2L2RyaS9jYXJkTiIp
IGlzIGEgbmV3IGNsaWVudCAqLwo+ID4gKyAgICAgaWd0X2Fzc2VydF9lcShjb3VudF9jbGllbnRz
KGNsaWVudHMpLCAxKTsKPiA+ICsgICAgIGZvciAoaW50IGkgPSAwOyBpIDwgQVJSQVlfU0laRShm
ZCk7IGkrKykgewo+ID4gKyAgICAgICAgICAgICBmZFtpXSA9IGdlbV9yZW9wZW5fZHJpdmVyKGk5
MTUpOwo+ID4gKyAgICAgICAgICAgICBpZ3RfYXNzZXJ0X2VxKGNvdW50X2NsaWVudHMoY2xpZW50
cyksIGkgKyAyKTsKPiA+ICsgICAgIH0KPiA+ICsKPiA+ICsgICAgIGZvciAoaW50IGkgPSAwOyBp
IDwgQVJSQVlfU0laRShmZCk7IGkrKykKPiA+ICsgICAgICAgICAgICAgY2xvc2UoZmRbaV0pOwo+
ID4gKwo+ID4gKyAgICAgLyogQ2xlYW51cCBkZWxheWVkIGJlaGluZCByY3UgKi8KPiA+ICsgICAg
IGlndF91bnRpbF90aW1lb3V0KDMwKSB7Cj4gPiArICAgICAgICAgICAgIHVzbGVlcCgwKTsKPiAK
PiBJbnRlbnRpb24gdG8geWllbGQ/CgpJZiB5b3UgdGhpbmsgdGhhdCdzIG1vcmUgbGlrZWx5IHRv
IHdvcmsgOikKCj4gCj4gPiArICAgICAgICAgICAgIGlmIChjb3VudF9jbGllbnRzKGNsaWVudHMp
ID09IDEpCj4gPiArICAgICAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gPiArICAgICAgICAgICAg
IHVzbGVlcCgxMDAwMCk7Cj4gPiArICAgICB9Cj4gPiArICAgICBpZ3RfYXNzZXJ0X2VxKGNvdW50
X2NsaWVudHMoY2xpZW50cyksIDEpOwo+IAo+IEEgdmFyaWFudCB3aGljaCBjbG9zZXMgYSBzaW5n
bGUgcmFuZG9tIGNsaWVudCBhbmQgZG9lcyBhIGNyb3NzIGNoZWNrIGluIAo+IGV2ZXJ5IGxvb3Ag
aXRlcmF0aW9uIGNvdWxkIGJlIHVzZWZ1bCB0aGVuIG9wZW5zIGEgbmV3IGNsaWVudCBjaGVja2lu
ZyAKPiBpZCdzIGFyZSB1bmlxdWUuIENhbiBiZSBhZGRlZCBsYXRlci4KCk9uZSBub3QtcmVjeWNs
aW5nIHRlc3QgY29taW5nIHVwLgoKPiA+ICsgICAgIGRlbGF5ID0gLTUwMDAwMDsgLyogNTAwdXMg
c2xhY2sgKi8KPiA+ICsgICAgIG1lbXNldChvbGQsIDAsIHNpemVvZihvbGQpKTsKPiA+ICsgICAg
IGZvciAoaW50IHBhc3MgPSAwOyBwYXNzIDwgNTsgcGFzcysrKSB7Cj4gPiArICAgICAgICAgICAg
IGRlbGF5ICs9IG1lYXN1cmVkX3VzbGVlcCgxMDAwKTsKPiA+ICsgICAgICAgICAgICAgaWd0X2Rl
YnVnKCJkZWxheTogJSciUFJJdTY0Im5zXG4iLCBkZWxheSk7Cj4gPiArCj4gPiArICAgICAgICAg
ICAgIC8qIENoZWNrIHRoYXQgd2UgYWNjdW11bGF0ZSB0aGUgcnVudGltZSwgd2hpbGUgYWN0aXZl
ICovCj4gPiArICAgICAgICAgICAgIGlndF9hc3NlcnRfZXEocmVhZF9ydW50aW1lKG1lLCBhY3Rp
dmUpLCAxKTsKPiA+ICsgICAgICAgICAgICAgaWd0X2luZm8oImFjdGl2ZTFbJWRdOiAlJyJQUkl1
NjQibnNcbiIsIHBhc3MsIGFjdGl2ZVtlLT5jbGFzc10pOwo+ID4gKyAgICAgICAgICAgICBpZ3Rf
YXNzZXJ0KGFjdGl2ZVtlLT5jbGFzc10gPiBvbGRbZS0+Y2xhc3NdKTsgLyogbW9ub3RvbmljICov
Cj4gPiArICAgICAgICAgICAgIGlndF9hc3NlcnQoYWN0aXZlW2UtPmNsYXNzXSA+IGRlbGF5KTsg
Lyogd2l0aGluIHJlYXNvbiAqLwo+IAo+IFNlbmRpbmcgZ3JlZXRpbmdzIHRvIEd1QyBzb29uLiBX
aWxsIG5lZWQgdG8gZW1pdCBhIGhpZ2ggcHJpbyBwdWxzZSB0byAKPiBwcmVlbXB0IHRoZSBzcGlu
bmVyLCBtYXliZSwgbm8sIHByb2JhYmx5IHdvbid0IGJlIGVub3VnaC4KCkV4YWN0bHkuIFRoZSBH
dUMgZmFsbHMgZmFyIHNob3J0IG9mIHdoYXQgd2UgbmVlZCBhdG0uIEEgcHVsc2UgZnJvbSBldmVy
eQpzeXNmcyByZWFkKCkgYW5kIHdhaXQgZm9yIHB1bHNlIGNvbXBsZXRpb24gYmVmb3JlIHJldHVy
bmluZz8gV2hhdApoYXBwZW5zIGZvciBub24tcHJlZW1wdGlibGUgd29ya2xvYWRzPwoKPiA+ICsg
ICAgIGRlbGF5ID0gLTUwMDAwMDsgLyogNTAwdXMgc2xhY2sgKi8KPiA+ICsgICAgIG1lbXNldChv
bGQsIDAsIHNpemVvZihvbGQpKTsKPiA+ICsgICAgIGZvciAoaW50IHBhc3MgPSAwOyBwYXNzIDwg
NTsgcGFzcysrKSB7Cj4gPiArICAgICAgICAgICAgIGRlbGF5ICs9IG1lYXN1cmVkX3VzbGVlcCgx
MDAwKTsKPiA+ICsgICAgICAgICAgICAgaWd0X2RlYnVnKCJkZWxheTogJSciUFJJdTY0Im5zXG4i
LCBkZWxheSk7Cj4gPiArCj4gPiArICAgICAgICAgICAgIC8qIENoZWNrIHRoYXQgd2UgYWNjdW11
bGF0ZSB0aGUgcnVudGltZSwgd2hpbGUgYWN0aXZlICovCj4gPiArICAgICAgICAgICAgIGlndF9h
c3NlcnRfZXEocmVhZF9ydW50aW1lKG1lLCBhY3RpdmUpLCBleHBlY3QpOwo+ID4gKyAgICAgICAg
ICAgICBmb3IgKGludCBpID0gMDsgaSA8IEFSUkFZX1NJWkUoYWN0aXZlKTsgaSsrKSB7Cj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgaWYgKCFhY3RpdmVbaV0pCj4gPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBjb250aW51ZTsKPiAKPiBEb24ndCB5b3Ugd2FudCBkbyBza2lwIGJhc2Vk
IG9uIHRoZSBiaXRtYXAgaW4gY2xhc3NlcyBoZXJlPyBBbHRob3VnaCB0aGUgCj4gYXNzZXJ0IG9u
IGV4cGVjdCB3aWxsIGNhdGNoIGZhaWx1cmVzIHRvIGFjY291bnQgc29tZSBjbGFzcyBhbHJlYWR5
IHNvIAo+IG9wdGlvbmFsIEkgZ3Vlc3MuCgpCaXRtYXAgY2FtZSBhZnRlcndhcmRzLCBhbmQgaW5k
ZWVkIGl0IHNob3VsZCBoYXZlIHJlcGxhY2VkIHRoZSAhYWN0aXZlW2ldLgotQ2hyaXMKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
