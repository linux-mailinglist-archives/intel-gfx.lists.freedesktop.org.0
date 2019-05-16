Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB3620281
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2019 11:28:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97ADC8932E;
	Thu, 16 May 2019 09:28:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76093892B7;
 Thu, 16 May 2019 09:28:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 02:28:42 -0700
X-ExtLoop1: 1
Received: from kmarenda-mobl2.ger.corp.intel.com (HELO [10.252.11.159])
 ([10.252.11.159])
 by orsmga001.jf.intel.com with ESMTP; 16 May 2019 02:28:41 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190508100958.32637-1-chris@chris-wilson.co.uk>
 <20190508100958.32637-14-chris@chris-wilson.co.uk>
 <02a9bce5-7c1d-3af4-f283-e59355b18f70@linux.intel.com>
 <155795023802.12244.1056297010443188648@skylake-alporthouse-com>
 <155795237217.12244.8663219783910546542@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <5bf452d1-1475-bf35-ca59-f340a67edbad@linux.intel.com>
Date: Thu, 16 May 2019 10:28:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155795237217.12244.8663219783910546542@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t 14/16] i915/gem_exec_balancer:
 Exercise bonded pairs
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE1LzA1LzIwMTkgMjE6MzIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIENocmlz
IFdpbHNvbiAoMjAxOS0wNS0xNSAyMDo1NzoxOCkKPj4gUXVvdGluZyBUdnJ0a28gVXJzdWxpbiAo
MjAxOS0wNS0xNSAxMTo1ODoyMCkKPj4+Cj4+PiBPbiAwOC8wNS8yMDE5IDExOjA5LCBDaHJpcyBX
aWxzb24gd3JvdGU6Cj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgIGlndF9hc3NlcnRfZihsb2Fk
ID4gMC45MCwKPj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJlbmdpbmUg
JWQgKGNsYXNzOmluc3RhbmNlICVkOiVkKSB3YXMgZm91bmQgdG8gYmUgb25seSAlLjFmJSUgYnVz
eVxuIiwKPj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG4sIHNpYmxpbmdz
W25dLmVuZ2luZV9jbGFzcywgc2libGluZ3Nbbl0uZW5naW5lX2luc3RhbmNlLAo+Pj4+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbG9hZCoxMDApOwo+Pj4KPj4+IE1hc3RlciBh
bHNvIG5lZWRzIHRvIGJlIGNoZWNrZWQgSSB0aGluay4gWW91IGhhdmUgdGhlIGluZnJhc3RydWN0
dXJlIHRvCj4+PiBvcGVuIHR3byBwbXVzIGluIHRoZSBwcmV2aW91cyBwYXRjaCBzbyBzaG91bGQg
YmUgZWFzeS4KPj4KPj4gSGF2ZW4ndCB3ZSBjaGVja2VkIHByZWNpc2VseSB0aGF0IGluIGVhcmxp
ZXIgdGVzdHM/IFdoYXQgd291bGQgcGVyaGFwcwoKV2hlcmU/IEkgc2VlIG9uZSBzdWJ0ZXN0IGZv
ciBib25kaW5nLgoKPj4gYmUgZmFpcmVyIGhlcmUgd291bGQgYmUgdG8gdmVyaWZ5IHRoZSBvdGhl
ciBlbmdpbmUgd2FzIGlkbGUsIG90aGVyd2lzZQo+PiB3ZSBjb3VsZCBzYXkgd2UgZmx1a2VkIGl0
LiBGdXJ0aGVybW9yZSwgd2Ugc2hvdWxkIHJlcGVhdCBhIGZldyB0aW1lcwo+PiB3aXRoIHNheSAo
MCwgMSksICgwLCAxKSwgKDEsIDApLCAoMSwgMCkgdG8gZnVydGhlciBydWxlIG91dCBmbHVrZXMs
IGFuZAo+PiB0aGVuIHRvIGZpbmlzaCB3aXRoIGEgcmFuZG9tIHNtb2tldGVzdCBvZiBzb21lIGRl
c2NyaXB0aW9uLgoKSG0gbWF5YmUgZ3B1IGlkbGluZyBiZWZvcmUgZWFjaCBwYXNzIGlzIG5lZWRl
ZCBpbiB0aGlzIHRlc3QuCgpUaGVuIEknZCBiZSBoYXBweSBpZiB5b3UganVzdCBtZWFzdXJlZCBi
dXN5bmVzcyBvbiBhIGJvbmRlZCBwYWlyLgoKQW5kIHllYWggbW9yZSBwZXJtdXRhdGlvbiB3b3Vs
ZCBiZSBnb29kIGZvciBmbHVrZSBwcmV2ZW50aW9uLgoKPj4gUGVyaGFwcyBldmVuIGEgdGVzdCBp
cyBjbG9zZXIgdG8gdGhlIHR5cGljYWwgd29ya2xvYWQgd291bGQgaW52b2x2ZQo+PiBzZW1hcGhv
cmUgY29tbXVuaWNhdGlvbiBhY3Jvc3MgdGhlIGJvbmQuIEJ1dCBJIGRvbid0IGtub3cgYSB3YXkg
aW4gd2hpY2gKPj4gSSBjYW4gZGV0ZXJtaW5lIHdoaWNoIGVuZ2luZSBJIGFtIG9uIGluIG9yZGVy
IHRvIHJlY29yZCB0aGF0IGZyb20gdGhlCj4+IEdQVSBpdHNlbGYuCj4gCj4gVG8gcmVtaW5kIG15
c2VsZiwgdGhlIGltcG9ydGFuY2UgaGVyZSBpcyBvbiB1QUJJIHN0cmVzc2luZywgaXQncyBpcyBt
dWNoCj4gZWFzaWVyIHRvIHByb3ZlIHRoZSByZWxhdGlvbnNoaXAgaW4gdGhlIGtlcm5lbCBhbmQg
dGhhdCBpcyB3aGVyZSB3ZSBkby4KCkkgZGlkbid0IHRoaW5rIGl0IHdvdWxkIGJlIGhhcmQgdG8g
cmVhZCBidXN5bmVzcyBmcm9tIHRoZSBtYXN0ZXIgYXMgd2VsbCAKYnV0IGlmIHlvdSBpbnNpc3Qg
b2theS4KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
