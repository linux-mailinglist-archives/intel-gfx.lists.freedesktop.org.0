Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BB727C70
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2019 14:09:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D40A89BD2;
	Thu, 23 May 2019 12:09:01 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13A1689BD2;
 Thu, 23 May 2019 12:08:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16654352-1500050 for multiple; Thu, 23 May 2019 13:08:50 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87tvdl2xbd.fsf@gaia.fi.intel.com>
References: <20190522163141.29252-1-tvrtko.ursulin@linux.intel.com>
 <20190523063701.4549-1-tvrtko.ursulin@linux.intel.com>
 <82b08c9f-cfd1-b478-c6aa-719bf0d7cccf@linux.intel.com>
 <155859468552.28319.675115669918159870@skylake-alporthouse-com>
 <87tvdl2xbd.fsf@gaia.fi.intel.com>
Message-ID: <155861332953.28319.8635772028395392855@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 23 May 2019 13:08:49 +0100
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA1LTIzIDEzOjAyOjMwKQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA1LTIzIDA3OjQzOjEyKQo+ID4+IAo+ID4+IE9uIDIzLzA1LzIwMTkg
MDc6MzcsIFR2cnRrbyBVcnN1bGluIHdyb3RlOgo+ID4+ID4gRnJvbTogVHZydGtvIFVyc3VsaW4g
PHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiA+PiA+IAo+ID4+ID4gRW5naW5lIGVudW1lcmF0
ZWQgdGVzdCBuYW1lcyBoYXZlIGNoYW5nZWQgc28gZmFzdC1mZWVkYmFjay50ZXN0bGlzdCBuZWVk
cwo+ID4+ID4gdG8gYmUgdXBkYXRlZC4gSG93ZXZlciBsaXN0aW5nIGFsbCBlbmdpbmVzIHRoZXJl
IHdvbid0IHNjYWxlLiBTbyBpbnN0ZWFkCj4gPj4gPiBhZGQgbmV3IHRlc3RzIGNhc2VzIHdoaWNo
IGl0ZXJhdGUgYWxsIGVuZ2luZXMgaW50ZXJuYWxseS4KPiA+PiA+IAo+ID4+ID4gdjI6Cj4gPj4g
PiAgICogRml4IGJhc2ljLWFsbCB0ZXN0IG5hbWUuCj4gPj4gPiAgICogRml4IHBhcmFtcyB0byBi
YXNpYyAoYm9vbCBmYWxzZSB0byB6ZXJvKS4KPiA+PiA+ICAgKiBVc2UgSTkxNV9FWEVDX0RFRkFV
TFQgaW4gaGFzX2V4dGVuZGVkX2J1c3lfaW9jdGwgdG8gd29ya2Fyb3VuZCBzdGF0ZWZ1bAo+ID4+
ID4gICAgIGNvbnRleHRzIGZvciBub3cuCj4gPj4gPiAgICogSGF2ZSBvbmx5IGJhc2ljLWFsbCBp
biBCQVQuIChDaHJpcykKPiA+PiA+IAo+ID4+ID4gU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3Vs
aW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiA+PiA+IFJldmlld2VkLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4gIyB2MQo+ID4+ID4gUmV2aWV3ZWQtYnk6
IEFuZGkgU2h5dGkgPGFuZGkuc2h5dGlAaW50ZWwuY29tPiAjIHYxCj4gPj4gPiAtLS0KPiA+PiA+
ICAgdGVzdHMvaTkxNS9nZW1fYnVzeS5jICAgICAgICAgICAgICAgICB8IDE5ICsrKysrKysrKysr
LS0tLQo+ID4+ID4gICB0ZXN0cy9pOTE1L2dlbV9leGVjX2Jhc2ljLmMgICAgICAgICAgIHwgMzMg
KysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPj4gPiAgIHRlc3RzL2ludGVsLWNpL2Zhc3Qt
ZmVlZGJhY2sudGVzdGxpc3QgfCAzMSArKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPj4gPiAg
IDMgZmlsZXMgY2hhbmdlZCwgNTAgaW5zZXJ0aW9ucygrKSwgMzMgZGVsZXRpb25zKC0pCj4gPj4g
PiAKPiA+PiA+IGRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV9idXN5LmMgYi90ZXN0cy9pOTE1
L2dlbV9idXN5LmMKPiA+PiA+IGluZGV4IDc4MWEzYmZhYjFkMS4uZjNlYmIzN2EzM2I0IDEwMDY0
NAo+ID4+ID4gLS0tIGEvdGVzdHMvaTkxNS9nZW1fYnVzeS5jCj4gPj4gPiArKysgYi90ZXN0cy9p
OTE1L2dlbV9idXN5LmMKPiA+PiA+IEBAIC00MTcsNyArNDE3LDcgQEAgc3RhdGljIGJvb2wgaGFz
X3NlbWFwaG9yZXMoaW50IGZkKQo+ID4+ID4gICAKPiA+PiA+ICAgc3RhdGljIGJvb2wgaGFzX2V4
dGVuZGVkX2J1c3lfaW9jdGwoaW50IGZkKQo+ID4+ID4gICB7Cj4gPj4gPiAtICAgICBpZ3Rfc3Bp
bl90ICpzcGluID0gaWd0X3NwaW5fbmV3KGZkLCAuZW5naW5lID0gSTkxNV9FWEVDX1JFTkRFUik7
Cj4gPj4gPiArICAgICBpZ3Rfc3Bpbl90ICpzcGluID0gaWd0X3NwaW5fbmV3KGZkLCAuZW5naW5l
ID0gSTkxNV9FWEVDX0RFRkFVTFQpOwo+ID4+IAo+ID4+IChUaGlzIGZhaWxzIG9uIHBsYXRmb3Jt
cyB3aXRoIG9ubHkgcmNzMCAobm8gb3RoZXIgZW5naW5lcykgZHVlIGNvbnRleHQgCj4gPj4gaGFz
IGEgbWFwIG5vdywgYW5kIEk5MTVfRVhFQ19SRU5ERVIgPT0gMSA9PSAtRUlOVkFMLikKPiA+Cj4g
PiBJbiB3aGljaCBjYXNlLCBpdCBwcm9iYWJseSBzaG91bGQgYmUgYSBwbGFpbiAwIGFzIGl0IG5v
IGxvbmdlciBoYXMgdGhlCj4gPiBvbGQgRVhFQ19SSU5HIHNlbWFudGljcyBidXQgaXMganVzdCBh
biBpbmRleCwgaS5lLiBpZ3Rfc3Bpbl9uZXcoZmQpOwo+ID4KPiA+PiBXZSBuZWVkIHRvIGNvbWUg
dXAgd2l0aCBhIHJvYnVzdCBhbmQgZWFzeSB0byByZW1lbWJlciBzb2x1dGlvbiBmb3IgCj4gPj4g
ZGVhbGluZyB3aXRoIHRoZSBmYWN0IGNvbnRleHRzIGFyZSBzdGF0ZWZ1bCBub3cgYW5kIAo+ID4+
IF9fZm9yX2VhY2hfcGh5c2ljYWxfZW5naW5lIGl0ZXJhdG9yIGNvbmZpZ3VyZXMgdGhlIGRlZmF1
bHQgb25lLgo+ID4+IAo+ID4+IENvdWxkIGVuZCBnYW1lIGZvciB0ZXN0IGNvbnZlcnNpb24gYmUg
dG8gc3RvcCBwYXNzaW5nIGluIGViLmZsYWdzIHRvIAo+ID4+IGlndF9zcGluX25ldyBhbmQgZG8g
Y2xhc3M6aW5zdGFuY2UgaW5zdGVhZD8gVGhhdCB3b3VsZCBlbmFibGUgZHVtbXlsb2FkIAo+ID4+
IHRvIHVuYW1iaWd1b3VzbHkga25vdyB3aGF0IHRvIHVzZSwgZGVwZW5kaW5nIG9uIGdldF9lbmdp
bmVzIHF1ZXJ5Lgo+ID4KPiA+IFNwZWFrIHRvIE1pa2EsIHdlIGFidXNlIGlndF9zcGluX3QgbXVj
aCBtb3JlIGJ5IHJlc3VibWl0dGluZyB0aGUgc2FtZQo+ID4gZHVtbXlsb2FkIHRvIG11bHRpcGxl
IGVuZ2luZXMgYW5kIGNvbnRleHRzLgo+IAo+IEkgaGF2ZSB3YW5kZXJlZCB0aGVyZSB5ZXMuIFRo
ZSByZWFzb24gZm9yIHRoaXMgYWJ1c2UgaXMgc3RpbGwgdW5jbGVhci4KPiBXZSBjb3VsZCBkbyBh
IGNsZWFyZXIgaW50ZXJmYWNlIGZvciBjcmVhdGluZyBzcGlubmVycyBidXQgaXMgdGhlCj4gcmV1
c2FnZSBkdWUgdG8gbGF0ZW5jeSBjb25jZXJucz8KCk5vLCBqdXN0IGJlY2F1c2Ugd2UgYXJlIGxh
enkgYW5kIGNyZWF0aW5nIGEgY2xlYW4sIGNsZWFyIGludGVyZmFjZSB0YWtlcwp0aW1lIGFuZCBs
b3RzIG9mIGVmZm9ydC4gU28gd2UgZXhjdXNlIG91cnNlbHZlcyB0byBnZXQgc29tZXRoaW5nIHRo
YXQKZG9lcyB0aGUgam9iIGFuZCBvbmNlIHdlIGtub3cgd2hhdCB3ZSB3YW50LCB3ZSB0ZWxsIHRo
ZSBuZXh0IGZvb2wgdG8KY29tZSBhbG9uZyB0byBmaXggaXQgbmVhdGx5LiA6KQotQ2hyaXMKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
