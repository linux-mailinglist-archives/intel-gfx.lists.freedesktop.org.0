Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5688B27C66
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 14:03:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02AA489CD3;
	Thu, 23 May 2019 12:03:27 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5B1789CD3;
 Thu, 23 May 2019 12:03:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 05:03:25 -0700
X-ExtLoop1: 1
Received: from gaia.fi.intel.com ([10.237.72.169])
 by fmsmga001.fm.intel.com with ESMTP; 23 May 2019 05:03:25 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 88C2F5C166E; Thu, 23 May 2019 15:02:30 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, igt-dev@lists.freedesktop.org
In-Reply-To: <155859468552.28319.675115669918159870@skylake-alporthouse-com>
References: <20190522163141.29252-1-tvrtko.ursulin@linux.intel.com>
 <20190523063701.4549-1-tvrtko.ursulin@linux.intel.com>
 <82b08c9f-cfd1-b478-c6aa-719bf0d7cccf@linux.intel.com>
 <155859468552.28319.675115669918159870@skylake-alporthouse-com>
Date: Thu, 23 May 2019 15:02:30 +0300
Message-ID: <87tvdl2xbd.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v2] tests/i915: Restore some
 BAT coverage
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUXVvdGlu
ZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0yMyAwNzo0MzoxMikKPj4gCj4+IE9uIDIzLzA1LzIw
MTkgMDc6MzcsIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+PiA+IEZyb206IFR2cnRrbyBVcnN1bGlu
IDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4+ID4gCj4+ID4gRW5naW5lIGVudW1lcmF0ZWQg
dGVzdCBuYW1lcyBoYXZlIGNoYW5nZWQgc28gZmFzdC1mZWVkYmFjay50ZXN0bGlzdCBuZWVkcwo+
PiA+IHRvIGJlIHVwZGF0ZWQuIEhvd2V2ZXIgbGlzdGluZyBhbGwgZW5naW5lcyB0aGVyZSB3b24n
dCBzY2FsZS4gU28gaW5zdGVhZAo+PiA+IGFkZCBuZXcgdGVzdHMgY2FzZXMgd2hpY2ggaXRlcmF0
ZSBhbGwgZW5naW5lcyBpbnRlcm5hbGx5Lgo+PiA+IAo+PiA+IHYyOgo+PiA+ICAgKiBGaXggYmFz
aWMtYWxsIHRlc3QgbmFtZS4KPj4gPiAgICogRml4IHBhcmFtcyB0byBiYXNpYyAoYm9vbCBmYWxz
ZSB0byB6ZXJvKS4KPj4gPiAgICogVXNlIEk5MTVfRVhFQ19ERUZBVUxUIGluIGhhc19leHRlbmRl
ZF9idXN5X2lvY3RsIHRvIHdvcmthcm91bmQgc3RhdGVmdWwKPj4gPiAgICAgY29udGV4dHMgZm9y
IG5vdy4KPj4gPiAgICogSGF2ZSBvbmx5IGJhc2ljLWFsbCBpbiBCQVQuIChDaHJpcykKPj4gPiAK
Pj4gPiBTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwu
Y29tPgo+PiA+IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4gIyB2MQo+PiA+IFJldmlld2VkLWJ5OiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGludGVs
LmNvbT4gIyB2MQo+PiA+IC0tLQo+PiA+ICAgdGVzdHMvaTkxNS9nZW1fYnVzeS5jICAgICAgICAg
ICAgICAgICB8IDE5ICsrKysrKysrKysrLS0tLQo+PiA+ICAgdGVzdHMvaTkxNS9nZW1fZXhlY19i
YXNpYy5jICAgICAgICAgICB8IDMzICsrKysrKysrKysrKysrKysrKysrKysrKysrKwo+PiA+ICAg
dGVzdHMvaW50ZWwtY2kvZmFzdC1mZWVkYmFjay50ZXN0bGlzdCB8IDMxICsrLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KPj4gPiAgIDMgZmlsZXMgY2hhbmdlZCwgNTAgaW5zZXJ0aW9ucygrKSwgMzMg
ZGVsZXRpb25zKC0pCj4+ID4gCj4+ID4gZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2J1c3ku
YyBiL3Rlc3RzL2k5MTUvZ2VtX2J1c3kuYwo+PiA+IGluZGV4IDc4MWEzYmZhYjFkMS4uZjNlYmIz
N2EzM2I0IDEwMDY0NAo+PiA+IC0tLSBhL3Rlc3RzL2k5MTUvZ2VtX2J1c3kuYwo+PiA+ICsrKyBi
L3Rlc3RzL2k5MTUvZ2VtX2J1c3kuYwo+PiA+IEBAIC00MTcsNyArNDE3LDcgQEAgc3RhdGljIGJv
b2wgaGFzX3NlbWFwaG9yZXMoaW50IGZkKQo+PiA+ICAgCj4+ID4gICBzdGF0aWMgYm9vbCBoYXNf
ZXh0ZW5kZWRfYnVzeV9pb2N0bChpbnQgZmQpCj4+ID4gICB7Cj4+ID4gLSAgICAgaWd0X3NwaW5f
dCAqc3BpbiA9IGlndF9zcGluX25ldyhmZCwgLmVuZ2luZSA9IEk5MTVfRVhFQ19SRU5ERVIpOwo+
PiA+ICsgICAgIGlndF9zcGluX3QgKnNwaW4gPSBpZ3Rfc3Bpbl9uZXcoZmQsIC5lbmdpbmUgPSBJ
OTE1X0VYRUNfREVGQVVMVCk7Cj4+IAo+PiAoVGhpcyBmYWlscyBvbiBwbGF0Zm9ybXMgd2l0aCBv
bmx5IHJjczAgKG5vIG90aGVyIGVuZ2luZXMpIGR1ZSBjb250ZXh0IAo+PiBoYXMgYSBtYXAgbm93
LCBhbmQgSTkxNV9FWEVDX1JFTkRFUiA9PSAxID09IC1FSU5WQUwuKQo+Cj4gSW4gd2hpY2ggY2Fz
ZSwgaXQgcHJvYmFibHkgc2hvdWxkIGJlIGEgcGxhaW4gMCBhcyBpdCBubyBsb25nZXIgaGFzIHRo
ZQo+IG9sZCBFWEVDX1JJTkcgc2VtYW50aWNzIGJ1dCBpcyBqdXN0IGFuIGluZGV4LCBpLmUuIGln
dF9zcGluX25ldyhmZCk7Cj4KPj4gV2UgbmVlZCB0byBjb21lIHVwIHdpdGggYSByb2J1c3QgYW5k
IGVhc3kgdG8gcmVtZW1iZXIgc29sdXRpb24gZm9yIAo+PiBkZWFsaW5nIHdpdGggdGhlIGZhY3Qg
Y29udGV4dHMgYXJlIHN0YXRlZnVsIG5vdyBhbmQgCj4+IF9fZm9yX2VhY2hfcGh5c2ljYWxfZW5n
aW5lIGl0ZXJhdG9yIGNvbmZpZ3VyZXMgdGhlIGRlZmF1bHQgb25lLgo+PiAKPj4gQ291bGQgZW5k
IGdhbWUgZm9yIHRlc3QgY29udmVyc2lvbiBiZSB0byBzdG9wIHBhc3NpbmcgaW4gZWIuZmxhZ3Mg
dG8gCj4+IGlndF9zcGluX25ldyBhbmQgZG8gY2xhc3M6aW5zdGFuY2UgaW5zdGVhZD8gVGhhdCB3
b3VsZCBlbmFibGUgZHVtbXlsb2FkIAo+PiB0byB1bmFtYmlndW91c2x5IGtub3cgd2hhdCB0byB1
c2UsIGRlcGVuZGluZyBvbiBnZXRfZW5naW5lcyBxdWVyeS4KPgo+IFNwZWFrIHRvIE1pa2EsIHdl
IGFidXNlIGlndF9zcGluX3QgbXVjaCBtb3JlIGJ5IHJlc3VibWl0dGluZyB0aGUgc2FtZQo+IGR1
bW15bG9hZCB0byBtdWx0aXBsZSBlbmdpbmVzIGFuZCBjb250ZXh0cy4KCkkgaGF2ZSB3YW5kZXJl
ZCB0aGVyZSB5ZXMuIFRoZSByZWFzb24gZm9yIHRoaXMgYWJ1c2UgaXMgc3RpbGwgdW5jbGVhci4K
V2UgY291bGQgZG8gYSBjbGVhcmVyIGludGVyZmFjZSBmb3IgY3JlYXRpbmcgc3Bpbm5lcnMgYnV0
IGlzIHRoZQpyZXVzYWdlIGR1ZSB0byBsYXRlbmN5IGNvbmNlcm5zPwoKLU1pa2EKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
