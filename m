Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A70CF1F443E
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jun 2020 20:04:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3AD289F2D;
	Tue,  9 Jun 2020 18:04:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B00C689F2D;
 Tue,  9 Jun 2020 18:04:01 +0000 (UTC)
IronPort-SDR: Xxmn16qZPZStcSxyl8XP4Ri0IqoAzKQofgNK8J1xJCPxkZPVb2zQq+djxddj216uuEqpKdEZto
 HzoL3/F5rYbQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2020 11:04:01 -0700
IronPort-SDR: VS8r8YRzwNCmx70yqoozHYWfuwcYq9mq7x7p/4czz8OOKati73qdwLOR14+i0wDeNnOsPaY0nD
 kNlZkZJYOqHQ==
X-IronPort-AV: E=Sophos;i="5.73,492,1583222400"; d="scan'208";a="473058329"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2020 11:03:59 -0700
Date: Tue, 9 Jun 2020 21:03:51 +0300
From: Imre Deak <imre.deak@intel.com>
To: Lyude Paul <lyude@redhat.com>
Message-ID: <20200609180351.GH22647@ideak-desk.fi.intel.com>
References: <20200603211040.8190-3-imre.deak@intel.com>
 <20200604184500.23730-2-imre.deak@intel.com>
 <20200609121556.GF22647@ideak-desk.fi.intel.com>
 <3ac3e3d05dab3ebb83023e35bb0f5c5b15b0fbd6.camel@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3ac3e3d05dab3ebb83023e35bb0f5c5b15b0fbd6.camel@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v3 3/3] drm/i915/dp_mst: Work around
 out-of-spec adapters filtering short pulses
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Reply-To: imre.deak@intel.com
Cc: Dave Airlie <airlied@redhat.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdW4gMDksIDIwMjAgYXQgMTE6NTg6MThBTSAtMDQwMCwgTHl1ZGUgUGF1bCB3cm90
ZToKPiBIaSEgQXdlc29tZSBwYXRjaCBzZXJpZXMhCj4gCj4gUmV2aWV3ZWQtYnk6IEx5dWRlIFBh
dWwgPGx5dWRlQHJlZGhhdC5jb20+CgpUaGFua3MuCgo+IEFsc28gcmUgbWVyZ2luZyB2aWEgZHJt
LWludGVsLW5leHQtcXVldWVkIC0gSSB0aGluayB0aGF0IHNob3VsZCBiZSBmaW5lLCBmd2l3Cj4g
bWVyZ2luZyB2aWEgZHJtLW1pc2MtbmV4dCBtaWdodCBiZSBhbm90aGVyIG9wdGlvbiAoSSd2ZSBk
ZWZpbml0ZWx5IGRvbmUgdGhpcyBpbgo+IHRoZSBwYXN0IGZvciBzZXJpZXMgdGhhdCB0b3VjaGVk
IE1TVCBhbmQgZHJpdmVycywgYnV0IEkgZG9uJ3QgaGF2ZSBhIGhhcmQKPiBwcmVmZXJlbmNlIGVp
dGhlciB3YXkpLgoKT2ssIGlmIG5vIG9iamVjdGlvbnMgSSdsbCBtZXJnZSAyLzMgdmlhIGRybS1t
aXNjLW5leHQsIHRoYXQgc2VlbXMgdG8KbWFrZSBtb3JlIHNlbnNlLgoKQ291bGQgeW91IGFsc28g
dGFrZSBhIGxvb2sgYXQKaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy83
ODEwMC8KCkkgc2hvdWxkJ3ZlIENDJ2QgeW91LgoKPiBPbiBUdWUsIDIwMjAtMDYtMDkgYXQgMTU6
MTUgKzAzMDAsIEltcmUgRGVhayB3cm90ZToKPiA+IEhpIERhdmUsIEx5dWRlLAo+ID4gCj4gPiBh
cmUgeW91IG9rIHRvIG1lcmdlIHRoaXMgcGF0Y2hzZXQgdmlhIHRoZSBkcm0taW50ZWwtbmV4dC1x
dWV1ZWQgdHJlZT8KPiA+IAo+ID4gLS1JbXJlCj4gPiAKPiA+IE9uIFRodSwgSnVuIDA0LCAyMDIw
IGF0IDA5OjQ1OjAwUE0gKzAzMDAsIEltcmUgRGVhayB3cm90ZToKPiA+ID4gU29tZSBUeXBlQyAt
PiBuYXRpdmUgRFAgYWRhcHRlcnMsIGF0IGxlYXN0IHRoZSBDbHViIDNEIENBQy0xNTU3IGFkYXB0
ZXIsCj4gPiA+IGluY29ycmVjdGx5IGZpbHRlciBvdXQgSFBEIHNob3J0IHB1bHNlcyB3aXRoIGEg
ZHVyYXRpb24gbGVzcyB0aGFuCj4gPiA+IH41NDAgdXNlYywgbGVhZGluZyB0byBNU1QgcHJvYmUg
ZmFpbHVyZXMuCj4gPiA+IAo+ID4gPiBBY2NvcmRpbmcgdG8gdGhlIERQIFN0YW5kYXJkIDIuMCBz
ZWN0aW9uIDUuMS40Ogo+ID4gPiAtIERQIHNpbmtzIHNob3VsZCBnZW5lcmF0ZSBzaG9ydCBwdWxz
ZXMgaW4gdGhlIDUwMCB1c2VjIC0+IDEgbXNlYyByYW5nZQo+ID4gPiAtIERQIHNvdXJjZXMgc2hv
dWxkIGRldGVjdCBzaG9ydCBwdWxzZXMgaW4gdGhlIDI1MCB1c2VjIC0+IDIgbXNlYyByYW5nZQo+
ID4gPiAKPiA+ID4gQWNjb3JkaW5nIHRvIHRoZSBEUCBBbHQgTW9kZSBvbiBUeXBlQyBTdGFuZGFy
ZCBzZWN0aW9uIDMuOS4yLCBhZGFwdGVycwo+ID4gPiBzaG91bGQgZGV0ZWN0IGFuZCBmb3J3YXJk
IHNob3J0IHB1bHNlcyBhY2NvcmRpbmcgdG8gaG93IHNvdXJjZXMgc2hvdWxkCj4gPiA+IGRldGVj
dCB0aGVtIGFzIHNwZWNpZmllZCBpbiB0aGUgRFAgU3RhbmRhcmQgKDI1MCB1c2VjIC0+IDIgbXNl
YykuCj4gPiA+IAo+ID4gPiBCYXNlZCBvbiB0aGUgYWJvdmUgZmlsdGVyaW5nIG91dCBzaG9ydCBw
dWxzZXMgd2l0aCBhIGR1cmF0aW9uIGxlc3MgdGhhbgo+ID4gPiA1NDAgdXNlYyBpcyBpbmNvcnJl
Y3QuCj4gPiA+IAo+ID4gPiBUbyBtYWtlIHN1Y2ggYWRhcHRlcnMgd29yayBhZGQgc3VwcG9ydCBm
b3IgYSBkcml2ZXIgcG9sbGluZyBvbiBNU1QKPiA+ID4gaW5lcnJ1cHQgZmxhZ3MsIGFuZCB3aXJl
IHRoaXMgdXAgaW4gdGhlIGk5MTUgZHJpdmVyLiBUaGUgc2luayBjYW4gY2xlYXIKPiA+ID4gYW4g
aW50ZXJydXB0IGl0IHJhaXNlZCBhZnRlciAxMTAgbXNlYyBpZiB0aGUgc291cmNlIGRvZXNuJ3Qg
cmVzcG9uZCwgc28KPiA+ID4gdXNlIGEgNTAgbXNlYyBwb2xsIHBlcmlvZCB0byBhdm9pZCBtaXNz
aW5nIGFuIGludGVycnVwdC4gUG9sbGluZyBvZiB0aGUKPiA+ID4gTVNUIGludGVycnVwdCBmbGFn
cyBpcyBleHBsaWNpdGx5IGFsbG93ZWQgYnkgdGhlIERQIFN0YW5kYXJkLgo+ID4gPiAKPiA+ID4g
VGhpcyBmaXhlcyBNU1QgcHJvYmUgZmFpbHVyZXMgSSBzYXcgdXNpbmcgdGhpcyBhZGFwdGVyIGFu
ZCBhIERFTEwgVTI1MTVICj4gPiA+IG1vbml0b3IuCj4gPiA+IAo+ID4gPiB2MjoKPiA+ID4gLSBG
aXggdGhlIHdhaXQgZXZlbnQgdGltZW91dCBmb3IgdGhlIG5vLXBvbGwgY2FzZS4KPiA+ID4gdjMg
KFZpbGxlKToKPiA+ID4gLSBGaXggdGhlIHNob3J0IHB1bHNlIGR1cmF0aW9uIGxpbWl0cyBpbiB0
aGUgY29tbWl0IGxvZyBwcmVzY3JpYmVkIGJ5IHRoZQo+ID4gPiAgIERQIFN0YW5kYXJkLgo+ID4g
PiAtIEFkZCBjb2RlIGNvbW1lbnQgZXhwbGFpbmluZyB3aHkvaG93IHBvbGxpbmcgaXMgdXNlZC4K
PiA+ID4gLSBGYWN0b3Igb3V0IGEgaGVscGVyIHRvIHNjaGVkdWxlIHRoZSBwb3J0J3MgaHBkIGly
cSBoYW5kbGVyIGFuZCBtb3ZlIGl0Cj4gPiA+ICAgdG8gdGhlIHJlc3Qgb2YgaG90cGx1ZyBoYW5k
bGVycy4KPiA+ID4gLSBEb2N1bWVudCB0aGUgbmV3IE1TVCBjYWxsYmFjay4KPiA+ID4gLSBzL3Vw
ZGF0ZV9ocGRfaXJxX3N0YXRlL3BvbGxfaHBkX2lycS8KPiA+ID4gCj4gPiA+IENjOiBWaWxsZSBT
eXJqw4PGksOCwqRsw4PGksOCwqQgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+ID4g
PiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+Cj4gPiA+IC0t
LQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2RybV9kcF9tc3RfdG9wb2xvZ3kuYyAgICAgICAgfCAz
MiArKysrKysrKysrKysrKysrKystLQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcF9tc3QuYyAgfCAxMCArKysrKysKPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfaG90cGx1Zy5jIHwgMTggKysrKysrKysrKysKPiA+ID4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaG90cGx1Zy5oIHwgIDIgKysKPiA+ID4gIGluY2x1
ZGUvZHJtL2RybV9kcF9tc3RfaGVscGVyLmggICAgICAgICAgICAgIHwgIDkgKysrKysrCj4gPiA+
ICA1IGZpbGVzIGNoYW5nZWQsIDY4IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gPiA+
IAo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9tc3RfdG9wb2xvZ3ku
Ywo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5LmMKPiA+ID4gaW5k
ZXggNWJjNzJlODAwYjg1Li4yYTMwOWZiMmM0Y2MgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5LmMKPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2RybV9kcF9tc3RfdG9wb2xvZ3kuYwo+ID4gPiBAQCAtMTE3OCwxMSArMTE3OCwzNyBAQCBzdGF0
aWMgaW50IGRybV9kcF9tc3Rfd2FpdF90eF9yZXBseShzdHJ1Y3QKPiA+ID4gZHJtX2RwX21zdF9i
cmFuY2ggKm1zdGIsCj4gPiA+ICAJCQkJICAgIHN0cnVjdCBkcm1fZHBfc2lkZWJhbmRfbXNnX3R4
ICp0eG1zZykKPiA+ID4gIHsKPiA+ID4gIAlzdHJ1Y3QgZHJtX2RwX21zdF90b3BvbG9neV9tZ3Ig
Km1nciA9IG1zdGItPm1ncjsKPiA+ID4gKwl1bnNpZ25lZCBsb25nIHdhaXRfdGltZW91dCA9IG1z
ZWNzX3RvX2ppZmZpZXMoNDAwMCk7Cj4gPiA+ICsJdW5zaWduZWQgbG9uZyB3YWl0X2V4cGlyZXMg
PSBqaWZmaWVzICsgd2FpdF90aW1lb3V0Owo+ID4gPiAgCWludCByZXQ7Cj4gPiA+ICAKPiA+ID4g
LQlyZXQgPSB3YWl0X2V2ZW50X3RpbWVvdXQobWdyLT50eF93YWl0cSwKPiA+ID4gLQkJCQkgY2hl
Y2tfdHhtc2dfc3RhdGUobWdyLCB0eG1zZyksCj4gPiA+IC0JCQkJICg0ICogSFopKTsKPiA+ID4g
Kwlmb3IgKDs7KSB7Cj4gPiA+ICsJCS8qCj4gPiA+ICsJCSAqIElmIHRoZSBkcml2ZXIgcHJvdmlk
ZXMgYSB3YXkgZm9yIHRoaXMsIGNoYW5nZSB0bwo+ID4gPiArCQkgKiBwb2xsLXdhaXRpbmcgZm9y
IHRoZSBNU1QgcmVwbHkgaW50ZXJydXB0IGlmIHdlIGRpZG4ndCByZWNlaXZlCj4gPiA+ICsJCSAq
IGl0IGZvciA1MCBtc2VjLiBUaGlzIHdvdWxkIGNhdGVyIGZvciBjYXNlcyB3aGVyZSB0aGUgSFBE
Cj4gPiA+ICsJCSAqIHB1bHNlIHNpZ25hbCBnb3QgbG9zdCBzb21ld2hlcmUsIGV2ZW4gdGhvdWdo
IHRoZSBzaW5rIHJhaXNlZAo+ID4gPiArCQkgKiB0aGUgY29ycmVzcG9uZGluZyBNU1QgaW50ZXJy
dXB0IGNvcnJlY3RseS4gT25lIGV4YW1wbGUgaXMgdGhlCj4gPiA+ICsJCSAqIENsdWIgM0QgQ0FD
LTE1NTcgVHlwZUMgLT4gRFAgYWRhcHRlciB3aGljaCBmb3Igc29tZSByZWFzb24KPiA+ID4gKwkJ
ICogZmlsdGVycyBvdXQgc2hvcnQgcHVsc2VzIHdpdGggYSBkdXJhdGlvbiBsZXNzIHRoYW4gfjU0
MCB1c2VjLgo+ID4gPiArCQkgKgo+ID4gPiArCQkgKiBUaGUgcG9sbCBwZXJpb2QgaXMgNTAgbXNl
YyB0byBhdm9pZCBtaXNzaW5nIGFuIGludGVycnVwdAo+ID4gPiArCQkgKiBhZnRlciB0aGUgc2lu
ayBoYXMgY2xlYXJlZCBpdCAoYWZ0ZXIgYSAxMTBtc2VjIHRpbWVvdXQKPiA+ID4gKwkJICogc2lu
Y2UgaXQgcmFpc2VkIHRoZSBpbnRlcnJ1cHQpLgo+ID4gPiArCQkgKi8KPiA+ID4gKwkJcmV0ID0g
d2FpdF9ldmVudF90aW1lb3V0KG1nci0+dHhfd2FpdHEsCj4gPiA+ICsJCQkJCSBjaGVja190eG1z
Z19zdGF0ZShtZ3IsIHR4bXNnKSwKPiA+ID4gKwkJCQkJIG1nci0+Y2JzLT5wb2xsX2hwZF9pcnEg
Pwo+ID4gPiArCQkJCQkJbXNlY3NfdG9famlmZmllcyg1MCkgOgo+ID4gPiArCQkJCQkJd2FpdF90
aW1lb3V0KTsKPiA+ID4gKwo+ID4gPiArCQlpZiAocmV0IHx8ICFtZ3ItPmNicy0+cG9sbF9ocGRf
aXJxIHx8Cj4gPiA+ICsJCSAgICB0aW1lX2FmdGVyKGppZmZpZXMsIHdhaXRfZXhwaXJlcykpCj4g
PiA+ICsJCQlicmVhazsKPiA+ID4gKwo+ID4gPiArCQltZ3ItPmNicy0+cG9sbF9ocGRfaXJxKG1n
cik7Cj4gPiA+ICsJfQo+ID4gPiArCj4gPiA+ICAJbXV0ZXhfbG9jaygmbWdyLT5xbG9jayk7Cj4g
PiA+ICAJaWYgKHJldCA+IDApIHsKPiA+ID4gIAkJaWYgKHR4bXNnLT5zdGF0ZSA9PSBEUk1fRFBf
U0lERUJBTkRfVFhfVElNRU9VVCkgewo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYwo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKPiA+ID4gaW5kZXggZDE4YjQwNmYyYTdkLi45YmU1MjY0
MzIwNWQgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBfbXN0LmMKPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcF9tc3QuYwo+ID4gPiBAQCAtMzMsNiArMzMsNyBAQAo+ID4gPiAgI2luY2x1ZGUgImludGVs
X2Nvbm5lY3Rvci5oIgo+ID4gPiAgI2luY2x1ZGUgImludGVsX2RkaS5oIgo+ID4gPiAgI2luY2x1
ZGUgImludGVsX2Rpc3BsYXlfdHlwZXMuaCIKPiA+ID4gKyNpbmNsdWRlICJpbnRlbF9ob3RwbHVn
LmgiCj4gPiA+ICAjaW5jbHVkZSAiaW50ZWxfZHAuaCIKPiA+ID4gICNpbmNsdWRlICJpbnRlbF9k
cF9tc3QuaCIKPiA+ID4gICNpbmNsdWRlICJpbnRlbF9kcGlvX3BoeS5oIgo+ID4gPiBAQCAtNzY1
LDggKzc2NiwxNyBAQCBzdGF0aWMgc3RydWN0IGRybV9jb25uZWN0b3IKPiA+ID4gKmludGVsX2Rw
X2FkZF9tc3RfY29ubmVjdG9yKHN0cnVjdCBkcm1fZHBfbXN0X3RvcG9sbwo+ID4gPiAgCXJldHVy
biBOVUxMOwo+ID4gPiAgfQo+ID4gPiAgCj4gPiA+ICtzdGF0aWMgdm9pZAo+ID4gPiAraW50ZWxf
ZHBfbXN0X3BvbGxfaHBkX2lycShzdHJ1Y3QgZHJtX2RwX21zdF90b3BvbG9neV9tZ3IgKm1ncikK
PiA+ID4gK3sKPiA+ID4gKwlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0gY29udGFpbmVyX29m
KG1nciwgc3RydWN0IGludGVsX2RwLCBtc3RfbWdyKTsKPiA+ID4gKwo+ID4gPiArCWludGVsX2hw
ZF90cmlnZ2VyX2lycShkcF90b19kaWdfcG9ydChpbnRlbF9kcCkpOwo+ID4gPiArfQo+ID4gPiAr
Cj4gPiA+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9kcF9tc3RfdG9wb2xvZ3lfY2JzIG1zdF9j
YnMgPSB7Cj4gPiA+ICAJLmFkZF9jb25uZWN0b3IgPSBpbnRlbF9kcF9hZGRfbXN0X2Nvbm5lY3Rv
ciwKPiA+ID4gKwkucG9sbF9ocGRfaXJxID0gaW50ZWxfZHBfbXN0X3BvbGxfaHBkX2lycSwKPiA+
ID4gIH07Cj4gPiA+ICAKPiA+ID4gIHN0YXRpYyBzdHJ1Y3QgaW50ZWxfZHBfbXN0X2VuY29kZXIg
Kgo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9o
b3RwbHVnLmMKPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hvdHBs
dWcuYwo+ID4gPiBpbmRleCA0ZjZmNTYwZTA5M2UuLjY2NGY4ODM1NDEwMSAxMDA2NDQKPiA+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMKPiA+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMKPiA+ID4g
QEAgLTM0Nyw2ICszNDcsMjQgQEAgc3RhdGljIHZvaWQgaTkxNV9kaWdwb3J0X3dvcmtfZnVuYyhz
dHJ1Y3Qgd29ya19zdHJ1Y3QKPiA+ID4gKndvcmspCj4gPiA+ICAJfQo+ID4gPiAgfQo+ID4gPiAg
Cj4gPiA+ICsvKioKPiA+ID4gKyAqIGludGVsX2hwZF90cmlnZ2VyX2lycSAtIHRyaWdnZXIgYW4g
aHBkIGlycSBldmVudCBmb3IgYSBwb3J0Cj4gPiA+ICsgKiBAZGlnX3BvcnQ6IGRpZ2l0YWwgcG9y
dAo+ID4gPiArICoKPiA+ID4gKyAqIFRyaWdnZXIgYW4gSFBEIGludGVycnVwdCBldmVudCBmb3Ig
dGhlIGdpdmVuIHBvcnQsIGVtdWxhdGluZyBhIHNob3J0Cj4gPiA+IHB1bHNlCj4gPiA+ICsgKiBn
ZW5lcmF0ZWQgYnkgdGhlIHNpbmssIGFuZCBzY2hlZHVsZSB0aGUgZGlnIHBvcnQgd29yayB0byBo
YW5kbGUgaXQuCj4gPiA+ICsgKi8KPiA+ID4gK3ZvaWQgaW50ZWxfaHBkX3RyaWdnZXJfaXJxKHN0
cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQo+ID4gPiArewo+ID4gPiArCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShkaWdfcG9ydC0+YmFzZS5iYXNlLmRl
dik7Cj4gPiA+ICsKPiA+ID4gKwlzcGluX2xvY2tfaXJxKCZpOTE1LT5pcnFfbG9jayk7Cj4gPiA+
ICsJaTkxNS0+aG90cGx1Zy5zaG9ydF9wb3J0X21hc2sgfD0gQklUKGRpZ19wb3J0LT5iYXNlLnBv
cnQpOwo+ID4gPiArCXNwaW5fdW5sb2NrX2lycSgmaTkxNS0+aXJxX2xvY2spOwo+ID4gPiArCj4g
PiA+ICsJcXVldWVfd29yayhpOTE1LT5ob3RwbHVnLmRwX3dxLCAmaTkxNS0+aG90cGx1Zy5kaWdf
cG9ydF93b3JrKTsKPiA+ID4gK30KPiA+ID4gKwo+ID4gPiAgLyoKPiA+ID4gICAqIEhhbmRsZSBo
b3RwbHVnIGV2ZW50cyBvdXRzaWRlIHRoZSBpbnRlcnJ1cHQgaGFuZGxlciBwcm9wZXIuCj4gPiA+
ICAgKi8KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfaG90cGx1Zy5oCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9o
b3RwbHVnLmgKPiA+ID4gaW5kZXggNzc3YjA3NDMyNTdlLi5hNzA0ZDdjOTRkMTYgMTAwNjQ0Cj4g
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaG90cGx1Zy5oCj4g
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaG90cGx1Zy5oCj4g
PiA+IEBAIC0xMCw2ICsxMCw3IEBACj4gPiA+ICAKPiA+ID4gIHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlOwo+ID4gPiAgc3RydWN0IGludGVsX2Nvbm5lY3RvcjsKPiA+ID4gK3N0cnVjdCBpbnRlbF9k
aWdpdGFsX3BvcnQ7Cj4gPiA+ICBzdHJ1Y3QgaW50ZWxfZW5jb2RlcjsKPiA+ID4gIGVudW0gcG9y
dDsKPiA+ID4gIAo+ID4gPiBAQCAtMTgsNiArMTksNyBAQCBlbnVtIGludGVsX2hvdHBsdWdfc3Rh
dGUgaW50ZWxfZW5jb2Rlcl9ob3RwbHVnKHN0cnVjdAo+ID4gPiBpbnRlbF9lbmNvZGVyICplbmNv
ZGVyLAo+ID4gPiAgCQkJCQkgICAgICAgc3RydWN0IGludGVsX2Nvbm5lY3Rvcgo+ID4gPiAqY29u
bmVjdG9yKTsKPiA+ID4gIHZvaWQgaW50ZWxfaHBkX2lycV9oYW5kbGVyKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwKPiA+ID4gIAkJCSAgIHUzMiBwaW5fbWFzaywgdTMyIGxvbmdf
bWFzayk7Cj4gPiA+ICt2b2lkIGludGVsX2hwZF90cmlnZ2VyX2lycShzdHJ1Y3QgaW50ZWxfZGln
aXRhbF9wb3J0ICpkaWdfcG9ydCk7Cj4gPiA+ICB2b2lkIGludGVsX2hwZF9pbml0KHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7Cj4gPiA+ICB2b2lkIGludGVsX2hwZF9pbml0X3dv
cmsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKPiA+ID4gIHZvaWQgaW50ZWxf
aHBkX2NhbmNlbF93b3JrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdik7Cj4gPiA+
IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1fZHBfbXN0X2hlbHBlci5oCj4gPiA+IGIvaW5j
bHVkZS9kcm0vZHJtX2RwX21zdF9oZWxwZXIuaAo+ID4gPiBpbmRleCA5ZTFmZmNkN2NiNjguLmIy
MzBmZjZmNzA4MSAxMDA2NDQKPiA+ID4gLS0tIGEvaW5jbHVkZS9kcm0vZHJtX2RwX21zdF9oZWxw
ZXIuaAo+ID4gPiArKysgYi9pbmNsdWRlL2RybS9kcm1fZHBfbXN0X2hlbHBlci5oCj4gPiA+IEBA
IC00NzUsNiArNDc1LDE1IEBAIHN0cnVjdCBkcm1fZHBfbXN0X3RvcG9sb2d5X21ncjsKPiA+ID4g
IHN0cnVjdCBkcm1fZHBfbXN0X3RvcG9sb2d5X2NicyB7Cj4gPiA+ICAJLyogY3JlYXRlIGEgY29u
bmVjdG9yIGZvciBhIHBvcnQgKi8KPiA+ID4gIAlzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqKCphZGRf
Y29ubmVjdG9yKShzdHJ1Y3QgZHJtX2RwX21zdF90b3BvbG9neV9tZ3IKPiA+ID4gKm1nciwgc3Ry
dWN0IGRybV9kcF9tc3RfcG9ydCAqcG9ydCwgY29uc3QgY2hhciAqcGF0aCk7Cj4gPiA+ICsJLyoK
PiA+ID4gKwkgKiBDaGVja3MgZm9yIGFueSBwZW5kaW5nIE1TVCBpbnRlcnJ1cHRzLCBwYXNzaW5n
IHRoZW0gdG8gTVNUIGNvcmUgZm9yCj4gPiA+ICsJICogcHJvY2Vzc2luZywgdGhlIHNhbWUgd2F5
IGFuIEhQRCBJUlEgcHVsc2UgaGFuZGxlciB3b3VsZCBkbyB0aGlzLgo+ID4gPiArCSAqIElmIHBy
b3ZpZGVkIE1TVCBjb3JlIGNhbGxzIHRoaXMgY2FsbGJhY2sgZnJvbSBhIHBvbGwtd2FpdGluZyBs
b29wCj4gPiA+ICsJICogd2hlbiB3YWl0aW5nIGZvciBNU1QgZG93biBtZXNzYWdlIHJlcGxpZXMu
IFRoZSBkcml2ZXIgaXMgZXhwZWN0ZWQKPiA+ID4gKwkgKiB0byBndWFyZCBhZ2FpbnN0IGEgcmFj
ZSBiZXR3ZWVuIHRoaXMgY2FsbGJhY2sgYW5kIHRoZSBkcml2ZXIncyBIUEQKPiA+ID4gKwkgKiBJ
UlEgcHVsc2UgaGFuZGxlci4KPiA+ID4gKwkgKi8KPiA+ID4gKwl2b2lkICgqcG9sbF9ocGRfaXJx
KShzdHJ1Y3QgZHJtX2RwX21zdF90b3BvbG9neV9tZ3IgKm1ncik7Cj4gPiA+ICB9Owo+ID4gPiAg
Cj4gPiA+ICAjZGVmaW5lIERQX01BWF9QQVlMT0FEIChzaXplb2YodW5zaWduZWQgbG9uZykgKiA4
KQo+ID4gPiAtLSAKPiA+ID4gMi4yMy4xCj4gPiA+IAo+ID4gPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+ID4gPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0
Cj4gPiA+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+ID4gaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKPiAKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
