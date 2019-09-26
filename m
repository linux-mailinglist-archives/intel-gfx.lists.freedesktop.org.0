Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F54BF590
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 17:13:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99EEA6ED62;
	Thu, 26 Sep 2019 15:13:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from Galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C1696ED62
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 15:13:14 +0000 (UTC)
Received: from bigeasy by Galois.linutronix.de with local (Exim 4.80)
 (envelope-from <bigeasy@linutronix.de>)
 id 1iDVS9-0001ty-0a; Thu, 26 Sep 2019 17:13:09 +0200
Date: Thu, 26 Sep 2019 17:13:08 +0200
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190926151308.cl4iokerchlarfya@linutronix.de>
References: <20190926142538.9386-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190926142538.9386-1-chris@chris-wilson.co.uk>
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Delegate our irq handler to a
 thread
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
Cc: Clark Williams <williams@redhat.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0wOS0yNiAxNToyNTozOCBbKzAxMDBdLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gTW92
aW5nIG91ciBwcmltYXJ5IGlycSBoYW5kbGVyIHRvIGEgUlQgdGhyZWFkIGluY3VycyBhbiBleHRy
YSAxdXMgZGVsYXkKPiBpbiBwcm9jZXNzIGludGVycnVwdHMuIFRoaXMgaXMgbW9zdCBub3RpY2Ug
aW4gd2FraW5nIHVwIGNsaWVudCB0aHJlYWRzLAo+IHdoZXJlIGl0IGFkZHMgYWJvdXQgMjAlIG9m
IGV4dHJhIGxhdGVuY3kuIEl0IGFsc28gaW1wb3NlcyBhIGRlbGF5IGluCj4gZmVlZGluZyB0aGUg
R1BVLCBhbiBleHRyYSAxdXMgYmVmb3JlIHNpZ25hbGluZyBzZWNvbmRhcnkgZW5naW5lcyBhbmQK
PiBleHRyYSBsYXRlbmN5IGluIHJlc3VibWl0dGluZyB3b3JrIHRvIGtlZXAgdGhlIEdQVSBidXN5
LiBUaGUgbGF0dGVyIGNhc2UKPiBpcyBpbnNpZ25pZmljYW50IGFzIHRoZSBsYXRlbmN5IGhpZGRl
biBieSB0aGUgYWN0aXZlIEdQVSwgYW5kCj4gcHJlZW1wdC10by1idXN5IGVuc3VyZXMgdGhhdCBu
byBleHRyYSBsYXRlbmN5IGlzIGluY3VycmVkIGZvcgo+IHByZWVtcHRpb24uCj4gCj4gVGhlIGJl
bmVmaXQgaXMgdGhhdCB3ZSByZWR1Y2VkIHRoZSBpbXBhY3Qgb24gdGhlIHJlc3Qgb2YgdGhlIHN5
c3RlbSwgdGhlCj4gY3ljbGV0ZXN0IHNob3dzIGEgcmVkdWN0aW9uIGZyb20gNXVzIG1lYW4gbGF0
ZW5jeSB0byAydXMsIHdpdGggdGhlCj4gbWF4aW11bSBvYnNlcnZlZCBsYXRlbmN5IChpbiBhIDIg
bWludXRlIHdpbmRvdykgcmVkdWNlZCBieSBvdmVyIDE2MHVzLgoKY3ljbGV0ZXN0IGlzIHRoZSBu
YW1lIG9mIHRoZSB0b29sIEkgZG9uJ3Qga25vdyBhYm91dCwgcmlnaHQ/IEl0IGlzIG5vdApjeWNs
aWN0ZXN0IHdpdGggYSB0eXBvPwpJIGRvbid0IGtub3cgaG93IG1hbnkgaW50ZXJydXB0cyB5b3Ug
aGF2ZSBpbiBhIHN5c3RlbSBidXQgaWYgdGhpcyBpcyB0aGUKb25seSBvbmUgZm9yIHRoZSBjYXJk
IHRoZW4geW91IGNvdWxkIHJlbW92ZSBfaXJxc2F2ZSgpIGZyb20gbG9ja2luZyBpZgp0aGUgbG9j
ayBpcyBuZXZlciBvYnNlcnZlZCBpbiBJUlEgY29udGV4dCAoYnV0IHRoZW4geW91IGhhdmUgaXJx
d29yawp3aGljaCByZXF1aXJlcyB0aGlzIGlycXNhdmUpLgoKPiBTaWduZWQtb2ZmLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogSm9vbmFzIExhaHRpbmVu
IDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IENjOiBDbGFyayBXaWxsaWFtcyA8d2lsbGlhbXNA
cmVkaGF0LmNvbT4KPiBDYzogU2ViYXN0aWFuIEFuZHJ6ZWogU2lld2lvciA8YmlnZWFzeUBsaW51
dHJvbml4LmRlPgo+IC0tLQo+IE5vdGUgdGhpcyBzaG91bGQgbmVlZCB0aGUgZml4ZXMgaW4KPiAy
MDE5MDkyNjEwNTY0NC4xNjcwMy0yLWJpZ2Vhc3lAbGludXRyb25peC5kZSwgYnkgaXRzZWxmIHRo
aXMgc2hvdWxkIGJlIGEKPiB0ZXN0IHZlaGljbGUgdG8gZXhlcmNpc2UgdGhhdCBwYXRjaCEKPiAt
LS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyB8IDQgKystLQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9pcnEuYwo+IGluZGV4IGJjODNmMDk0MDY1YS4uZjNkZjc3MTRhM2YzIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2lycS5jCj4gQEAgLTQ0OTEsOCArNDQ5MSw4IEBAIGludCBpbnRlbF9pcnFf
aW5zdGFsbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gIAo+ICAJaW50ZWxf
aXJxX3Jlc2V0KGRldl9wcml2KTsKPiAgCj4gLQlyZXQgPSByZXF1ZXN0X2lycShpcnEsIGludGVs
X2lycV9oYW5kbGVyKGRldl9wcml2KSwKPiAtCQkJICBJUlFGX1NIQVJFRCwgRFJJVkVSX05BTUUs
IGRldl9wcml2KTsKPiArCXJldCA9IHJlcXVlc3RfdGhyZWFkZWRfaXJxKGlycSwgTlVMTCwgaW50
ZWxfaXJxX2hhbmRsZXIoZGV2X3ByaXYpLAo+ICsJCQkJICAgSVJRRl9TSEFSRUQsIERSSVZFUl9O
QU1FLCBkZXZfcHJpdik7CgpJIHRoaW5rIHlvdSBzaG91bGQgYWRkIElSUUZfT05FU0hPVC4gT3Ro
ZXJ3aXNlIGEgTEVWRUwgaW50ZXJydXB0IHdpbGwKa2VlcCBpbnRlcnJ1cHRpbmcgdGhlIENQVSBh
bmQgeW91IG5ldmVyIG1hbmFnZSB0byBzd2l0Y2ggdG8gdGhlIHRocmVhZC4KCj4gIAlpZiAocmV0
IDwgMCkgewo+ICAJCWRldl9wcml2LT5kcm0uaXJxX2VuYWJsZWQgPSBmYWxzZTsKPiAgCQlyZXR1
cm4gcmV0OwoKU2ViYXN0aWFuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
