Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D046292FF
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 10:23:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F997890EA;
	Fri, 24 May 2019 08:23:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26BB689F07
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 08:23:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 May 2019 01:23:42 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO [10.252.20.122])
 ([10.252.20.122])
 by FMSMGA003.fm.intel.com with ESMTP; 24 May 2019 01:23:41 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190524064529.20514-1-chris@chris-wilson.co.uk>
 <3806b12a-c2e2-fab4-b038-c8dd33daefd1@linux.intel.com>
 <155868585422.28319.13611154637326086125@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <784ff780-a9b2-b997-1e4f-ed47f313d280@linux.intel.com>
Date: Fri, 24 May 2019 09:23:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155868585422.28319.13611154637326086125@skylake-alporthouse-com>
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

Ck9uIDI0LzA1LzIwMTkgMDk6MTcsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTI0IDA5OjEzOjE0KQo+Pgo+PiBPbiAyNC8wNS8yMDE5IDA3OjQ1
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBIYXZpbmcgZGVmZXJyZWQgdGhlIHZtYSBkZXN0cnVj
dGlvbiB0byBhIHdvcmtlciB3aGVyZSB3ZSBjYW4gYWNxdWlyZSB0aGUKPj4+IHN0cnVjdF9tdXRl
eCwgd2UgaGF2ZSB0byBhdm9pZCBjaGFzaW5nIGJhY2sgaW50byB0aGUgbm93IGRlc3Ryb3llZAo+
Pj4gcHBndHQuIFRoZSBwZF92bWEgaXMgc3BlY2lhbCBpbiBoYXZpbmcgYSBjdXN0b20gdW5iaW5k
IGZ1bmN0aW9uIHRvIHNjYW4KPj4+IGZvciB1bnVzZWQgcGFnZXMgZGVzcGl0ZSB0aGUgVk1BIGl0
c2VsZiBiZWluZyBub3Rpb25hbGx5IHBhcnQgb2YgdGhlCj4+PiBHR1RULiBBcyBzdWNoLCB3ZSBu
ZWVkIHRvIGRpc2FibGUgdGhhdCBjYWxsYmFjayB0byBhdm9pZCBhCj4+PiB1c2UtYWZ0ZXItZnJl
ZS4KPj4+Cj4+PiBUaGlzIHVuZm9ydHVuYXRlbHkgYmxldyB1cCBzbyBlYXJseSBkdXJpbmcgYm9v
dCB0aGF0IENJIGRlY2xhcmVkIHRoZQo+Pj4gbWFjaGluZSB1bnJlYWNoYWJsZSBhcyBvcHBvc2Vk
IHRvIGJlaW5nIHRoZSBtYWpvciBmYWlsdXJlIGl0IHdhcy4gT29wcy4KPj4+Cj4+PiBGaXhlczog
ZDM2MjIwOTljNzZmICgiZHJtL2k5MTUvZ3R0OiBBbHdheXMgYWNxdWlyZSBzdHJ1Y3RfbXV0ZXgg
Zm9yIGdlbjZfcHBndHRfY2xlYW51cCIpCj4+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPj4+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtv
LnVyc3VsaW5AaW50ZWwuY29tPgo+Pj4gQ2M6IFRvbWkgU2FydmVsYSA8dG9taS5wLnNhcnZlbGFA
aW50ZWwuY29tPgo+Pj4gLS0tCj4+PiAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9n
dHQuYyB8IDI4ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysKPj4+ICAgIDEgZmlsZSBjaGFu
Z2VkLCAyOCBpbnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0
LmMKPj4+IGluZGV4IDhkOGE0YjBhZDRkOS4uMjY2YmFhMTFkZjY0IDEwMDY0NAo+Pj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPj4+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4+PiBAQCAtMTg0Nyw2ICsxODQ3LDMzIEBAIHN0YXRp
YyB2b2lkIGdlbjZfcHBndHRfY2xlYW51cF93b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd3JrKQo+
Pj4gICAgICAgIGtmcmVlKHdvcmspOwo+Pj4gICAgfQo+Pj4gICAgCj4+PiArc3RhdGljIGludCBu
b3Bfc2V0X3BhZ2VzKHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQo+Pj4gK3sKPj4+ICsgICAgIHJldHVy
biAtRU5PREVWOwo+Pj4gK30KPj4+ICsKPj4+ICtzdGF0aWMgdm9pZCBub3BfY2xlYXJfcGFnZXMo
c3RydWN0IGk5MTVfdm1hICp2bWEpCj4+PiArewo+Pj4gK30KPj4+ICsKPj4+ICtzdGF0aWMgaW50
IG5vcF9iaW5kKHN0cnVjdCBpOTE1X3ZtYSAqdm1hLAo+Pj4gKyAgICAgICAgICAgICAgICAgZW51
bSBpOTE1X2NhY2hlX2xldmVsIGNhY2hlX2xldmVsLAo+Pj4gKyAgICAgICAgICAgICAgICAgdTMy
IHVudXNlZCkKPj4+ICt7Cj4+PiArICAgICByZXR1cm4gLUVOT0RFVjsKPj4+ICt9Cj4+PiArCj4+
PiArc3RhdGljIHZvaWQgbm9wX3VuYmluZChzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKPj4+ICt7Cj4+
PiArfQo+Pj4gKwo+Pj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV92bWFfb3BzIG5vcF92bWFf
b3BzID0gewo+Pj4gKyAgICAgLnNldF9wYWdlcyA9IG5vcF9zZXRfcGFnZXMsCj4+PiArICAgICAu
Y2xlYXJfcGFnZXMgPSBub3BfY2xlYXJfcGFnZXMsCj4+PiArICAgICAuYmluZF92bWEgPSBub3Bf
YmluZCwKPj4+ICsgICAgIC51bmJpbmRfdm1hID0gbm9wX3VuYmluZCwKPj4+ICt9Owo+Pj4gKwo+
Pj4gICAgc3RhdGljIHZvaWQgZ2VuNl9wcGd0dF9jbGVhbnVwKHN0cnVjdCBpOTE1X2FkZHJlc3Nf
c3BhY2UgKnZtKQo+Pj4gICAgewo+Pj4gICAgICAgIHN0cnVjdCBnZW42X2h3X3BwZ3R0ICpwcGd0
dCA9IHRvX2dlbjZfcHBndHQoaTkxNV92bV90b19wcGd0dCh2bSkpOwo+Pj4gQEAgLTE4NTUsNiAr
MTg4Miw3IEBAIHN0YXRpYyB2b2lkIGdlbjZfcHBndHRfY2xlYW51cChzdHJ1Y3QgaTkxNV9hZGRy
ZXNzX3NwYWNlICp2bSkKPj4+ICAgICAgICAvKiBGSVhNRSByZW1vdmUgdGhlIHN0cnVjdF9tdXRl
eCB0byBicmluZyB0aGUgbG9ja2luZyB1bmRlciBjb250cm9sICovCj4+PiAgICAgICAgSU5JVF9X
T1JLKCZ3b3JrLT5iYXNlLCBnZW42X3BwZ3R0X2NsZWFudXBfd29yayk7Cj4+PiAgICAgICAgd29y
ay0+dm1hID0gcHBndHQtPnZtYTsKPj4+ICsgICAgIHdvcmstPnZtYS0+b3BzID0gJm5vcF92bWFf
b3BzOwo+Pgo+PiBDb3VsZCB3ZSB1c2Ugc29tZSBhc3NlcnRzIGJlZm9yZSBvdmVycmlkaW5nIHRo
ZSB2bWEgb3BzPyBMaWtlCj4+IEdFTV9CVUdfT04odm1hLT5wYWdlcyk/IEFuZCBzb21ldGhpbmcg
Zm9yIHN0aWxsIGJvdW5kPwo+IAo+IEl0IHRlY2huaWNhbGx5IHN0aWxsIGlzIGJvdW5kIGFzIGl0
IGlzIGluIHRoZSBHR1RUIGJ1dCBjdXJyZW50bHkKPiB1bnBpbm5lZCAtLSB0aGF0IHdpbGwgYmUg
Y2hlY2tlZCBvbiBkZXN0cm95LCBpdCdzIGp1c3Qgd2UgYWxzbyBnZXQgYW4KPiB1bmJpbmQgY2Fs
bGJhY2suIHZtYS0+cGFnZXMgZG9lc24ndCBleGlzdCBmb3IgdGhpcyAoc2V0IHRvIEVSUl9QVFIp
LgoKSWYgd2UgYXJlIGdldHRpbmcgdGhlIHVuYmluZCBjYWxsYmFjayBhbmQgd2Ugbm9wLWVkIGl0
LCB3aG8gd2lsbCAKYWN0dWFsbHkgZG8gaXQncyBqb2I/CgpSZWdhcmRzLAoKVHZydGtvCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
