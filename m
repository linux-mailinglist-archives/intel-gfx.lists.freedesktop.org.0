Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 760892931D
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 10:31:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E05426E02B;
	Fri, 24 May 2019 08:31:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31CF86E02B
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 08:31:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 May 2019 01:31:47 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO [10.252.20.122])
 ([10.252.20.122])
 by FMSMGA003.fm.intel.com with ESMTP; 24 May 2019 01:31:46 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190524064529.20514-1-chris@chris-wilson.co.uk>
 <3806b12a-c2e2-fab4-b038-c8dd33daefd1@linux.intel.com>
 <155868585422.28319.13611154637326086125@skylake-alporthouse-com>
 <784ff780-a9b2-b997-1e4f-ed47f313d280@linux.intel.com>
 <155868654679.28319.17830052202613739639@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <0cc2c0e6-5d0a-1286-2f4a-36a69e2dca19@linux.intel.com>
Date: Fri, 24 May 2019 09:31:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155868654679.28319.17830052202613739639@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [BrownBag] drm/i915/gtt: Neuter the deferred unbind
 callback from gen6_ppgtt_cleanup
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
Cc: Tomi Sarvela <tomi.p.sarvela@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDI0LzA1LzIwMTkgMDk6MjksIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTI0IDA5OjIzOjQwKQo+Pgo+PiBPbiAyNC8wNS8yMDE5IDA5OjE3
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA1
LTI0IDA5OjEzOjE0KQo+Pj4+Cj4+Pj4gT24gMjQvMDUvMjAxOSAwNzo0NSwgQ2hyaXMgV2lsc29u
IHdyb3RlOgo+Pj4+PiBIYXZpbmcgZGVmZXJyZWQgdGhlIHZtYSBkZXN0cnVjdGlvbiB0byBhIHdv
cmtlciB3aGVyZSB3ZSBjYW4gYWNxdWlyZSB0aGUKPj4+Pj4gc3RydWN0X211dGV4LCB3ZSBoYXZl
IHRvIGF2b2lkIGNoYXNpbmcgYmFjayBpbnRvIHRoZSBub3cgZGVzdHJveWVkCj4+Pj4+IHBwZ3R0
LiBUaGUgcGRfdm1hIGlzIHNwZWNpYWwgaW4gaGF2aW5nIGEgY3VzdG9tIHVuYmluZCBmdW5jdGlv
biB0byBzY2FuCj4+Pj4+IGZvciB1bnVzZWQgcGFnZXMgZGVzcGl0ZSB0aGUgVk1BIGl0c2VsZiBi
ZWluZyBub3Rpb25hbGx5IHBhcnQgb2YgdGhlCj4+Pj4+IEdHVFQuIEFzIHN1Y2gsIHdlIG5lZWQg
dG8gZGlzYWJsZSB0aGF0IGNhbGxiYWNrIHRvIGF2b2lkIGEKPj4+Pj4gdXNlLWFmdGVyLWZyZWUu
Cj4+Pj4+Cj4+Pj4+IFRoaXMgdW5mb3J0dW5hdGVseSBibGV3IHVwIHNvIGVhcmx5IGR1cmluZyBi
b290IHRoYXQgQ0kgZGVjbGFyZWQgdGhlCj4+Pj4+IG1hY2hpbmUgdW5yZWFjaGFibGUgYXMgb3Bw
b3NlZCB0byBiZWluZyB0aGUgbWFqb3IgZmFpbHVyZSBpdCB3YXMuIE9vcHMuCj4+Pj4+Cj4+Pj4+
IEZpeGVzOiBkMzYyMjA5OWM3NmYgKCJkcm0vaTkxNS9ndHQ6IEFsd2F5cyBhY3F1aXJlIHN0cnVj
dF9tdXRleCBmb3IgZ2VuNl9wcGd0dF9jbGVhbnVwIikKPj4+Pj4gU2lnbmVkLW9mZi1ieTogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4+Pj4+IENjOiBUdnJ0a28gVXJz
dWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pj4+PiBDYzogVG9taSBTYXJ2ZWxhIDx0
b21pLnAuc2FydmVsYUBpbnRlbC5jb20+Cj4+Pj4+IC0tLQo+Pj4+PiAgICAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgfCAyOCArKysrKysrKysrKysrKysrKysrKysrKysrKysr
Cj4+Pj4+ICAgICAxIGZpbGUgY2hhbmdlZCwgMjggaW5zZXJ0aW9ucygrKQo+Pj4+Pgo+Pj4+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+Pj4+PiBpbmRleCA4ZDhhNGIwYWQ0ZDkuLjI2
NmJhYTExZGY2NCAxMDA2NDQKPj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW1fZ3R0LmMKPj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMK
Pj4+Pj4gQEAgLTE4NDcsNiArMTg0NywzMyBAQCBzdGF0aWMgdm9pZCBnZW42X3BwZ3R0X2NsZWFu
dXBfd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndyaykKPj4+Pj4gICAgICAgICBrZnJlZSh3b3Jr
KTsKPj4+Pj4gICAgIH0KPj4+Pj4gICAgIAo+Pj4+PiArc3RhdGljIGludCBub3Bfc2V0X3BhZ2Vz
KHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQo+Pj4+PiArewo+Pj4+PiArICAgICByZXR1cm4gLUVOT0RF
VjsKPj4+Pj4gK30KPj4+Pj4gKwo+Pj4+PiArc3RhdGljIHZvaWQgbm9wX2NsZWFyX3BhZ2VzKHN0
cnVjdCBpOTE1X3ZtYSAqdm1hKQo+Pj4+PiArewo+Pj4+PiArfQo+Pj4+PiArCj4+Pj4+ICtzdGF0
aWMgaW50IG5vcF9iaW5kKHN0cnVjdCBpOTE1X3ZtYSAqdm1hLAo+Pj4+PiArICAgICAgICAgICAg
ICAgICBlbnVtIGk5MTVfY2FjaGVfbGV2ZWwgY2FjaGVfbGV2ZWwsCj4+Pj4+ICsgICAgICAgICAg
ICAgICAgIHUzMiB1bnVzZWQpCj4+Pj4+ICt7Cj4+Pj4+ICsgICAgIHJldHVybiAtRU5PREVWOwo+
Pj4+PiArfQo+Pj4+PiArCj4+Pj4+ICtzdGF0aWMgdm9pZCBub3BfdW5iaW5kKHN0cnVjdCBpOTE1
X3ZtYSAqdm1hKQo+Pj4+PiArewo+Pj4+PiArfQo+Pj4+PiArCj4+Pj4+ICtzdGF0aWMgY29uc3Qg
c3RydWN0IGk5MTVfdm1hX29wcyBub3Bfdm1hX29wcyA9IHsKPj4+Pj4gKyAgICAgLnNldF9wYWdl
cyA9IG5vcF9zZXRfcGFnZXMsCj4+Pj4+ICsgICAgIC5jbGVhcl9wYWdlcyA9IG5vcF9jbGVhcl9w
YWdlcywKPj4+Pj4gKyAgICAgLmJpbmRfdm1hID0gbm9wX2JpbmQsCj4+Pj4+ICsgICAgIC51bmJp
bmRfdm1hID0gbm9wX3VuYmluZCwKPj4+Pj4gK307Cj4+Pj4+ICsKPj4+Pj4gICAgIHN0YXRpYyB2
b2lkIGdlbjZfcHBndHRfY2xlYW51cChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkKPj4+
Pj4gICAgIHsKPj4+Pj4gICAgICAgICBzdHJ1Y3QgZ2VuNl9od19wcGd0dCAqcHBndHQgPSB0b19n
ZW42X3BwZ3R0KGk5MTVfdm1fdG9fcHBndHQodm0pKTsKPj4+Pj4gQEAgLTE4NTUsNiArMTg4Miw3
IEBAIHN0YXRpYyB2b2lkIGdlbjZfcHBndHRfY2xlYW51cChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3Nw
YWNlICp2bSkKPj4+Pj4gICAgICAgICAvKiBGSVhNRSByZW1vdmUgdGhlIHN0cnVjdF9tdXRleCB0
byBicmluZyB0aGUgbG9ja2luZyB1bmRlciBjb250cm9sICovCj4+Pj4+ICAgICAgICAgSU5JVF9X
T1JLKCZ3b3JrLT5iYXNlLCBnZW42X3BwZ3R0X2NsZWFudXBfd29yayk7Cj4+Pj4+ICAgICAgICAg
d29yay0+dm1hID0gcHBndHQtPnZtYTsKPj4+Pj4gKyAgICAgd29yay0+dm1hLT5vcHMgPSAmbm9w
X3ZtYV9vcHM7Cj4+Pj4KPj4+PiBDb3VsZCB3ZSB1c2Ugc29tZSBhc3NlcnRzIGJlZm9yZSBvdmVy
cmlkaW5nIHRoZSB2bWEgb3BzPyBMaWtlCj4+Pj4gR0VNX0JVR19PTih2bWEtPnBhZ2VzKT8gQW5k
IHNvbWV0aGluZyBmb3Igc3RpbGwgYm91bmQ/Cj4+Pgo+Pj4gSXQgdGVjaG5pY2FsbHkgc3RpbGwg
aXMgYm91bmQgYXMgaXQgaXMgaW4gdGhlIEdHVFQgYnV0IGN1cnJlbnRseQo+Pj4gdW5waW5uZWQg
LS0gdGhhdCB3aWxsIGJlIGNoZWNrZWQgb24gZGVzdHJveSwgaXQncyBqdXN0IHdlIGFsc28gZ2V0
IGFuCj4+PiB1bmJpbmQgY2FsbGJhY2suIHZtYS0+cGFnZXMgZG9lc24ndCBleGlzdCBmb3IgdGhp
cyAoc2V0IHRvIEVSUl9QVFIpLgo+Pgo+PiBJZiB3ZSBhcmUgZ2V0dGluZyB0aGUgdW5iaW5kIGNh
bGxiYWNrIGFuZCB3ZSBub3AtZWQgaXQsIHdobyB3aWxsCj4+IGFjdHVhbGx5IGRvIGl0J3Mgam9i
Pwo+IAo+IFRoZSBjYWxsYmFjayBpcyBqdXN0IGEgaG9vayBmb3IgdXMgdG8gcHJ1bmUgd2l0aGlu
IHRoZSBwcGd0dC4KPiBJdCBzdGlsbCBpcyByZW1vdmVkIGZyb20gR0dUVCBieSBpOTE1X3ZtYV91
bmJpbmQoKS4KClNvIGl0IG5lZWRzIEdFTV9CVUdfT04ocHBndHQtPnNjYW5fZm9yX3VudXNlZF9w
dCkgYmVmb3JlIG92ZXJyaWRpbmcgdGhlIAp1bmJpbmQ/CgpSZWdhcmRzLAoKVHZydGtvCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
