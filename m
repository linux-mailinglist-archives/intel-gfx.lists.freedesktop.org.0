Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA931B6F7
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2019 15:24:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 860B589CA1;
	Mon, 13 May 2019 13:24:39 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDD0A89CA1;
 Mon, 13 May 2019 13:24:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 May 2019 06:24:38 -0700
X-ExtLoop1: 1
Received: from ddillonx-mobl.ger.corp.intel.com (HELO [10.252.28.3])
 ([10.252.28.3])
 by orsmga008.jf.intel.com with ESMTP; 13 May 2019 06:24:37 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20190508121058.27038-1-tvrtko.ursulin@linux.intel.com>
 <20190508121058.27038-14-tvrtko.ursulin@linux.intel.com>
 <155749495035.10894.4199156109033147118@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6e7d9f05-9c0a-21d1-6684-ceab92ddc8c7@linux.intel.com>
Date: Mon, 13 May 2019 14:24:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155749495035.10894.4199156109033147118@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 13/21] gem_wsim: Compact int
 command parsing with a macro
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDEwLzA1LzIwMTkgMTQ6MjksIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTA4IDEzOjEwOjUwKQo+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBQYXJzaW5nIGFuIGludGVnZXIgd29ya2xv
YWQgZGVzY3JpcHRvciBmaWVsZCBpcyBhIGNvbW1vbiBwYXR0ZXJuIHdoaWNoIHdlCj4+IGNhbiBl
eHRyYWN0IHRvIGEgaGVscGVyIG1hY3JvIGFuZCBieSBkb2luZyBzbyBmdXJ0aGVyIGltcHJvdmUg
dGhlCj4+IHJlYWRhYmlsaXR5IG9mIHRoZSBtYWluIHBhcnNpbmcgbG9vcC4KPj4KPj4gU2lnbmVk
LW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPj4gLS0t
Cj4+ICAgYmVuY2htYXJrcy9nZW1fd3NpbS5jIHwgODAgKysrKysrKysrKysrKystLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCsp
LCA1NSBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2JlbmNobWFya3MvZ2VtX3dzaW0u
YyBiL2JlbmNobWFya3MvZ2VtX3dzaW0uYwo+PiBpbmRleCA0ZGJmYzNlOTIyYTkuLmMyZTEzZDk5
MzljMiAxMDA2NDQKPj4gLS0tIGEvYmVuY2htYXJrcy9nZW1fd3NpbS5jCj4+ICsrKyBiL2JlbmNo
bWFya3MvZ2VtX3dzaW0uYwo+PiBAQCAtMzcwLDYgKzM3MCwxNSBAQCBzdGF0aWMgaW50IHBhcnNl
X2VuZ2luZV9tYXAoc3RydWN0IHdfc3RlcCAqc3RlcCwgY29uc3QgY2hhciAqX3N0cikKPj4gICAg
ICAgICAgcmV0dXJuIDA7Cj4+ICAgfQo+PiAgIAo+PiArI2RlZmluZSBpbnRfZmllbGQoX1NURVBf
LCBfRklFTERfLCBfQ09ORF8sIF9FUlJfKSBcCj4+ICsgICAgICAgaWYgKChmaWVsZCA9IHN0cnRv
a19yKGZzdGFydCwgIi4iLCAmZmN0eCkpKSB7IFwKPj4gKyAgICAgICAgICAgICAgIHRtcCA9IGF0
b2koZmllbGQpOyBcCj4+ICsgICAgICAgICAgICAgICBjaGVja19hcmcoX0NPTkRfLCBfRVJSXywg
bnJfc3RlcHMpOyBcCj4+ICsgICAgICAgICAgICAgICBzdGVwLnR5cGUgPSBfU1RFUF87IFwKPj4g
KyAgICAgICAgICAgICAgIHN0ZXAuX0ZJRUxEXyA9IHRtcDsgXAo+PiArICAgICAgICAgICAgICAg
Z290byBhZGRfc3RlcDsgXAo+PiArICAgICAgIH0gXAo+IAo+IE1vcmUgaGlkZGVuIGNvbnRyb2wg
ZmxvdyA6LXAKCkl0J3Mgbm90IHRoZSBwcmV0dGllcyBJIGFkbWl0LiBJdCBzdGFydGVkIGFzIGEg
cXVpY2sgcHJvamVjdCB0byB0ZXN0IApmZWFzaWJpbGl0eSBvZiB1c2Vyc3BhY2UgYmFsYW5jaW5n
IGFuZCB3aGVuIGl0IGhhcyBzaG93biBpdHNlbGYgc29tZXdoYXQgCnVzZWZ1bCBJIGFkZGVkIG1v
cmUgYW5kIG1vcmUgZmVhdHVyZXMgdG8gaXQuIEl0J3MgYXQgdGhlIHBvaW50IHdoZXJlIApzcGxp
dHRpbmcgaW50IHNlcGFyYXRlIGZpbGVzIGFuZCByZWZhY3RvcmluZyB0aGUgZGF0YSBzdHJ1Y3R1
cmVzIGNvdWxkIApiZSBiZW5lZmljaWFsLgoKPiBSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+CgpUaGFua3MsCgpUdnJ0a28KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
