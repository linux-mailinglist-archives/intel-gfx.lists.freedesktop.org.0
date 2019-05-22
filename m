Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6312604C
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 11:18:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BAB3897D4;
	Wed, 22 May 2019 09:18:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5656897D4;
 Wed, 22 May 2019 09:18:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16637609-1500050 for multiple; Wed, 22 May 2019 10:18:11 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190522091346.12120-1-mika.kuoppala@linux.intel.com>
References: <20190522091346.12120-1-mika.kuoppala@linux.intel.com>
Message-ID: <155851668962.23981.14852699657419000423@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 22 May 2019 10:18:09 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t] lib/dummyload: Cleanup access to spin
 obj array
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA1LTIyIDEwOjEzOjQ2KQo+IEluc3RlYWQgb2Yg
cmVseWluZyBhIHN0YXRpYyBvYmogYXJyYXkgaW5zaWRlIGlndF9zcGluX3QsCj4gYWNjZXNzIGl0
IHdpdGggcHJvcGVyIGluZGV4aW5nLgo+IAo+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KPiBTaWduZWQtb2ZmLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3Bw
YWxhQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgbGliL2lndF9kdW1teWxvYWQuYyAgICAgICAg
ICAgIHwgMzIgKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0KPiAgbGliL2lndF9kdW1t
eWxvYWQuaCAgICAgICAgICAgIHwgIDEgKwo+ICB0ZXN0cy9pOTE1L2dlbV9leGVjX3NjaGVkdWxl
LmMgfCAyNSArKysrKysrKysrKysrKystLS0tLS0tLS0tCj4gIHRlc3RzL2k5MTUvZ2VtX3NvZnRw
aW4uYyAgICAgICB8ICAyICstCj4gIHRlc3RzL2k5MTUvZ2VtX3NwaW5fYmF0Y2guYyAgICB8ICA0
ICsrLS0KPiAgdGVzdHMvaTkxNS9pOTE1X2hhbmdtYW4uYyAgICAgIHwgIDIgKy0KPiAgNiBmaWxl
cyBjaGFuZ2VkLCAzNSBpbnNlcnRpb25zKCspLCAzMSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvbGliL2lndF9kdW1teWxvYWQuYyBiL2xpYi9pZ3RfZHVtbXlsb2FkLmMKPiBpbmRleCAx
NWQ2NGZhZC4uYjJkYTIyMmUgMTAwNjQ0Cj4gLS0tIGEvbGliL2lndF9kdW1teWxvYWQuYwo+ICsr
KyBiL2xpYi9pZ3RfZHVtbXlsb2FkLmMKPiBAQCAtNzIsNyArNzIsNiBAQCBlbWl0X3JlY3Vyc2l2
ZV9iYXRjaChpZ3Rfc3Bpbl90ICpzcGluLAo+ICAgICAgICAgICAgICAgICAgICAgIGludCBmZCwg
Y29uc3Qgc3RydWN0IGlndF9zcGluX2ZhY3RvcnkgKm9wdHMpCj4gIHsKPiAgI2RlZmluZSBTQ1JB
VENIIDAKPiAtI2RlZmluZSBCQVRDSCAxCgojZGVmaW5lIEJBVENIIElHVF9TUElOX0JBVENICgo+
IGRpZmYgLS1naXQgYS9saWIvaWd0X2R1bW15bG9hZC5oIGIvbGliL2lndF9kdW1teWxvYWQuaAo+
IGluZGV4IDYxYTlmMmZjLi5mNzc3MmI5MCAxMDA2NDQKPiAtLS0gYS9saWIvaWd0X2R1bW15bG9h
ZC5oCj4gKysrIGIvbGliL2lndF9kdW1teWxvYWQuaAo+IEBAIC00Miw2ICs0Miw3IEBAIHR5cGVk
ZWYgc3RydWN0IGlndF9zcGluIHsKPiAgCj4gICAgICAgICBpbnQgb3V0X2ZlbmNlOwo+ICAgICAg
ICAgc3RydWN0IGRybV9pOTE1X2dlbV9leGVjX29iamVjdDIgb2JqWzJdOwo+ICsjZGVmaW5lIFNQ
SU5fT0JKX0JBVENIICAgMQoKTGVhZGluZyBJR1RfU1BJTiB0byBtYXRjaCB0eXBlLgpJR1RfU1BJ
Tl9CQVRDSCBpcyB1bmlxdWUgZW5vdWdoIGZvciB0aGUgbW9tZW50LgotQ2hyaXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
