Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A22B463E9
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 18:21:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05B2F89AB5;
	Fri, 14 Jun 2019 16:21:43 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F56189AB5
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 16:21:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 09:21:41 -0700
X-ExtLoop1: 1
Received: from yyosef-mobl.ger.corp.intel.com (HELO [10.252.23.42])
 ([10.252.23.42])
 by orsmga003.jf.intel.com with ESMTP; 14 Jun 2019 09:21:40 -0700
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20190614151731.17608-1-tvrtko.ursulin@linux.intel.com>
 <20190614151731.17608-7-tvrtko.ursulin@linux.intel.com>
 <20190614152512.GC19512@intel.com>
 <dc2cfa23-42a2-f51f-434e-1534bccb48cc@linux.intel.com>
 <20190614161618.GJ19512@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <94563ea1-0ca2-689b-b51e-6ee7d26984d3@linux.intel.com>
Date: Fri, 14 Jun 2019 17:21:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190614161618.GJ19512@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 06/31] drm/i915: Convert
 i915_gem_init_swizzling to intel_gt
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE0LzA2LzIwMTkgMTc6MTYsIFJvZHJpZ28gVml2aSB3cm90ZToKPiBPbiBGcmksIEp1biAx
NCwgMjAxOSBhdCAwNDozNjo1N1BNICswMTAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToKPj4KPj4g
T24gMTQvMDYvMjAxOSAxNjoyNSwgUm9kcmlnbyBWaXZpIHdyb3RlOgo+Pj4gT24gRnJpLCBKdW4g
MTQsIDIwMTkgYXQgMDQ6MTc6MDZQTSArMDEwMCwgVHZydGtvIFVyc3VsaW4gd3JvdGU6Cj4+Pj4g
RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPj4+Pgo+Pj4+
IFN0YXJ0IHVzaW5nIHRoZSBuZXdseSBpbnRyb2R1Y2VkIHN0cnVjdCBpbnRlbF9ndCB0byBmdXNl
IHRvZ2V0aGVyIGNvcnJlY3QKPj4+PiBsb2dpY2FsIGluaXQgZmxvdyB3aXRoIHVuY29yZSBmb3Ig
bW9yZSByZW1vdmFsIG9mIGltcGxpY2l0IGRldl9wcml2IGluCj4+Pj4gbW1pbyBhY2Nlc3MuCj4+
Pj4KPj4+PiB2MjoKPj4+PiAgICAqIE1vdmUgY29kZSB0byBpOTE1X2dlbV9mZW5jZV9yZWcuIChD
aHJpcykKPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJz
dWxpbkBpbnRlbC5jb20+Cj4+Pj4gLS0tCj4+Pj4gICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuYyAgICAgICAgICAgfCAgNCArLS0KPj4+PiAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oICAgICAgICAgICB8ICAxIC0KPj4+PiAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbS5jICAgICAgICAgICB8IDI1ICstLS0tLS0tLS0tLS0tLQo+Pj4+ICAgIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5jIHwgMzcgKysrKysrKysrKysrKysrKysr
KysrKysKPj4+PiAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9mZW5jZV9yZWcuaCB8
ICAzICsrCj4+Pj4gICAgNSBmaWxlcyBjaGFuZ2VkLCA0MyBpbnNlcnRpb25zKCspLCAyNyBkZWxl
dGlvbnMoLSkKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+Pj4+IGluZGV4IDk3MTU1
YzVlYjdlMS4uMWRmNzZmN2M3MTdlIDEwMDY0NAo+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmMKPj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5j
Cj4+Pj4gQEAgLTI5MzUsNyArMjkzNSw3IEBAIHN0YXRpYyBpbnQgaW50ZWxfcnVudGltZV9zdXNw
ZW5kKHN0cnVjdCBkZXZpY2UgKmtkZXYpCj4+Pj4gICAgCQlpbnRlbF91Y19yZXN1bWUoZGV2X3By
aXYpOwo+Pj4+IC0JCWk5MTVfZ2VtX2luaXRfc3dpenpsaW5nKGRldl9wcml2KTsKPj4+PiArCQlp
bnRlbF9ndF9pbml0X3N3aXp6bGluZygmZGV2X3ByaXYtPmd0KTsKPj4+PiAgICAJCWk5MTVfZ2Vt
X3Jlc3RvcmVfZmVuY2VzKGRldl9wcml2KTsKPj4+PiAgICAJCWVuYWJsZV9ycG1fd2FrZXJlZl9h
c3NlcnRzKGRldl9wcml2KTsKPj4+PiBAQCAtMzAzNiw3ICszMDM2LDcgQEAgc3RhdGljIGludCBp
bnRlbF9ydW50aW1lX3Jlc3VtZShzdHJ1Y3QgZGV2aWNlICprZGV2KQo+Pj4+ICAgIAkgKiBObyBw
b2ludCBvZiByb2xsaW5nIGJhY2sgdGhpbmdzIGluIGNhc2Ugb2YgYW4gZXJyb3IsIGFzIHRoZSBi
ZXN0Cj4+Pj4gICAgCSAqIHdlIGNhbiBkbyBpcyB0byBob3BlIHRoYXQgdGhpbmdzIHdpbGwgc3Rp
bGwgd29yayAoYW5kIGRpc2FibGUgUlBNKS4KPj4+PiAgICAJICovCj4+Pj4gLQlpOTE1X2dlbV9p
bml0X3N3aXp6bGluZyhkZXZfcHJpdik7Cj4+Pj4gKwlpbnRlbF9ndF9pbml0X3N3aXp6bGluZygm
ZGV2X3ByaXYtPmd0KTsKPj4+PiAgICAJaTkxNV9nZW1fcmVzdG9yZV9mZW5jZXMoZGV2X3ByaXYp
Owo+Pj4+ICAgIAkvKgo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+Pj4+IGluZGV4IGUyYzg4
MTNjOTM1NS4uMWViMjAzZmRlZTYwIDEwMDY0NAo+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmgKPj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
Cj4+Pj4gQEAgLTI1ODYsNyArMjU4Niw2IEBAIGJvb2wgaTkxNV9nZW1fdW5zZXRfd2VkZ2VkKHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7Cj4+Pj4gICAgdm9pZCBpOTE1X2dlbV9p
bml0X21taW8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwo+Pj4+ICAgIGludCBfX211
c3RfY2hlY2sgaTkxNV9nZW1faW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYp
Owo+Pj4+ICAgIGludCBfX211c3RfY2hlY2sgaTkxNV9nZW1faW5pdF9odyhzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwo+Pj4+IC12b2lkIGk5MTVfZ2VtX2luaXRfc3dpenpsaW5n
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7Cj4+Pj4gICAgdm9pZCBpOTE1X2dl
bV9maW5pX2h3KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7Cj4+Pj4gICAgdm9p
ZCBpOTE1X2dlbV9maW5pKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7Cj4+Pj4g
ICAgaW50IGk5MTVfZ2VtX3dhaXRfZm9yX2lkbGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2LAo+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwo+Pj4+IGluZGV4IDdmZGYyNTJmOTMy
Mi4uNWMwZGI5MzQzMTViIDEwMDY0NAo+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtLmMKPj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCj4+Pj4g
QEAgLTEyMDUsMjkgKzEyMDUsNiBAQCB2b2lkIGk5MTVfZ2VtX3Nhbml0aXplKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1KQo+Pj4+ICAgIAltdXRleF91bmxvY2soJmk5MTUtPmRybS5zdHJ1
Y3RfbXV0ZXgpOwo+Pj4+ICAgIH0KPj4+PiAtdm9pZCBpOTE1X2dlbV9pbml0X3N3aXp6bGluZyhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4+Pj4gLXsKPj4+PiAtCWlmIChJTlRF
TF9HRU4oZGV2X3ByaXYpIDwgNSB8fAo+Pj4+IC0JICAgIGRldl9wcml2LT5tbS5iaXRfNl9zd2l6
emxlX3ggPT0gSTkxNV9CSVRfNl9TV0laWkxFX05PTkUpCj4+Pj4gLQkJcmV0dXJuOwo+Pj4+IC0K
Pj4+PiAtCUk5MTVfV1JJVEUoRElTUF9BUkJfQ1RMLCBJOTE1X1JFQUQoRElTUF9BUkJfQ1RMKSB8
Cj4+Pj4gLQkJCQkgRElTUF9USUxFX1NVUkZBQ0VfU1dJWlpMSU5HKTsKPj4+PiAtCj4+Pj4gLQlp
ZiAoSVNfR0VOKGRldl9wcml2LCA1KSkKPj4+PiAtCQlyZXR1cm47Cj4+Pj4gLQo+Pj4+IC0JSTkx
NV9XUklURShUSUxFQ1RMLCBJOTE1X1JFQUQoVElMRUNUTCkgfCBUSUxFQ1RMX1NXWkNUTCk7Cj4+
Pj4gLQlpZiAoSVNfR0VOKGRldl9wcml2LCA2KSkKPj4+PiAtCQlJOTE1X1dSSVRFKEFSQl9NT0RF
LCBfTUFTS0VEX0JJVF9FTkFCTEUoQVJCX01PREVfU1dJWlpMRV9TTkIpKTsKPj4+PiAtCWVsc2Ug
aWYgKElTX0dFTihkZXZfcHJpdiwgNykpCj4+Pj4gLQkJSTkxNV9XUklURShBUkJfTU9ERSwgX01B
U0tFRF9CSVRfRU5BQkxFKEFSQl9NT0RFX1NXSVpaTEVfSVZCKSk7Cj4+Pj4gLQllbHNlIGlmIChJ
U19HRU4oZGV2X3ByaXYsIDgpKQo+Pj4+IC0JCUk5MTVfV1JJVEUoR0FNVEFSQk1PREUsIF9NQVNL
RURfQklUX0VOQUJMRShBUkJfTU9ERV9TV0laWkxFX0JEVykpOwo+Pj4+IC0JZWxzZQo+Pj4+IC0J
CUJVRygpOwo+Pj4+IC19Cj4+Pj4gLQo+Pj4+ICAgIHN0YXRpYyB2b2lkIGluaXRfdW51c2VkX3Jp
bmcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1MzIgYmFzZSkKPj4+PiAgICB7
Cj4+Pj4gICAgCUk5MTVfV1JJVEUoUklOR19DVEwoYmFzZSksIDApOwo+Pj4+IEBAIC0xMjc0LDcg
KzEyNTEsNyBAQCBpbnQgaTkxNV9nZW1faW5pdF9odyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYpCj4+Pj4gICAgCS8qIC4uLmFuZCBkZXRlcm1pbmUgd2hldGhlciB0aGV5IGFyZSBz
dGlja2luZy4gKi8KPj4+PiAgICAJaW50ZWxfZ3RfdmVyaWZ5X3dvcmthcm91bmRzKGRldl9wcml2
LCAiaW5pdCIpOwo+Pj4+IC0JaTkxNV9nZW1faW5pdF9zd2l6emxpbmcoZGV2X3ByaXYpOwo+Pj4+
ICsJaW50ZWxfZ3RfaW5pdF9zd2l6emxpbmcoJmRldl9wcml2LT5ndCk7Cj4+Pj4gICAgCS8qCj4+
Pj4gICAgCSAqIEF0IGxlYXN0IDgzMCBjYW4gbGVhdmUgc29tZSBvZiB0aGUgdW51c2VkIHJpbmdz
Cj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3Jl
Zy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZmVuY2VfcmVnLmMKPj4+PiBpbmRl
eCAxYzk0NjY2NzZjYWYuLmZjMjY4NTk5YTBjMyAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbV9mZW5jZV9yZWcuYwo+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX2ZlbmNlX3JlZy5jCj4+Pj4gQEAgLTgzNCwzICs4MzQsNDAgQEAgdm9p
ZCBpOTE1X2dndHRfaW5pdF9mZW5jZXMoc3RydWN0IGk5MTVfZ2d0dCAqZ2d0dCkKPj4+PiAgICAJ
aTkxNV9nZW1fcmVzdG9yZV9mZW5jZXMoaTkxNSk7Cj4+Pj4gICAgfQo+Pj4+ICsKPj4+PiArdm9p
ZCBpbnRlbF9ndF9pbml0X3N3aXp6bGluZyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQo+Pj4+ICt7Cj4+
Pj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGd0LT5pOTE1Owo+Pj4+ICsJc3Ry
dWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gZ3QtPnVuY29yZTsKPj4+PiArCj4+Pj4gKwlpZiAo
SU5URUxfR0VOKGk5MTUpIDwgNSB8fAo+Pj4+ICsJICAgIGk5MTUtPm1tLmJpdF82X3N3aXp6bGVf
eCA9PSBJOTE1X0JJVF82X1NXSVpaTEVfTk9ORSkKPj4+PiArCQlyZXR1cm47Cj4+Pj4gKwo+Pj4+
ICsJaW50ZWxfdW5jb3JlX3dyaXRlKHVuY29yZSwKPj4+PiArCQkJICAgRElTUF9BUkJfQ1RMLAo+
Pj4+ICsJCQkgICBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIERJU1BfQVJCX0NUTCkgfAo+Pj4+
ICsJCQkgICBESVNQX1RJTEVfU1VSRkFDRV9TV0laWkxJTkcpOwo+Pj4KPj4+IGNvdWxkIHdlIGNo
YW5nZSB0aGlzIHRvIGludGVsX3VuY29yZV9ybXcgPwo+Pj4KPj4+PiArCj4+Pj4gKwlpZiAoSVNf
R0VOKGk5MTUsIDUpKQo+Pj4+ICsJCXJldHVybjsKPj4+PiArCj4+Pj4gKwlpbnRlbF91bmNvcmVf
d3JpdGUodW5jb3JlLAo+Pj4+ICsJCQkgICBUSUxFQ1RMLAo+Pj4+ICsJCQkgICBpbnRlbF91bmNv
cmVfcmVhZCh1bmNvcmUsIFRJTEVDVEwpIHwgVElMRUNUTF9TV1pDVEwpOwo+Pj4KPj4+IGFuZCBo
ZXJlIGFzIHdlbGw/Cj4+Cj4+IFllcyBvZiBjb3Vyc2UuLiBtYXJraW5nIGFzIFRPRE8uCj4gCj4g
b3BzLCBhbmQgSSBmb3Jnb3QgdG8gc3RhdGUgdGhhdCB3aXRoIHRoYXQgYWxyZWFkeSBhZGQKPiAK
PiBSZXZpZXdlZC1ieTogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgoKVGhh
bmtzISBJIGhvd2V2ZXIgcGxhbm5lZCB0byBjb25zb2xpZGF0ZSB3aXRoIHJtdyBpbiBhIHNlcGFy
YXRlIHBhdGNoLiAKSnVzdCB0byBrZWVwIGRpZmZlcmVudCBjbGFzcyBvZiBjaGFuZ2VzIHNlcGFy
YXRlLiBDYW4gSSBrZWVwIHRoZSByLWIgZm9yIAp0aGlzIHBhdGNoIGFzIGlzIGluIHRoaXMgY2Fz
ZT8KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
