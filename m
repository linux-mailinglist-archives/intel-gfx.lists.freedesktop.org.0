Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92199B8DB4
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 11:27:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD5C26FC42;
	Fri, 20 Sep 2019 09:27:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38B506FC42
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 09:27:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18555933-1500050 for multiple; Fri, 20 Sep 2019 10:27:00 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87a7azpeoj.fsf@gaia.fi.intel.com>
References: <20190919151811.9526-1-chris@chris-wilson.co.uk>
 <87a7azpeoj.fsf@gaia.fi.intel.com>
Message-ID: <156897161844.1196.12727422738102239838@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 20 Sep 2019 10:26:58 +0100
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/tgl: Suspend pre-parser across
 GTT invalidations
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA5LTIwIDA5OjE0OjM2KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBCZWZvcmUgd2UgZXhl
Y3V0ZSBhIGJhdGNoLCB3ZSBtdXN0IGZpcnN0IGlzc3VlIGFueSBhbmQgYWxsIFRMQgo+ID4gaW52
YWxpZGF0aW9ucyBzbyB0aGF0IGJhdGNoIHBpY2tzIHVwIHRoZSBuZXcgcGFnZSB0YWJsZSBlbnRy
aWVzLgo+ID4gVGlnZXJsYWtlJ3MgcHJlcGFyc2VyIGlzIHdlYWtlbmluZyBvdXIgcG9zdC1zeW5j
IENTX1NUQUxMIGluc2lkZSB0aGUKPiA+IGludmFsaWRhdGUgcGlwZS1jb250cm9sIGFuZCBhbGxv
d2luZyB0aGUgbG9hZGluZyBvZiB0aGUgYmF0Y2ggYnVmZmVyCj4gPiBiZWZvcmUgd2UgaGF2ZSBz
ZXR1cCBpdHMgcGFnZSB0YWJsZSAoYW5kIHNvIGl0IGxvYWRzIHRoZSB3cm9uZyBwYWdlIGFuZAo+
ID4gZXhlY3V0ZXMgaW5kZWZpbml0ZWx5KS4KPiA+Cj4gPiBUaGUgaWd0X2NzX3RsYiBpbmRpY2F0
ZXMgdGhhdCB0aGlzIGlzc3VlIGNhbiBvbmx5IGJlIG9ic2VydmVkIG9uIHJjcywKPiA+IGV2ZW4g
dGhvdWdoIHRoZSBwcmVwYXJzZXIgaXMgY29tbW9uIHRvIGFsbCBlbmdpbmVzLiBBbHRlcm5hdGl2
ZWx5LCB3ZQo+ID4gY291bGQgZG8gVExCIHNob290ZG93biB2aWEgbW1pbyBvbiB1cGRhdGluZyB0
aGUgR1RULgo+ID4KPiA+IEJ5IGluc2VydGluZyB0aGUgcHJlLXBhcnNlciBkaXNhYmxlIGluc2lk
ZSBFTUlUX0lOVkFMSURBVEUsIHdlIHdpbGwgYWxzbwo+ID4gYWNjaWRlbnRhbGx5IGZpeHVwIGV4
ZWN1dGlvbiB0aGF0IHdyaXRlcyBpbnRvIHN1YnNlcXVlbnQgYmF0Y2hlcywgc3VjaAo+ID4gYXMg
Z2VtX2V4ZWNfd2hpc3BlciBhbmQgZXZlbiByZWxvY2F0aW9ucyBwZXJmb3JtZWQgb24gdGhlIEdQ
VS4gV2Ugc2hvdWxkCj4gPiBiZSBjYXJlZnVsIG5vdCB0byBhbGxvdyB0aGlzIGRpc2FibGUgdG8g
YmVjb21lIGJha2VkIGludG8gdGhlIHVBQkkhCj4gPgo+ID4gVGVzdGNhc2U6IGlndC9pOTE1X3Nl
bGZ0ZXN0cy9saXZlX2d0dC9pZ3RfY3NfdGxiCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IENjOiBEYW5pZWxlIENlcmFvbG8gU3B1
cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgo+ID4gQ2M6IE1pa2EgS3VvcHBh
bGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgfCA3NSArKysrKysrKysrKysrKysrKysrKysrKysr
KysrLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA3NCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
Cj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiA+IGluZGV4IGE5OTE2NmEy
ZDJlYi4uNjBiN2IxNjNjM2QwIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbHJjLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xy
Yy5jCj4gPiBAQCAtMjgwNyw2ICsyODA3LDc5IEBAIHN0YXRpYyBpbnQgZ2VuMTFfZW1pdF9mbHVz
aF9yZW5kZXIoc3RydWN0IGk5MTVfcmVxdWVzdCAqcmVxdWVzdCwKPiA+ICAgICAgIHJldHVybiAw
Owo+ID4gIH0KPiA+ICAKPiA+ICtzdGF0aWMgdTMyIHByZXBhcnNlcl9kaXNhYmxlKGJvb2wgc3Rh
dGUpCj4gPiArewo+ID4gKyAgICAgcmV0dXJuIE1JX0FSQl9DSEVDSyB8IDEgPDwgOCB8IHN0YXRl
Owo+ID4gK30KPiAKPiBEZXNjcmlwdGl2ZSBlbm91Z2gsIHNvIG5vIG5lZWQgdG8gZGVmaW5lIHRo
ZSBtYXNrLgo+IAo+IEFja2VkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4
LmludGVsLmNvbT4KCkkgdG91Y2hlZCB1cCB0aGUgbm90ZSBvbiB0aGUgaW1wYWN0IG9mIGRpc2Fi
bGluZyB0aGUgb3B0aW1pc2F0aW9uIG9uIHRoZQp1QUJJLiBUaGlzIGNsZWFycyB1cCB0aGUgcmVt
YWluaW5nIGVycm9ycyBpbiBCQVQgb24gcmNzMCwgc28ganVzdCB0aGUKdmV4aW5nIG11bHRpLWVu
Z2luZSBwcm9ibGVtIHRvIHNvbHZlLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
