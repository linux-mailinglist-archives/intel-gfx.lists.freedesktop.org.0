Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E27F105011
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 11:09:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FD966ECFF;
	Thu, 21 Nov 2019 10:09:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 855656ECBE;
 Thu, 21 Nov 2019 10:09:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Nov 2019 02:09:06 -0800
X-IronPort-AV: E=Sophos;i="5.69,224,1571727600"; d="scan'208";a="201073538"
Received: from jkrzyszt-desk.igk.intel.com (HELO
 jkrzyszt-desk.ger.corp.intel.com) ([172.22.244.17])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Nov 2019 02:09:04 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: "Summers, Stuart" <stuart.summers@intel.com>
Date: Thu, 21 Nov 2019 11:08:58 +0100
Message-ID: <1925923.0CCkjyDHe0@jkrzyszt-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <7ddbfeca6efa339009b889df4dc721b0a5da7b45.camel@intel.com>
References: <20191120164429.8441-1-janusz.krzysztofik@linux.intel.com>
 <7a767d5d0cf044fa26759e7d0bd1f1fae4e66a0f.camel@intel.com>
 <7ddbfeca6efa339009b889df4dc721b0a5da7b45.camel@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v2] tests/prime_vgem: Skip
 basic-read/write subtests if no mappable GGTT
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgU3R1YXJ0LAoKT24gV2VkbmVzZGF5LCBOb3ZlbWJlciAyMCwgMjAxOSAxMTowNDo1OSBQTSBD
RVQgU3VtbWVycywgU3R1YXJ0IHdyb3RlOgo+IE9uIFdlZCwgMjAxOS0xMS0yMCBhdCAxNzoxNCAr
MDAwMCwgU3VtbWVycywgU3R1YXJ0IHdyb3RlOgo+ID4gT24gV2VkLCAyMDE5LTExLTIwIGF0IDE3
OjQ0ICswMTAwLCBKYW51c3ogS3J6eXN6dG9maWsgd3JvdGU6Cj4gPiA+IEFzIHdlJ3ZlIGFncmVl
ZCB0aGF0IHVzaW5nIEk5MTVfR0VNX1BSRUFEL1BXUklURSBJT0NUTHMgb24gZG1hLWJ1Zgo+ID4g
PiBvYmplY3RzIGRvZXNuJ3QgbWFrZSBtdWNoIHNlbnNlLCB3ZSBhcmUgbm90IGdvaW5nIHRvIGV4
dGVuZCB0aGVpcgo+ID4gPiBoYW5kbGVycyBpbiB0aGUgaTkxNSBkcml2ZXIgd2l0aCBuZXcgcHJv
Y2Vzc2luZyBwYXRocyByZXF1aXJlZCBmb3IKPiA+ID4gdGhlbQo+ID4gPiB0byB3b3JrIGNvcnJl
Y3RseSB3aXRoIGRtYS1idWYgb2JqZWN0cyBvbiBmdXR1cmUgaGFyZHdhcmUgd2l0aCBubwo+ID4g
PiBtYXBwYWJsZSBhcGVydHVyZS4gIFdoZW4gcnVubmluZyBvbiB0aGF0IGtpbmQgb2YgaGFyZHdh
cmUsIGp1c3QKPiA+ID4gc2tpcAo+ID4gPiBzdWJ0ZXN0cyB3aGljaCB1c2UgdGhvc2UgSU9DVExz
Lgo+ID4gCj4gPiBIb3cgaXMgdGhpcyBoYW5kbGVkIGZvciBvdGhlciBkbWEtYnVmIGNhcGFibGUg
ZGV2aWNlcz8gSXMgdGhlcmUgbm8KPiA+IG9wcG9ydHVuaXR5IGZvciBhIHdvcmtpbmcgc29sdXRp
b24gaW4gaTkxNSBoZXJlPwo+ID4gCj4gPiBBbHNvLCBpcyB0aGlzIGEgcGVybWFuZW50IGxpbWl0
YXRpb24/IE9yIGp1c3QgYSB3b3JrYXJvdW5kIGJhc2VkIG9uCj4gPiBvdXIKPiA+IGN1cnJlbnQg
aW1wbGVtZW50YXRpb24/Cj4gCj4gVGhpbmtpbmcgYSBiaXQgbW9yZSBhYm91dCB0aGlzLCBJIHRo
aW5rIG15IG1haW4gY29uY2VybiBoZXJlIGlzIGFyb3VuZAo+IHRoZSBjb21taXQgbWVzc2FnZS4g
WW91IGFyZSBpbXBseWluZyB0aGVyZSBpcyBubyBjaGFuY2Ugd2UgY2FuIAoKSSB0aGluayBteSBj
b21taXQgbWVzc2FnZSBkb2Vzbid0IGltcGx5IHdlIGNhbid0LCBpdCBzYXlzIHRoYXQgdGhlcmUg
aXMgbm8gCm5lZWQgdG8gLi4uCj4gY2hhbmdlCj4gdGhlc2UgRFJNIGludGVyZmFjZXMgdG8gd29y
ayB3aXRoIGRtYS1idWYgYnkgcmVmZXJlbmNpbmcgYW4gSTkxNSBJT0NUTC4KYmVjYXVzZSB0aGF0
IGludGVyZmFjZSBpcyBub3QgdXNlZnVsLgoKPiBJIGRvbid0IHBlcnNvbmFsbHkgaGF2ZSBhbnkg
aXNzdWUgYWRkaW5nIHRoZSBza2lwIGJlbG93LCBhbmQgaG9uZXN0bHkKPiB0aGF0IHNlZW1zIGxp
a2UgYSBnb29kIHNhZmVndWFyZC4gQnV0IGNhbiB5b3UgdXBkYXRlIHRoZSBjb21taXQgbWVzc2Fn
ZQo+IHRvIGluZGljYXRlIHRoYXQgdGhpcyBpcyBzaW1wbHkgdGhhdCwgYSBzYWZlZ3VhcmQsIGFu
ZCBub3QgYmVjYXVzZSB3ZQo+IGhhdmUgbm8gb3B0aW9uIAoKQXMgbXkgY29tbWl0IG1lc3NhZ2Ug
c3RhdGVzLCB3ZSBhcmUgbm90IGdvaW5nIC4uLgo+IHRvIG1ha2UgdGhpcyB3b3JrIGZyb20gdGhl
IGtlcm5lbCBzaWRlPwpldmVuIGlmIHdlIGhhdmUgYW4gb3B0aW9uLCBzaW1wbHkgYmVjYXVzZSB0
aGVyZSBhcmUgbm8gdXNlcnMgb2Ygc3VjaCAKaW50ZXJmYWNlLgoKVGhhbmtzLApKYW51c3oKCj4g
T2YgY291cnNlIHBsZWFzZSBjb3JyZWN0IG1lIGlmIEknbSBtaXN0YWtlbiBoZXJlLgo+IAo+IFRo
YW5rcywKPiBTdHVhcnQKPiAKPiA+IAo+ID4gVGhhbmtzLAo+ID4gU3R1YXJ0Cj4gPiAKPiA+ID4g
Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8Cj4gPiA+IGphbnVzei5r
cnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20KPiA+ID4gPiAKPiA+ID4gCj4gPiA+IENjOiBEYW5p
ZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+Cj4gPiA+IENjOiBKb29uYXMgTGFodGluZW4gPGpv
b25hcy5sYWh0aW5lbkBpbnRlbC5jb20+Cj4gPiA+IC0tLQo+ID4gPiAgbGliL2lvY3RsX3dyYXBw
ZXJzLmMgfCAyICstCj4gPiA+ICBsaWIvaW9jdGxfd3JhcHBlcnMuaCB8IDEgKwo+ID4gPiAgdGVz
dHMvcHJpbWVfdmdlbS5jICAgfCA2ICsrKysrKwo+ID4gPiAgMyBmaWxlcyBjaGFuZ2VkLCA4IGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9saWIv
aW9jdGxfd3JhcHBlcnMuYyBiL2xpYi9pb2N0bF93cmFwcGVycy5jCj4gPiA+IGluZGV4IDYyOGY4
YjgzLi43OGI5MmJkMiAxMDA2NDQKPiA+ID4gLS0tIGEvbGliL2lvY3RsX3dyYXBwZXJzLmMKPiA+
ID4gKysrIGIvbGliL2lvY3RsX3dyYXBwZXJzLmMKPiA+ID4gQEAgLTM1Niw3ICszNTYsNyBAQCB2
b2lkIGdlbV93cml0ZShpbnQgZmQsIHVpbnQzMl90IGhhbmRsZSwKPiA+ID4gdWludDY0X3QKPiA+
ID4gb2Zmc2V0LCBjb25zdCB2b2lkICpidWYsIHVpbnQ2NAo+ID4gPiAgCWlndF9hc3NlcnRfZXEo
X19nZW1fd3JpdGUoZmQsIGhhbmRsZSwgb2Zmc2V0LCBidWYsIGxlbmd0aCksIDApOwo+ID4gPiAg
fQo+ID4gPiAgCj4gPiA+IC1zdGF0aWMgaW50IF9fZ2VtX3JlYWQoaW50IGZkLCB1aW50MzJfdCBo
YW5kbGUsIHVpbnQ2NF90IG9mZnNldCwKPiA+ID4gdm9pZAo+ID4gPiAqYnVmLCB1aW50NjRfdCBs
ZW5ndGgpCj4gPiA+ICtpbnQgX19nZW1fcmVhZChpbnQgZmQsIHVpbnQzMl90IGhhbmRsZSwgdWlu
dDY0X3Qgb2Zmc2V0LCB2b2lkCj4gPiA+ICpidWYsCj4gPiA+IHVpbnQ2NF90IGxlbmd0aCkKPiA+
ID4gIHsKPiA+ID4gIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX3ByZWFkIGdlbV9wcmVhZDsKPiA+ID4g
IAlpbnQgZXJyOwo+ID4gPiBkaWZmIC0tZ2l0IGEvbGliL2lvY3RsX3dyYXBwZXJzLmggYi9saWIv
aW9jdGxfd3JhcHBlcnMuaAo+ID4gPiBpbmRleCBmMjQxMmQ3OC4uOTdmMjc4ZWQgMTAwNjQ0Cj4g
PiA+IC0tLSBhL2xpYi9pb2N0bF93cmFwcGVycy5oCj4gPiA+ICsrKyBiL2xpYi9pb2N0bF93cmFw
cGVycy5oCj4gPiA+IEBAIC02OSw2ICs2OSw3IEBAIHVpbnQzMl90IGdlbV9vcGVuKGludCBmZCwg
dWludDMyX3QgbmFtZSk7Cj4gPiA+ICB2b2lkIGdlbV9jbG9zZShpbnQgZmQsIHVpbnQzMl90IGhh
bmRsZSk7Cj4gPiA+ICBpbnQgX19nZW1fd3JpdGUoaW50IGZkLCB1aW50MzJfdCBoYW5kbGUsIHVp
bnQ2NF90IG9mZnNldCwgY29uc3QKPiA+ID4gdm9pZAo+ID4gPiAqYnVmLCB1aW50NjRfdCBsZW5n
dGgpOwo+ID4gPiAgdm9pZCBnZW1fd3JpdGUoaW50IGZkLCB1aW50MzJfdCBoYW5kbGUsIHVpbnQ2
NF90IG9mZnNldCwgIGNvbnN0Cj4gPiA+IHZvaWQKPiA+ID4gKmJ1ZiwgdWludDY0X3QgbGVuZ3Ro
KTsKPiA+ID4gK2ludCBfX2dlbV9yZWFkKGludCBmZCwgdWludDMyX3QgaGFuZGxlLCB1aW50NjRf
dCBvZmZzZXQsIHZvaWQKPiA+ID4gKmJ1ZiwKPiA+ID4gdWludDY0X3QgbGVuZ3RoKTsKPiA+ID4g
IHZvaWQgZ2VtX3JlYWQoaW50IGZkLCB1aW50MzJfdCBoYW5kbGUsIHVpbnQ2NF90IG9mZnNldCwg
dm9pZCAqYnVmLAo+ID4gPiB1aW50NjRfdCBsZW5ndGgpOwo+ID4gPiAgaW50IF9fZ2VtX3NldF9k
b21haW4oaW50IGZkLCB1aW50MzJfdCBoYW5kbGUsIHVpbnQzMl90IHJlYWQsCj4gPiA+IHVpbnQz
Ml90IHdyaXRlKTsKPiA+ID4gIHZvaWQgZ2VtX3NldF9kb21haW4oaW50IGZkLCB1aW50MzJfdCBo
YW5kbGUsIHVpbnQzMl90IHJlYWQsCj4gPiA+IHVpbnQzMl90Cj4gPiA+IHdyaXRlKTsKPiA+ID4g
ZGlmZiAtLWdpdCBhL3Rlc3RzL3ByaW1lX3ZnZW0uYyBiL3Rlc3RzL3ByaW1lX3ZnZW0uYwo+ID4g
PiBpbmRleCAwNGNjOTEzZC4uNjU5NTgxOGMgMTAwNjQ0Cj4gPiA+IC0tLSBhL3Rlc3RzL3ByaW1l
X3ZnZW0uYwo+ID4gPiArKysgYi90ZXN0cy9wcmltZV92Z2VtLmMKPiA+ID4gQEAgLTQ2LDYgKzQ2
LDggQEAgc3RhdGljIHZvaWQgdGVzdF9yZWFkKGludCB2Z2VtLCBpbnQgaTkxNSkKPiA+ID4gIAlo
YW5kbGUgPSBwcmltZV9mZF90b19oYW5kbGUoaTkxNSwgZG1hYnVmKTsKPiA+ID4gIAljbG9zZShk
bWFidWYpOwo+ID4gPiAgCj4gPiA+ICsJaWd0X3NraXBfb24oX19nZW1fcmVhZChpOTE1LCBoYW5k
bGUsIDAsICZpLCBzaXplb2YoaSkpKTsKPiA+ID4gKwo+ID4gPiAgCXB0ciA9IHZnZW1fbW1hcCh2
Z2VtLCAmc2NyYXRjaCwgUFJPVF9XUklURSk7Cj4gPiA+ICAJZm9yIChpID0gMDsgaSA8IDEwMjQ7
IGkrKykKPiA+ID4gIAkJcHRyWzEwMjQqaV0gPSBpOwo+ID4gPiBAQCAtODEsNiArODMsOCBAQCBz
dGF0aWMgdm9pZCB0ZXN0X2ZlbmNlX3JlYWQoaW50IGk5MTUsIGludCB2Z2VtKQo+ID4gPiAgCWhh
bmRsZSA9IHByaW1lX2ZkX3RvX2hhbmRsZShpOTE1LCBkbWFidWYpOwo+ID4gPiAgCWNsb3NlKGRt
YWJ1Zik7Cj4gPiA+ICAKPiA+ID4gKwlpZ3Rfc2tpcF9vbihfX2dlbV9yZWFkKGk5MTUsIGhhbmRs
ZSwgMCwgJmksIHNpemVvZihpKSkpOwo+ID4gPiArCj4gPiA+ICAJaWd0X2ZvcmsoY2hpbGQsIDEp
IHsKPiA+ID4gIAkJY2xvc2UobWFzdGVyWzBdKTsKPiA+ID4gIAkJY2xvc2Uoc2xhdmVbMV0pOwo+
ID4gPiBAQCAtMTkxLDYgKzE5NSw4IEBAIHN0YXRpYyB2b2lkIHRlc3Rfd3JpdGUoaW50IHZnZW0s
IGludCBpOTE1KQo+ID4gPiAgCWhhbmRsZSA9IHByaW1lX2ZkX3RvX2hhbmRsZShpOTE1LCBkbWFi
dWYpOwo+ID4gPiAgCWNsb3NlKGRtYWJ1Zik7Cj4gPiA+ICAKPiA+ID4gKwlpZ3Rfc2tpcF9vbihf
X2dlbV93cml0ZShpOTE1LCBoYW5kbGUsIDAsICZpLCBzaXplb2YoaSkpKTsKPiA+ID4gKwo+ID4g
PiAgCXB0ciA9IHZnZW1fbW1hcCh2Z2VtLCAmc2NyYXRjaCwgUFJPVF9SRUFEKTsKPiA+ID4gIAln
ZW1fY2xvc2UodmdlbSwgc2NyYXRjaC5oYW5kbGUpOwo+ID4gPiAgCj4gPiAKPiA+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBpZ3QtZGV2IG1haWxp
bmcgbGlzdAo+ID4gaWd0LWRldkBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiA+IGh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaWd0LWRldgo+IAoKCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
