Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63195D76D5
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 14:49:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E30589E57;
	Tue, 15 Oct 2019 12:49:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CB7D89E57
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 12:49:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 05:49:17 -0700
X-IronPort-AV: E=Sophos;i="5.67,300,1566889200"; d="scan'208";a="185800963"
Received: from dwiesing-mobl.ger.corp.intel.com (HELO [10.252.31.172])
 ([10.252.31.172])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 15 Oct 2019 05:49:16 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191014220534.1662-1-chris@chris-wilson.co.uk>
 <20191014220534.1662-7-chris@chris-wilson.co.uk>
 <0e202636-8a4b-a691-6991-762907750286@linux.intel.com>
 <157114197406.22469.15002274583158401191@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <57df576e-5bb5-1ca4-85b2-aafa238fbf14@linux.intel.com>
Date: Tue, 15 Oct 2019 13:49:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <157114197406.22469.15002274583158401191@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 07/10] drm/i915/gem: Cancel non-persistent
 contexts on close
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

Ck9uIDE1LzEwLzIwMTkgMTM6MTksIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTEwLTE1IDEzOjE1OjQ5KQo+Pgo+PiBPbiAxNC8xMC8yMDE5IDIzOjA1
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBOb3JtYWxseSwgd2UgcmVseSBvbiBvdXIgaGFuZ2No
ZWNrIHRvIHByZXZlbnQgcGVyc2lzdGVudCBiYXRjaGVzIGZyb20KPj4+IGhvZ2dpbmcgdGhlIEdQ
VS4gSG93ZXZlciwgaWYgdGhlIHVzZXIgZGlzYWJsZXMgaGFuZ2NoZWNrLCB0aGlzIG1lY2hhbmlz
bQo+Pj4gYnJlYWtzIGRvd24uIERlc3BpdGUgb3VyIGluc2lzdGVuY2UgdGhhdCB0aGlzIGlzIHVu
c2FmZSwgdGhlIHVzZXJzIGFyZQo+Pj4gZXF1YWxseSBpbnNpc3RlbnQgdGhhdCB0aGV5IHdhbnQg
dG8gdXNlIGVuZGxlc3MgYmF0Y2hlcyBhbmQgd2lsbCBkaXNhYmxlCj4+PiB0aGUgaGFuZ2NoZWNr
IG1lY2hhbmlzbS4gV2UgYXJlIGxvb2tpbmcgYXQgcGVyaGFwcyByZXBsYWNpbmcgaGFuZ2NoZWNr
Cj4+PiB3aXRoIGEgc29mdGVyIG1lY2hhbmlzbSwgdGhhdCBzZW5kcyBhIHB1bHNlIGRvd24gdGhl
IGVuZ2luZSB0byBjaGVjayBpZgo+Pj4gaXQgaXMgd2VsbC4gV2UgY2FuIHVzZSB0aGUgc2FtZSBw
cmVlbXB0aXZlIHB1bHNlIHRvIGZsdXNoIGFuIGFjdGl2ZQo+Pj4gcGVyc2lzdGVudCBjb250ZXh0
IG9mZiB0aGUgR1BVIHVwb24gY29udGV4dCBjbG9zZSwgcHJldmVudGluZyByZXNvdXJjZXMKPj4+
IGJlaW5nIGxvc3QgYW5kIHVua2lsbGFibGUgcmVxdWVzdHMgcmVtYWluaW5nIG9uIHRoZSBHUFUg
YWZ0ZXIgcHJvY2Vzcwo+Pj4gdGVybWluYXRpb24uIFRvIGF2b2lkIGNoYW5naW5nIHRoZSBBQkkg
YW5kIGFjY2lkZW50YWxseSBicmVha2luZwo+Pj4gZXhpc3RpbmcgdXNlcnNwYWNlLCB3ZSBtYWtl
IHRoZSBwZXJzaXN0ZW5jZSBvZiBhIGNvbnRleHQgZXhwbGljaXQgYW5kCj4+PiBlbmFibGUgaXQg
YnkgZGVmYXVsdCAobWF0Y2hpbmcgY3VycmVudCBBQkkpLiBVc2Vyc3BhY2UgY2FuIG9wdCBvdXQg
b2YKPj4+IHBlcnNpc3RlbnQgbW9kZSAoZm9yY2luZyByZXF1ZXN0cyB0byBiZSBjYW5jZWxsZWQg
d2hlbiB0aGUgY29udGV4dCBpcwo+Pj4gY2xvc2VkIGJ5IHByb2Nlc3MgdGVybWluYXRpb24gb3Ig
ZXhwbGljaXRseSkgYnkgYSBjb250ZXh0IHBhcmFtZXRlci4gVG8KPj4+IGZhY2lsaXRhdGUgZXhp
c3RpbmcgdXNlLWNhc2VzIG9mIGRpc2FibGluZyBoYW5nY2hlY2ssIGlmIHRoZSBtb2RwYXJhbSBp
cwo+Pj4gZGlzYWJsZWQgKGk5MTUuZW5hYmxlX2hhbmdjaGVjaz0wKSwgd2UgZGlzYWJsZSBwZXJz
aXN0ZW5jZSBtb2RlIGJ5Cj4+PiBkZWZhdWx0LiAgKE5vdGUsIG9uZSBvZiB0aGUgb3V0Y29tZXMg
Zm9yIHN1cHBvcnRpbmcgZW5kbGVzcyBtb2RlIHdpbGwgYmUKPj4+IHRoZSByZW1vdmFsIG9mIGhh
bmdjaGVja2luZywgYXQgd2hpY2ggcG9pbnQgb3B0aW5nIGludG8gcGVyc2lzdGVudCBtb2RlCj4+
PiB3aWxsIGJlIG1hbmRhdG9yeSwgb3IgbWF5YmUgdGhlIGRlZmF1bHQgcGVyaGFwcyBjb250cm9s
bGVkIGJ5IGNncm91cHMuKQo+Pj4KPj4+IHYyOiBDaGVjayBmb3IgaGFuZ2NoZWNraW5nIGF0IGNv
bnRleHQgdGVybWluYXRpb24sIHNvIHRoYXQgd2UgYXJlIG5vdAo+Pj4gbGVmdCB3aXRoIHVuZHlp
bmcgY29udGV4dHMgZnJvbSBhIGNyYWZ0eSB1c2VyLgo+Pj4gdjM6IEZvcmNlIGNvbnRleHQgdGVy
bWluYXRpb24gZXZlbiBpZiBmb3JjZWQtcHJlZW1wdGlvbiBpcyBkaXNhYmxlZC4KPj4+Cj4+PiBU
ZXN0Y2FzZTogaWd0L2dlbV9jdHhfcGVyc2lzdGVuY2UKPj4+IFNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+Pj4gQ2M6IEpvb25hcyBMYWh0aW5l
biA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPj4+IENjOiBNaWNoYcWCIFdpbmlh
cnNraSA8bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+Cj4+PiBDYzogSm9uIEJsb29tZmllbGQg
PGpvbi5ibG9vbWZpZWxkQGludGVsLmNvbT4KPj4+IFJldmlld2VkLWJ5OiBKb24gQmxvb21maWVs
ZCA8am9uLmJsb29tZmllbGRAaW50ZWwuY29tPgo+Pj4gLS0tCj4+PiAgICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jICAgfCAxODkgKysrKysrKysrKysrKysrKysr
Cj4+PiAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5oICAgfCAg
MTUgKysKPj4+ICAgIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHRfdHlwZXMu
aCB8ICAgMSArCj4+PiAgICAuLi4vZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvbW9ja19jb250
ZXh0LmMgfCAgIDIgKwo+Pj4gICAgaW5jbHVkZS91YXBpL2RybS9pOTE1X2RybS5oICAgICAgICAg
ICAgICAgICAgIHwgIDE1ICsrCj4+PiAgICA1IGZpbGVzIGNoYW5nZWQsIDIyMiBpbnNlcnRpb25z
KCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5j
Cj4+PiBpbmRleCA1ZDgyMjFjN2JhODMuLjQ5ZjM3YmJhNTY5MyAxMDA2NDQKPj4+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKPj4+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKPj4+IEBAIC03MCw2ICs3MCw3
IEBACj4+PiAgICAjaW5jbHVkZSA8ZHJtL2k5MTVfZHJtLmg+Cj4+PiAgICAKPj4+ICAgICNpbmNs
dWRlICJndC9pbnRlbF9scmNfcmVnLmgiCj4+PiArI2luY2x1ZGUgImd0L2ludGVsX2VuZ2luZV9o
ZWFydGJlYXQuaCIKPj4+ICAgICNpbmNsdWRlICJndC9pbnRlbF9lbmdpbmVfdXNlci5oIgo+Pj4g
ICAgCj4+PiAgICAjaW5jbHVkZSAiaTkxNV9nZW1fY29udGV4dC5oIgo+Pj4gQEAgLTI2OSw2ICsy
NzAsMTM1IEBAIHZvaWQgaTkxNV9nZW1fY29udGV4dF9yZWxlYXNlKHN0cnVjdCBrcmVmICpyZWYp
Cj4+PiAgICAgICAgICAgICAgICBzY2hlZHVsZV93b3JrKCZnYy0+ZnJlZV93b3JrKTsKPj4+ICAg
IH0KPj4+ICAgIAo+Pj4gK3N0YXRpYyBpbmxpbmUgc3RydWN0IGk5MTVfZ2VtX2VuZ2luZXMgKgo+
Pj4gK19fY29udGV4dF9lbmdpbmVzX3N0YXRpYyhjb25zdCBzdHJ1Y3QgaTkxNV9nZW1fY29udGV4
dCAqY3R4KQo+Pj4gK3sKPj4+ICsgICAgIHJldHVybiByY3VfZGVyZWZlcmVuY2VfcHJvdGVjdGVk
KGN0eC0+ZW5naW5lcywgdHJ1ZSk7Cj4+PiArfQo+Pj4gKwo+Pj4gK3N0YXRpYyBib29sIF9fcmVz
ZXRfZW5naW5lKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPj4+ICt7Cj4+PiArICAg
ICBzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gZW5naW5lLT5ndDsKPj4+ICsgICAgIGJvb2wgc3VjY2Vz
cyA9IGZhbHNlOwo+Pj4gKwo+Pj4gKyAgICAgaWYgKCFpbnRlbF9oYXNfcmVzZXRfZW5naW5lKGd0
KSkKPj4+ICsgICAgICAgICAgICAgcmV0dXJuIGZhbHNlOwo+Pj4gKwo+Pj4gKyAgICAgaWYgKCF0
ZXN0X2FuZF9zZXRfYml0KEk5MTVfUkVTRVRfRU5HSU5FICsgZW5naW5lLT5pZCwKPj4+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAmZ3QtPnJlc2V0LmZsYWdzKSkgewo+Pj4gKyAgICAgICAg
ICAgICBzdWNjZXNzID0gaW50ZWxfZW5naW5lX3Jlc2V0KGVuZ2luZSwgTlVMTCkgPT0gMDsKPj4+
ICsgICAgICAgICAgICAgY2xlYXJfYW5kX3dha2VfdXBfYml0KEk5MTVfUkVTRVRfRU5HSU5FICsg
ZW5naW5lLT5pZCwKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICZndC0+
cmVzZXQuZmxhZ3MpOwo+Pj4gKyAgICAgfQo+Pj4gKwo+Pj4gKyAgICAgcmV0dXJuIHN1Y2Nlc3M7
Cj4+PiArfQo+Pj4gKwo+Pj4gK3N0YXRpYyB2b2lkIF9fcmVzZXRfY29udGV4dChzdHJ1Y3QgaTkx
NV9nZW1fY29udGV4dCAqY3R4LAo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4+PiArewo+Pj4gKyAgICAgaW50ZWxfZ3RfaGFuZGxl
X2Vycm9yKGVuZ2luZS0+Z3QsIGVuZ2luZS0+bWFzaywgMCwKPj4+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAiY29udGV4dCBjbG9zdXJlIGluICVzIiwgY3R4LT5uYW1lKTsKPj4+ICt9Cj4+
PiArCj4+PiArc3RhdGljIGJvb2wgX19jYW5jZWxfZW5naW5lKHN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSkKPj4+ICt7Cj4+PiArICAgICAvKgo+Pj4gKyAgICAgICogU2VuZCBhICJoaWdo
IHByaW9yaXR5IHB1bHNlIiBkb3duIHRoZSBlbmdpbmUgdG8gY2F1c2UgdGhlCj4+PiArICAgICAg
KiBjdXJyZW50IHJlcXVlc3QgdG8gYmUgbW9tZW50YXJpbHkgcHJlZW1wdGVkLiAoSWYgaXQgZmFp
bHMgdG8KPj4+ICsgICAgICAqIGJlIHByZWVtcHRlZCwgaXQgd2lsbCBiZSByZXNldCkuIEFzIHdl
IGhhdmUgbWFya2VkIG91ciBjb250ZXh0Cj4+PiArICAgICAgKiBhcyBiYW5uZWQsIGFueSBpbmNv
bXBsZXRlIHJlcXVlc3QsIGluY2x1ZGluZyBhbnkgcnVubmluZywgd2lsbAo+Pj4gKyAgICAgICog
YmUgc2tpcHBlZCBmb2xsb3dpbmcgdGhlIHByZWVtcHRpb24uCj4+PiArICAgICAgKgo+Pj4gKyAg
ICAgICogSWYgdGhlcmUgaXMgbm8gaGFuZ2NoZWNraW5nIChvbmUgb2YgdGhlIHJlYXNvbnMgd2h5
IHdlIHRyeSB0bwo+Pj4gKyAgICAgICogY2FuY2VsIHRoZSBjb250ZXh0KSBhbmQgbm8gZm9yY2Vk
IHByZWVtcHRpb24sIHRoZXJlIG1heSBiZSBubwo+Pj4gKyAgICAgICogbWVhbnMgYnkgd2hpY2gg
d2UgcmVzZXQgdGhlIEdQVSBhbmQgZXZpY3QgdGhlIHBlcnNpc3RlbnQgaG9nLgo+Pj4gKyAgICAg
ICogRXJnbyBpZiB3ZSBhcmUgdW5hYmxlIHRvIGluamVjdCBhIHByZWVtcHRpdmUgcHVsc2UgdGhh
dCBjYW4KPj4+ICsgICAgICAqIGtpbGwgdGhlIGJhbm5lZCBjb250ZXh0LCB3ZSBmYWxsYmFjayB0
byBkb2luZyBhIGxvY2FsIHJlc2V0Cj4+PiArICAgICAgKiBpbnN0ZWFkLgo+Pj4gKyAgICAgICov
Cj4+PiArICAgICBpZiAoQ09ORklHX0RSTV9JOTE1X1BSRUVNUFRfVElNRU9VVCAmJiAhaW50ZWxf
ZW5naW5lX3B1bHNlKGVuZ2luZSkpCj4+PiArICAgICAgICAgICAgIHJldHVybiB0cnVlOwo+Pj4g
Kwo+Pj4gKyAgICAgLyogSWYgd2UgYXJlIHVuYWJsZSB0byBzZW5kIGEgcHVsc2UsIHRyeSByZXNl
dHRpbmcgdGhpcyBlbmdpbmUuICovCj4+PiArICAgICByZXR1cm4gX19yZXNldF9lbmdpbmUoZW5n
aW5lKTsKPj4KPj4gT3BlbiBmcm9tIGxhc3Qgcm91bmQgaXMgaG93IGxpa2VseSBpcyBmb3JjZWQg
cHJlZW1wdGlvbiB0byBiZSBjb21waWxlZAo+PiBvdXQsIGluIHdoaWNoIGNhc2UgdGhlIGNvZGUg
d2lsbCBhbHdheXMgZmFsbCBiYWNrIHRvIHJlc2V0IGltbWVkaWF0ZWx5LAo+PiBldmVuIGlmIHdv
cmtsb2FkIHdvdWxkIG90aGVyd2lzZSBwcmVlbXB0IGp1c3QgZmluZS4gKEdpdmVuIHRoZSBkYW5n
ZXJzCj4+IG9mIHJlc2V0IGhpdHRpbmcgc29tZXRoaW5nIHVucmVsYXRlZCBhcyB5b3UgZXhwbGFp
bmVkLikKPj4KPj4gQ291bGQgeW91IGFsd2F5cyBjb21waWxlIGluIGZvcmNlZCBwcmVlbXB0aW9u
IHNvIGl0IGNvdWxkIGJlIHVzZWQgb24KPj4gY29udGV4dCBjbG9zZT8gSSBhbSB0aGlua2luZywg
YWxsb3cgaXQgdG8gYmUgZGlzYWJsZWQgdmlhIHN5c2ZzIG9uIGl0cwo+PiBvd24sIGJ1dCBvbiBj
b250ZXh0IGNsb3NlIGhhdmUgaXQgYWN0aXZlIGZvciB0aGUgY29udGV4dCBiZWluZyBjbG9zZWQg
c28KPj4gdGhhdCBpZiB0aGUgcHVsc2UgZG9lcyBub3Qgd29yayBpdCBjYW4ga2ljayBpbiBhbmQg
cmVzZXQuIFNvdW5kcyBuaWNlcgo+PiB0aGFuIGp1c3QgcmVzb3J0aW5nIHRvIGVuZ2luZSByZXNl
dCwgd2hpY2ggYXMgeW91IGRlc2NyaWJlZCwgY2FuIGltcGFjdAo+PiBzb21lb25lIGlubm9jZW50
Lgo+IAo+IEkgd2FzIHRoaW5raW5nIHRoYXQgdGhvc2Ugd2hvIGNhcmUgYWJvdXQgaW50ZXJydXB0
aW9ucyB3b3VsZCBub3QKPiB0b2xlcmF0ZSBldmVuIGhhdmluZyBhIHByZWVtcHQgdGltZXIgcnVu
bmluZy4gSSB3b3VsZCBzYXkgaXRzIG1hc29jaGlzbQo+IGFuZCB3b3VsZCBub3QgZXhwZWN0IGl0
IHRvIGJlIGRpc2FibGVkLCBidXQgSSBhbHNvIHNheSB0aGUgc2FtZSB0aGluZwo+IGFib3V0IFJU
Lgo+IAo+IEluIHNob3J0LCBJIG1hZGUgaXQgb3B0aW9uYWwgYXQgY29tcGlsZXRpbWUganVzdCBi
ZWNhdXNlIEkgY291bGQuCgpPa2F5IGl0IGNhbiBiZSBpbXByb3ZlZCBsYXRlciBpZiBuZWVkIGJl
LiBCZWNhdXNlIG5vdGhpbmcgSSBhbSAKc3VnZ2VzdGluZyBpcyBub3QgYW4gQUJJIGNoYW5nZS4K
ClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgoK
UmVnYXJkcywKClR2cnRrbwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
