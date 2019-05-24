Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CCDB29370
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 10:51:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A13189F03;
	Fri, 24 May 2019 08:51:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A08D89F03
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 08:51:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 May 2019 01:51:48 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO [10.252.20.122])
 ([10.252.20.122])
 by FMSMGA003.fm.intel.com with ESMTP; 24 May 2019 01:51:47 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190524064529.20514-1-chris@chris-wilson.co.uk>
 <3806b12a-c2e2-fab4-b038-c8dd33daefd1@linux.intel.com>
 <155868585422.28319.13611154637326086125@skylake-alporthouse-com>
 <784ff780-a9b2-b997-1e4f-ed47f313d280@linux.intel.com>
 <155868654679.28319.17830052202613739639@skylake-alporthouse-com>
 <0cc2c0e6-5d0a-1286-2f4a-36a69e2dca19@linux.intel.com>
 <155868699138.28319.7611854554635469420@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <68cf1795-b914-40b3-645c-0c198e7859db@linux.intel.com>
Date: Fri, 24 May 2019 09:51:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155868699138.28319.7611854554635469420@skylake-alporthouse-com>
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

Ck9uIDI0LzA1LzIwMTkgMDk6MzYsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTI0IDA5OjMxOjQ1KQo+Pgo+PiBPbiAyNC8wNS8yMDE5IDA5OjI5
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA1
LTI0IDA5OjIzOjQwKQo+Pj4+Cj4+Pj4gT24gMjQvMDUvMjAxOSAwOToxNywgQ2hyaXMgV2lsc29u
IHdyb3RlOgo+Pj4+PiBRdW90aW5nIFR2cnRrbyBVcnN1bGluICgyMDE5LTA1LTI0IDA5OjEzOjE0
KQo+Pj4+Pj4KPj4+Pj4+IE9uIDI0LzA1LzIwMTkgMDc6NDUsIENocmlzIFdpbHNvbiB3cm90ZToK
Pj4+Pj4+PiBIYXZpbmcgZGVmZXJyZWQgdGhlIHZtYSBkZXN0cnVjdGlvbiB0byBhIHdvcmtlciB3
aGVyZSB3ZSBjYW4gYWNxdWlyZSB0aGUKPj4+Pj4+PiBzdHJ1Y3RfbXV0ZXgsIHdlIGhhdmUgdG8g
YXZvaWQgY2hhc2luZyBiYWNrIGludG8gdGhlIG5vdyBkZXN0cm95ZWQKPj4+Pj4+PiBwcGd0dC4g
VGhlIHBkX3ZtYSBpcyBzcGVjaWFsIGluIGhhdmluZyBhIGN1c3RvbSB1bmJpbmQgZnVuY3Rpb24g
dG8gc2Nhbgo+Pj4+Pj4+IGZvciB1bnVzZWQgcGFnZXMgZGVzcGl0ZSB0aGUgVk1BIGl0c2VsZiBi
ZWluZyBub3Rpb25hbGx5IHBhcnQgb2YgdGhlCj4+Pj4+Pj4gR0dUVC4gQXMgc3VjaCwgd2UgbmVl
ZCB0byBkaXNhYmxlIHRoYXQgY2FsbGJhY2sgdG8gYXZvaWQgYQo+Pj4+Pj4+IHVzZS1hZnRlci1m
cmVlLgo+Pj4+Pj4+Cj4+Pj4+Pj4gVGhpcyB1bmZvcnR1bmF0ZWx5IGJsZXcgdXAgc28gZWFybHkg
ZHVyaW5nIGJvb3QgdGhhdCBDSSBkZWNsYXJlZCB0aGUKPj4+Pj4+PiBtYWNoaW5lIHVucmVhY2hh
YmxlIGFzIG9wcG9zZWQgdG8gYmVpbmcgdGhlIG1ham9yIGZhaWx1cmUgaXQgd2FzLiBPb3BzLgo+
Pj4+Pj4+Cj4+Pj4+Pj4gRml4ZXM6IGQzNjIyMDk5Yzc2ZiAoImRybS9pOTE1L2d0dDogQWx3YXlz
IGFjcXVpcmUgc3RydWN0X211dGV4IGZvciBnZW42X3BwZ3R0X2NsZWFudXAiKQo+Pj4+Pj4+IFNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+Pj4+
Pj4+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pj4+Pj4+
IENjOiBUb21pIFNhcnZlbGEgPHRvbWkucC5zYXJ2ZWxhQGludGVsLmNvbT4KPj4+Pj4+PiAtLS0K
Pj4+Pj4+PiAgICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIHwgMjggKysr
KysrKysrKysrKysrKysrKysrKysrKysrKwo+Pj4+Pj4+ICAgICAgMSBmaWxlIGNoYW5nZWQsIDI4
IGluc2VydGlvbnMoKykKPj4+Pj4+Pgo+Pj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbV9ndHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0
dC5jCj4+Pj4+Pj4gaW5kZXggOGQ4YTRiMGFkNGQ5Li4yNjZiYWExMWRmNjQgMTAwNjQ0Cj4+Pj4+
Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPj4+Pj4+PiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+Pj4+Pj4+IEBAIC0xODQ3LDYg
KzE4NDcsMzMgQEAgc3RhdGljIHZvaWQgZ2VuNl9wcGd0dF9jbGVhbnVwX3dvcmsoc3RydWN0IHdv
cmtfc3RydWN0ICp3cmspCj4+Pj4+Pj4gICAgICAgICAga2ZyZWUod29yayk7Cj4+Pj4+Pj4gICAg
ICB9Cj4+Pj4+Pj4gICAgICAKPj4+Pj4+PiArc3RhdGljIGludCBub3Bfc2V0X3BhZ2VzKHN0cnVj
dCBpOTE1X3ZtYSAqdm1hKQo+Pj4+Pj4+ICt7Cj4+Pj4+Pj4gKyAgICAgcmV0dXJuIC1FTk9ERVY7
Cj4+Pj4+Pj4gK30KPj4+Pj4+PiArCj4+Pj4+Pj4gK3N0YXRpYyB2b2lkIG5vcF9jbGVhcl9wYWdl
cyhzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKPj4+Pj4+PiArewo+Pj4+Pj4+ICt9Cj4+Pj4+Pj4gKwo+
Pj4+Pj4+ICtzdGF0aWMgaW50IG5vcF9iaW5kKHN0cnVjdCBpOTE1X3ZtYSAqdm1hLAo+Pj4+Pj4+
ICsgICAgICAgICAgICAgICAgIGVudW0gaTkxNV9jYWNoZV9sZXZlbCBjYWNoZV9sZXZlbCwKPj4+
Pj4+PiArICAgICAgICAgICAgICAgICB1MzIgdW51c2VkKQo+Pj4+Pj4+ICt7Cj4+Pj4+Pj4gKyAg
ICAgcmV0dXJuIC1FTk9ERVY7Cj4+Pj4+Pj4gK30KPj4+Pj4+PiArCj4+Pj4+Pj4gK3N0YXRpYyB2
b2lkIG5vcF91bmJpbmQoc3RydWN0IGk5MTVfdm1hICp2bWEpCj4+Pj4+Pj4gK3sKPj4+Pj4+PiAr
fQo+Pj4+Pj4+ICsKPj4+Pj4+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBpOTE1X3ZtYV9vcHMgbm9w
X3ZtYV9vcHMgPSB7Cj4+Pj4+Pj4gKyAgICAgLnNldF9wYWdlcyA9IG5vcF9zZXRfcGFnZXMsCj4+
Pj4+Pj4gKyAgICAgLmNsZWFyX3BhZ2VzID0gbm9wX2NsZWFyX3BhZ2VzLAo+Pj4+Pj4+ICsgICAg
IC5iaW5kX3ZtYSA9IG5vcF9iaW5kLAo+Pj4+Pj4+ICsgICAgIC51bmJpbmRfdm1hID0gbm9wX3Vu
YmluZCwKPj4+Pj4+PiArfTsKPj4+Pj4+PiArCj4+Pj4+Pj4gICAgICBzdGF0aWMgdm9pZCBnZW42
X3BwZ3R0X2NsZWFudXAoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0pCj4+Pj4+Pj4gICAg
ICB7Cj4+Pj4+Pj4gICAgICAgICAgc3RydWN0IGdlbjZfaHdfcHBndHQgKnBwZ3R0ID0gdG9fZ2Vu
Nl9wcGd0dChpOTE1X3ZtX3RvX3BwZ3R0KHZtKSk7Cj4+Pj4+Pj4gQEAgLTE4NTUsNiArMTg4Miw3
IEBAIHN0YXRpYyB2b2lkIGdlbjZfcHBndHRfY2xlYW51cChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3Nw
YWNlICp2bSkKPj4+Pj4+PiAgICAgICAgICAvKiBGSVhNRSByZW1vdmUgdGhlIHN0cnVjdF9tdXRl
eCB0byBicmluZyB0aGUgbG9ja2luZyB1bmRlciBjb250cm9sICovCj4+Pj4+Pj4gICAgICAgICAg
SU5JVF9XT1JLKCZ3b3JrLT5iYXNlLCBnZW42X3BwZ3R0X2NsZWFudXBfd29yayk7Cj4+Pj4+Pj4g
ICAgICAgICAgd29yay0+dm1hID0gcHBndHQtPnZtYTsKPj4+Pj4+PiArICAgICB3b3JrLT52bWEt
Pm9wcyA9ICZub3Bfdm1hX29wczsKPj4+Pj4+Cj4+Pj4+PiBDb3VsZCB3ZSB1c2Ugc29tZSBhc3Nl
cnRzIGJlZm9yZSBvdmVycmlkaW5nIHRoZSB2bWEgb3BzPyBMaWtlCj4+Pj4+PiBHRU1fQlVHX09O
KHZtYS0+cGFnZXMpPyBBbmQgc29tZXRoaW5nIGZvciBzdGlsbCBib3VuZD8KPj4+Pj4KPj4+Pj4g
SXQgdGVjaG5pY2FsbHkgc3RpbGwgaXMgYm91bmQgYXMgaXQgaXMgaW4gdGhlIEdHVFQgYnV0IGN1
cnJlbnRseQo+Pj4+PiB1bnBpbm5lZCAtLSB0aGF0IHdpbGwgYmUgY2hlY2tlZCBvbiBkZXN0cm95
LCBpdCdzIGp1c3Qgd2UgYWxzbyBnZXQgYW4KPj4+Pj4gdW5iaW5kIGNhbGxiYWNrLiB2bWEtPnBh
Z2VzIGRvZXNuJ3QgZXhpc3QgZm9yIHRoaXMgKHNldCB0byBFUlJfUFRSKS4KPj4+Pgo+Pj4+IElm
IHdlIGFyZSBnZXR0aW5nIHRoZSB1bmJpbmQgY2FsbGJhY2sgYW5kIHdlIG5vcC1lZCBpdCwgd2hv
IHdpbGwKPj4+PiBhY3R1YWxseSBkbyBpdCdzIGpvYj8KPj4+Cj4+PiBUaGUgY2FsbGJhY2sgaXMg
anVzdCBhIGhvb2sgZm9yIHVzIHRvIHBydW5lIHdpdGhpbiB0aGUgcHBndHQuCj4+PiBJdCBzdGls
bCBpcyByZW1vdmVkIGZyb20gR0dUVCBieSBpOTE1X3ZtYV91bmJpbmQoKS4KPj4KPj4gU28gaXQg
bmVlZHMgR0VNX0JVR19PTihwcGd0dC0+c2Nhbl9mb3JfdW51c2VkX3B0KSBiZWZvcmUgb3ZlcnJp
ZGluZyB0aGUKPj4gdW5iaW5kPwo+IAo+IE5vLiBUaGV5IGdldCBmcmVlZCBieSB0aGUgY2xlYW51
cCBpdHNlbGYuIFRoZSBzY2FuIGlzIGp1c3QgYW4KPiBvcHBvcnR1bmlzdGljIHBydW5lIGlmIGVp
dGhlciB0aGUgY29udGV4dC9tbSBpcyBldmljdGVkIGJ1dCBzdGlsbCBhbGl2ZS4KClRoZW4gdGhl
IHNhbWUgYXNzZXJ0IGluIGdlbjZfcHBndHRfY2xlYW51cF93b3JrPyA6KQoKUmVnYXJkcywKClR2
cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
