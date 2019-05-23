Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB91C27A40
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 12:21:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA63489D7B;
	Thu, 23 May 2019 10:21:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F18FF89D61
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2019 10:21:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16652624-1500050 for multiple; Thu, 23 May 2019 11:21:42 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190523064933.23604-1-chris@chris-wilson.co.uk>
 <d482e1a9-a485-d513-bb7d-cb2e39f7bb24@linux.intel.com>
 <f128a09c-1d1d-bea7-1487-3b3e766da3be@linux.intel.com>
 <155860607057.28319.10417661639080544175@skylake-alporthouse-com>
 <155860646158.28319.15538918828538407611@skylake-alporthouse-com>
 <094ffecd-6b3c-d339-052c-9809e72428ba@linux.intel.com>
In-Reply-To: <094ffecd-6b3c-d339-052c-9809e72428ba@linux.intel.com>
Message-ID: <155860690115.28319.401677549029403028@skylake-alporthouse-com>
Date: Thu, 23 May 2019 11:21:41 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gtt: Always acquire struct_mutex
 for gen6_ppgtt_cleanup
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0yMyAxMToxOTozMCkKPiAKPiBPbiAyMy8w
NS8yMDE5IDExOjE0LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIENocmlzIFdpbHNv
biAoMjAxOS0wNS0yMyAxMTowNzo1MCkKPiA+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5
LTA1LTIzIDExOjAxOjA5KQo+ID4+Pgo+ID4+PiBPbiAyMy8wNS8yMDE5IDEwOjIxLCBUdnJ0a28g
VXJzdWxpbiB3cm90ZToKPiA+Pj4+Cj4gPj4+PiBPbiAyMy8wNS8yMDE5IDA3OjQ5LCBDaHJpcyBX
aWxzb24gd3JvdGU6Cj4gPj4+Pj4gV2UgcmVhcnJhbmdlZCB0aGUgdm1fZGVzdHJveV9pb2N0bCB0
byBhdm9pZCB0YWtpbmcgc3RydWN0X211dGV4LCBsaXR0bGUKPiA+Pj4+PiByZWFsaXNpbmcgdGhh
dCBidXJpZWQgdW5kZXJuZWF0aCB0aGUgZ2VuNiBwcGd0dCByZWxlYXNlIHBhdGggd2FzIGEKPiA+
Pj4+PiBzdHJ1Y3RfbXV0ZXggcmVxdWlyZW1lbnQgKHRvIHJlbW92ZSBpdHMgR0dUVCB2bWEpLiBV
bnRpbCB0aGF0Cj4gPj4+Pj4gc3RydWN0X211dGV4IGlzIHZhbnF1aXNoZWQsIHRha2UgYSBkZXRv
dXIgaW4gZ2VuNl9wcGd0dF9jbGVhbnVwIHRvIGRvCj4gPj4+Pj4gdGhlIGk5MTVfdm1hX2Rlc3Ry
b3kgZnJvbSBpbnNpZGUgYSB3b3JrZXIgdW5kZXIgdGhlIHN0cnVjdF9tdXRleC4KPiA+Pj4+Pgo+
ID4+Pj4+IDw0PiBbMjU3Ljc0MDE2MF0gV0FSTl9PTihkZWJ1Z19sb2NrcyAmJgo+ID4+Pj4+ICFs
b2NrX2lzX2hlbGQoJigmdm1hLT52bS0+aTkxNS0+ZHJtLnN0cnVjdF9tdXRleCktPmRlcF9tYXAp
KQo+ID4+Pj4+IDw0PiBbMjU3Ljc0MDIxM10gV0FSTklORzogQ1BVOiAzIFBJRDogMTUwNyBhdAo+
ID4+Pj4+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdm1hLmM6ODQxIGk5MTVfdm1hX2Rlc3Ry
b3krMHgxYWUvMHgzYTAgW2k5MTVdCj4gPj4+Pj4gPDQ+IFsyNTcuNzQwMjE0XSBNb2R1bGVzIGxp
bmtlZCBpbjogc25kX2hkYV9jb2RlY19oZG1pIGk5MTUKPiA+Pj4+PiB4ODZfcGtnX3RlbXBfdGhl
cm1hbCBtZWlfaGRjcCBjb3JldGVtcCBjcmN0MTBkaWZfcGNsbXVsIGNyYzMyX3BjbG11bAo+ID4+
Pj4+IGdoYXNoX2NsbXVsbmlfaW50ZWwgc25kX2hkYV9jb2RlY19yZWFsdGVrIHNuZF9oZGFfY29k
ZWNfZ2VuZXJpYwo+ID4+Pj4+IHNuZF9oZGFfaW50ZWwgc25kX2hkYV9jb2RlYyBzbmRfaHdkZXAg
c25kX2hkYV9jb3JlIHI4MTY5IHJlYWx0ZWsKPiA+Pj4+PiBzbmRfcGNtIG1laV9tZSBtZWkgcHJp
bWVfbnVtYmVycyBscGNfaWNoCj4gPj4+Pj4gPDQ+IFsyNTcuNzQwMjI0XSBDUFU6IDMgUElEOiAx
NTA3IENvbW06IGdlbV92bV9jcmVhdGUgVGFpbnRlZDogRwo+ID4+Pj4+IFXCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIDUuMi4wLXJjMS1DSS1DSV9EUk1fNjExOCsgIzEKPiA+Pj4+PiA8ND4gWzI1Ny43
NDAyMjVdIEhhcmR3YXJlIG5hbWU6IE1TSSBNUy03OTI0L1o5N00tRzQzKE1TLTc5MjQpLCBCSU9T
Cj4gPj4+Pj4gVjEuMTIgMDIvMTUvMjAxNgo+ID4+Pj4+IDw0PiBbMjU3Ljc0MDI0OV0gUklQOiAw
MDEwOmk5MTVfdm1hX2Rlc3Ryb3krMHgxYWUvMHgzYTAgW2k5MTVdCj4gPj4+Pj4gPDQ+IFsyNTcu
NzQwMjUwXSBDb2RlOiAwMCAwMCAwMCA0OCA4MSBjNyBjOCAwMCAwMCAwMCBlOCBlZCAwOCBmMCBl
MCA4NQo+ID4+Pj4+IGMwIDBmIDg1IDc4IGZlIGZmIGZmIDQ4IGM3IGM2IGU4IGVjIDMwIGEwIDQ4
IGM3IGM3IGRhIDU1IDMzIGEwIGU4IDQyCj4gPj4+Pj4gOGMgZTkgZTAgPDBmPiAwYiA4YiA4MyA0
MCAwMSAwMCAwMCA4NSBjMCAwZiA4NCA2MyBmZSBmZiBmZiA0OCBjNyBjMSBjMQo+ID4+Pj4+IDU4
IDMzCj4gPj4+Pj4gPDQ+IFsyNTcuNzQwMjUxXSBSU1A6IDAwMTg6ZmZmZmM5MDAwMGFhZmM2OCBF
RkxBR1M6IDAwMDEwMjgyCj4gPj4+Pj4gPDQ+IFsyNTcuNzQwMjUyXSBSQVg6IDAwMDAwMDAwMDAw
MDAwMDAgUkJYOiBmZmZmODg4M2Y3OTU3ODQwIFJDWDoKPiA+Pj4+PiAwMDAwMDAwMDAwMDAwMDAz
Cj4gPj4+Pj4gPDQ+IFsyNTcuNzQwMjUzXSBSRFg6IDAwMDAwMDAwMDAwMDAwNDYgUlNJOiAwMDAw
MDAwMDAwMDAwMDA2IFJESToKPiA+Pj4+PiBmZmZmZmZmZjgyMTJkMWI5Cj4gPj4+Pj4gPDQ+IFsy
NTcuNzQwMjU0XSBSQlA6IGZmZmZjOTAwMDBhYWZjYzggUjA4OiAwMDAwMDAwMDAwMDAwMDAwIFIw
OToKPiA+Pj4+PiAwMDAwMDAwMDAwMDAwMDAwCj4gPj4+Pj4gPDQ+IFsyNTcuNzQwMjU1XSBSMTA6
IDAwMDAwMDAwMDAwMDAwMDAgUjExOiAwMDAwMDAwMDAwMDAwMDAwIFIxMjoKPiA+Pj4+PiBmZmZm
ODg4M2Y0ZDVjMmE4Cj4gPj4+Pj4gPDQ+IFsyNTcuNzQwMjU2XSBSMTM6IGZmZmY4ODgzZjRkNWQ2
ODAgUjE0OiBmZmZmODg4M2Y0ZDVjNjY4IFIxNToKPiA+Pj4+PiBmZmZmODg4M2Y0ZDVjMmYwCj4g
Pj4+Pj4gPDQ+IFsyNTcuNzQwMjU3XSBGUzrCoCAwMDAwN2Y3NzdmYThmZTQwKDAwMDApIEdTOmZm
ZmY4ODg0MGY3ODAwMDAoMDAwMCkKPiA+Pj4+PiBrbmxHUzowMDAwMDAwMDAwMDAwMDAwCj4gPj4+
Pj4gPDQ+IFsyNTcuNzQwMjU4XSBDUzrCoCAwMDEwIERTOiAwMDAwIEVTOiAwMDAwIENSMDogMDAw
MDAwMDA4MDA1MDAzMwo+ID4+Pj4+IDw0PiBbMjU3Ljc0MDI1OV0gQ1IyOiAwMDAwN2Y3NzdmNjUy
MmIwIENSMzogMDAwMDAwMDNjNjEyYTAwNiBDUjQ6Cj4gPj4+Pj4gMDAwMDAwMDAwMDE2MDZlMAo+
ID4+Pj4+IDw0PiBbMjU3Ljc0MDI2MF0gQ2FsbCBUcmFjZToKPiA+Pj4+PiA8ND4gWzI1Ny43NDAy
ODNdwqAgZ2VuNl9wcGd0dF9jbGVhbnVwKzB4MjUvMHg2MCBbaTkxNV0KPiA+Pj4+PiA8ND4gWzI1
Ny43NDAzMDZdwqAgaTkxNV9wcGd0dF9yZWxlYXNlKzB4MTAyLzB4MjkwIFtpOTE1XQo+ID4+Pj4+
IDw0PiBbMjU3Ljc0MDMzMF3CoCBpOTE1X2dlbV92bV9kZXN0cm95X2lvY3RsKzB4N2MvMHhhMCBb
aTkxNV0KPiA+Pj4+PiA8ND4gWzI1Ny43NDAzNzZdwqAgPyBpOTE1X2dlbV92bV9jcmVhdGVfaW9j
dGwrMHgxNjAvMHgxNjAgW2k5MTVdCj4gPj4+Pj4gPDQ+IFsyNTcuNzQwMzc5XcKgIGRybV9pb2N0
bF9rZXJuZWwrMHg4My8weGYwCj4gPj4+Pj4gPDQ+IFsyNTcuNzQwMzgyXcKgIGRybV9pb2N0bCsw
eDJmMy8weDNiMAo+ID4+Pj4+IDw0PiBbMjU3Ljc0MDQyMl3CoCA/IGk5MTVfZ2VtX3ZtX2NyZWF0
ZV9pb2N0bCsweDE2MC8weDE2MCBbaTkxNV0KPiA+Pj4+PiA8ND4gWzI1Ny43NDA0MjZdwqAgPyBf
cmF3X3NwaW5fdW5sb2NrX2lycXJlc3RvcmUrMHgzOS8weDYwCj4gPj4+Pj4gPDQ+IFsyNTcuNzQw
NDMwXcKgIGRvX3Zmc19pb2N0bCsweGEwLzB4NmUwCj4gPj4+Pj4gPDQ+IFsyNTcuNzQwNDMzXcKg
ID8gbG9ja19hY3F1aXJlKzB4YTYvMHgxYzAKPiA+Pj4+PiA8ND4gWzI1Ny43NDA0MzZdwqAgPyBf
X3Rhc2tfcGlkX25yX25zKzB4YjkvMHgxZjAKPiA+Pj4+PiA8ND4gWzI1Ny43NDA0MzldwqAga3N5
c19pb2N0bCsweDM1LzB4NjAKPiA+Pj4+PiA8ND4gWzI1Ny43NDA0NDFdwqAgX194NjRfc3lzX2lv
Y3RsKzB4MTEvMHgyMAo+ID4+Pj4+IDw0PiBbMjU3Ljc0MDQ0M13CoCBkb19zeXNjYWxsXzY0KzB4
NTUvMHgxYzAKPiA+Pj4+PiA8ND4gWzI1Ny43NDA0NDVdwqAgZW50cnlfU1lTQ0FMTF82NF9hZnRl
cl9od2ZyYW1lKzB4NDkvMHhiZQo+ID4+Pj4+Cj4gPj4+Pj4gUmVmZXJlbmNlczogZTA2OTVkYjcy
OThlICgiZHJtL2k5MTU6IENyZWF0ZS9kZXN0cm95IFZNIChwcEdUVCkgZm9yIHVzZQo+ID4+Pj4+
IHdpdGggY29udGV4dHMiKQo+ID4+Pj4+IEZpeGVzOiA3ZjNmMzE3YTY2Y2EgKCJkcm0vaTkxNTog
UmVzdG9yZSBjb250cm9sIG92ZXIgcHBndHQgZm9yIGNvbnRleHQKPiA+Pj4+PiBjcmVhdGlvbiBB
QkkiKQo+ID4+Pj4+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgo+ID4+Pj4+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50
ZWwuY29tPgo+ID4+Pj4+IC0tLQo+ID4+Pj4+ICDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbV9ndHQuYyB8IDMyICsrKysrKysrKysrKysrKysrKysrKysrKysrKy0tCj4gPj4+Pj4gIMKg
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5oIHzCoCAyICsrCj4gPj4+Pj4gIMKg
IDIgZmlsZXMgY2hhbmdlZCwgMzIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+Pj4+
Pgo+ID4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQu
Ywo+ID4+Pj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiA+Pj4+PiBp
bmRleCA5ZWQ0MWFlZmI0NTYuLjVhMzUwMjUxNzY2YSAxMDA2NDQKPiA+Pj4+PiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+ID4+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4gPj4+Pj4gQEAgLTE4MjgsMTEgKzE4MjgsMzMgQEAg
c3RhdGljIHZvaWQgZ2VuNl9wcGd0dF9mcmVlX3BkKHN0cnVjdAo+ID4+Pj4+IGdlbjZfaHdfcHBn
dHQgKnBwZ3R0KQo+ID4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmcmVlX3B0KCZw
cGd0dC0+YmFzZS52bSwgcHQpOwo+ID4+Pj4+ICDCoCB9Cj4gPj4+Pj4gK3N0cnVjdCBnZW42X3Bw
Z3R0X2NsZWFudXBfd29yayB7Cj4gPj4+Pj4gK8KgwqDCoCBzdHJ1Y3Qgd29ya19zdHJ1Y3QgYmFz
ZTsKPiA+Pj4+PiArwqDCoMKgIHN0cnVjdCBpOTE1X3ZtYSAqdm1hOwo+ID4+Pj4+ICt9Owo+ID4+
Pj4+ICsKPiA+Pj4+PiArc3RhdGljIHZvaWQgZ2VuNl9wcGd0dF9jbGVhbnVwX3dvcmsoc3RydWN0
IHdvcmtfc3RydWN0ICp3cmspCj4gPj4+Pj4gK3sKPiA+Pj4+PiArwqDCoMKgIHN0cnVjdCBnZW42
X3BwZ3R0X2NsZWFudXBfd29yayAqd29yayA9Cj4gPj4+Pj4gK8KgwqDCoMKgwqDCoMKgIGNvbnRh
aW5lcl9vZih3cmssIHR5cGVvZigqd29yayksIGJhc2UpOwo+ID4+Pj4+ICvCoMKgwqAgc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB3b3JrLT52bWEtPnZtLT5pOTE1Owo+ID4+Pj4KPiA+
Pj4+IERvZXMgdGhlIHNlcXVlbmNlIG5lZWQgYW4gZXh0cmEgcmVmZXJlbmNlIG9uIHBwZ3R0IGZv
ciBkZXJlZmVyZW5jaW5nIHRoZQo+ID4+Pj4gdm0gaGVyZT8gQWx0ZXJuYXRpdmVseSBzdG9yaW5n
IGk5MTUgaW4gdGhlIHdvcmsgc3RydWN0IGNvdWxkIHdvcmsgYXJvdW5kCj4gPj4+PiB0aGF0Lgo+
ID4+Pgo+ID4+PiBOb3BlIC0gdm1hIGhhcyBhIHBvaW50ZXIgdG8gdm0gYXMgd2VsbCB3aGljaCBp
dCB3aWxsIGRlcmVmZXJlbmNlLiBTbyBpZgo+ID4+PiByZWZlcmVuY2UgaXMgbmVlZGVkIGl0J3Mg
bmVlZGVkIC0gaXQgbG9va3MgbGlrZSBpdCBpcyB0byBtZSwgc2luY2Ugb25seQo+ID4+PiBjb250
ZXh0cyB0YWtlIHRoZW0sIHdoaWNoIHZtYSdzIHN0aWxsIHJlbHkgb24sIHJpZ2h0Pwo+ID4+Cj4g
Pj4gTmFoLCB2bSBpcyBkZWNpZGVkbHkgZGVhZCBhdCB0aGlzIHBvaW50LCB3ZSBqdXN0IG5lZWQg
dG8gc3R1ZmYgdGhlIGk5MTUKPiA+PiBwb2ludGVyIGludG8gdGhlIGNsZWFudXBfd29yay4KPiA+
IAo+ID4gQXJnaC4gdm1hIGlzIGluIGdndHQsIHNvIHZtYS0+dm0gaXMgYWxpdmUgYW5kIGtpY2tp
bmcgLS0gbm90IHRoZSB2bSB3ZQo+ID4ganVzdCBkZXN0cm95ZWQuCj4gCj4gV2h5IGlzIHRoaXMg
YW4gYXJnaD8gOikgRG9lc24ndCBpdCBtZWFuIHlvdSB3ZXJlIHJpZ2h0IC0ganVzdCBzdG9yaW5n
IGEgCj4gcG9pbnRlciB0byBpOTE1IGluIHdvcmsgc3RydWN0IHNob3VsZCB3b3JrLiBJIG1pc3Nl
ZCB0aGUgZmFjdCB0aGV5IGFyZSAKPiB0d28gc2VwYXJhdGUgVk1zLgoKV2UgZG9uJ3QgbmVlZCB0
byBzdG9yZSBhbiBleHRyYSBwb2ludGVyIGFzIHZtYS0+dm0gaXMgdmFsaWQgYXMKaTkxNS0+Z2d0
dCBpc24ndCBkZXN0cm95ZWQgdW50aWwgYWZ0ZXIgdGhlIHdvcmtlciBpcyBmbHVzaGVkLgotQ2hy
aXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
