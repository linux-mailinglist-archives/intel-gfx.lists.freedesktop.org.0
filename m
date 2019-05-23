Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 953A427EE9
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 15:58:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A7BA89EB1;
	Thu, 23 May 2019 13:58:05 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5043189EB1;
 Thu, 23 May 2019 13:58:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 06:58:02 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO [10.252.20.122])
 ([10.252.20.122])
 by orsmga005.jf.intel.com with ESMTP; 23 May 2019 06:58:01 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20190522155720.28723-1-tvrtko.ursulin@linux.intel.com>
 <20190522155720.28723-5-tvrtko.ursulin@linux.intel.com>
 <155861794842.28319.15632127961597355104@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3dd08b76-88f4-634c-29b9-8e0b6ae03188@linux.intel.com>
Date: Thu, 23 May 2019 14:58:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155861794842.28319.15632127961597355104@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 04/15] gem_wsim: Engine map
 load balance command
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

Ck9uIDIzLzA1LzIwMTkgMTQ6MjUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTIyIDE2OjU3OjA5KQo+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBBIG5ldyB3b3JrbG9hZCBjb21tYW5kIGZv
ciBlbmFibGluZyBhIGxvYWQgYmFsYW5jZWQgY29udGV4dCBtYXAgKGFrYQo+PiBWaXJ0dWFsIEVu
Z2luZSkuIEV4YW1wbGUgdXNhZ2U6Cj4+Cj4+ICAgIEIuMQo+Pgo+PiBUaGlzIHR1cm5zIG9uIGxv
YWQgYmFsYW5jaW5nIGZvciBjb250ZXh0IG9uZSwgYXNzdW1pbmcgaXQgaGFzIGFscmVhZHkgYmVl
bgo+PiBjb25maWd1cmVkIHdpdGggYW4gZW5naW5lIG1hcC4gT25seSBERUZBVUxUIGVuZ2luZSBz
cGVjaWZpZXIgY2FuIGJlIHVzZWQKPj4gd2l0aCBsb2FkIGJhbGFuY2VkIGVuZ2luZSBtYXBzLgo+
Pgo+PiB2MjoKPj4gICAqIExpZnQgcmVzdHJpY3Rpb24gdG8gb25seSB1c2UgbG9hZCBiYWxhbmNl
ciB3aGVuIGVuYWJsZWQgaW4gY29udGV4dCBtYXAuCj4+ICAgICAoQ2hyaXMpCj4gCj4gWW91IGRp
ZG4ndCBmYW5jeSBnb2luZyBhbGwgb3V0IGFuZCBzYXk6Cj4gQi4xLkRFRkFVTFQuVkNTMXxWQ1My
Cj4gPwo+IAo+IElmIHlvdSBhcmUgaGFwcHkgd2l0aCB0aGUgY3VycmVudCBjb2RlLCBpdCBsb29r
cyB0byBkbyB3aGF0IHlvdSB3YW50LAo+IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KClRoYW5rcywgSSB3b3VsZG4ndCBzYXkgSSBhbSBoYXBweSBh
cyBpbiByZWFsbHkgcHJvdWQgb2YgaXQgaGFwcHkuIEJ1dCBhcyAKYSB0b29sIGJ5IGhhY2tlcnMg
Zm9yIGhhY2tlcnMsIHdoaWNoIGdyZXcgb3JnYW5pY2FsbHkgYWx3YXlzIGFzIGEgc2Vjb25kIApw
cmlvcml0eSB0aGluZywgaXQgc2VlbXMgdG8gd29yayBmb3Igbm93IGFuZCBpcyBhYmxlIHRvIGV4
ZXJjaXNlIHRoZSBuZXcgCnVBUEkgYW5kIHNjaGVkdWxpbmcgcGF0aHMuCgpTbyB0aGVyZSBpcyBz
Y29wZSB0byB0aWR5LCBhbmQgd2lsbCBjZXJ0YWlubHkgbmVlZCBtb3JlIHdvcmsgaW4gdGhlIApm
dXR1cmUgKG5vdCBsZWFzdCBwZXIgZW5naW5lIGNhbGlicmF0aW9uKSwgYnV0IEkgbmVlZCB0byBj
YWxsIGl0IGRvbmUgCmZvciBhIHdoaWxlIGF0IHNvbWUgcmVhc29uYWJsZSBwb2ludCBhbmQgaXQg
ZmVlbHMgbGlrZSB0aGF0IHNob3VsZCBiZSBub3cuCgpQcm9vZiBpbiB0aGUgcHVkZGluZyBpcyB0
aGF0IEkgdGhpbmsgeW91IGZvdW5kIGl0IHVzZWZ1bCB3aGVuIApiZW5jaG1hcmtpbmcgdGhlIHNl
bWFwaG9yZSBjb2RlIGFuZCByZWxhdGVkIGlzc3Vlcy4gU28gaXQgYXQgbGVhc3QgCmNvbnRpbnVl
cyBwcm92aWRpbmcgdGhlIHNhbWUgc2ltdWxhdGVkIHdvcmtsb2FkcyBvdmVyIHRoZSBuZXcgdUFQ
SS4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
