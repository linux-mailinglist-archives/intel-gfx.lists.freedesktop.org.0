Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08797D7641
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 14:15:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0FA589D60;
	Tue, 15 Oct 2019 12:15:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 342A489D60
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 12:15:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Oct 2019 05:15:53 -0700
X-IronPort-AV: E=Sophos;i="5.67,299,1566889200"; d="scan'208";a="185795015"
Received: from dwiesing-mobl.ger.corp.intel.com (HELO [10.252.31.172])
 ([10.252.31.172])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 15 Oct 2019 05:15:51 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191014220534.1662-1-chris@chris-wilson.co.uk>
 <20191014220534.1662-7-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <0e202636-8a4b-a691-6991-762907750286@linux.intel.com>
Date: Tue, 15 Oct 2019 13:15:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191014220534.1662-7-chris@chris-wilson.co.uk>
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

Ck9uIDE0LzEwLzIwMTkgMjM6MDUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBOb3JtYWxseSwgd2Ug
cmVseSBvbiBvdXIgaGFuZ2NoZWNrIHRvIHByZXZlbnQgcGVyc2lzdGVudCBiYXRjaGVzIGZyb20K
PiBob2dnaW5nIHRoZSBHUFUuIEhvd2V2ZXIsIGlmIHRoZSB1c2VyIGRpc2FibGVzIGhhbmdjaGVj
aywgdGhpcyBtZWNoYW5pc20KPiBicmVha3MgZG93bi4gRGVzcGl0ZSBvdXIgaW5zaXN0ZW5jZSB0
aGF0IHRoaXMgaXMgdW5zYWZlLCB0aGUgdXNlcnMgYXJlCj4gZXF1YWxseSBpbnNpc3RlbnQgdGhh
dCB0aGV5IHdhbnQgdG8gdXNlIGVuZGxlc3MgYmF0Y2hlcyBhbmQgd2lsbCBkaXNhYmxlCj4gdGhl
IGhhbmdjaGVjayBtZWNoYW5pc20uIFdlIGFyZSBsb29raW5nIGF0IHBlcmhhcHMgcmVwbGFjaW5n
IGhhbmdjaGVjawo+IHdpdGggYSBzb2Z0ZXIgbWVjaGFuaXNtLCB0aGF0IHNlbmRzIGEgcHVsc2Ug
ZG93biB0aGUgZW5naW5lIHRvIGNoZWNrIGlmCj4gaXQgaXMgd2VsbC4gV2UgY2FuIHVzZSB0aGUg
c2FtZSBwcmVlbXB0aXZlIHB1bHNlIHRvIGZsdXNoIGFuIGFjdGl2ZQo+IHBlcnNpc3RlbnQgY29u
dGV4dCBvZmYgdGhlIEdQVSB1cG9uIGNvbnRleHQgY2xvc2UsIHByZXZlbnRpbmcgcmVzb3VyY2Vz
Cj4gYmVpbmcgbG9zdCBhbmQgdW5raWxsYWJsZSByZXF1ZXN0cyByZW1haW5pbmcgb24gdGhlIEdQ
VSBhZnRlciBwcm9jZXNzCj4gdGVybWluYXRpb24uIFRvIGF2b2lkIGNoYW5naW5nIHRoZSBBQkkg
YW5kIGFjY2lkZW50YWxseSBicmVha2luZwo+IGV4aXN0aW5nIHVzZXJzcGFjZSwgd2UgbWFrZSB0
aGUgcGVyc2lzdGVuY2Ugb2YgYSBjb250ZXh0IGV4cGxpY2l0IGFuZAo+IGVuYWJsZSBpdCBieSBk
ZWZhdWx0IChtYXRjaGluZyBjdXJyZW50IEFCSSkuIFVzZXJzcGFjZSBjYW4gb3B0IG91dCBvZgo+
IHBlcnNpc3RlbnQgbW9kZSAoZm9yY2luZyByZXF1ZXN0cyB0byBiZSBjYW5jZWxsZWQgd2hlbiB0
aGUgY29udGV4dCBpcwo+IGNsb3NlZCBieSBwcm9jZXNzIHRlcm1pbmF0aW9uIG9yIGV4cGxpY2l0
bHkpIGJ5IGEgY29udGV4dCBwYXJhbWV0ZXIuIFRvCj4gZmFjaWxpdGF0ZSBleGlzdGluZyB1c2Ut
Y2FzZXMgb2YgZGlzYWJsaW5nIGhhbmdjaGVjaywgaWYgdGhlIG1vZHBhcmFtIGlzCj4gZGlzYWJs
ZWQgKGk5MTUuZW5hYmxlX2hhbmdjaGVjaz0wKSwgd2UgZGlzYWJsZSBwZXJzaXN0ZW5jZSBtb2Rl
IGJ5Cj4gZGVmYXVsdC4gIChOb3RlLCBvbmUgb2YgdGhlIG91dGNvbWVzIGZvciBzdXBwb3J0aW5n
IGVuZGxlc3MgbW9kZSB3aWxsIGJlCj4gdGhlIHJlbW92YWwgb2YgaGFuZ2NoZWNraW5nLCBhdCB3
aGljaCBwb2ludCBvcHRpbmcgaW50byBwZXJzaXN0ZW50IG1vZGUKPiB3aWxsIGJlIG1hbmRhdG9y
eSwgb3IgbWF5YmUgdGhlIGRlZmF1bHQgcGVyaGFwcyBjb250cm9sbGVkIGJ5IGNncm91cHMuKQo+
IAo+IHYyOiBDaGVjayBmb3IgaGFuZ2NoZWNraW5nIGF0IGNvbnRleHQgdGVybWluYXRpb24sIHNv
IHRoYXQgd2UgYXJlIG5vdAo+IGxlZnQgd2l0aCB1bmR5aW5nIGNvbnRleHRzIGZyb20gYSBjcmFm
dHkgdXNlci4KPiB2MzogRm9yY2UgY29udGV4dCB0ZXJtaW5hdGlvbiBldmVuIGlmIGZvcmNlZC1w
cmVlbXB0aW9uIGlzIGRpc2FibGVkLgo+IAo+IFRlc3RjYXNlOiBpZ3QvZ2VtX2N0eF9wZXJzaXN0
ZW5jZQo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgo+IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5j
b20+Cj4gQ2M6IE1pY2hhxYIgV2luaWFyc2tpIDxtaWNoYWwud2luaWFyc2tpQGludGVsLmNvbT4K
PiBDYzogSm9uIEJsb29tZmllbGQgPGpvbi5ibG9vbWZpZWxkQGludGVsLmNvbT4KPiBSZXZpZXdl
ZC1ieTogSm9uIEJsb29tZmllbGQgPGpvbi5ibG9vbWZpZWxkQGludGVsLmNvbT4KPiAtLS0KPiAg
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgICB8IDE4OSArKysr
KysrKysrKysrKysrKysKPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250
ZXh0LmggICB8ICAxNSArKwo+ICAgLi4uL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4
dF90eXBlcy5oIHwgICAxICsKPiAgIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9tb2Nr
X2NvbnRleHQuYyB8ICAgMiArCj4gICBpbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmggICAgICAg
ICAgICAgICAgICAgfCAgMTUgKysKPiAgIDUgZmlsZXMgY2hhbmdlZCwgMjIyIGluc2VydGlvbnMo
KykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2Nv
bnRleHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKPiBp
bmRleCA1ZDgyMjFjN2JhODMuLjQ5ZjM3YmJhNTY5MyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYwo+IEBAIC03MCw2ICs3MCw3IEBACj4gICAjaW5j
bHVkZSA8ZHJtL2k5MTVfZHJtLmg+Cj4gICAKPiAgICNpbmNsdWRlICJndC9pbnRlbF9scmNfcmVn
LmgiCj4gKyNpbmNsdWRlICJndC9pbnRlbF9lbmdpbmVfaGVhcnRiZWF0LmgiCj4gICAjaW5jbHVk
ZSAiZ3QvaW50ZWxfZW5naW5lX3VzZXIuaCIKPiAgIAo+ICAgI2luY2x1ZGUgImk5MTVfZ2VtX2Nv
bnRleHQuaCIKPiBAQCAtMjY5LDYgKzI3MCwxMzUgQEAgdm9pZCBpOTE1X2dlbV9jb250ZXh0X3Jl
bGVhc2Uoc3RydWN0IGtyZWYgKnJlZikKPiAgIAkJc2NoZWR1bGVfd29yaygmZ2MtPmZyZWVfd29y
ayk7Cj4gICB9Cj4gICAKPiArc3RhdGljIGlubGluZSBzdHJ1Y3QgaTkxNV9nZW1fZW5naW5lcyAq
Cj4gK19fY29udGV4dF9lbmdpbmVzX3N0YXRpYyhjb25zdCBzdHJ1Y3QgaTkxNV9nZW1fY29udGV4
dCAqY3R4KQo+ICt7Cj4gKwlyZXR1cm4gcmN1X2RlcmVmZXJlbmNlX3Byb3RlY3RlZChjdHgtPmVu
Z2luZXMsIHRydWUpOwo+ICt9Cj4gKwo+ICtzdGF0aWMgYm9vbCBfX3Jlc2V0X2VuZ2luZShzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCj4gK3sKPiArCXN0cnVjdCBpbnRlbF9ndCAqZ3Qg
PSBlbmdpbmUtPmd0Owo+ICsJYm9vbCBzdWNjZXNzID0gZmFsc2U7Cj4gKwo+ICsJaWYgKCFpbnRl
bF9oYXNfcmVzZXRfZW5naW5lKGd0KSkKPiArCQlyZXR1cm4gZmFsc2U7Cj4gKwo+ICsJaWYgKCF0
ZXN0X2FuZF9zZXRfYml0KEk5MTVfUkVTRVRfRU5HSU5FICsgZW5naW5lLT5pZCwKPiArCQkJICAg
ICAgJmd0LT5yZXNldC5mbGFncykpIHsKPiArCQlzdWNjZXNzID0gaW50ZWxfZW5naW5lX3Jlc2V0
KGVuZ2luZSwgTlVMTCkgPT0gMDsKPiArCQljbGVhcl9hbmRfd2FrZV91cF9iaXQoSTkxNV9SRVNF
VF9FTkdJTkUgKyBlbmdpbmUtPmlkLAo+ICsJCQkJICAgICAgJmd0LT5yZXNldC5mbGFncyk7Cj4g
Kwl9Cj4gKwo+ICsJcmV0dXJuIHN1Y2Nlc3M7Cj4gK30KPiArCj4gK3N0YXRpYyB2b2lkIF9fcmVz
ZXRfY29udGV4dChzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAo+ICsJCQkgICAgc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+ICt7Cj4gKwlpbnRlbF9ndF9oYW5kbGVfZXJyb3Io
ZW5naW5lLT5ndCwgZW5naW5lLT5tYXNrLCAwLAo+ICsJCQkgICAgICAiY29udGV4dCBjbG9zdXJl
IGluICVzIiwgY3R4LT5uYW1lKTsKPiArfQo+ICsKPiArc3RhdGljIGJvb2wgX19jYW5jZWxfZW5n
aW5lKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiArewo+ICsJLyoKPiArCSAqIFNl
bmQgYSAiaGlnaCBwcmlvcml0eSBwdWxzZSIgZG93biB0aGUgZW5naW5lIHRvIGNhdXNlIHRoZQo+
ICsJICogY3VycmVudCByZXF1ZXN0IHRvIGJlIG1vbWVudGFyaWx5IHByZWVtcHRlZC4gKElmIGl0
IGZhaWxzIHRvCj4gKwkgKiBiZSBwcmVlbXB0ZWQsIGl0IHdpbGwgYmUgcmVzZXQpLiBBcyB3ZSBo
YXZlIG1hcmtlZCBvdXIgY29udGV4dAo+ICsJICogYXMgYmFubmVkLCBhbnkgaW5jb21wbGV0ZSBy
ZXF1ZXN0LCBpbmNsdWRpbmcgYW55IHJ1bm5pbmcsIHdpbGwKPiArCSAqIGJlIHNraXBwZWQgZm9s
bG93aW5nIHRoZSBwcmVlbXB0aW9uLgo+ICsJICoKPiArCSAqIElmIHRoZXJlIGlzIG5vIGhhbmdj
aGVja2luZyAob25lIG9mIHRoZSByZWFzb25zIHdoeSB3ZSB0cnkgdG8KPiArCSAqIGNhbmNlbCB0
aGUgY29udGV4dCkgYW5kIG5vIGZvcmNlZCBwcmVlbXB0aW9uLCB0aGVyZSBtYXkgYmUgbm8KPiAr
CSAqIG1lYW5zIGJ5IHdoaWNoIHdlIHJlc2V0IHRoZSBHUFUgYW5kIGV2aWN0IHRoZSBwZXJzaXN0
ZW50IGhvZy4KPiArCSAqIEVyZ28gaWYgd2UgYXJlIHVuYWJsZSB0byBpbmplY3QgYSBwcmVlbXB0
aXZlIHB1bHNlIHRoYXQgY2FuCj4gKwkgKiBraWxsIHRoZSBiYW5uZWQgY29udGV4dCwgd2UgZmFs
bGJhY2sgdG8gZG9pbmcgYSBsb2NhbCByZXNldAo+ICsJICogaW5zdGVhZC4KPiArCSAqLwo+ICsJ
aWYgKENPTkZJR19EUk1fSTkxNV9QUkVFTVBUX1RJTUVPVVQgJiYgIWludGVsX2VuZ2luZV9wdWxz
ZShlbmdpbmUpKQo+ICsJCXJldHVybiB0cnVlOwo+ICsKPiArCS8qIElmIHdlIGFyZSB1bmFibGUg
dG8gc2VuZCBhIHB1bHNlLCB0cnkgcmVzZXR0aW5nIHRoaXMgZW5naW5lLiAqLwo+ICsJcmV0dXJu
IF9fcmVzZXRfZW5naW5lKGVuZ2luZSk7CgpPcGVuIGZyb20gbGFzdCByb3VuZCBpcyBob3cgbGlr
ZWx5IGlzIGZvcmNlZCBwcmVlbXB0aW9uIHRvIGJlIGNvbXBpbGVkIApvdXQsIGluIHdoaWNoIGNh
c2UgdGhlIGNvZGUgd2lsbCBhbHdheXMgZmFsbCBiYWNrIHRvIHJlc2V0IGltbWVkaWF0ZWx5LCAK
ZXZlbiBpZiB3b3JrbG9hZCB3b3VsZCBvdGhlcndpc2UgcHJlZW1wdCBqdXN0IGZpbmUuIChHaXZl
biB0aGUgZGFuZ2VycyAKb2YgcmVzZXQgaGl0dGluZyBzb21ldGhpbmcgdW5yZWxhdGVkIGFzIHlv
dSBleHBsYWluZWQuKQoKQ291bGQgeW91IGFsd2F5cyBjb21waWxlIGluIGZvcmNlZCBwcmVlbXB0
aW9uIHNvIGl0IGNvdWxkIGJlIHVzZWQgb24gCmNvbnRleHQgY2xvc2U/IEkgYW0gdGhpbmtpbmcs
IGFsbG93IGl0IHRvIGJlIGRpc2FibGVkIHZpYSBzeXNmcyBvbiBpdHMgCm93biwgYnV0IG9uIGNv
bnRleHQgY2xvc2UgaGF2ZSBpdCBhY3RpdmUgZm9yIHRoZSBjb250ZXh0IGJlaW5nIGNsb3NlZCBz
byAKdGhhdCBpZiB0aGUgcHVsc2UgZG9lcyBub3Qgd29yayBpdCBjYW4ga2ljayBpbiBhbmQgcmVz
ZXQuIFNvdW5kcyBuaWNlciAKdGhhbiBqdXN0IHJlc29ydGluZyB0byBlbmdpbmUgcmVzZXQsIHdo
aWNoIGFzIHlvdSBkZXNjcmliZWQsIGNhbiBpbXBhY3QgCnNvbWVvbmUgaW5ub2NlbnQuCgpSZWdh
cmRzLAoKVHZydGtvCgo+ICt9Cj4gKwo+ICtzdGF0aWMgc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
Cj4gK2FjdGl2ZV9lbmdpbmUoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsIHN0cnVjdCBpbnRlbF9j
b250ZXh0ICpjZSkKPiArewo+ICsJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEgPSB0b19yZXF1ZXN0
KGZlbmNlKTsKPiArCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgKmxvY2tlZDsKPiAr
Cj4gKwkvKgo+ICsJICogU2VyaWFsaXNlIHdpdGggX19pOTE1X3JlcXVlc3Rfc3VibWl0KCkgc28g
dGhhdCBpdCBzZWVzCj4gKwkgKiBpcy1iYW5uZWQ/LCBvciB3ZSBrbm93IHRoZSByZXF1ZXN0IGlz
IGFscmVhZHkgaW5mbGlnaHQuCj4gKwkgKi8KPiArCWxvY2tlZCA9IFJFQURfT05DRShycS0+ZW5n
aW5lKTsKPiArCXNwaW5fbG9ja19pcnEoJmxvY2tlZC0+YWN0aXZlLmxvY2spOwo+ICsJd2hpbGUg
KHVubGlrZWx5KGxvY2tlZCAhPSAoZW5naW5lID0gUkVBRF9PTkNFKHJxLT5lbmdpbmUpKSkpIHsK
PiArCQlzcGluX3VubG9jaygmbG9ja2VkLT5hY3RpdmUubG9jayk7Cj4gKwkJc3Bpbl9sb2NrKCZl
bmdpbmUtPmFjdGl2ZS5sb2NrKTsKPiArCQlsb2NrZWQgPSBlbmdpbmU7Cj4gKwl9Cj4gKwo+ICsJ
ZW5naW5lID0gTlVMTDsKPiArCWlmIChpOTE1X3JlcXVlc3RfaXNfYWN0aXZlKHJxKSAmJiAhcnEt
PmZlbmNlLmVycm9yKQo+ICsJCWVuZ2luZSA9IHJxLT5lbmdpbmU7Cj4gKwo+ICsJc3Bpbl91bmxv
Y2tfaXJxKCZsb2NrZWQtPmFjdGl2ZS5sb2NrKTsKPiArCj4gKwlyZXR1cm4gZW5naW5lOwo+ICt9
Cj4gKwo+ICtzdGF0aWMgdm9pZCBraWxsX2NvbnRleHQoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQg
KmN0eCkKPiArewo+ICsJc3RydWN0IGk5MTVfZ2VtX2VuZ2luZXNfaXRlciBpdDsKPiArCXN0cnVj
dCBpbnRlbF9jb250ZXh0ICpjZTsKPiArCj4gKwkvKgo+ICsJICogSWYgd2UgYXJlIGFscmVhZHkg
YmFubmVkLCBpdCB3YXMgZHVlIHRvIGEgZ3VpbHR5IHJlcXVlc3QgY2F1c2luZwo+ICsJICogYSBy
ZXNldCBhbmQgdGhlIGVudGlyZSBjb250ZXh0IGJlaW5nIGV2aWN0ZWQgZnJvbSB0aGUgR1BVLgo+
ICsJICovCj4gKwlpZiAoaTkxNV9nZW1fY29udGV4dF9pc19iYW5uZWQoY3R4KSkKPiArCQlyZXR1
cm47Cj4gKwo+ICsJaTkxNV9nZW1fY29udGV4dF9zZXRfYmFubmVkKGN0eCk7Cj4gKwo+ICsJLyoK
PiArCSAqIE1hcCB0aGUgdXNlcidzIGVuZ2luZSBiYWNrIHRvIHRoZSBhY3R1YWwgZW5naW5lczsg
b25lIHZpcnR1YWwKPiArCSAqIGVuZ2luZSB3aWxsIGJlIG1hcHBlZCB0byBtdWx0aXBsZSBlbmdp
bmVzLCBhbmQgdXNpbmcgY3R4LT5lbmdpbmVbXQo+ICsJICogdGhlIHNhbWUgZW5naW5lIG1heSBi
ZSBoYXZlIG11bHRpcGxlIGluc3RhbmNlcyBpbiB0aGUgdXNlcidzIG1hcC4KPiArCSAqIEhvd2V2
ZXIsIHdlIG9ubHkgY2FyZSBhYm91dCBwZW5kaW5nIHJlcXVlc3RzLCBzbyBvbmx5IGluY2x1ZGUK
PiArCSAqIGVuZ2luZXMgb24gd2hpY2ggdGhlcmUgYXJlIGluY29tcGxldGUgcmVxdWVzdHMuCj4g
KwkgKi8KPiArCWZvcl9lYWNoX2dlbV9lbmdpbmUoY2UsIF9fY29udGV4dF9lbmdpbmVzX3N0YXRp
YyhjdHgpLCBpdCkgewo+ICsJCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsKPiArCQlz
dHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZTsKPiArCj4gKwkJaWYgKCFjZS0+dGltZWxpbmUpCj4gKwkJ
CWNvbnRpbnVlOwo+ICsKPiArCQlmZW5jZSA9IGk5MTVfYWN0aXZlX2ZlbmNlX2dldCgmY2UtPnRp
bWVsaW5lLT5sYXN0X3JlcXVlc3QpOwo+ICsJCWlmICghZmVuY2UpCj4gKwkJCWNvbnRpbnVlOwo+
ICsKPiArCQkvKiBDaGVjayB3aXRoIHRoZSBiYWNrZW5kIGlmIHRoZSByZXF1ZXN0IGlzIHN0aWxs
IGluZmxpZ2h0ICovCj4gKwkJZW5naW5lID0gYWN0aXZlX2VuZ2luZShmZW5jZSwgY2UpOwo+ICsK
PiArCQkvKiBGaXJzdCBhdHRlbXB0IHRvIGdyYWNlZnVsbHkgY2FuY2VsIHRoZSBjb250ZXh0ICov
Cj4gKwkJaWYgKGVuZ2luZSAmJiAhX19jYW5jZWxfZW5naW5lKGVuZ2luZSkpCj4gKwkJCS8qCj4g
KwkJCSAqIElmIHdlIGFyZSB1bmFibGUgdG8gc2VuZCBhIHByZWVtcHRpdmUgcHVsc2UgdG8gYnVt
cAo+ICsJCQkgKiB0aGUgY29udGV4dCBmcm9tIHRoZSBHUFUsIHdlIGhhdmUgdG8gcmVzb3J0IHRv
IGEgZnVsbAo+ICsJCQkgKiByZXNldC4gV2UgaG9wZSB0aGUgY29sbGF0ZXJhbCBkYW1hZ2UgaXMg
d29ydGggaXQuCj4gKwkJCSAqLwo+ICsJCQlfX3Jlc2V0X2NvbnRleHQoY3R4LCBlbmdpbmUpOwo+
ICsKPiArCQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKPiArCX0KPiArfQo+ICsKPiAgIHN0YXRpYyB2
b2lkIGNvbnRleHRfY2xvc2Uoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCkKPiAgIHsKPiAg
IAlzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bTsKPiBAQCAtMjkxLDkgKzQyMSw0NyBAQCBz
dGF0aWMgdm9pZCBjb250ZXh0X2Nsb3NlKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgpCj4g
ICAJbHV0X2Nsb3NlKGN0eCk7Cj4gICAKPiAgIAltdXRleF91bmxvY2soJmN0eC0+bXV0ZXgpOwo+
ICsKPiArCS8qCj4gKwkgKiBJZiB0aGUgdXNlciBoYXMgZGlzYWJsZWQgaGFuZ2NoZWNraW5nLCB3
ZSBjYW4gbm90IGJlIHN1cmUgdGhhdAo+ICsJICogdGhlIGJhdGNoZXMgd2lsbCBldmVyIGNvbXBs
ZXRlIGFmdGVyIHRoZSBjb250ZXh0IGlzIGNsb3NlZCwKPiArCSAqIGtlZXBpbmcgdGhlIGNvbnRl
eHQgYW5kIGFsbCByZXNvdXJjZXMgcGlubmVkIGZvcmV2ZXIuIFNvIGluIHRoaXMKPiArCSAqIGNh
c2Ugd2Ugb3B0IHRvIGZvcmNpYmx5IGtpbGwgb2ZmIGFsbCByZW1haW5pbmcgcmVxdWVzdHMgb24K
PiArCSAqIGNvbnRleHQgY2xvc2UuCj4gKwkgKi8KPiArCWlmICghaTkxNV9nZW1fY29udGV4dF9p
c19wZXJzaXN0ZW50KGN0eCkgfHwKPiArCSAgICAhaTkxNV9tb2RwYXJhbXMuZW5hYmxlX2hhbmdj
aGVjaykKPiArCQlraWxsX2NvbnRleHQoY3R4KTsKPiArCj4gICAJaTkxNV9nZW1fY29udGV4dF9w
dXQoY3R4KTsKPiAgIH0KPiAgIAo+ICtzdGF0aWMgaW50IF9fY29udGV4dF9zZXRfcGVyc2lzdGVu
Y2Uoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwgYm9vbCBzdGF0ZSkKPiArewo+ICsJaWYg
KGk5MTVfZ2VtX2NvbnRleHRfaXNfcGVyc2lzdGVudChjdHgpID09IHN0YXRlKQo+ICsJCXJldHVy
biAwOwo+ICsKPiArCWlmIChzdGF0ZSkgewo+ICsJCS8qCj4gKwkJICogT25seSBjb250ZXh0cyB0
aGF0IGFyZSBzaG9ydC1saXZlZCBbdGhhdCB3aWxsIGV4cGlyZSBvciBiZQo+ICsJCSAqIHJlc2V0
XSBhcmUgYWxsb3dlZCB0byBzdXJ2aXZlIHBhc3QgdGVybWluYXRpb24uIFdlIHJlcXVpcmUKPiAr
CQkgKiBoYW5nY2hlY2sgdG8gZW5zdXJlIHRoYXQgdGhlIHBlcnNpc3RlbnQgcmVxdWVzdHMgYXJl
IGhlYWx0aHkuCj4gKwkJICovCj4gKwkJaWYgKCFpOTE1X21vZHBhcmFtcy5lbmFibGVfaGFuZ2No
ZWNrKQo+ICsJCQlyZXR1cm4gLUVJTlZBTDsKPiArCj4gKwkJaTkxNV9nZW1fY29udGV4dF9zZXRf
cGVyc2lzdGVuY2UoY3R4KTsKPiArCX0gZWxzZSB7Cj4gKwkJLyogVG8gY2FuY2VsIGEgY29udGV4
dCB3ZSB1c2UgInByZWVtcHQtdG8taWRsZSIgKi8KPiArCQlpZiAoIShjdHgtPmk5MTUtPmNhcHMu
c2NoZWR1bGVyICYgSTkxNV9TQ0hFRFVMRVJfQ0FQX1BSRUVNUFRJT04pKQo+ICsJCQlyZXR1cm4g
LUVOT0RFVjsKPiArCj4gKwkJaTkxNV9nZW1fY29udGV4dF9jbGVhcl9wZXJzaXN0ZW5jZShjdHgp
Owo+ICsJfQo+ICsKPiArCXJldHVybiAwOwo+ICt9Cj4gKwo+ICAgc3RhdGljIHN0cnVjdCBpOTE1
X2dlbV9jb250ZXh0ICoKPiAgIF9fY3JlYXRlX2NvbnRleHQoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUpCj4gICB7Cj4gQEAgLTMyOCw2ICs0OTYsNyBAQCBfX2NyZWF0ZV9jb250ZXh0KHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICAgCj4gICAJaTkxNV9nZW1fY29udGV4dF9z
ZXRfYmFubmFibGUoY3R4KTsKPiAgIAlpOTE1X2dlbV9jb250ZXh0X3NldF9yZWNvdmVyYWJsZShj
dHgpOwo+ICsJX19jb250ZXh0X3NldF9wZXJzaXN0ZW5jZShjdHgsIHRydWUgLyogY2dyb3VwIGhv
b2s/ICovKTsKPiAgIAo+ICAgCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKGN0eC0+aGFuZ190
aW1lc3RhbXApOyBpKyspCj4gICAJCWN0eC0+aGFuZ190aW1lc3RhbXBbaV0gPSBqaWZmaWVzIC0g
Q09OVEVYVF9GQVNUX0hBTkdfSklGRklFUzsKPiBAQCAtNDg0LDYgKzY1Myw3IEBAIGk5MTVfZ2Vt
X2NvbnRleHRfY3JlYXRlX2tlcm5lbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgaW50
IHByaW8pCj4gICAJCXJldHVybiBjdHg7Cj4gICAKPiAgIAlpOTE1X2dlbV9jb250ZXh0X2NsZWFy
X2Jhbm5hYmxlKGN0eCk7Cj4gKwlpOTE1X2dlbV9jb250ZXh0X3NldF9wZXJzaXN0ZW5jZShjdHgp
Owo+ICAgCWN0eC0+c2NoZWQucHJpb3JpdHkgPSBJOTE1X1VTRVJfUFJJT1JJVFkocHJpbyk7Cj4g
ICAKPiAgIAlHRU1fQlVHX09OKCFpOTE1X2dlbV9jb250ZXh0X2lzX2tlcm5lbChjdHgpKTsKPiBA
QCAtMTU5NCw2ICsxNzY0LDE2IEBAIGdldF9lbmdpbmVzKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0
ICpjdHgsCj4gICAJcmV0dXJuIGVycjsKPiAgIH0KPiAgIAo+ICtzdGF0aWMgaW50Cj4gK3NldF9w
ZXJzaXN0ZW5jZShzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAo+ICsJCWNvbnN0IHN0cnVj
dCBkcm1faTkxNV9nZW1fY29udGV4dF9wYXJhbSAqYXJncykKPiArewo+ICsJaWYgKGFyZ3MtPnNp
emUpCj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4gKwo+ICsJcmV0dXJuIF9fY29udGV4dF9zZXRfcGVy
c2lzdGVuY2UoY3R4LCBhcmdzLT52YWx1ZSk7Cj4gK30KPiArCj4gICBzdGF0aWMgaW50IGN0eF9z
ZXRwYXJhbShzdHJ1Y3QgZHJtX2k5MTVfZmlsZV9wcml2YXRlICpmcHJpdiwKPiAgIAkJCXN0cnVj
dCBpOTE1X2dlbV9jb250ZXh0ICpjdHgsCj4gICAJCQlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2NvbnRl
eHRfcGFyYW0gKmFyZ3MpCj4gQEAgLTE2NzEsNiArMTg1MSwxMCBAQCBzdGF0aWMgaW50IGN0eF9z
ZXRwYXJhbShzdHJ1Y3QgZHJtX2k5MTVfZmlsZV9wcml2YXRlICpmcHJpdiwKPiAgIAkJcmV0ID0g
c2V0X2VuZ2luZXMoY3R4LCBhcmdzKTsKPiAgIAkJYnJlYWs7Cj4gICAKPiArCWNhc2UgSTkxNV9D
T05URVhUX1BBUkFNX1BFUlNJU1RFTkNFOgo+ICsJCXJldCA9IHNldF9wZXJzaXN0ZW5jZShjdHgs
IGFyZ3MpOwo+ICsJCWJyZWFrOwo+ICsKPiAgIAljYXNlIEk5MTVfQ09OVEVYVF9QQVJBTV9CQU5f
UEVSSU9EOgo+ICAgCWRlZmF1bHQ6Cj4gICAJCXJldCA9IC1FSU5WQUw7Cj4gQEAgLTIxMjMsNiAr
MjMwNywxMSBAQCBpbnQgaTkxNV9nZW1fY29udGV4dF9nZXRwYXJhbV9pb2N0bChzdHJ1Y3QgZHJt
X2RldmljZSAqZGV2LCB2b2lkICpkYXRhLAo+ICAgCQlyZXQgPSBnZXRfZW5naW5lcyhjdHgsIGFy
Z3MpOwo+ICAgCQlicmVhazsKPiAgIAo+ICsJY2FzZSBJOTE1X0NPTlRFWFRfUEFSQU1fUEVSU0lT
VEVOQ0U6Cj4gKwkJYXJncy0+c2l6ZSA9IDA7Cj4gKwkJYXJncy0+dmFsdWUgPSBpOTE1X2dlbV9j
b250ZXh0X2lzX3BlcnNpc3RlbnQoY3R4KTsKPiArCQlicmVhazsKPiArCj4gICAJY2FzZSBJOTE1
X0NPTlRFWFRfUEFSQU1fQkFOX1BFUklPRDoKPiAgIAlkZWZhdWx0Ogo+ICAgCQlyZXQgPSAtRUlO
VkFMOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29u
dGV4dC5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuaAo+IGlu
ZGV4IGNmZTgwNTkwZjBlZC4uMThlNTBhNzY5YTZlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5oCj4gQEAgLTc2LDYgKzc2LDIxIEBAIHN0YXRpYyBp
bmxpbmUgdm9pZCBpOTE1X2dlbV9jb250ZXh0X2NsZWFyX3JlY292ZXJhYmxlKHN0cnVjdCBpOTE1
X2dlbV9jb250ZXh0ICpjCj4gICAJY2xlYXJfYml0KFVDT05URVhUX1JFQ09WRVJBQkxFLCAmY3R4
LT51c2VyX2ZsYWdzKTsKPiAgIH0KPiAgIAo+ICtzdGF0aWMgaW5saW5lIGJvb2wgaTkxNV9nZW1f
Y29udGV4dF9pc19wZXJzaXN0ZW50KGNvbnN0IHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgp
Cj4gK3sKPiArCXJldHVybiB0ZXN0X2JpdChVQ09OVEVYVF9QRVJTSVNURU5DRSwgJmN0eC0+dXNl
cl9mbGFncyk7Cj4gK30KPiArCj4gK3N0YXRpYyBpbmxpbmUgdm9pZCBpOTE1X2dlbV9jb250ZXh0
X3NldF9wZXJzaXN0ZW5jZShzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4KQo+ICt7Cj4gKwlz
ZXRfYml0KFVDT05URVhUX1BFUlNJU1RFTkNFLCAmY3R4LT51c2VyX2ZsYWdzKTsKPiArfQo+ICsK
PiArc3RhdGljIGlubGluZSB2b2lkIGk5MTVfZ2VtX2NvbnRleHRfY2xlYXJfcGVyc2lzdGVuY2Uo
c3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCkKPiArewo+ICsJY2xlYXJfYml0KFVDT05URVhU
X1BFUlNJU1RFTkNFLCAmY3R4LT51c2VyX2ZsYWdzKTsKPiArfQo+ICsKPiAgIHN0YXRpYyBpbmxp
bmUgYm9vbCBpOTE1X2dlbV9jb250ZXh0X2lzX2Jhbm5lZChjb25zdCBzdHJ1Y3QgaTkxNV9nZW1f
Y29udGV4dCAqY3R4KQo+ICAgewo+ICAgCXJldHVybiB0ZXN0X2JpdChDT05URVhUX0JBTk5FRCwg
JmN0eC0+ZmxhZ3MpOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fY29udGV4dF90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X2NvbnRleHRfdHlwZXMuaAo+IGluZGV4IGZlOTdiOGJhNGZkYS4uODYxZDdkOTJmZTlmIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0X3R5cGVz
LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dF90eXBl
cy5oCj4gQEAgLTEzNyw2ICsxMzcsNyBAQCBzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCB7Cj4gICAj
ZGVmaW5lIFVDT05URVhUX05PX0VSUk9SX0NBUFRVUkUJMQo+ICAgI2RlZmluZSBVQ09OVEVYVF9C
QU5OQUJMRQkJMgo+ICAgI2RlZmluZSBVQ09OVEVYVF9SRUNPVkVSQUJMRQkJMwo+ICsjZGVmaW5l
IFVDT05URVhUX1BFUlNJU1RFTkNFCQk0Cj4gICAKPiAgIAkvKioKPiAgIAkgKiBAZmxhZ3M6IHNt
YWxsIHNldCBvZiBib29sZWFucwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vc2VsZnRlc3RzL21vY2tfY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3Nl
bGZ0ZXN0cy9tb2NrX2NvbnRleHQuYwo+IGluZGV4IDc0ZGRkNjgyYzljZC4uMjliODk4NGYwZTQ3
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvbW9ja19j
b250ZXh0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL21vY2tf
Y29udGV4dC5jCj4gQEAgLTIyLDYgKzIyLDggQEAgbW9ja19jb250ZXh0KHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1LAo+ICAgCUlOSVRfTElTVF9IRUFEKCZjdHgtPmxpbmspOwo+ICAgCWN0
eC0+aTkxNSA9IGk5MTU7Cj4gICAKPiArCWk5MTVfZ2VtX2NvbnRleHRfc2V0X3BlcnNpc3RlbmNl
KGN0eCk7Cj4gKwo+ICAgCW11dGV4X2luaXQoJmN0eC0+ZW5naW5lc19tdXRleCk7Cj4gICAJZSA9
IGRlZmF1bHRfZW5naW5lcyhjdHgpOwo+ICAgCWlmIChJU19FUlIoZSkpCj4gZGlmZiAtLWdpdCBh
L2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaCBiL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0u
aAo+IGluZGV4IDYzZDQwY2JhOTdlMC4uYjVmZDVlNGJkMTZlIDEwMDY0NAo+IC0tLSBhL2luY2x1
ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaAo+ICsrKyBiL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0u
aAo+IEBAIC0xNTcyLDYgKzE1NzIsMjEgQEAgc3RydWN0IGRybV9pOTE1X2dlbV9jb250ZXh0X3Bh
cmFtIHsKPiAgICAqICAgaTkxNV9jb250ZXh0X2VuZ2luZXNfYm9uZCAoSTkxNV9DT05URVhUX0VO
R0lORVNfRVhUX0JPTkQpCj4gICAgKi8KPiAgICNkZWZpbmUgSTkxNV9DT05URVhUX1BBUkFNX0VO
R0lORVMJMHhhCj4gKwo+ICsvKgo+ICsgKiBJOTE1X0NPTlRFWFRfUEFSQU1fUEVSU0lTVEVOQ0U6
Cj4gKyAqCj4gKyAqIEFsbG93IHRoZSBjb250ZXh0IGFuZCBhY3RpdmUgcmVuZGVyaW5nIHRvIHN1
cnZpdmUgdGhlIHByb2Nlc3MgdW50aWwKPiArICogY29tcGxldGlvbi4gUGVyc2lzdGVuY2UgYWxs
b3dzIGZpcmUtYW5kLWZvcmdldCBjbGllbnRzIHRvIHF1ZXVlIHVwIGEKPiArICogYnVuY2ggb2Yg
d29yaywgaGFuZCB0aGUgb3V0cHV0IG92ZXIgdG8gYSBkaXNwbGF5IHNlcnZlciBhbmQgdGhlIHF1
aXQuCj4gKyAqIElmIHRoZSBjb250ZXh0IGlzIG5vdCBtYXJrZWQgYXMgcGVyc2lzdGVudCwgdXBv
biBjbG9zaW5nIChlaXRoZXIgdmlhCj4gKyAqIGFuIGV4cGxpY2l0IERSTV9JOTE1X0dFTV9DT05U
RVhUX0RFU1RST1kgb3IgaW1wbGljaXRseSBmcm9tIGZpbGUgY2xvc3VyZQo+ICsgKiBvciBwcm9j
ZXNzIHRlcm1pbmF0aW9uKSwgdGhlIGNvbnRleHQgYW5kIGFueSBvdXRzdGFuZGluZyByZXF1ZXN0
cyB3aWxsIGJlCj4gKyAqIGNhbmNlbGxlZCAoYW5kIGV4cG9ydGVkIGZlbmNlcyBmb3IgY2FuY2Vs
bGVkIHJlcXVlc3RzIG1hcmtlZCBhcyAtRUlPKS4KPiArICoKPiArICogQnkgZGVmYXVsdCwgbmV3
IGNvbnRleHRzIGFsbG93IHBlcnNpc3RlbmNlLgo+ICsgKi8KPiArI2RlZmluZSBJOTE1X0NPTlRF
WFRfUEFSQU1fUEVSU0lTVEVOQ0UJMHhiCj4gICAvKiBNdXN0IGJlIGtlcHQgY29tcGFjdCAtLSBu
byBob2xlcyBhbmQgd2VsbCBkb2N1bWVudGVkICovCj4gICAKPiAgIAlfX3U2NCB2YWx1ZTsKPiAK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
