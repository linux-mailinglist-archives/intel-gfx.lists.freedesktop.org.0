Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 63CD73C601
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 10:35:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD20E891AC;
	Tue, 11 Jun 2019 08:35:10 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0C00891AC
 for <Intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 08:35:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jun 2019 01:35:08 -0700
X-ExtLoop1: 1
Received: from nmanovic-mobl.ccr.corp.intel.com (HELO [10.252.13.223])
 ([10.252.13.223])
 by fmsmga004.fm.intel.com with ESMTP; 11 Jun 2019 01:35:07 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20190610155419.23723-1-tvrtko.ursulin@linux.intel.com>
 <20190610155419.23723-2-tvrtko.ursulin@linux.intel.com>
 <156018396827.383.2511334145043612082@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <e080a7f9-c16d-1443-dd78-fcc691771949@linux.intel.com>
Date: Tue, 11 Jun 2019 09:35:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <156018396827.383.2511334145043612082@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 01/14] drm/i915: Make
 i915_check_and_clear_faults take uncore
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

Ck9uIDEwLzA2LzIwMTkgMTc6MjYsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA2LTEwIDE2OjU0OjA2KQo+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBDb250aW51aW5nIHRoZSBjb252ZXJzaW9u
IGFuZCBlbGltaW5hdGlvbiBvZiBpbXBsaWNpdCBkZXZfcHJpdi4KPj4KPj4gU2lnbmVkLW9mZi1i
eTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPj4gU3VnZ2VzdGVk
LWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Cj4+IC0tLQo+PiAgIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jIHwgIDIgKy0KPj4gICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jICAgICB8IDI4ICsrKysrKysrKysrKy0t
LS0tLS0tLS0tCj4+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuaCAgICAg
fCAgMiArLQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgICAgICAgICAgIHwg
IDIgKy0KPj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYyAgICAgICB8ICA0
ICsrLS0KPj4gICA1IGZpbGVzIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDE4IGRlbGV0aW9u
cygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5n
aW5lX2NzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwo+PiBp
bmRleCBjMGQ5ODZkYjVhNzUuLmEwNDZlOGRjY2M5NiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMKPj4gQEAgLTQ1Myw3ICs0NTMsNyBAQCBpbnQgaW50
ZWxfZW5naW5lc19pbml0X21taW8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4+ICAg
Cj4+ICAgICAgICAgIFJVTlRJTUVfSU5GTyhpOTE1KS0+bnVtX2VuZ2luZXMgPSBod2VpZ2h0MzIo
bWFzayk7Cj4+ICAgCj4+IC0gICAgICAgaTkxNV9jaGVja19hbmRfY2xlYXJfZmF1bHRzKGk5MTUp
Owo+PiArICAgICAgIGk5MTVfY2hlY2tfYW5kX2NsZWFyX2ZhdWx0cygmaTkxNS0+dW5jb3JlKTsK
PiAKPiBUaGlzIG5hbWUgaXMgc3RpbGwgc2V0dGluZyBvZmYgcmVkIGZsYWdzIGZvciBtZSwgYnV0
IEkgaGF2ZSB0byBjb25mZXNzCj4gdGhhdCBzdGFyaW5nIGF0IGl0LCBwYXNzaW5nIHVuY29yZSBk
b2VzIG1ha2Ugc2Vuc2UuCgpSZW5hbWUgdG8gaW50ZWxfdW5jb3JlX2NoZWNrX2FuZF9jbGVhcl9m
YXVsdHM/CgpPciBtb3ZlIGxhdGVyIGluIHRoZSBzZXJpZXMgYXMgaW50ZWxfZ3RfY2hlY2tfYW5k
X2NsZWFyX2ZhdWx0cz8KCj4gCj4gSSBqdXN0IHdpc2ggd2UgaGF2ZSBwZXItZW5naW5lcyBmYXVs
dHMgZXZlcnl3aGVyZSBhbmQgdGhpcyBjb3VsZCBiZQo+IHJlZHVjZWQgdG8gcGFzc2luZyBlbmdp
bmUuCj4gCj4gSG1tLCB0aGlzIEkgZ3Vlc3Mgd2Ugd2lsbCBqdXN0IGhhdmUgdG8gcmV2aXNpdCBp
biB0aGUgbmVhciBmdXR1cmUgYXMgd2UKPiBtYXkgZ2V0IHRoZSBvcHBvcnR1bml0eSB0byBwdXQg
dGhlc2UgcmVncyB1bmRlciBtb3JlIHNjcnV0aW55Lgo+IAo+PiAgIAo+PiAgICAgICAgICBpbnRl
bF9zZXR1cF9lbmdpbmVfY2FwYWJpbGl0aWVzKGk5MTUpOwo+PiAgIAo+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3Jlc2V0LmMKPj4gaW5kZXggNjBkMjQxMTBhZjgwLi4xMzQ3MTkxNjU1OWIg
MTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKPj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwo+PiBAQCAtMTE2Niwx
MCArMTE2NiwxMCBAQCBzdGF0aWMgdm9pZCBnZW44X2NsZWFyX2VuZ2luZV9lcnJvcl9yZWdpc3Rl
cihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4+ICAgICAgICAgIEdFTjZfUklOR19G
QVVMVF9SRUdfUE9TVElOR19SRUFEKGVuZ2luZSk7Cj4+ICAgfQo+PiAgIAo+PiAtc3RhdGljIHZv
aWQgY2xlYXJfZXJyb3JfcmVnaXN0ZXJzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAo+
PiArc3RhdGljIHZvaWQgY2xlYXJfZXJyb3JfcmVnaXN0ZXJzKHN0cnVjdCBpbnRlbF91bmNvcmUg
KnVuY29yZSwKPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbnRlbF9lbmdp
bmVfbWFza190IGVuZ2luZV9tYXNrKQo+PiAgIHsKPj4gLSAgICAgICBzdHJ1Y3QgaW50ZWxfdW5j
b3JlICp1bmNvcmUgPSAmaTkxNS0+dW5jb3JlOwo+PiArICAgICAgIHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1ID0gdW5jb3JlX3RvX2k5MTUodW5jb3JlKTsKPiAKPiBHcnIsIEkgc2hvdWxk
IGhhdmUgb2JqZWN0ZWQgdG8gdW5jb3JlX3RvX2k5MTUoKSBsb3VkbHkgZnJvbSB0aGUKPiBiZWdp
bm5pbmcKPiAKPiBXaGF0J3MgZG9uZSBpcyBkb25lLAoKSXMgaXQgdG9vIGxhdGUgYWxyZWFkeT8g
U2hvdWxkbid0IGJlLiBNeSB0aGlua2luZyB3YXMgdGhlIGltcGxlbWVudGF0aW9uIApjYW4gZWFz
aWx5IGJlIGNoYW5nZWQgaWYvd2hlbiBiYWNrcG9pbnRlciBpcyBhZGRlZCAoaW5zdGVhZCBvZiAK
Y29udGFpbmVyX29mKS4gQnV0IGlmIHlvdSB3b3VsZCBwcmVmZXIgd2Ugc3RhcnQgd2l0aG91dCBh
IGhlbHBlciwgYnV0IAp3aXRoIGEgZGlyZWN0IGFjY2VzcyB0byBiYWNrcG9pbnRlciBzdHJhaWdo
dCBhd2F5IHRoYXQgaXMgZmluZSBieSBtZS4KClJlZ2FyZHMsCgpUdnJ0a28KCj4gUmV2aWV3ZWQt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IC1DaHJpcwo+IApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
