Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE43293CB
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 10:56:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 153336E03B;
	Fri, 24 May 2019 08:55:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 838DD6E0A5
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 08:55:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16665008-1500050 for multiple; Fri, 24 May 2019 09:55:21 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <68cf1795-b914-40b3-645c-0c198e7859db@linux.intel.com>
References: <20190524064529.20514-1-chris@chris-wilson.co.uk>
 <3806b12a-c2e2-fab4-b038-c8dd33daefd1@linux.intel.com>
 <155868585422.28319.13611154637326086125@skylake-alporthouse-com>
 <784ff780-a9b2-b997-1e4f-ed47f313d280@linux.intel.com>
 <155868654679.28319.17830052202613739639@skylake-alporthouse-com>
 <0cc2c0e6-5d0a-1286-2f4a-36a69e2dca19@linux.intel.com>
 <155868699138.28319.7611854554635469420@skylake-alporthouse-com>
 <68cf1795-b914-40b3-645c-0c198e7859db@linux.intel.com>
Message-ID: <155868811933.28319.5789584910118166879@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 24 May 2019 09:55:19 +0100
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0yNCAwOTo1MTo0NikKPiAKPiBPbiAyNC8w
NS8yMDE5IDA5OjM2LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTA1LTI0IDA5OjMxOjQ1KQo+ID4+Cj4gPj4gT24gMjQvMDUvMjAxOSAwOToyOSwg
Q2hyaXMgV2lsc29uIHdyb3RlOgo+ID4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA1
LTI0IDA5OjIzOjQwKQo+ID4+Pj4KPiA+Pj4+IE9uIDI0LzA1LzIwMTkgMDk6MTcsIENocmlzIFdp
bHNvbiB3cm90ZToKPiA+Pj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA1LTI0IDA5
OjEzOjE0KQo+ID4+Pj4+Pgo+ID4+Pj4+PiBPbiAyNC8wNS8yMDE5IDA3OjQ1LCBDaHJpcyBXaWxz
b24gd3JvdGU6Cj4gPj4+Pj4+PiBIYXZpbmcgZGVmZXJyZWQgdGhlIHZtYSBkZXN0cnVjdGlvbiB0
byBhIHdvcmtlciB3aGVyZSB3ZSBjYW4gYWNxdWlyZSB0aGUKPiA+Pj4+Pj4+IHN0cnVjdF9tdXRl
eCwgd2UgaGF2ZSB0byBhdm9pZCBjaGFzaW5nIGJhY2sgaW50byB0aGUgbm93IGRlc3Ryb3llZAo+
ID4+Pj4+Pj4gcHBndHQuIFRoZSBwZF92bWEgaXMgc3BlY2lhbCBpbiBoYXZpbmcgYSBjdXN0b20g
dW5iaW5kIGZ1bmN0aW9uIHRvIHNjYW4KPiA+Pj4+Pj4+IGZvciB1bnVzZWQgcGFnZXMgZGVzcGl0
ZSB0aGUgVk1BIGl0c2VsZiBiZWluZyBub3Rpb25hbGx5IHBhcnQgb2YgdGhlCj4gPj4+Pj4+PiBH
R1RULiBBcyBzdWNoLCB3ZSBuZWVkIHRvIGRpc2FibGUgdGhhdCBjYWxsYmFjayB0byBhdm9pZCBh
Cj4gPj4+Pj4+PiB1c2UtYWZ0ZXItZnJlZS4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBUaGlzIHVuZm9y
dHVuYXRlbHkgYmxldyB1cCBzbyBlYXJseSBkdXJpbmcgYm9vdCB0aGF0IENJIGRlY2xhcmVkIHRo
ZQo+ID4+Pj4+Pj4gbWFjaGluZSB1bnJlYWNoYWJsZSBhcyBvcHBvc2VkIHRvIGJlaW5nIHRoZSBt
YWpvciBmYWlsdXJlIGl0IHdhcy4gT29wcy4KPiA+Pj4+Pj4+Cj4gPj4+Pj4+PiBGaXhlczogZDM2
MjIwOTljNzZmICgiZHJtL2k5MTUvZ3R0OiBBbHdheXMgYWNxdWlyZSBzdHJ1Y3RfbXV0ZXggZm9y
IGdlbjZfcHBndHRfY2xlYW51cCIpCj4gPj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+Pj4+Pj4+IENjOiBUdnJ0a28gVXJzdWxp
biA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+ID4+Pj4+Pj4gQ2M6IFRvbWkgU2FydmVsYSA8
dG9taS5wLnNhcnZlbGFAaW50ZWwuY29tPgo+ID4+Pj4+Pj4gLS0tCj4gPj4+Pj4+PiAgICAgIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIHwgMjggKysrKysrKysrKysrKysrKysr
KysrKysrKysrKwo+ID4+Pj4+Pj4gICAgICAxIGZpbGUgY2hhbmdlZCwgMjggaW5zZXJ0aW9ucygr
KQo+ID4+Pj4+Pj4KPiA+Pj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4gPj4+
Pj4+PiBpbmRleCA4ZDhhNGIwYWQ0ZDkuLjI2NmJhYTExZGY2NCAxMDA2NDQKPiA+Pj4+Pj4+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4gPj4+Pj4+PiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+ID4+Pj4+Pj4gQEAgLTE4NDcsNiAr
MTg0NywzMyBAQCBzdGF0aWMgdm9pZCBnZW42X3BwZ3R0X2NsZWFudXBfd29yayhzdHJ1Y3Qgd29y
a19zdHJ1Y3QgKndyaykKPiA+Pj4+Pj4+ICAgICAgICAgIGtmcmVlKHdvcmspOwo+ID4+Pj4+Pj4g
ICAgICB9Cj4gPj4+Pj4+PiAgICAgIAo+ID4+Pj4+Pj4gK3N0YXRpYyBpbnQgbm9wX3NldF9wYWdl
cyhzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKPiA+Pj4+Pj4+ICt7Cj4gPj4+Pj4+PiArICAgICByZXR1
cm4gLUVOT0RFVjsKPiA+Pj4+Pj4+ICt9Cj4gPj4+Pj4+PiArCj4gPj4+Pj4+PiArc3RhdGljIHZv
aWQgbm9wX2NsZWFyX3BhZ2VzKHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQo+ID4+Pj4+Pj4gK3sKPiA+
Pj4+Pj4+ICt9Cj4gPj4+Pj4+PiArCj4gPj4+Pj4+PiArc3RhdGljIGludCBub3BfYmluZChzdHJ1
Y3QgaTkxNV92bWEgKnZtYSwKPiA+Pj4+Pj4+ICsgICAgICAgICAgICAgICAgIGVudW0gaTkxNV9j
YWNoZV9sZXZlbCBjYWNoZV9sZXZlbCwKPiA+Pj4+Pj4+ICsgICAgICAgICAgICAgICAgIHUzMiB1
bnVzZWQpCj4gPj4+Pj4+PiArewo+ID4+Pj4+Pj4gKyAgICAgcmV0dXJuIC1FTk9ERVY7Cj4gPj4+
Pj4+PiArfQo+ID4+Pj4+Pj4gKwo+ID4+Pj4+Pj4gK3N0YXRpYyB2b2lkIG5vcF91bmJpbmQoc3Ry
dWN0IGk5MTVfdm1hICp2bWEpCj4gPj4+Pj4+PiArewo+ID4+Pj4+Pj4gK30KPiA+Pj4+Pj4+ICsK
PiA+Pj4+Pj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGk5MTVfdm1hX29wcyBub3Bfdm1hX29wcyA9
IHsKPiA+Pj4+Pj4+ICsgICAgIC5zZXRfcGFnZXMgPSBub3Bfc2V0X3BhZ2VzLAo+ID4+Pj4+Pj4g
KyAgICAgLmNsZWFyX3BhZ2VzID0gbm9wX2NsZWFyX3BhZ2VzLAo+ID4+Pj4+Pj4gKyAgICAgLmJp
bmRfdm1hID0gbm9wX2JpbmQsCj4gPj4+Pj4+PiArICAgICAudW5iaW5kX3ZtYSA9IG5vcF91bmJp
bmQsCj4gPj4+Pj4+PiArfTsKPiA+Pj4+Pj4+ICsKPiA+Pj4+Pj4+ICAgICAgc3RhdGljIHZvaWQg
Z2VuNl9wcGd0dF9jbGVhbnVwKHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtKQo+ID4+Pj4+
Pj4gICAgICB7Cj4gPj4+Pj4+PiAgICAgICAgICBzdHJ1Y3QgZ2VuNl9od19wcGd0dCAqcHBndHQg
PSB0b19nZW42X3BwZ3R0KGk5MTVfdm1fdG9fcHBndHQodm0pKTsKPiA+Pj4+Pj4+IEBAIC0xODU1
LDYgKzE4ODIsNyBAQCBzdGF0aWMgdm9pZCBnZW42X3BwZ3R0X2NsZWFudXAoc3RydWN0IGk5MTVf
YWRkcmVzc19zcGFjZSAqdm0pCj4gPj4+Pj4+PiAgICAgICAgICAvKiBGSVhNRSByZW1vdmUgdGhl
IHN0cnVjdF9tdXRleCB0byBicmluZyB0aGUgbG9ja2luZyB1bmRlciBjb250cm9sICovCj4gPj4+
Pj4+PiAgICAgICAgICBJTklUX1dPUksoJndvcmstPmJhc2UsIGdlbjZfcHBndHRfY2xlYW51cF93
b3JrKTsKPiA+Pj4+Pj4+ICAgICAgICAgIHdvcmstPnZtYSA9IHBwZ3R0LT52bWE7Cj4gPj4+Pj4+
PiArICAgICB3b3JrLT52bWEtPm9wcyA9ICZub3Bfdm1hX29wczsKPiA+Pj4+Pj4KPiA+Pj4+Pj4g
Q291bGQgd2UgdXNlIHNvbWUgYXNzZXJ0cyBiZWZvcmUgb3ZlcnJpZGluZyB0aGUgdm1hIG9wcz8g
TGlrZQo+ID4+Pj4+PiBHRU1fQlVHX09OKHZtYS0+cGFnZXMpPyBBbmQgc29tZXRoaW5nIGZvciBz
dGlsbCBib3VuZD8KPiA+Pj4+Pgo+ID4+Pj4+IEl0IHRlY2huaWNhbGx5IHN0aWxsIGlzIGJvdW5k
IGFzIGl0IGlzIGluIHRoZSBHR1RUIGJ1dCBjdXJyZW50bHkKPiA+Pj4+PiB1bnBpbm5lZCAtLSB0
aGF0IHdpbGwgYmUgY2hlY2tlZCBvbiBkZXN0cm95LCBpdCdzIGp1c3Qgd2UgYWxzbyBnZXQgYW4K
PiA+Pj4+PiB1bmJpbmQgY2FsbGJhY2suIHZtYS0+cGFnZXMgZG9lc24ndCBleGlzdCBmb3IgdGhp
cyAoc2V0IHRvIEVSUl9QVFIpLgo+ID4+Pj4KPiA+Pj4+IElmIHdlIGFyZSBnZXR0aW5nIHRoZSB1
bmJpbmQgY2FsbGJhY2sgYW5kIHdlIG5vcC1lZCBpdCwgd2hvIHdpbGwKPiA+Pj4+IGFjdHVhbGx5
IGRvIGl0J3Mgam9iPwo+ID4+Pgo+ID4+PiBUaGUgY2FsbGJhY2sgaXMganVzdCBhIGhvb2sgZm9y
IHVzIHRvIHBydW5lIHdpdGhpbiB0aGUgcHBndHQuCj4gPj4+IEl0IHN0aWxsIGlzIHJlbW92ZWQg
ZnJvbSBHR1RUIGJ5IGk5MTVfdm1hX3VuYmluZCgpLgo+ID4+Cj4gPj4gU28gaXQgbmVlZHMgR0VN
X0JVR19PTihwcGd0dC0+c2Nhbl9mb3JfdW51c2VkX3B0KSBiZWZvcmUgb3ZlcnJpZGluZyB0aGUK
PiA+PiB1bmJpbmQ/Cj4gPiAKPiA+IE5vLiBUaGV5IGdldCBmcmVlZCBieSB0aGUgY2xlYW51cCBp
dHNlbGYuIFRoZSBzY2FuIGlzIGp1c3QgYW4KPiA+IG9wcG9ydHVuaXN0aWMgcHJ1bmUgaWYgZWl0
aGVyIHRoZSBjb250ZXh0L21tIGlzIGV2aWN0ZWQgYnV0IHN0aWxsIGFsaXZlLgo+IAo+IFRoZW4g
dGhlIHNhbWUgYXNzZXJ0IGluIGdlbjZfcHBndHRfY2xlYW51cF93b3JrPyA6KQoKcHBndHQgaXMg
ZGVhZC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
