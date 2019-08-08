Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D6F8628A
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 15:03:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9BBA6E82B;
	Thu,  8 Aug 2019 13:03:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19CCE6E82B
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 13:03:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17930658-1500050 for multiple; Thu, 08 Aug 2019 14:03:11 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190808110612.23539-1-chris@chris-wilson.co.uk>
 <20190808110612.23539-2-chris@chris-wilson.co.uk>
 <87o90zhkxu.fsf@gaia.fi.intel.com>
In-Reply-To: <87o90zhkxu.fsf@gaia.fi.intel.com>
Message-ID: <156526938929.21710.12609476138870597873@skylake-alporthouse-com>
Date: Thu, 08 Aug 2019 14:03:09 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Fix up the inverse mapping
 for default ctx->engines[]
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTA4IDEzOjU5OjQxKQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBUaGUgb3JkZXIgaW4g
d2hpY2ggd2Ugc3RvcmUgdGhlIGVuZ2luZXMgaW5zaWRlIGRlZmF1bHRfZW5naW5lcygpIGZvciB0
aGUKPiA+IGxlZ2FjeSBjdHgtPmVuZ2luZXNbXSBoYXMgdG8gbWF0Y2ggdGhlIGxlZ2FjeSBJOTE1
X0VYRUNfUklORyBzZWxlY3Rvcgo+ID4gbWFwcGluZyBpbiBleGVjYnVmOjp1c2VyX21hcC4gSWYg
d2UgcHJlc2VudCBWQ1MyIGFzIGJlaW5nIHRoZSBzZWNvbmQKPiA+IGluc3RhbmNlIG9mIHRoZSB2
aWRlbyBlbmdpbmUsIGxlZ2FjeSB1c2Vyc3BhY2UgY2FsbHMgdGhhdCBJOTE1X0VYRUNfQlNEMgo+
ID4gYW5kIHNvIHdlIG5lZWQgdG8gaW5zZXJ0IGl0IGludG8gdGhlIHNlY29uZCB2aWRlbyBzbG90
Lgo+ID4KPiA+IHYyOiBSZWNvcmQgdGhlIGxlZ2FjeSBtYXBwaW5nIChob3BlZnVsbHkgd2UgY2Fu
IHJlbW92ZSB0aGlzIG5lZWQgaW4gdGhlCj4gPiBmdXR1cmUpCj4gPgo+ID4gQnVnemlsbGE6IGh0
dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTMyOAo+ID4gRml4
ZXM6IDJlZGRhODBkYjNkMCAoImRybS9pOTE1OiBSZW5hbWUgZW5naW5lcyB0byBtYXRjaCB0aGVp
ciB1c2VyIGludGVyZmFjZSIpCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KPiA+IENjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxh
QGxpbnV4LmludGVsLmNvbT4KPiA+IFJldmlld2VkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1
b3BwYWxhQGxpbnV4LmludGVsLmNvbT4gI3YxCj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jICAgfCAgNyArLS0KPiA+ICAuLi4vZHJtL2k5MTUv
Z2VtL3NlbGZ0ZXN0cy9pZ3RfZ2VtX3V0aWxzLmMgICAgfCAgMiArLQo+ID4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oICB8ICAzICsrCj4gPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3VzZXIuYyAgIHwgNTIgKysrKysrKysrKysrKysr
KysrKwo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVzLmggICAgICB8
ICAxICsKPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9scmMuYyAgICAgICAg
fCAgMiArLQo+ID4gIC4uLi9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3Rfd29ya2Fyb3VuZHMuYyAg
ICB8ICAyICstCj4gPiAgNyBmaWxlcyBjaGFuZ2VkLCA2MyBpbnNlcnRpb25zKCspLCA2IGRlbGV0
aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRl
eHQuYwo+ID4gaW5kZXggMWM1YmMyMWE4MGZmLi5iNDA3YmFhZjAwMTQgMTAwNjQ0Cj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCj4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCj4gPiBAQCAtMTU5LDcg
KzE1OSw3IEBAIGxvb2t1cF91c2VyX2VuZ2luZShzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4
LAo+ID4gICAgICAgICAgICAgICBpZiAoIWVuZ2luZSkKPiA+ICAgICAgICAgICAgICAgICAgICAg
ICByZXR1cm4gRVJSX1BUUigtRUlOVkFMKTsKPiA+ICAKPiA+IC0gICAgICAgICAgICAgaWR4ID0g
ZW5naW5lLT5pZDsKPiA+ICsgICAgICAgICAgICAgaWR4ID0gZW5naW5lLT5sZWdhY3lfaWR4Owo+
ID4gICAgICAgfSBlbHNlIHsKPiA+ICAgICAgICAgICAgICAgaWR4ID0gY2ktPmVuZ2luZV9pbnN0
YW5jZTsKPiA+ICAgICAgIH0KPiA+IEBAIC0yNzksNiArMjc5LDcgQEAgc3RhdGljIHZvaWQgZnJl
ZV9lbmdpbmVzX3JjdShzdHJ1Y3QgcmN1X2hlYWQgKnJjdSkKPiA+ICAKPiA+ICBzdGF0aWMgc3Ry
dWN0IGk5MTVfZ2VtX2VuZ2luZXMgKmRlZmF1bHRfZW5naW5lcyhzdHJ1Y3QgaTkxNV9nZW1fY29u
dGV4dCAqY3R4KQo+IAo+IGNsb25lX2xlZ2FjeV9lbmdpbmVzCgpJdCdzIG5vdCBjbG9uaW5nIDop
Cgo+IGNyZWF0ZV9ndF9lbmdpbmVzCgpTdHJpY3RseSBpdCdzIGNyZWF0aW5nIHRoZSBpbnRlbF9j
b250ZXh0LCBidXQgSSBmZWx0IHRoYXQgY3R4LT5lbmdpbmVzW10Kd2FzIG1vcmUgZGVzY3JpcHRp
dmUgdGhhbiBjdHgtPmNvbnRleHRzW10uIFRpbWUgd2lsbCB0ZWxsLgotQ2hyaXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
