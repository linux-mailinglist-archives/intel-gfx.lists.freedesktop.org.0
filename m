Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF35B1029
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 15:40:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A41266ED67;
	Thu, 12 Sep 2019 13:40:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 935AB6ED67
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 13:40:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Sep 2019 06:40:03 -0700
X-IronPort-AV: E=Sophos;i="5.64,497,1559545200"; d="scan'208";a="186132215"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Sep 2019 06:40:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Sharma\, Shashank" <shashank.sharma@intel.com>,
 Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <87a54833-e76a-c5bc-07db-815f2b1e1b69@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190911191133.23383-1-animesh.manna@intel.com>
 <20190911191133.23383-8-animesh.manna@intel.com>
 <87a54833-e76a-c5bc-07db-815f2b1e1b69@intel.com>
Date: Thu, 12 Sep 2019 16:39:57 +0300
Message-ID: <87k1adzl8y.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v6 07/10] drm/i915/dsb: function to trigger
 workload execution of DSB.
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

T24gVGh1LCAxMiBTZXAgMjAxOSwgIlNoYXJtYSwgU2hhc2hhbmsiIDxzaGFzaGFuay5zaGFybWFA
aW50ZWwuY29tPiB3cm90ZToKPiBPbiA5LzEyLzIwMTkgMTI6NDEgQU0sIEFuaW1lc2ggTWFubmEg
d3JvdGU6Cj4+IEJhdGNoIGJ1ZmZlciB3aWxsIGJlIGNyZWF0ZWQgdGhyb3VnaCBkc2ItcmVnLXdy
aXRlIGZ1bmN0aW9uIHdoaWNoIGNhbiBoYXZlCj4+IHNpbmdsZS9tdWx0aXBsZSByZXF1ZXN0IGJh
c2VkIG9uIHVzZWNhc2UgYW5kIG9uY2UgdGhlIGJ1ZmZlciBpcyByZWFkeQo+PiBjb21taXQgZnVu
Y3Rpb24gd2lsbCB0cmlnZ2VyIHRoZSBleGVjdXRpb24gb2YgdGhlIGJhdGNoIGJ1ZmZlci4gQWxs
Cj4+IHRoZSByZWdpc3RlcnMgd2lsbCBiZSB1cGRhdGVkIHNpbXVsdGFuZW91c2x5Lgo+Pgo+PiB2
MTogSW5pdGlhbCB2ZXJzaW9uLgo+PiB2MjogT3B0aW1pemVkIGNvZGUgZmV3IHBsYWNlcy4gKENo
cmlzKQo+PiB2MzogVVNlZCBEUk1fRVJST1IgZm9yIGRzYiBoZWFkL3RhaWwgcHJvZ3JhbW1pbmcg
ZmFpbHVyZS4gKFNoYXNoYW5rKQo+Pgo+PiBDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwu
Y29tPgo+PiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPj4gQ2M6IFJv
ZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPj4gQ2M6IFNoYXNoYW5rIFNoYXJt
YSA8c2hhc2hhbmsuc2hhcm1hQGludGVsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBN
YW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgfCA0MiArKysrKysrKysrKysrKysrKysrKysrKysK
Pj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oIHwgIDEgKwo+PiAg
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgfCAgMiArKwo+PiAgIDMg
ZmlsZXMgY2hhbmdlZCwgNDUgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHNiLmMKPj4gaW5kZXggMmIwZmZjMGFmYjc0Li5lZWE4NmFmYjA1ODMg
MTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMK
Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYwo+PiBAQCAt
MjEyLDMgKzIxMiw0NSBAQCB2b2lkIGludGVsX2RzYl9yZWdfd3JpdGUoc3RydWN0IGludGVsX2Rz
YiAqZHNiLCBpOTE1X3JlZ190IHJlZywgdTMyIHZhbCkKPj4gICAJCQkgICAgICAgKERTQl9CWVRF
X0VOIDw8IERTQl9CWVRFX0VOX1NISUZUKSB8Cj4+ICAgCQkJICAgICAgIGk5MTVfbW1pb19yZWdf
b2Zmc2V0KHJlZyk7Cj4+ICAgfQo+PiArCj4+ICt2b2lkIGludGVsX2RzYl9jb21taXQoc3RydWN0
IGludGVsX2RzYiAqZHNiKQo+PiArewo+PiArCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gY29u
dGFpbmVyX29mKGRzYiwgdHlwZW9mKCpjcnRjKSwgZHNiKTsKPj4gKwlzdHJ1Y3QgZHJtX2Rldmlj
ZSAqZGV2ID0gY3J0Yy0+YmFzZS5kZXY7Cj4+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2ID0gdG9faTkxNShkZXYpOwo+PiArCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsK
Pj4gKwl1MzIgdGFpbDsKPj4gKwo+PiArCWlmICghZHNiLT5mcmVlX3BvcykKPj4gKwkJcmV0dXJu
Owo+PiArCj4+ICsJaWYgKCFpbnRlbF9kc2JfZW5hYmxlX2VuZ2luZShkc2IpKQo+PiArCQlnb3Rv
IHJlc2V0Owo+PiArCj4+ICsJaWYgKGlzX2RzYl9idXN5KGRzYikpIHsKPj4gKwkJRFJNX0VSUk9S
KCJIRUFEX1BUUiB3cml0ZSBmYWlsZWQgLSBkc2IgZW5naW5lIGlzIGJ1c3kuXG4iKTsKPj4gKwkJ
Z290byByZXNldDsKPj4gKwl9Cj4+ICsJSTkxNV9XUklURShEU0JfSEVBRChwaXBlLCBkc2ItPmlk
KSwgaTkxNV9nZ3R0X29mZnNldChkc2ItPnZtYSkpOwo+PiArCj4+ICsJdGFpbCA9IEFMSUdOKGRz
Yi0+ZnJlZV9wb3MgKiA0LCBDQUNIRUxJTkVfQllURVMpOwo+PiArCWlmICh0YWlsID4gZHNiLT5m
cmVlX3BvcyAqIDQpCj4+ICsJCW1lbXNldCgmZHNiLT5jbWRfYnVmW2RzYi0+ZnJlZV9wb3NdLCAw
LAo+PiArCQkgICAgICAgKHRhaWwgLSBkc2ItPmZyZWVfcG9zICogNCkpOwo+PiArCj4+ICsJaWYg
KGlzX2RzYl9idXN5KGRzYikpIHsKPj4gKwkJRFJNX0VSUk9SKCJUQUlMX1BUUiB3cml0ZSBmYWls
ZWQgLSBkc2IgZW5naW5lIGlzIGJ1c3kuXG4iKTsKPj4gKwkJZ290byByZXNldDsKPj4gKwl9Cj4+
ICsJRFJNX0RFQlVHX0tNUygiRFNCIGV4ZWN1dGlvbiBzdGFydGVkIC0gaGVhZCAweCV4LCB0YWls
IDB4JXhcbiIsCj4+ICsJCSAgICAgIGk5MTVfZ2d0dF9vZmZzZXQoZHNiLT52bWEpLCB0YWlsKTsK
Pj4gKwlJOTE1X1dSSVRFKERTQl9UQUlMKHBpcGUsIGRzYi0+aWQpLCBpOTE1X2dndHRfb2Zmc2V0
KGRzYi0+dm1hKSArIHRhaWwpOwo+PiArCWlmICh3YWl0X2ZvcighaXNfZHNiX2J1c3koZHNiKSwg
MSkpIHsKPj4gKwkJRFJNX0VSUk9SKCJUaW1lZCBvdXQgd2FpdGluZyBmb3IgRFNCIHdvcmtsb2Fk
IGNvbXBsZXRpb24uXG4iKTsKPj4gKwkJZ290byByZXNldDsKPj4gKwl9Cj4+ICsKPj4gK3Jlc2V0
Ogo+PiArCWRzYi0+ZnJlZV9wb3MgPSAwOwo+PiArCWludGVsX2RzYl9kaXNhYmxlX2VuZ2luZShk
c2IpOwo+Cj4gSSBhbSBzdGlsbCBub3QgdmVyeSBjb252aW5jZSBpZiBhIGNvbW1pdCBmdW5jdGlv
biBzaG91bGQgYmUgdm9pZCwgSSAKPiB3b3VsZCBzdGlsbCB3YW50IGl0IHRvIHJldHVybiBzdWNj
ZXNzIG9yIGZhaWx1cmUsIHNvIHRoYXQgd2Ugd291bGQga25vdyAKPiBpZiB0aGUgbGFzdCBvcGVy
YXRpb24gd2FzIHN1Y2Nlc3NmdWwgb3Igbm90Lgo+Cj4gSSB3b3VsZCB3YWl0IEphbmkgTiB0byBj
b21tZW50IGhlcmUsIG9uIHdoYXQgaGUgZmVlbHMgYWJvdXQgdGhpcy4KClRoZSBxdWVzdGlvbiBi
ZWNvbWVzLCB3aGF0IGRvIHlvdSAqZG8qIHdpdGggdGhlIHJldHVybiB2YWx1ZT8gSWYgbm9uZSBv
Zgp0aGUgY2FsbGVycyBhcmUgZ29pbmcgdG8gdXNlIGl0LCBkb24ndCByZXR1cm4gaXQuCgpCUiwK
SmFuaS4KCj4KPiAtIFNoYXNoYW5rCj4KPj4gK30KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RzYi5oCj4+IGluZGV4IDliMjUyMmYyMGJmYi4uNzM4OWM4YzViNjY1IDEwMDY0
NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oCj4+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgKPj4gQEAgLTQzLDUg
KzQzLDYgQEAgdm9pZCBpbnRlbF9kc2JfcHV0KHN0cnVjdCBpbnRlbF9kc2IgKmRzYik7Cj4+ICAg
dm9pZCBpbnRlbF9kc2JfcmVnX3dyaXRlKHN0cnVjdCBpbnRlbF9kc2IgKmRzYiwgaTkxNV9yZWdf
dCByZWcsIHUzMiB2YWwpOwo+PiAgIHZvaWQgaW50ZWxfZHNiX2luZGV4ZWRfcmVnX3dyaXRlKHN0
cnVjdCBpbnRlbF9kc2IgKmRzYiwgaTkxNV9yZWdfdCByZWcsCj4+ICAgCQkJCSB1MzIgdmFsKTsK
Pj4gK3ZvaWQgaW50ZWxfZHNiX2NvbW1pdChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpOwo+PiAgIAo+
PiAgICNlbmRpZgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPj4gaW5kZXggMmRiYWE0OWY1Yzc0
Li5jNzdiNTA2NmQ4ZGQgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmgKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+PiBAQCAtMTE2
ODcsNiArMTE2ODcsOCBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsKPj4gICAjZGVmaW5lIF9EU0JT
TF9JTlNUQU5DRV9CQVNFCQkweDcwQjAwCj4+ICAgI2RlZmluZSBEU0JTTF9JTlNUQU5DRShwaXBl
LCBpZCkJKF9EU0JTTF9JTlNUQU5DRV9CQVNFICsgXAo+PiAgIAkJCQkJIChwaXBlKSAqIDB4MTAw
MCArIChpZCkgKiAxMDApCj4+ICsjZGVmaW5lIERTQl9IRUFEKHBpcGUsIGlkKQkJX01NSU8oRFNC
U0xfSU5TVEFOQ0UocGlwZSwgaWQpICsgMHgwKQo+PiArI2RlZmluZSBEU0JfVEFJTChwaXBlLCBp
ZCkJCV9NTUlPKERTQlNMX0lOU1RBTkNFKHBpcGUsIGlkKSArIDB4NCkKPj4gICAjZGVmaW5lIERT
Ql9DVFJMKHBpcGUsIGlkKQkJX01NSU8oRFNCU0xfSU5TVEFOQ0UocGlwZSwgaWQpICsgMHg4KQo+
PiAgICNkZWZpbmUgICBEU0JfRU5BQkxFCQkJKDEgPDwgMzEpCj4+ICAgI2RlZmluZSAgIERTQl9T
VEFUVVMJCQkoMSA8PCAwKQoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFw
aGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
