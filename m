Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C594DE8B6
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2019 11:56:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B874289C59;
	Mon, 21 Oct 2019 09:56:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18AAC89C59
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2019 09:56:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18910207-1500050 for multiple; Mon, 21 Oct 2019 10:56:03 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87pniq8m3p.fsf@gaia.fi.intel.com>
References: <20191021080226.537-1-chris@chris-wilson.co.uk>
 <87pniq8m3p.fsf@gaia.fi.intel.com>
Message-ID: <157165176066.29536.7902079618224993844@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 21 Oct 2019 10:56:00 +0100
Subject: Re: [Intel-gfx] [PATCH 01/16] drm/i915: Don't set
 queue_priority_hint if we don't kick the submission
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTEwLTIxIDEwOjQ5OjE0KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBJZiB3ZSBjaGFuZ2Ug
dGhlIHByaW9yaXR5IG9mIHRoZSBhY3RpdmUgY29udGV4dCwgdGhlbiBpdCBoYXMgbm8gaW1wYWN0
Cj4gPiBvbiB0aGUgZGVjaXNpb24gb2Ygd2hldGhlciB0byBwcmVlbXB0IHRoZSBhY3RpdmUgY29u
dGV4dCAtLSB3ZSBkb24ndAo+ID4gcHJlZW1wdCB0aGUgY29udGV4dCB3aXRoIGl0c2VsZi4gSW4g
dGhpcyBzaXR1YXRpb24sIHdlIGVsaWRlIHRoZSB0YXNrbGV0Cj4gPiByZXNjaGVkdWxpbmcgYW5k
IHNob3VsZCAqbm90KiBiZSBtYXJraW5nIHVwIHRoZSBxdWV1ZV9wcmlvcml0eV9oaW50IGFzCj4g
PiB0aGF0IG1heSBtYXNrIGEgbGF0ZXIgc3VibWlzc2lvbiB3aGVyZSB3ZSBkZWNpZGUgd2UgZG9u
J3QgaGF2ZSB0byBraWNrCj4gPiB0aGUgdGFza2xldCBhcyBhIGhpZ2hlciBwcmlvcml0eSBzdWJt
aXNzaW9uIGlzIHBlbmRpbmcgKHNwb2lsZXIgYWxlcnQsCj4gPiBpdCB3YXMgbm90KS4KPiA+Cj4g
PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
PiA+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+ID4gQ2M6
IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+ID4gLS0tCj4g
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zY2hlZHVsZXIuYyB8IDM3ICsrKysrKysrKysr
KysrKystLS0tLS0tLS0tLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCAx
NSBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9zY2hlZHVsZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc2NoZWR1bGVyLmMK
PiA+IGluZGV4IDBjYTQwZjZiZjA4Yy4uZDJlZGI1MjdkY2I4IDEwMDY0NAo+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zY2hlZHVsZXIuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9zY2hlZHVsZXIuYwo+ID4gQEAgLTE4OSwyMiArMTg5LDM0IEBAIHN0YXRp
YyBpbmxpbmUgYm9vbCBuZWVkX3ByZWVtcHQoaW50IHByaW8sIGludCBhY3RpdmUpCj4gPiAgICAg
ICByZXR1cm4gcHJpbyA+PSBtYXgoSTkxNV9QUklPUklUWV9OT1JNQUwsIGFjdGl2ZSk7Cj4gPiAg
fQo+ID4gIAo+ID4gLXN0YXRpYyB2b2lkIGtpY2tfc3VibWlzc2lvbihzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NzICplbmdpbmUsIGludCBwcmlvKQo+ID4gK3N0YXRpYyB2b2lkIGtpY2tfc3VibWlzc2lv
bihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCj4gPiArICAgICAgICAgICAgICAgICAg
ICAgICAgIGNvbnN0IHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAo+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICBpbnQgcHJpbykKPiA+ICB7Cj4gPiAtICAgICBjb25zdCBzdHJ1Y3QgaTkxNV9y
ZXF1ZXN0ICppbmZsaWdodCA9Cj4gPiAtICAgICAgICAgICAgIGV4ZWNsaXN0c19hY3RpdmUoJmVu
Z2luZS0+ZXhlY2xpc3RzKTsKPiA+ICsgICAgIGNvbnN0IHN0cnVjdCBpOTE1X3JlcXVlc3QgKmlu
ZmxpZ2h0Owo+ID4gKwo+ID4gKyAgICAgLyoKPiA+ICsgICAgICAqIFdlIG9ubHkgbmVlZCB0byBr
aWNrIHRoZSB0YXNrbGV0IG9uY2UgZm9yIHRoZSBoaWdoIHByaW9yaXR5Cj4gPiArICAgICAgKiBu
ZXcgY29udGV4dCB3ZSBhZGQgaW50byB0aGUgcXVldWUuCj4gPiArICAgICAgKi8KPiA+ICsgICAg
IGlmIChwcmlvIDw9IGVuZ2luZS0+ZXhlY2xpc3RzLnF1ZXVlX3ByaW9yaXR5X2hpbnQpCj4gPiAr
ICAgICAgICAgICAgIHJldHVybjsKPiA+ICsKPiA+ICsgICAgIC8qIE5vdGhpbmcgY3VycmVudGx5
IGFjdGl2ZT8gV2UncmUgb3ZlcmR1ZSBmb3IgYSBzdWJtaXNzaW9uISAqLwo+ID4gKyAgICAgaW5m
bGlnaHQgPSBleGVjbGlzdHNfYWN0aXZlKCZlbmdpbmUtPmV4ZWNsaXN0cyk7Cj4gPiArICAgICBp
ZiAoIWluZmxpZ2h0KQo+ID4gKyAgICAgICAgICAgICByZXR1cm47Cj4gPiAgCj4gPiAgICAgICAv
Kgo+ID4gICAgICAgICogSWYgd2UgYXJlIGFscmVhZHkgdGhlIGN1cnJlbnRseSBleGVjdXRpbmcg
Y29udGV4dCwgZG9uJ3QKPiA+IC0gICAgICAqIGJvdGhlciBldmFsdWF0aW5nIGlmIHdlIHNob3Vs
ZCBwcmVlbXB0IG91cnNlbHZlcywgb3IgaWYKPiA+IC0gICAgICAqIHdlIGV4cGVjdCBub3RoaW5n
IHRvIGNoYW5nZSBhcyBhIHJlc3VsdCBvZiBydW5uaW5nIHRoZQo+ID4gLSAgICAgICogdGFza2xl
dCwgaS5lLiB3ZSBoYXZlIG5vdCBjaGFuZ2UgdGhlIHByaW9yaXR5IHF1ZXVlCj4gPiAtICAgICAg
KiBzdWZmaWNpZW50bHkgdG8gb3VzdCB0aGUgcnVubmluZyBjb250ZXh0Lgo+ID4gKyAgICAgICog
Ym90aGVyIGV2YWx1YXRpbmcgaWYgd2Ugc2hvdWxkIHByZWVtcHQgb3Vyc2VsdmVzLgo+ID4gICAg
ICAgICovCj4gPiAtICAgICBpZiAoIWluZmxpZ2h0IHx8ICFuZWVkX3ByZWVtcHQocHJpbywgcnFf
cHJpbyhpbmZsaWdodCkpKQo+ID4gKyAgICAgaWYgKGluZmxpZ2h0LT5od19jb250ZXh0ID09IHJx
LT5od19jb250ZXh0KQo+IAo+IElmIHRoZXJlIGlzIGEgdGFpbCB1cGRhdGUgYXQgdGhpcyBtb21l
bnQsIGRvZXMgdGhlIGhhcmR3YXJlCj4gdGFrZSBpdCBpbnRvIGFjY291bnQgb3IgZG8gd2UgbmVl
ZCB0byBraWNrPwoKV2UgYXJlIGhvbGRpbmcgdGhlIGVuZ2luZS0+YWN0aXZlLmxvY2ssIHNvIHdl
IGNhbid0IHN1Ym1pdCBhdCB0aGlzCm1vbWVudC4gSWYgd2UgYXJlIGluc2lkZSBwcm9jZXNzX2Nz
YiAod2hpY2ggaXMgb3V0c2lkZSBvZiB0aGUgbG9jayksCnRoZW4gdGhpcyBzdGFsZSB2YWx1ZSBp
ZiBvZiBubyBjb25zZXF1ZW5jZSBhcyB3ZSBhcmUgaW5zaWRlIHRoZSB0YXNrbGV0CmFscmVhZHku
IFNvIGlmIHdlIHN1cHByZXNzIHRoZSBraWNrLCB3ZSBhcmUgaW5zaWRlIHRoZSB0YXNrbGV0IGFu
ZApkaWRuJ3QgbmVlZCB0aGUga2ljay4gVGhlIG90aGVyIHJlc3VsdCBvZiBnaXZpbmcgYSBraWNr
IGV2ZW4gdGhvdWdoIHRoZQpIVyBhcyBhYm91dCByZWFkeSwgaXMganVzdCBvbmUga2ljayB0b28g
bWFueS4gV2UgYXJlIGp1c3QgdHJ5aW5nIHRvCnJlZHVjZSB0aGUgbnVtYmVyIG9mIHVubmVjZXNz
YXJ5IHRhc2tsZXQgZXhlY3V0aW9ucywgaWRlYWwgaXMgMCBmYWxzZQpraWNrcywgYnV0IGFueSBz
bWFsbCBudW1iZXIgaXMgYmV0dGVyIHRoYW4ga2lja2luZyBvbiBldmVyeSBsb29wIHRocm91Z2gK
dGhlIHByaW9yaXR5IG5vZGUgdXBkYXRlcy4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
