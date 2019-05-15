Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1630F1F072
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2019 13:44:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4571889292;
	Wed, 15 May 2019 11:44:45 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 745E389292;
 Wed, 15 May 2019 11:44:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 May 2019 04:44:43 -0700
X-ExtLoop1: 1
Received: from kmarenda-mobl2.ger.corp.intel.com (HELO [10.252.11.159])
 ([10.252.11.159])
 by orsmga001.jf.intel.com with ESMTP; 15 May 2019 04:44:42 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, igt-dev@lists.freedesktop.org
References: <20190508121058.27038-1-tvrtko.ursulin@linux.intel.com>
 <20190508121058.27038-15-tvrtko.ursulin@linux.intel.com>
 <155749511614.10894.3374008959346093413@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <72ffe391-cc48-e644-6c12-dd52aea4e68c@linux.intel.com>
Date: Wed, 15 May 2019 12:44:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155749511614.10894.3374008959346093413@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 14/21] gem_wsim: Engine map
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

Ck9uIDEwLzA1LzIwMTkgMTQ6MzEsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTA4IDEzOjEwOjUxKQo+PiBGcm9tOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+Pgo+PiBBIG5ldyB3b3JrbG9hZCBjb21tYW5kIGZv
ciBlbmFibGluZyBhIGxvYWQgYmFsYW5jZWQgY29udGV4dCBtYXAgKGFrYQo+PiBWaXJ0dWFsIEVu
Z2luZSkuIEV4YW1wbGUgdXNhZ2U6Cj4+Cj4+ICAgIEIuMQo+Pgo+PiBUaGlzIHR1cm5zIG9uIGxv
YWQgYmFsYW5jaW5nIGZvciBjb250ZXh0IG9uZSwgYXNzdW1pbmcgaXQgaGFzIGFscmVhZHkgYmVl
bgo+PiBjb25maWd1cmVkIHdpdGggYW4gZW5naW5lIG1hcC4gT25seSBERUZBVUxUIGVuZ2luZSBz
cGVjaWZpZXIgY2FuIGJlIHVzZWQKPj4gd2l0aCBsb2FkIGJhbGFuY2VkIGVuZ2luZSBtYXBzLgo+
IAo+IFJlc3RyaWN0aW9uIG1ha2VzIHNlbnNlIGZvciBrZWVwaW5nIGxpbmVub2lzZV5XIGZpbGUg
Zm9ybWF0IHNpbXBsZS4KPiAKPj4gU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRr
by51cnN1bGluQGludGVsLmNvbT4KPj4gLS0tCj4+IEBAIC0xMTcyLDYgKzEyMTAsOCBAQCBwcmVw
YXJlX3dvcmtsb2FkKHVuc2lnbmVkIGludCBpZCwgc3RydWN0IHdvcmtsb2FkICp3cmssIHVuc2ln
bmVkIGludCBmbGFncykKPj4gICAgICAgICAgICAgICAgICBpZiAoY3R4LT5lbmdpbmVfbWFwKSB7
Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICBJOTE1X0RFRklORV9DT05URVhUX1BBUkFNX0VO
R0lORVMoc2V0X2VuZ2luZXMsCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgY3R4LT5lbmdpbmVfbWFwX2NvdW50ICsgMSk7Cj4+ICsg
ICAgICAgICAgICAgICAgICAgICAgIEk5MTVfREVGSU5FX0NPTlRFWFRfRU5HSU5FU19MT0FEX0JB
TEFOQ0UobG9hZF9iYWxhbmNlLAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGN0eC0+ZW5naW5lX21hcF9jb3VudCk7Cj4+
ICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2NvbnRleHRfcGFy
YW0gcGFyYW0gPSB7Cj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5jdHhfaWQg
PSBjdHhfaWQsCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5wYXJhbSA9IEk5
MTVfQ09OVEVYVF9QQVJBTV9FTkdJTkVTLAo+PiBAQCAtMTE3OSw3ICsxMjE5LDI1IEBAIHByZXBh
cmVfd29ya2xvYWQodW5zaWduZWQgaW50IGlkLCBzdHJ1Y3Qgd29ya2xvYWQgKndyaywgdW5zaWdu
ZWQgaW50IGZsYWdzKQo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAudmFsdWUg
PSB0b191c2VyX3BvaW50ZXIoJnNldF9lbmdpbmVzKSwKPj4gICAgICAgICAgICAgICAgICAgICAg
ICAgIH07Cj4+ICAgCj4+IC0gICAgICAgICAgICAgICAgICAgICAgIHNldF9lbmdpbmVzLmV4dGVu
c2lvbnMgPSAwOwo+PiArICAgICAgICAgICAgICAgICAgICAgICBpZiAoY3R4LT53YW50c19iYWxh
bmNlKSB7Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc2V0X2VuZ2luZXMuZXh0
ZW5zaW9ucyA9Cj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0b191
c2VyX3BvaW50ZXIoJmxvYWRfYmFsYW5jZSk7Cj4+ICsKPj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBtZW1zZXQoJmxvYWRfYmFsYW5jZSwgMCwgc2l6ZW9mKGxvYWRfYmFsYW5jZSkp
Owo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGxvYWRfYmFsYW5jZS5iYXNlLm5h
bWUgPQo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgSTkxNV9DT05U
RVhUX0VOR0lORVNfRVhUX0xPQURfQkFMQU5DRTsKPj4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBsb2FkX2JhbGFuY2UubnVtX3NpYmxpbmdzID0KPj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIGN0eC0+ZW5naW5lX21hcF9jb3VudDsKPj4gKwo+PiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGZvciAoaiA9IDA7IGogPCBjdHgtPmVuZ2luZV9t
YXBfY291bnQ7IGorKykgewo+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgbG9hZF9iYWxhbmNlLmVuZ2luZXNbal0uZW5naW5lX2NsYXNzID0KPj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgSTkxNV9FTkdJTkVfQ0xBU1NfVklE
RU87IC8qIEZJWE1FICovCj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBsb2FkX2JhbGFuY2UuZW5naW5lc1tqXS5lbmdpbmVfaW5zdGFuY2UgPQo+PiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjdHgtPmVuZ2luZV9tYXBbal0g
LSBWQ1MxOyAvKiBGSVhNRSAqLwo+IAo+IE9rLCBtb3JlIGZhbGxvdXQgZnJvbSBmaXhpbmcgY3R4
LT5lbmdpbmVfbWFwW10gZmlyc3Q/CgpOb3Qgc3VyZSBJIHVuZGVyc3RhbmQgdGhlIHF1ZXN0aW9u
LgoKSSBhbSBhdCB0aGUgbW9tZW50IHVwZGF0aW5nIHRoZSBzZXJpZXMgd2l0aCByZXZpZXcgZmVl
ZGJhY2sgYW5kIHNvbWUgCnNtYWxsIHRoaW5nIGhlcmUgYW5kIHRoZXJlLiBXaGVuIGRvbmUgd2l0
aCB0aGF0IEknbGwgc2VlIGlmIHRoZXNlIFZDUyAKaGFyZGNvZGVkIGFzc3VtcHRpb25zIGNhbiBi
ZSBlYXNpbHkgc29sdmVkLiBCYXNpY2FsbHkgSSB3aWxsIGhhdmUgYSBnbyAKYXQgaW50ZWdyYXRp
bmcgZW5naW5lIGRpc2NvdmVyeSB3aGljaCBJIHRoaW5rIGl0cyBkZWZpbml0ZWx5IG5lZWRlZCBu
b3cgCnRoYXQgSSBoYXZlIGFkZGVkIGNsYXNzIGJhc2VkIGVuZ2luZSBtYXAgYnVpbGRpbmcgYWJp
bGl0eS4KClJlZ2FyZHMsCgpUdnJ0a28KCj4gT3RoZXJ3aXNlIGxvb2tzIGZpbmUuCj4gLUNocmlz
Cj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
