Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D42E6BCE8
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 15:21:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91BFB6E14B;
	Wed, 17 Jul 2019 13:21:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A2996E14B
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 13:21:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 06:21:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,274,1559545200"; d="scan'208";a="158461895"
Received: from esulliva-mobl.ger.corp.intel.com (HELO [10.251.94.109])
 ([10.251.94.109])
 by orsmga007.jf.intel.com with ESMTP; 17 Jul 2019 06:21:51 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190716124931.5870-1-chris@chris-wilson.co.uk>
 <20190716124931.5870-2-chris@chris-wilson.co.uk>
 <dacd4362-4e76-5165-37e5-a9d4308835bb@linux.intel.com>
 <156336891995.4375.4394847020984312949@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b462d4a4-d2ef-e44f-e633-a7f22f6142ef@linux.intel.com>
Date: Wed, 17 Jul 2019 14:21:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <156336891995.4375.4394847020984312949@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/gt: Push engine stopping into
 reset-prepare
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

Ck9uIDE3LzA3LzIwMTkgMTQ6MDgsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA3LTE3IDE0OjA0OjM0KQo+Pgo+PiBPbiAxNi8wNy8yMDE5IDEzOjQ5
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBQdXNoIHRoZSBlbmdpbmUgc3RvcCBpbnRvIHRoZSBi
YWNrIHJlc2V0X3ByZXBhcmUgKHdoZXJlIGl0IGFscmVhZHkgd2FzISkKPj4+IFRoaXMgYWxsb3dz
IHVzIHRvIGF2b2lkIGRhbmdlcm91c2x5IHNldHRpbmcgdGhlIFJJTkcgcmVnaXN0ZXJzIHRvIDAg
Zm9yCj4+PiBsb2dpY2FsIGNvbnRleHRzLiBJZiB3ZSBjbGVhciB0aGUgcmVnaXN0ZXIgb24gYSBs
aXZlIGNvbnRleHQsIHRob3NlCj4+PiBpbnZhbGlkIHJlZ2lzdGVyIHZhbHVlcyBhcmUgcmVjb3Jk
ZWQgaW4gdGhlIGxvZ2ljYWwgY29udGV4dCBzdGF0ZSBhbmQKPj4+IHJlcGxheWVkICh3aXRoIGhp
bGFyaW91cyByZXN1bHRzKS4KPj4KPj4gU28gZXNzZW50aWFsbHkgc3RhdGVtZW50IGlzIGdlbjNf
c3RvcF9lbmdpbmUgaXMgbm90IG5lZWRlZCBhbmQgZXZlbgo+PiBkYW5nZXJvdXMgd2l0aCBleGVj
bGlzdHM/Cj4gCj4gWWVzLiBJdCBoYXMgYmVlbiBhIG51aXNhbmNlIGluIHRoZSBwYXN0LCB3aGlj
aCBpcyB3aHkgd2UgdHJ5IHRvIGF2b2lkCj4gaXQuIEkgaGF2ZSBjb21lIHRvIGNvbmNsdXNpb24g
dGhhdCBpdCBzZXJ2ZXMgbm8gcHVycG9zZSBmb3IgZXhlY2xpc3RzCj4gYW5kIG9ubHkgbWFrZXMg
cmVjb3Zlcnkgd29yc2UuCj4gCj4+Cj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4+PiAtLS0KPj4+ICAgIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2xyYy5jICAgICAgICB8IDE2ICsrKysrLQo+Pj4gICAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyAgICAgIHwgNTggLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQo+Pj4gICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jIHwg
NDAgKysrKysrKysrKysrKystCj4+PiAgICAzIGZpbGVzIGNoYW5nZWQsIDUzIGluc2VydGlvbnMo
KyksIDYxIGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5j
Cj4+PiBpbmRleCA5ZTA5OTI0OTgwODcuLjliODdhMmZjMTg2YyAxMDA2NDQKPj4+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4+PiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+Pj4gQEAgLTIxNzMsMTEgKzIxNzMsMjMgQEAgc3RhdGlj
IHZvaWQgZXhlY2xpc3RzX3Jlc2V0X3ByZXBhcmUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5n
aW5lKQo+Pj4gICAgICAgIF9fdGFza2xldF9kaXNhYmxlX3N5bmNfb25jZSgmZXhlY2xpc3RzLT50
YXNrbGV0KTsKPj4+ICAgICAgICBHRU1fQlVHX09OKCFyZXNldF9pbl9wcm9ncmVzcyhleGVjbGlz
dHMpKTsKPj4+ICAgIAo+Pj4gLSAgICAgaW50ZWxfZW5naW5lX3N0b3BfY3MoZW5naW5lKTsKPj4+
IC0KPj4+ICAgICAgICAvKiBBbmQgZmx1c2ggYW55IGN1cnJlbnQgZGlyZWN0IHN1Ym1pc3Npb24u
ICovCj4+PiAgICAgICAgc3Bpbl9sb2NrX2lycXNhdmUoJmVuZ2luZS0+YWN0aXZlLmxvY2ssIGZs
YWdzKTsKPj4+ICAgICAgICBzcGluX3VubG9ja19pcnFyZXN0b3JlKCZlbmdpbmUtPmFjdGl2ZS5s
b2NrLCBmbGFncyk7Cj4+PiArCj4+PiArICAgICAvKgo+Pj4gKyAgICAgICogV2Ugc3RvcCBlbmdp
bmVzLCBvdGhlcndpc2Ugd2UgbWlnaHQgZ2V0IGZhaWxlZCByZXNldCBhbmQgYQo+Pj4gKyAgICAg
ICogZGVhZCBncHUgKG9uIGVsaykuIEFsc28gYXMgbW9kZXJuIGdwdSBhcyBrYmwgY2FuIHN1ZmZl
cgo+Pj4gKyAgICAgICogZnJvbSBzeXN0ZW0gaGFuZyBpZiBiYXRjaGJ1ZmZlciBpcyBwcm9ncmVz
c2luZyB3aGVuCj4+PiArICAgICAgKiB0aGUgcmVzZXQgaXMgaXNzdWVkLCByZWdhcmRsZXNzIG9m
IFJFQURZX1RPX1JFU0VUIGFjay4KPj4+ICsgICAgICAqIFRodXMgYXNzdW1lIGl0IGlzIGJlc3Qg
dG8gc3RvcCBlbmdpbmVzIG9uIGFsbCBnZW5zCj4+PiArICAgICAgKiB3aGVyZSB3ZSBoYXZlIGEg
Z3B1IHJlc2V0Lgo+Pj4gKyAgICAgICoKPj4+ICsgICAgICAqIFdhS0JMVkVDU1NlbWFwaG9yZVdh
aXRQb2xsOmtibCAob24gQUxMX0VOR0lORVMpCj4+PiArICAgICAgKgo+Pj4gKyAgICAgICogRklY
TUU6IFdhIGZvciBtb3JlIG1vZGVybiBnZW5zIG5lZWRzIHRvIGJlIHZhbGlkYXRlZAo+Pj4gKyAg
ICAgICovCj4+PiArICAgICBpbnRlbF9lbmdpbmVfc3RvcF9jcyhlbmdpbmUpOwo+Pj4gICAgfQo+
Pj4gICAgCj4+PiAgICBzdGF0aWMgdm9pZCByZXNldF9jc2JfcG9pbnRlcnMoc3RydWN0IGludGVs
X2VuZ2luZV9jcyAqZW5naW5lKQo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3Jlc2V0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5j
Cj4+PiBpbmRleCA3ZGRlZGZiMTZhYTIuLjU1ZTJkZGNiZDIxNSAxMDA2NDQKPj4+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKPj4+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKPj4+IEBAIC0xMzUsNDcgKzEzNSw2IEBAIHZvaWQg
X19pOTE1X3JlcXVlc3RfcmVzZXQoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsIGJvb2wgZ3VpbHR5
KQo+Pj4gICAgICAgIH0KPj4+ICAgIH0KPj4+ICAgIAo+Pj4gLXN0YXRpYyB2b2lkIGdlbjNfc3Rv
cF9lbmdpbmUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+Pj4gLXsKPj4+IC0gICAg
IHN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9IGVuZ2luZS0+dW5jb3JlOwo+Pj4gLSAgICAg
Y29uc3QgdTMyIGJhc2UgPSBlbmdpbmUtPm1taW9fYmFzZTsKPj4+IC0KPj4+IC0gICAgIEdFTV9U
UkFDRSgiJXNcbiIsIGVuZ2luZS0+bmFtZSk7Cj4+PiAtCj4+PiAtICAgICBpZiAoaW50ZWxfZW5n
aW5lX3N0b3BfY3MoZW5naW5lKSkKPj4+IC0gICAgICAgICAgICAgR0VNX1RSQUNFKCIlczogdGlt
ZWQgb3V0IG9uIFNUT1BfUklOR1xuIiwgZW5naW5lLT5uYW1lKTsKPj4+IC0KPj4+IC0gICAgIGlu
dGVsX3VuY29yZV93cml0ZV9mdyh1bmNvcmUsCj4+PiAtICAgICAgICAgICAgICAgICAgICAgICAg
ICAgUklOR19IRUFEKGJhc2UpLAo+Pj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgIGludGVs
X3VuY29yZV9yZWFkX2Z3KHVuY29yZSwgUklOR19UQUlMKGJhc2UpKSk7Cj4+PiAtICAgICBpbnRl
bF91bmNvcmVfcG9zdGluZ19yZWFkX2Z3KHVuY29yZSwgUklOR19IRUFEKGJhc2UpKTsgLyogcGFy
YW5vaWEgKi8KPj4+IC0KPj4+IC0gICAgIGludGVsX3VuY29yZV93cml0ZV9mdyh1bmNvcmUsIFJJ
TkdfSEVBRChiYXNlKSwgMCk7Cj4+PiAtICAgICBpbnRlbF91bmNvcmVfd3JpdGVfZncodW5jb3Jl
LCBSSU5HX1RBSUwoYmFzZSksIDApOwo+Pj4gLSAgICAgaW50ZWxfdW5jb3JlX3Bvc3RpbmdfcmVh
ZF9mdyh1bmNvcmUsIFJJTkdfVEFJTChiYXNlKSk7Cj4+PiAtCj4+PiAtICAgICAvKiBUaGUgcmlu
ZyBtdXN0IGJlIGVtcHR5IGJlZm9yZSBpdCBpcyBkaXNhYmxlZCAqLwo+Pj4gLSAgICAgaW50ZWxf
dW5jb3JlX3dyaXRlX2Z3KHVuY29yZSwgUklOR19DVEwoYmFzZSksIDApOwo+Pj4gLQo+Pj4gLSAg
ICAgLyogQ2hlY2sgYWN0cyBhcyBhIHBvc3QgKi8KPj4+IC0gICAgIGlmIChpbnRlbF91bmNvcmVf
cmVhZF9mdyh1bmNvcmUsIFJJTkdfSEVBRChiYXNlKSkpCj4+PiAtICAgICAgICAgICAgIEdFTV9U
UkFDRSgiJXM6IHJpbmcgaGVhZCBbJXhdIG5vdCBwYXJrZWRcbiIsCj4+PiAtICAgICAgICAgICAg
ICAgICAgICAgICBlbmdpbmUtPm5hbWUsCj4+PiAtICAgICAgICAgICAgICAgICAgICAgICBpbnRl
bF91bmNvcmVfcmVhZF9mdyh1bmNvcmUsIFJJTkdfSEVBRChiYXNlKSkpOwo+Pj4gLX0KPj4+IC0K
Pj4+IC1zdGF0aWMgdm9pZCBzdG9wX2VuZ2luZXMoc3RydWN0IGludGVsX2d0ICpndCwgaW50ZWxf
ZW5naW5lX21hc2tfdCBlbmdpbmVfbWFzaykKPj4+IC17Cj4+PiAtICAgICBzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2NzICplbmdpbmU7Cj4+PiAtICAgICBpbnRlbF9lbmdpbmVfbWFza190IHRtcDsKPj4+
IC0KPj4+IC0gICAgIGlmIChJTlRFTF9HRU4oZ3QtPmk5MTUpIDwgMykKPj4+IC0gICAgICAgICAg
ICAgcmV0dXJuOwo+Pj4gLQo+Pj4gLSAgICAgZm9yX2VhY2hfZW5naW5lX21hc2tlZChlbmdpbmUs
IGd0LT5pOTE1LCBlbmdpbmVfbWFzaywgdG1wKQo+Pj4gLSAgICAgICAgICAgICBnZW4zX3N0b3Bf
ZW5naW5lKGVuZ2luZSk7Cj4+PiAtfQo+Pj4gLQo+Pj4gICAgc3RhdGljIGJvb2wgaTkxNV9pbl9y
ZXNldChzdHJ1Y3QgcGNpX2RldiAqcGRldikKPj4+ICAgIHsKPj4+ICAgICAgICB1OCBnZHJzdDsK
Pj4+IEBAIC02MDcsMjMgKzU2Niw2IEBAIGludCBfX2ludGVsX2d0X3Jlc2V0KHN0cnVjdCBpbnRl
bF9ndCAqZ3QsIGludGVsX2VuZ2luZV9tYXNrX3QgZW5naW5lX21hc2spCj4+PiAgICAgICAgICov
Cj4+PiAgICAgICAgaW50ZWxfdW5jb3JlX2ZvcmNld2FrZV9nZXQoZ3QtPnVuY29yZSwgRk9SQ0VX
QUtFX0FMTCk7Cj4+PiAgICAgICAgZm9yIChyZXRyeSA9IDA7IHJldCA9PSAtRVRJTUVET1VUICYm
IHJldHJ5IDwgcmV0cmllczsgcmV0cnkrKykgewo+Pj4gLSAgICAgICAgICAgICAvKgo+Pj4gLSAg
ICAgICAgICAgICAgKiBXZSBzdG9wIGVuZ2luZXMsIG90aGVyd2lzZSB3ZSBtaWdodCBnZXQgZmFp
bGVkIHJlc2V0IGFuZCBhCj4+PiAtICAgICAgICAgICAgICAqIGRlYWQgZ3B1IChvbiBlbGspLiBB
bHNvIGFzIG1vZGVybiBncHUgYXMga2JsIGNhbiBzdWZmZXIKPj4+IC0gICAgICAgICAgICAgICog
ZnJvbSBzeXN0ZW0gaGFuZyBpZiBiYXRjaGJ1ZmZlciBpcyBwcm9ncmVzc2luZyB3aGVuCj4+PiAt
ICAgICAgICAgICAgICAqIHRoZSByZXNldCBpcyBpc3N1ZWQsIHJlZ2FyZGxlc3Mgb2YgUkVBRFlf
VE9fUkVTRVQgYWNrLgo+Pj4gLSAgICAgICAgICAgICAgKiBUaHVzIGFzc3VtZSBpdCBpcyBiZXN0
IHRvIHN0b3AgZW5naW5lcyBvbiBhbGwgZ2Vucwo+Pj4gLSAgICAgICAgICAgICAgKiB3aGVyZSB3
ZSBoYXZlIGEgZ3B1IHJlc2V0Lgo+Pj4gLSAgICAgICAgICAgICAgKgo+Pj4gLSAgICAgICAgICAg
ICAgKiBXYUtCTFZFQ1NTZW1hcGhvcmVXYWl0UG9sbDprYmwgKG9uIEFMTF9FTkdJTkVTKQo+Pj4g
LSAgICAgICAgICAgICAgKgo+Pj4gLSAgICAgICAgICAgICAgKiBXYU1lZGlhUmVzZXRNYWluUmlu
Z0NsZWFudXA6Y3RnLGVsayAocHJlc3VtYWJseSkKPj4+IC0gICAgICAgICAgICAgICoKPj4+IC0g
ICAgICAgICAgICAgICogRklYTUU6IFdhIGZvciBtb3JlIG1vZGVybiBnZW5zIG5lZWRzIHRvIGJl
IHZhbGlkYXRlZAo+Pj4gLSAgICAgICAgICAgICAgKi8KPj4+IC0gICAgICAgICAgICAgaWYgKHJl
dHJ5KQo+Pj4gLSAgICAgICAgICAgICAgICAgICAgIHN0b3BfZW5naW5lcyhndCwgZW5naW5lX21h
c2spOwo+Pj4gLQo+Pgo+PiBPbmx5IG90aGVyIGZ1bmN0aW9uYWwgY2hhbmdlIEkgc2VlIGlzIHRo
YXQgd2Ugc3RvcCByZXRyeWluZyB0byBzdG9wIHRoZQo+PiBlbmdpbmVzIGJlZm9yZSByZXNldCBh
dHRlbXB0cy4gSSBkb24ndCBrbm93IGlmIHRoYXQgaXMgYSBjb25jZXJuIG9yIG5vdC4KPiAKPiBB
aCwgYnV0IHdlIGRvIHN0b3AgdGhlIGVuZ2luZSBiZWZvcmUgcmVzZXRzIGluICpyZXNldF9wcmVw
YXJlLiBUaGUgb3RoZXIKPiBwYXRoIHRvIGFycml2ZSBpcyBpbiBzYW5pdGl6ZSB3aGVyZSB3ZSBk
b24ndCBrbm93IGVub3VnaCBzdGF0ZSB0byBzYWZlbHkKPiB0d2VhayB0aGUgZW5naW5lcy4gRm9y
IHRob3NlLCBJIGNsYWltIGl0IHNob3VsZG4ndCBtYXR0ZXIgYXMgdGhlIGVuZ2luZXMKPiBzaG91
bGQgYmUgaWRsZSBhbmQgd2Ugb25seSBuZWVkIHRoZSByZXNldCB0byBjbGVhciBzdGFsZSBjb250
ZXh0IHN0YXRlLgoKWWVzIEkga25vdyB0aGF0IHdlIGRvIGNhbGwgc3RvcCBpbiBwcmVwYXJlLCBq
dXN0IG5vdCBvbiB0aGUgcmVzZXQgcmV0cnkgCnBhdGguIEl0J3MgdGhlIGFib3ZlIGxvb3AsIGlm
IHJlc2V0IHdhcyBmYWlsaW5nIGFuZCBuZWVkZWQgcmV0cmllcyAKYmVmb3JlIHdlIHdvdWxkIHJl
LXJldHJpZWQgc3RvcHBpbmcgZW5naW5lcyBhbmQgbm93IHdlIHdvdWxkIG5vdC4KClJlZ2FyZHMs
CgpUdnJ0a28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
