Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FED4BE38
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 18:30:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE9E26E439;
	Wed, 19 Jun 2019 16:30:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31B586E439
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 16:30:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16955984-1500050 for multiple; Wed, 19 Jun 2019 17:30:30 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190619153942.8518-1-chris@chris-wilson.co.uk>
 <c6d1b92e-45f6-99c1-932a-c1526b6a96e2@linux.intel.com>
In-Reply-To: <c6d1b92e-45f6-99c1-932a-c1526b6a96e2@linux.intel.com>
Message-ID: <156096183183.21217.11537183839936388852@skylake-alporthouse-com>
Date: Wed, 19 Jun 2019 17:30:31 +0100
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Keep rings pinned while the
 context is active
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xOSAxNzoyNjowNSkKPiAKPiBPbiAxOS8w
Ni8yMDE5IDE2OjM5LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBSZW1lbWJlciB0byBrZWVwIHRo
ZSByaW5ncyBwaW5uZWQgYXMgd2VsbCBhcyB0aGUgY29udGV4dCBpbWFnZSB1bnRpbCB0aGUKPiA+
IEdQVSBpcyBubyBsb25nZXIgYWN0aXZlLgo+ID4gCj4gPiB2MjogSW50cm9kdWNlIGEgcmluZy0+
cGluX2NvdW50IHByaW1hcmlseSB0byBoaWRlIHRoZQo+ID4gbW9ja19yaW5nIHRoYXQgZG9lc24n
dCBmaXQgaW50byB0aGUgbm9ybWFsIEdHVFQgdm1hIHBpY3R1cmUuCj4gPiAKPiA+IEJ1Z3ppbGxh
OiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA5NDYKPiA+
IEZpeGVzOiBjZTQ3NmM4MGI4YmYgKCJkcm0vaTkxNTogS2VlcCBjb250ZXh0cyBwaW5uZWQgdW50
aWwgYWZ0ZXIgdGhlIG5leHQga2VybmVsIGNvbnRleHQgc3dpdGNoIikKPiA+IFNpZ25lZC1vZmYt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4gQ2M6IE1pa2Eg
S3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+ID4gQ2M6IFR2cnRrbyBV
cnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5jICAgICAgfCAyNyArKysrKysrKysrKystLS0t
LS0tCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oIHwg
MTIgKysrKysrKysrCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jICAg
ICAgICAgIHwgMTAgKystLS0tLQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9y
aW5nYnVmZmVyLmMgICB8IDI4ICsrKysrKysrKysrKystLS0tLS0tCj4gPiAgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L21vY2tfZW5naW5lLmMgICAgICAgIHwgIDEgKwo+ID4gICA1IGZpbGVzIGNo
YW5nZWQsIDUxIGluc2VydGlvbnMoKyksIDI3IGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4dC5jCj4gPiBpbmRleCAyYzQ1NGYyMjdjMmUuLjIz
MTIwOTAxYzU1ZiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2NvbnRleHQuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfY29udGV4
dC5jCj4gPiBAQCAtMTI2LDYgKzEyNiw3IEBAIHN0YXRpYyB2b2lkIGludGVsX2NvbnRleHRfcmV0
aXJlKHN0cnVjdCBpOTE1X2FjdGl2ZSAqYWN0aXZlKQo+ID4gICAgICAgaWYgKGNlLT5zdGF0ZSkK
PiA+ICAgICAgICAgICAgICAgX19jb250ZXh0X3VucGluX3N0YXRlKGNlLT5zdGF0ZSk7Cj4gPiAg
IAo+ID4gKyAgICAgaW50ZWxfcmluZ191bnBpbihjZS0+cmluZyk7Cj4gPiAgICAgICBpbnRlbF9j
b250ZXh0X3B1dChjZSk7Cj4gPiAgIH0KPiA+ICAgCj4gPiBAQCAtMTYwLDI3ICsxNjEsMzUgQEAg
aW50IGludGVsX2NvbnRleHRfYWN0aXZlX2FjcXVpcmUoc3RydWN0IGludGVsX2NvbnRleHQgKmNl
LCB1bnNpZ25lZCBsb25nIGZsYWdzKQo+ID4gICAKPiA+ICAgICAgIGludGVsX2NvbnRleHRfZ2V0
KGNlKTsKPiA+ICAgCj4gPiArICAgICBlcnIgPSBpbnRlbF9yaW5nX3BpbihjZS0+cmluZyk7Cj4g
PiArICAgICBpZiAoZXJyKQo+ID4gKyAgICAgICAgICAgICBnb3RvIGVycl9wdXQ7Cj4gPiArCj4g
PiAgICAgICBpZiAoIWNlLT5zdGF0ZSkKPiA+ICAgICAgICAgICAgICAgcmV0dXJuIDA7Cj4gPiAg
IAo+ID4gICAgICAgZXJyID0gX19jb250ZXh0X3Bpbl9zdGF0ZShjZS0+c3RhdGUsIGZsYWdzKTsK
PiA+IC0gICAgIGlmIChlcnIpIHsKPiA+IC0gICAgICAgICAgICAgaTkxNV9hY3RpdmVfY2FuY2Vs
KCZjZS0+YWN0aXZlKTsKPiA+IC0gICAgICAgICAgICAgaW50ZWxfY29udGV4dF9wdXQoY2UpOwo+
ID4gLSAgICAgICAgICAgICByZXR1cm4gZXJyOwo+ID4gLSAgICAgfQo+ID4gKyAgICAgaWYgKGVy
cikKPiA+ICsgICAgICAgICAgICAgZ290byBlcnJfcmluZzsKPiA+ICAgCj4gPiAgICAgICAvKiBQ
cmVhbGxvY2F0ZSB0cmFja2luZyBub2RlcyAqLwo+ID4gICAgICAgaWYgKCFpOTE1X2dlbV9jb250
ZXh0X2lzX2tlcm5lbChjZS0+Z2VtX2NvbnRleHQpKSB7Cj4gPiAgICAgICAgICAgICAgIGVyciA9
IGk5MTVfYWN0aXZlX2FjcXVpcmVfcHJlYWxsb2NhdGVfYmFycmllcigmY2UtPmFjdGl2ZSwKPiA+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIGNlLT5lbmdpbmUpOwo+ID4gLSAgICAgICAgICAgICBpZiAoZXJyKSB7Cj4gPiAtICAgICAg
ICAgICAgICAgICAgICAgaTkxNV9hY3RpdmVfcmVsZWFzZSgmY2UtPmFjdGl2ZSk7Cj4gPiAtICAg
ICAgICAgICAgICAgICAgICAgcmV0dXJuIGVycjsKPiA+IC0gICAgICAgICAgICAgfQo+ID4gKyAg
ICAgICAgICAgICBpZiAoZXJyKQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGdvdG8gZXJyX3N0
YXRlOwo+ID4gICAgICAgfQo+ID4gICAKPiA+ICAgICAgIHJldHVybiAwOwo+ID4gKwo+ID4gK2Vy
cl9zdGF0ZToKPiA+ICsgICAgIF9fY29udGV4dF91bnBpbl9zdGF0ZShjZS0+c3RhdGUpOwo+ID4g
K2Vycl9yaW5nOgo+ID4gKyAgICAgaW50ZWxfcmluZ191bnBpbihjZS0+cmluZyk7Cj4gPiArZXJy
X3B1dDoKPiA+ICsgICAgIGludGVsX2NvbnRleHRfcHV0KGNlKTsKPiA+ICsgICAgIGk5MTVfYWN0
aXZlX2NhbmNlbCgmY2UtPmFjdGl2ZSk7Cj4gPiArICAgICByZXR1cm4gZXJyOwo+ID4gICB9Cj4g
PiAgIAo+ID4gICB2b2lkIGludGVsX2NvbnRleHRfYWN0aXZlX3JlbGVhc2Uoc3RydWN0IGludGVs
X2NvbnRleHQgKmNlKQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZV90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5l
X3R5cGVzLmgKPiA+IGluZGV4IDg2OGIyMjAyMTRmOC4uY2M2YjhlYjBjZGEwIDEwMDY0NAo+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3R5cGVzLmgKPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oCj4gPiBAQCAt
NzAsNiArNzAsMTggQEAgc3RydWN0IGludGVsX3Jpbmcgewo+ID4gICAgICAgc3RydWN0IGxpc3Rf
aGVhZCByZXF1ZXN0X2xpc3Q7Cj4gPiAgICAgICBzdHJ1Y3QgbGlzdF9oZWFkIGFjdGl2ZV9saW5r
Owo+ID4gICAKPiA+ICsgICAgIC8qCj4gPiArICAgICAgKiBBcyB3ZSBoYXZlIHR3byB0eXBlcyBv
ZiByaW5ncywgb25lIGdsb2JhbCB0byB0aGUgZW5naW5lIHVzZWQKPiA+ICsgICAgICAqIGJ5IHJp
bmdidWZmZXIgc3VibWlzc2lvbiBhbmQgdGhvc2UgdGhhdCBhcmUgZXhjbHVzaXZlIHRvIGEKPiA+
ICsgICAgICAqIGNvbnRleHQgdXNlZCBieSBleGVjbGlzdHMsIHdlIGhhdmUgdG8gcGxheSBzYWZl
IGFuZCBhbGxvdwo+ID4gKyAgICAgICogYXRvbWljIHVwZGF0ZXMgdG8gdGhlIHBpbl9jb3VudC4g
SG93ZXZlciwgdGhlIGFjdHVhbCBwaW5uaW5nCj4gPiArICAgICAgKiBvZiB0aGUgY29udGV4dCBp
cyBlaXRoZXIgZG9uZSBkdXJpbmcgaW5pdGlhbGlzYXRpb24gZm9yCj4gPiArICAgICAgKiByaW5n
YnVmZmVyIHN1Ym1pc3Npb24gb3Igc2VyaWFsaXNlZCBhcyBwYXJ0IG9mIHRoZSBjb250ZXh0Cj4g
PiArICAgICAgKiBwaW5uaW5nIGZvciBleGVjbGlzdHMsIGFuZCBzbyB3ZSBkbyBub3QgbmVlZCBh
IG11dGV4IG91cnNlbHZlcwo+ID4gKyAgICAgICogdG8gKiBzZXJpYWxpc2UgaW50ZWxfcmluZ19w
aW4vaW50ZWxfcmluZ191bnBpbi4KPiA+ICsgICAgICAqLwo+ID4gKyAgICAgYXRvbWljX3QgcGlu
X2NvdW50Owo+ID4gKwo+ID4gICAgICAgdTMyIGhlYWQ7Cj4gPiAgICAgICB1MzIgdGFpbDsKPiA+
ICAgICAgIHUzMiBlbWl0Owo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiA+IGlu
ZGV4IGI0MmI1ZjE1ODI5NS4uODJiN2FjZTYyZDk3IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jCj4gPiBAQCAtMTQxNCw2ICsxNDE0LDcgQEAgc3RhdGljIHZvaWQgZXhl
Y2xpc3RzX2NvbnRleHRfZGVzdHJveShzdHJ1Y3Qga3JlZiAqa3JlZikKPiA+ICAgewo+ID4gICAg
ICAgc3RydWN0IGludGVsX2NvbnRleHQgKmNlID0gY29udGFpbmVyX29mKGtyZWYsIHR5cGVvZigq
Y2UpLCByZWYpOwo+ID4gICAKPiA+ICsgICAgIEdFTV9CVUdfT04oIWk5MTVfYWN0aXZlX2lzX2lk
bGUoJmNlLT5hY3RpdmUpKTsKPiA+ICAgICAgIEdFTV9CVUdfT04oaW50ZWxfY29udGV4dF9pc19w
aW5uZWQoY2UpKTsKPiA+ICAgCj4gPiAgICAgICBpZiAoY2UtPnN0YXRlKQo+ID4gQEAgLTE0MjYs
NyArMTQyNyw2IEBAIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19jb250ZXh0X3VucGluKHN0cnVjdCBp
bnRlbF9jb250ZXh0ICpjZSkKPiA+ICAgewo+ID4gICAgICAgaTkxNV9nZW1fY29udGV4dF91bnBp
bl9od19pZChjZS0+Z2VtX2NvbnRleHQpOwo+ID4gICAgICAgaTkxNV9nZW1fb2JqZWN0X3VucGlu
X21hcChjZS0+c3RhdGUtPm9iaik7Cj4gPiAtICAgICBpbnRlbF9yaW5nX3VucGluKGNlLT5yaW5n
KTsKPiA+ICAgfQo+ID4gICAKPiA+ICAgc3RhdGljIHZvaWQKPiA+IEBAIC0xNDc4LDEzICsxNDc4
LDkgQEAgX19leGVjbGlzdHNfY29udGV4dF9waW4oc3RydWN0IGludGVsX2NvbnRleHQgKmNlLAo+
ID4gICAgICAgICAgICAgICBnb3RvIHVucGluX2FjdGl2ZTsKPiA+ICAgICAgIH0KPiA+ICAgCj4g
PiAtICAgICByZXQgPSBpbnRlbF9yaW5nX3BpbihjZS0+cmluZyk7Cj4gPiAtICAgICBpZiAocmV0
KQo+ID4gLSAgICAgICAgICAgICBnb3RvIHVucGluX21hcDsKPiA+IC0KPiA+ICAgICAgIHJldCA9
IGk5MTVfZ2VtX2NvbnRleHRfcGluX2h3X2lkKGNlLT5nZW1fY29udGV4dCk7Cj4gPiAgICAgICBp
ZiAocmV0KQo+ID4gLSAgICAgICAgICAgICBnb3RvIHVucGluX3Jpbmc7Cj4gPiArICAgICAgICAg
ICAgIGdvdG8gdW5waW5fbWFwOwo+ID4gICAKPiA+ICAgICAgIGNlLT5scmNfZGVzYyA9IGxyY19k
ZXNjcmlwdG9yKGNlLCBlbmdpbmUpOwo+ID4gICAgICAgY2UtPmxyY19yZWdfc3RhdGUgPSB2YWRk
ciArIExSQ19TVEFURV9QTiAqIFBBR0VfU0laRTsKPiA+IEBAIC0xNDkyLDggKzE0ODgsNiBAQCBf
X2V4ZWNsaXN0c19jb250ZXh0X3BpbihzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UsCj4gPiAgIAo+
ID4gICAgICAgcmV0dXJuIDA7Cj4gPiAgIAo+ID4gLXVucGluX3Jpbmc6Cj4gPiAtICAgICBpbnRl
bF9yaW5nX3VucGluKGNlLT5yaW5nKTsKPiA+ICAgdW5waW5fbWFwOgo+ID4gICAgICAgaTkxNV9n
ZW1fb2JqZWN0X3VucGluX21hcChjZS0+c3RhdGUtPm9iaik7Cj4gPiAgIHVucGluX2FjdGl2ZToK
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVy
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMKPiA+IGluZGV4
IGM2MDIzYmM5NDUyZC4uMGQ4YWFhYTA4OWNjIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMKPiA+IEBAIC0xMTQ5LDE2ICsxMTQ5LDE2IEBAIGk5
MTVfZW1pdF9iYl9zdGFydChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwKPiA+ICAgaW50IGludGVs
X3JpbmdfcGluKHN0cnVjdCBpbnRlbF9yaW5nICpyaW5nKQo+ID4gICB7Cj4gPiAgICAgICBzdHJ1
Y3QgaTkxNV92bWEgKnZtYSA9IHJpbmctPnZtYTsKPiA+IC0gICAgIGVudW0gaTkxNV9tYXBfdHlw
ZSBtYXAgPSBpOTE1X2NvaGVyZW50X21hcF90eXBlKHZtYS0+dm0tPmk5MTUpOwo+ID4gICAgICAg
dW5zaWduZWQgaW50IGZsYWdzOwo+ID4gICAgICAgdm9pZCAqYWRkcjsKPiA+ICAgICAgIGludCBy
ZXQ7Cj4gPiAgIAo+ID4gLSAgICAgR0VNX0JVR19PTihyaW5nLT52YWRkcik7Cj4gPiArICAgICBp
ZiAoYXRvbWljX2ZldGNoX2luYygmcmluZy0+cGluX2NvdW50KSkKPiA+ICsgICAgICAgICAgICAg
cmV0dXJuIDA7Cj4gPiAgIAo+ID4gICAgICAgcmV0ID0gaTkxNV90aW1lbGluZV9waW4ocmluZy0+
dGltZWxpbmUpOwo+ID4gICAgICAgaWYgKHJldCkKPiA+IC0gICAgICAgICAgICAgcmV0dXJuIHJl
dDsKPiA+ICsgICAgICAgICAgICAgZ290byBlcnJfdW5waW47Cj4gPiAgIAo+ID4gICAgICAgZmxh
Z3MgPSBQSU5fR0xPQkFMOwo+ID4gICAKPiA+IEBAIC0xMTcyLDI2ICsxMTcyLDMxIEBAIGludCBp
bnRlbF9yaW5nX3BpbihzdHJ1Y3QgaW50ZWxfcmluZyAqcmluZykKPiA+ICAgCj4gPiAgICAgICBy
ZXQgPSBpOTE1X3ZtYV9waW4odm1hLCAwLCAwLCBmbGFncyk7Cj4gPiAgICAgICBpZiAodW5saWtl
bHkocmV0KSkKPiA+IC0gICAgICAgICAgICAgZ290byB1bnBpbl90aW1lbGluZTsKPiA+ICsgICAg
ICAgICAgICAgZ290byBlcnJfdGltZWxpbmU7Cj4gPiAgIAo+ID4gICAgICAgaWYgKGk5MTVfdm1h
X2lzX21hcF9hbmRfZmVuY2VhYmxlKHZtYSkpCj4gPiAgICAgICAgICAgICAgIGFkZHIgPSAodm9p
ZCBfX2ZvcmNlICopaTkxNV92bWFfcGluX2lvbWFwKHZtYSk7Cj4gPiAgICAgICBlbHNlCj4gPiAt
ICAgICAgICAgICAgIGFkZHIgPSBpOTE1X2dlbV9vYmplY3RfcGluX21hcCh2bWEtPm9iaiwgbWFw
KTsKPiA+ICsgICAgICAgICAgICAgYWRkciA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwKHZtYS0+
b2JqLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaTkx
NV9jb2hlcmVudF9tYXBfdHlwZSh2bWEtPnZtLT5pOTE1KSk7Cj4gPiAgICAgICBpZiAoSVNfRVJS
KGFkZHIpKSB7Cj4gPiAgICAgICAgICAgICAgIHJldCA9IFBUUl9FUlIoYWRkcik7Cj4gPiAtICAg
ICAgICAgICAgIGdvdG8gdW5waW5fcmluZzsKPiA+ICsgICAgICAgICAgICAgZ290byBlcnJfcmlu
ZzsKPiA+ICAgICAgIH0KPiA+ICAgCj4gPiAgICAgICB2bWEtPm9iai0+cGluX2dsb2JhbCsrOwo+
ID4gICAKPiA+ICsgICAgIEdFTV9CVUdfT04ocmluZy0+dmFkZHIpOwo+ID4gICAgICAgcmluZy0+
dmFkZHIgPSBhZGRyOwo+ID4gKwo+ID4gICAgICAgcmV0dXJuIDA7Cj4gPiAgIAo+ID4gLXVucGlu
X3Jpbmc6Cj4gPiArZXJyX3Jpbmc6Cj4gPiAgICAgICBpOTE1X3ZtYV91bnBpbih2bWEpOwo+ID4g
LXVucGluX3RpbWVsaW5lOgo+ID4gK2Vycl90aW1lbGluZToKPiA+ICAgICAgIGk5MTVfdGltZWxp
bmVfdW5waW4ocmluZy0+dGltZWxpbmUpOwo+ID4gK2Vycl91bnBpbjoKPiA+ICsgICAgIGF0b21p
Y19kZWMoJnJpbmctPnBpbl9jb3VudCk7Cj4gPiAgICAgICByZXR1cm4gcmV0Owo+ID4gICB9Cj4g
PiAgIAo+ID4gQEAgLTEyMDcsMTYgKzEyMTIsMTkgQEAgdm9pZCBpbnRlbF9yaW5nX3Jlc2V0KHN0
cnVjdCBpbnRlbF9yaW5nICpyaW5nLCB1MzIgdGFpbCkKPiA+ICAgCj4gPiAgIHZvaWQgaW50ZWxf
cmluZ191bnBpbihzdHJ1Y3QgaW50ZWxfcmluZyAqcmluZykKPiA+ICAgewo+ID4gLSAgICAgR0VN
X0JVR19PTighcmluZy0+dm1hKTsKPiA+IC0gICAgIEdFTV9CVUdfT04oIXJpbmctPnZhZGRyKTsK
PiA+ICsgICAgIGlmICghYXRvbWljX2RlY19hbmRfdGVzdCgmcmluZy0+cGluX2NvdW50KSkKPiA+
ICsgICAgICAgICAgICAgcmV0dXJuOwo+ID4gICAKPiA+ICAgICAgIC8qIERpc2NhcmQgYW55IHVu
dXNlZCBieXRlcyBiZXlvbmQgdGhhdCBzdWJtaXR0ZWQgdG8gaHcuICovCj4gPiAgICAgICBpbnRl
bF9yaW5nX3Jlc2V0KHJpbmcsIHJpbmctPnRhaWwpOwo+ID4gICAKPiA+ICsgICAgIEdFTV9CVUdf
T04oIXJpbmctPnZtYSk7Cj4gPiAgICAgICBpZiAoaTkxNV92bWFfaXNfbWFwX2FuZF9mZW5jZWFi
bGUocmluZy0+dm1hKSkKPiA+ICAgICAgICAgICAgICAgaTkxNV92bWFfdW5waW5faW9tYXAocmlu
Zy0+dm1hKTsKPiA+ICAgICAgIGVsc2UKPiA+ICAgICAgICAgICAgICAgaTkxNV9nZW1fb2JqZWN0
X3VucGluX21hcChyaW5nLT52bWEtPm9iaik7Cj4gPiArCj4gPiArICAgICBHRU1fQlVHX09OKCFy
aW5nLT52YWRkcik7Cj4gPiAgICAgICByaW5nLT52YWRkciA9IE5VTEw7Cj4gPiAgIAo+ID4gICAg
ICAgcmluZy0+dm1hLT5vYmotPnBpbl9nbG9iYWwtLTsKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9tb2NrX2VuZ2luZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
bW9ja19lbmdpbmUuYwo+ID4gaW5kZXggMDg2ODAxYjUxNDQxLi40ODZjNjk1M2RjYjEgMTAwNjQ0
Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9tb2NrX2VuZ2luZS5jCj4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9tb2NrX2VuZ2luZS5jCj4gPiBAQCAtNjYsNiArNjYs
NyBAQCBzdGF0aWMgc3RydWN0IGludGVsX3JpbmcgKm1vY2tfcmluZyhzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NzICplbmdpbmUpCj4gPiAgICAgICByaW5nLT5iYXNlLmVmZmVjdGl2ZV9zaXplID0gc3o7
Cj4gPiAgICAgICByaW5nLT5iYXNlLnZhZGRyID0gKHZvaWQgKikocmluZyArIDEpOwo+ID4gICAg
ICAgcmluZy0+YmFzZS50aW1lbGluZSA9ICZyaW5nLT50aW1lbGluZTsKPiA+ICsgICAgIGF0b21p
Y19zZXQoJnJpbmctPmJhc2UucGluX2NvdW50LCAxKTsKPiA+ICAgCj4gPiAgICAgICBJTklUX0xJ
U1RfSEVBRCgmcmluZy0+YmFzZS5yZXF1ZXN0X2xpc3QpOwo+ID4gICAgICAgaW50ZWxfcmluZ191
cGRhdGVfc3BhY2UoJnJpbmctPmJhc2UpOwo+ID4gCj4gCj4gUmV2aWV3ZWQtYnk6IFR2cnRrbyBV
cnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+CgpTaWdoLCBDSSBjb21wbGFpbmVkIHRo
YXQgSSBsZWZ0IHRoZSBwaW5fY291bnQgdW5iYWxhbmNlZCBmb3IgcmluZ2J1ZmZlci4KQXJvdW5k
IHdlIGdvIGFnYWluLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
