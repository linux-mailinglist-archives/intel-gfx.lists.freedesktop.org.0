Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9AA57708F
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jul 2019 19:49:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FC7B6E879;
	Fri, 26 Jul 2019 17:49:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 045506E879
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jul 2019 17:49:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 10:49:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,311,1559545200"; d="scan'208";a="194340634"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga004.fm.intel.com with ESMTP; 26 Jul 2019 10:49:30 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6QHnT9L026041; Fri, 26 Jul 2019 18:49:29 +0100
To: intel-gfx@lists.freedesktop.org, "Daniele Ceraolo Spurio"
 <daniele.ceraolospurio@intel.com>
References: <20190726155805.2736-1-michal.wajdeczko@intel.com>
 <02c08065-c0e8-a5b1-8bbe-5eb93c1a9e10@intel.com>
Date: Fri, 26 Jul 2019 19:49:29 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z5jqgrsdxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <02c08065-c0e8-a5b1-8bbe-5eb93c1a9e10@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/uc: Remove redundant
 header_offset/size definitions
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyNiBKdWwgMjAxOSAxOTozMzoxOCArMDIwMCwgRGFuaWVsZSBDZXJhb2xvIFNwdXJp
byAgCjxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPiB3cm90ZToKCj4KPgo+IE9uIDcv
MjYvMTkgODo1OCBBTSwgTWljaGFsIFdhamRlY3prbyB3cm90ZToKPj4gQWNjb3JkaW5nIHRvIEZp
cm13YXJlIGxheW91dCBkZWZpbml0aW9uLCBDU1MgaGVhZGVyIGlzIGxvY2F0ZWQKPj4gaW4gZnJv
bnQgb2YgdGhlIGZpcm13YXJlIGJsb2IsIHNvIGhlYWRlciBvZmZzZXQgaXMgYWx3YXlzIDAuCj4+
IFNpbWlsYXJseSwgc2l6ZSBvZiB0aGUgQ1NTIGhlYWRlciBpcyBjb25zdGFudCBhbmQgaXMgMTI4
Lgo+PiAgV2hpbGUgaGVyZSwgbW92ZSB0eXBlL3N0YXR1cyBlbnVtcyB1cCBhbmQga2VlcCB0aGVt
IHRvZ2V0aGVyLgo+PiAgU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndh
amRlY3prb0BpbnRlbC5jb20+Cj4+IENjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxl
LmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC91Yy9pbnRlbF91Y19mdy5jICAgICB8IDIzICsrKysrKysrLS0tLS0tLS0tLS0tCj4+ICAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuaCAgICAgfCAgOSArKysrLS0t
LQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3X2FiaS5oIHwgIDIg
KysKPj4gICAzIGZpbGVzIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDE5IGRlbGV0aW9ucygt
KQo+PiAgZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3
LmMgIAo+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMKPj4gaW5k
ZXggNWZiZGQxN2E4NjRiLi42NmJkYTBjNTE0YTMgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfdWNfZncuYwo+PiBAQCAtMjE4LDIxICsyMTgsMTggQEAgdm9pZCBpbnRl
bF91Y19md19mZXRjaChzdHJ1Y3QgaW50ZWxfdWNfZncgKnVjX2Z3LCAgCj4+IHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1KQo+PiAgICAgCWNzcyA9IChzdHJ1Y3QgdWNfY3NzX2hlYWRlciAq
KWZ3LT5kYXRhOwo+PiAgIC0JLyogRmlybXdhcmUgYml0cyBhbHdheXMgc3RhcnQgZnJvbSBoZWFk
ZXIgKi8KPj4gLQl1Y19mdy0+aGVhZGVyX29mZnNldCA9IDA7Cj4+IC0JdWNfZnctPmhlYWRlcl9z
aXplID0gKGNzcy0+aGVhZGVyX3NpemVfZHcgLSBjc3MtPm1vZHVsdXNfc2l6ZV9kdyAtCj4+IC0J
CQkgICAgICBjc3MtPmtleV9zaXplX2R3IC0gY3NzLT5leHBvbmVudF9zaXplX2R3KSAqCj4+IC0J
CQkgICAgIHNpemVvZih1MzIpOwo+PiAtCj4+IC0JaWYgKHVjX2Z3LT5oZWFkZXJfc2l6ZSAhPSBz
aXplb2Yoc3RydWN0IHVjX2Nzc19oZWFkZXIpKSB7Cj4+ICsJLyogQ2hlY2sgaW50ZWdyaXR5IG9m
IHNpemUgdmFsdWVzIGluc2lkZSBDU1MgaGVhZGVyICovCj4+ICsJc2l6ZSA9IChjc3MtPmhlYWRl
cl9zaXplX2R3IC0gY3NzLT5rZXlfc2l6ZV9kdyAtIGNzcy0+bW9kdWx1c19zaXplX2R3ICAKPj4g
LQo+PiArCQljc3MtPmV4cG9uZW50X3NpemVfZHcpICogc2l6ZW9mKHUzMik7Cj4+ICsJaWYgKHNp
emUgIT0gc2l6ZW9mKHN0cnVjdCB1Y19jc3NfaGVhZGVyKSkgewo+PiAgIAkJRFJNX1dBUk4oIiVz
OiBNaXNtYXRjaGVkIGZpcm13YXJlIGhlYWRlciBkZWZpbml0aW9uXG4iLAo+PiAgIAkJCSBpbnRl
bF91Y19md190eXBlX3JlcHIodWNfZnctPnR5cGUpKTsKPj4gICAJCWVyciA9IC1FTk9FWEVDOwo+
PiAgIAkJZ290byBmYWlsOwo+PiAgIAl9Cj4+ICAgLQkvKiB0aGVuLCB1Q29kZSAqLwo+PiAtCXVj
X2Z3LT51Y29kZV9vZmZzZXQgPSB1Y19mdy0+aGVhZGVyX29mZnNldCArIHVjX2Z3LT5oZWFkZXJf
c2l6ZTsKPj4gKwkvKiBGaXJtd2FyZSBibG9iIGFsd2F5cyBzdGFydHMgd2l0aCB0aGUgaGVhZGVy
LCB0aGVuIHVDb2RlICovCj4+ICsJdWNfZnctPnVjb2RlX29mZnNldCA9IHNpemVvZihzdHJ1Y3Qg
dWNfY3NzX2hlYWRlcik7Cj4+ICAgCXVjX2Z3LT51Y29kZV9zaXplID0gKGNzcy0+c2l6ZV9kdyAt
IGNzcy0+aGVhZGVyX3NpemVfZHcpICogIAo+PiBzaXplb2YodTMyKTsKPj4gICAgIAkvKiBub3cg
UlNBICovCj4+IEBAIC0yNDYsNyArMjQzLDcgQEAgdm9pZCBpbnRlbF91Y19md19mZXRjaChzdHJ1
Y3QgaW50ZWxfdWNfZncgKnVjX2Z3LCAgCj4+IHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1
KQo+PiAgIAl1Y19mdy0+cnNhX3NpemUgPSBjc3MtPmtleV9zaXplX2R3ICogc2l6ZW9mKHUzMik7
Cj4+ICAgICAJLyogQXQgbGVhc3QsIGl0IHNob3VsZCBoYXZlIGhlYWRlciwgdUNvZGUgYW5kIFJT
QS4gU2l6ZSBvZiBhbGwgIAo+PiB0aHJlZS4gKi8KPj4gLQlzaXplID0gdWNfZnctPmhlYWRlcl9z
aXplICsgdWNfZnctPnVjb2RlX3NpemUgKyB1Y19mdy0+cnNhX3NpemU7Cj4+ICsJc2l6ZSA9IHNp
emVvZihzdHJ1Y3QgdWNfY3NzX2hlYWRlcikgKyB1Y19mdy0+dWNvZGVfc2l6ZSArICAKPj4gdWNf
ZnctPnJzYV9zaXplOwo+PiAgIAlpZiAoZnctPnNpemUgPCBzaXplKSB7Cj4+ICAgCQlEUk1fV0FS
TigiJXM6IFRydW5jYXRlZCBmaXJtd2FyZSAoJXp1LCBleHBlY3RlZCAlenUpXG4iLAo+PiAgIAkJ
CSBpbnRlbF91Y19md190eXBlX3JlcHIodWNfZnctPnR5cGUpLCBmdy0+c2l6ZSwgc2l6ZSk7Cj4+
IEBAIC0zNzEsNyArMzY4LDcgQEAgc3RhdGljIGludCB1Y19md194ZmVyKHN0cnVjdCBpbnRlbF91
Y19mdyAqdWNfZncsICAKPj4gc3RydWN0IGludGVsX2d0ICpndCwKPj4gICAJaW50ZWxfdW5jb3Jl
X2ZvcmNld2FrZV9nZXQodW5jb3JlLCBGT1JDRVdBS0VfQUxMKTsKPj4gICAgIAkvKiBTZXQgdGhl
IHNvdXJjZSBhZGRyZXNzIGZvciB0aGUgdUNvZGUgKi8KPj4gLQlvZmZzZXQgPSB1Y19md19nZ3R0
X29mZnNldCh1Y19mdywgZ3QtPmdndHQpICsgdWNfZnctPmhlYWRlcl9vZmZzZXQ7Cj4+ICsJb2Zm
c2V0ID0gdWNfZndfZ2d0dF9vZmZzZXQodWNfZncsIGd0LT5nZ3R0KTsKPj4gICAJR0VNX0JVR19P
Tih1cHBlcl8zMl9iaXRzKG9mZnNldCkgJiAweEZGRkYwMDAwKTsKPj4gICAJaW50ZWxfdW5jb3Jl
X3dyaXRlX2Z3KHVuY29yZSwgRE1BX0FERFJfMF9MT1csIGxvd2VyXzMyX2JpdHMob2Zmc2V0KSk7
Cj4+ICAgCWludGVsX3VuY29yZV93cml0ZV9mdyh1bmNvcmUsIERNQV9BRERSXzBfSElHSCwgIAo+
PiB1cHBlcl8zMl9iaXRzKG9mZnNldCkpOwo+PiBAQCAtMzg1LDcgKzM4Miw3IEBAIHN0YXRpYyBp
bnQgdWNfZndfeGZlcihzdHJ1Y3QgaW50ZWxfdWNfZncgKnVjX2Z3LCAgCj4+IHN0cnVjdCBpbnRl
bF9ndCAqZ3QsCj4+ICAgCSAqIHZpYSBETUEsIGV4Y2x1ZGluZyBhbnkgb3RoZXIgY29tcG9uZW50
cwo+PiAgIAkgKi8KPj4gICAJaW50ZWxfdW5jb3JlX3dyaXRlX2Z3KHVuY29yZSwgRE1BX0NPUFlf
U0laRSwKPj4gLQkJCSAgICAgIHVjX2Z3LT5oZWFkZXJfc2l6ZSArIHVjX2Z3LT51Y29kZV9zaXpl
KTsKPj4gKwkJCSAgICAgIHVjX2Z3LT51Y29kZV9vZmZzZXQgKyB1Y19mdy0+dWNvZGVfc2l6ZSk7
Cj4KPiBpbiBvdGhlciBwbGFjZXMgeW91J3ZlIHJlcGxhY2VkIHVjX2Z3LT5oZWFkZXJfc2l6ZSB3
aXRoIHNpemVvZihzdHJ1Y3QgIAo+IHVjX2Nzc19oZWFkZXIpLCBJJ2QgZG8gdGhlIHNhbWUgaGVy
ZSBmb3IgY29uc2lzdGVuY3kuCgpoYSEgb29wcywgdGhpcyBzbmVha2VkIGludG8gcGF0Y2ggMiBp
bnN0ZWFkLCB3aWxsIGZpeAoKPgo+PiAgICAgCS8qIFN0YXJ0IHRoZSBETUEgKi8KPj4gICAJaW50
ZWxfdW5jb3JlX3dyaXRlX2Z3KHVuY29yZSwgRE1BX0NUUkwsCj4+IEBAIC01MzksOCArNTM2LDYg
QEAgdm9pZCBpbnRlbF91Y19md19kdW1wKGNvbnN0IHN0cnVjdCBpbnRlbF91Y19mdyAgCj4+ICp1
Y19mdywgc3RydWN0IGRybV9wcmludGVyICpwKQo+PiAgIAlkcm1fcHJpbnRmKHAsICJcdHZlcnNp
b246IHdhbnRlZCAldS4ldSwgZm91bmQgJXUuJXVcbiIsCj4+ICAgCQkgICB1Y19mdy0+bWFqb3Jf
dmVyX3dhbnRlZCwgdWNfZnctPm1pbm9yX3Zlcl93YW50ZWQsCj4+ICAgCQkgICB1Y19mdy0+bWFq
b3JfdmVyX2ZvdW5kLCB1Y19mdy0+bWlub3JfdmVyX2ZvdW5kKTsKPj4gLQlkcm1fcHJpbnRmKHAs
ICJcdGhlYWRlcjogb2Zmc2V0ICV1LCBzaXplICV1XG4iLAo+PiAtCQkgICB1Y19mdy0+aGVhZGVy
X29mZnNldCwgdWNfZnctPmhlYWRlcl9zaXplKTsKPj4gICAJZHJtX3ByaW50ZihwLCAiXHR1Q29k
ZTogb2Zmc2V0ICV1LCBzaXplICV1XG4iLAo+PiAgIAkJICAgdWNfZnctPnVjb2RlX29mZnNldCwg
dWNfZnctPnVjb2RlX3NpemUpOwo+PiAgIAlkcm1fcHJpbnRmKHAsICJcdFJTQTogb2Zmc2V0ICV1
LCBzaXplICV1XG4iLAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMv
aW50ZWxfdWNfZncuaCAgCj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNf
ZncuaAo+PiBpbmRleCBlZGRiYjIzN2ZhYmUuLmE4MDQ4ZjkxZjBkYSAxMDA2NDQKPj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuaAo+PiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5oCj4+IEBAIC0yNiw2ICsyNiw3IEBACj4+
ICAgI2RlZmluZSBfSU5URUxfVUNfRldfSF8KPj4gICAgICNpbmNsdWRlIDxsaW51eC90eXBlcy5o
Pgo+PiArI2luY2x1ZGUgImludGVsX3VjX2Z3X2FiaS5oIgo+PiAgICNpbmNsdWRlICJpOTE1X2dl
bS5oIgo+PiAgICAgc3RydWN0IGRybV9wcmludGVyOwo+PiBAQCAtNTcsMTAgKzU4LDExIEBAIGVu
dW0gaW50ZWxfdWNfZndfdHlwZSB7Cj4+ICAgICogb2YgZmV0Y2hpbmcsIGNhY2hpbmcsIGFuZCBs
b2FkaW5nIHRoZSBmaXJtd2FyZSBpbWFnZSBpbnRvIHRoZSB1Qy4KPj4gICAgKi8KPj4gICBzdHJ1
Y3QgaW50ZWxfdWNfZncgewo+PiArCWVudW0gaW50ZWxfdWNfZndfdHlwZSB0eXBlOwo+PiArCWVu
dW0gaW50ZWxfdWNfZndfc3RhdHVzIHN0YXR1czsKPj4gICAJY29uc3QgY2hhciAqcGF0aDsKPj4g
ICAJc2l6ZV90IHNpemU7Cj4+ICAgCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7Cj4+
IC0JZW51bSBpbnRlbF91Y19md19zdGF0dXMgc3RhdHVzOwo+PiAgICAgCS8qCj4+ICAgCSAqIFRo
ZSBmaXJtd2FyZSBidWlsZCBwcm9jZXNzIHdpbGwgZ2VuZXJhdGUgYSB2ZXJzaW9uIGhlYWRlciBm
aWxlICAKPj4gd2l0aCBtYWpvciBhbmQKPj4gQEAgLTcyLDkgKzc0LDYgQEAgc3RydWN0IGludGVs
X3VjX2Z3IHsKPj4gICAJdTE2IG1ham9yX3Zlcl9mb3VuZDsKPj4gICAJdTE2IG1pbm9yX3Zlcl9m
b3VuZDsKPj4gICAtCWVudW0gaW50ZWxfdWNfZndfdHlwZSB0eXBlOwo+PiAtCXUzMiBoZWFkZXJf
c2l6ZTsKPj4gLQl1MzIgaGVhZGVyX29mZnNldDsKPj4gICAJdTMyIHJzYV9zaXplOwo+PiAgIAl1
MzIgcnNhX29mZnNldDsKPj4gICAJdTMyIHVjb2RlX3NpemU7Cj4+IEBAIC0xNjMsNyArMTYyLDcg
QEAgc3RhdGljIGlubGluZSB1MzIgIAo+PiBpbnRlbF91Y19md19nZXRfdXBsb2FkX3NpemUoc3Ry
dWN0IGludGVsX3VjX2Z3ICp1Y19mdykKPj4gICAJaWYgKCFpbnRlbF91Y19md19pc19hdmFpbGFi
bGUodWNfZncpKQo+PiAgIAkJcmV0dXJuIDA7Cj4+ICAgLQlyZXR1cm4gdWNfZnctPmhlYWRlcl9z
aXplICsgdWNfZnctPnVjb2RlX3NpemU7Cj4+ICsJcmV0dXJuIHNpemVvZihzdHJ1Y3QgdWNfY3Nz
X2hlYWRlcikgKyB1Y19mdy0+dWNvZGVfc2l6ZTsKPj4gICB9Cj4+ICAgICB2b2lkIGludGVsX3Vj
X2Z3X2luaXRfZWFybHkoc3RydWN0IGludGVsX3VjX2Z3ICp1Y19mdywKPj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3X2FiaS5oICAKPj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19md19hYmkuaAo+PiBpbmRleCA1NDVlODZj
NTJhOWUuLmFlNThlOGE4YzUzYiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfdWNfZndfYWJpLmgKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
dWMvaW50ZWxfdWNfZndfYWJpLmgKPj4gQEAgLTcsNiArNyw3IEBACj4+ICAgI2RlZmluZSBfSU5U
RUxfVUNfRldfQUJJX0gKPj4gICAgICNpbmNsdWRlIDxsaW51eC90eXBlcy5oPgo+PiArI2luY2x1
ZGUgPGxpbnV4L2J1aWxkX2J1Zy5oPgo+PiAgICAgLyoqCj4+ICAgICogRE9DOiBGaXJtd2FyZSBM
YXlvdXQKPj4gQEAgLTc2LDUgKzc3LDYgQEAgc3RydWN0IHVjX2Nzc19oZWFkZXIgewo+PiAgIAl1
MzIgcmVzZXJ2ZWRbMTRdOwo+PiAgIAl1MzIgaGVhZGVyX2luZm87Cj4+ICAgfSBfX3BhY2tlZDsK
Pj4gK3N0YXRpY19hc3NlcnQoc2l6ZW9mKHN0cnVjdCB1Y19jc3NfaGVhZGVyKSA9PSAxMjgpOwo+
Cj4gRG8gd2UgcmVhbGx5IGNhcmUgdGhhdCB0aGUgc2l6ZSBvZiB0aGlzIGlzIDEyOD8gdGhlIGlt
cG9ydGFudCB0aGluZyBpcyAgCj4gdGhhdCBpdCBtYXRjaGVzIHdoYXQgdGhlIGJsb2IgcmVwb3J0
cyBhbmQgeW91IGhhdmUgYSBjaGVjayBmb3IgdGhhdCAgCj4gYWxyZWFkeSBzbyB3ZSBzaG91bGQg
YmUgYWJsZSB0byBhdm9pZCB0aGlzIGNoZWNrLgoKQmxvYiBkb2VzIG5vdCByZXBvcnQgaGVhZGVy
IHNpemUgZGlyZWN0bHksIGluc3RlYWQgaXQgcHJvdmlkZXMgc2V0IG9mCnNpemVzIG9mIG90aGVy
IGJsb2IgY29tcG9uZW50cyBhbmQgd2UgYXJlIGp1c3QgdmVyaWZ5aW5nIGlmIHRoYXQgc3Vtcwpj
b3JyZWN0bHksIGJ1dCB3ZSBhcmUgdXNpbmcgc2l6ZW9mIG91ciBkZWZpbml0aW9uIG9mIHN0cnVj
dCBjc3MuCgpTaW5jZSBDU1MgaGVhZGVyIGlzIHBhcnQgb2YgdGhlIGZ3IEFCSSB3ZSBzaG91bGQg
bWFrZSBzdXJlIHRoYXQgb3VyCmRlZmluaXRpb24gaXMgc3RhYmxlIGFuZCBpdHMgc2l6ZSBtYXRj
aGVzIGZ3IGRlZmluaXRpb24gKHdoaXMgaXMgMTI4KQoKSSdtIGZvciBrZWVwaW5nIHRoaXMgY2hl
Y2suCgo+Cj4gV2l0aCB0aGUgMiBuaXRzIGFkZHJlc3NlZDoKPgo+IFJldmlld2VkLWJ5OiBEYW5p
ZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+Cj4g
RGFuaWVsZQo+Cj4+ICAgICAjZW5kaWYgLyogX0lOVEVMX1VDX0ZXX0FCSV9IICovCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
