Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E291EF70FD
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 10:43:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57A256E87B;
	Mon, 11 Nov 2019 09:43:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CCDB6E87B
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 09:43:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19156572-1500050 for multiple; Mon, 11 Nov 2019 09:43:14 +0000
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <0285daa4-eeb5-b1e1-8b4d-d7220024d429@linux.intel.com>
References: <20191109105356.5273-1-chris@chris-wilson.co.uk>
 <0285daa4-eeb5-b1e1-8b4d-d7220024d429@linux.intel.com>
Message-ID: <157346538997.28106.15260731624402142184@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 11 Nov 2019 09:43:10 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: "Frequency" is reported as
 accumulated cycles
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0xMSAwOToxMTowMykKPiAKPiBPbiAwOS8x
MS8yMDE5IDEwOjUzLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBXZSByZXBvcnQgImZyZXF1ZW5j
aWVzIiAoYWN0dWFsLWZyZXF1ZW5jeSwgcmVxdWVzdGVkLWZyZXF1ZW5jeSkgYXMgdGhlCj4gPiBu
dW1iZXIgb2YgYWNjdW11bGF0ZWQgY3ljbGVzIHNvIHRoYXQgdGhlIGF2ZXJhZ2UgZnJlcXVlbmN5
IG92ZXIgdGhhdAo+ID4gcGVyaW9kIG1heSBiZSBkZXRlcm1pbmVkIGJ5IHRoZSB1c2VyLiBUaGlz
IG1lYW5zIHRoZSB1bml0cyB3ZSByZXBvcnQgdG8KPiA+IHRoZSB1c2VyIGFyZSBNY3ljbGVzIChv
ciBqdXN0IE0pLCBub3QgTUh6Lgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiA+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtv
LnVyc3VsaW5AaW50ZWwuY29tPgo+ID4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPiA+IC0t
LQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jIHwgNCArKy0tCj4gPiAgIDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wbXUuYwo+ID4gaW5kZXggNDgwNDc3NTY0NGJmLi45YjAyYmUwYWQ0ZTYg
MTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jCj4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jCj4gPiBAQCAtOTA4LDggKzkwOCw4IEBA
IGNyZWF0ZV9ldmVudF9hdHRyaWJ1dGVzKHN0cnVjdCBpOTE1X3BtdSAqcG11KQo+ID4gICAgICAg
ICAgICAgICBjb25zdCBjaGFyICpuYW1lOwo+ID4gICAgICAgICAgICAgICBjb25zdCBjaGFyICp1
bml0Owo+ID4gICAgICAgfSBldmVudHNbXSA9IHsKPiA+IC0gICAgICAgICAgICAgX19ldmVudChJ
OTE1X1BNVV9BQ1RVQUxfRlJFUVVFTkNZLCAiYWN0dWFsLWZyZXF1ZW5jeSIsICJNSHoiKSwKPiA+
IC0gICAgICAgICAgICAgX19ldmVudChJOTE1X1BNVV9SRVFVRVNURURfRlJFUVVFTkNZLCAicmVx
dWVzdGVkLWZyZXF1ZW5jeSIsICJNSHoiKSwKPiA+ICsgICAgICAgICAgICAgX19ldmVudChJOTE1
X1BNVV9BQ1RVQUxfRlJFUVVFTkNZLCAiYWN0dWFsLWZyZXF1ZW5jeSIsICJNIiksCj4gPiArICAg
ICAgICAgICAgIF9fZXZlbnQoSTkxNV9QTVVfUkVRVUVTVEVEX0ZSRVFVRU5DWSwgInJlcXVlc3Rl
ZC1mcmVxdWVuY3kiLCAiTSIpLAo+ID4gICAgICAgICAgICAgICBfX2V2ZW50KEk5MTVfUE1VX0lO
VEVSUlVQVFMsICJpbnRlcnJ1cHRzIiwgTlVMTCksCj4gPiAgICAgICAgICAgICAgIF9fZXZlbnQo
STkxNV9QTVVfUkM2X1JFU0lERU5DWSwgInJjNi1yZXNpZGVuY3kiLCAibnMiKSwKPiA+ICAgICAg
IH07Cj4gPiAKPiAKPiBNSHogd2FzIHdyb25nIHllcy4gQnV0IGlzICdNJyBlc3RhYmxpc2hlZCBv
ciB3b3VsZCAnTWN5Y2xlcycgYmUgYmV0dGVyPwoKVGhlIG9ubHkgcGxhY2Ugd2hlcmUgImN5Y2xl
cyIgcG9wcyB1cCBpcyBpbiB0aGUgcGVyZiB1aSwgdGhlIG90aGVyCmV2ZW50cyB0aGF0IEkgdGhv
dWdodCB3ZXJlIHNpbWlsYXIgaW4gbmF0dXJlIGFyZSB1bml0bGVzcy4gQXMgdGhlCidjeWNsZScg
aXRzZWxmIGlzIG5vdCBhbiBTSSBiYXNlIHVuaXQgYXMgaXQgaXMgYSBtZXJlIGNvdW50LgoKfm9+
IEkgaGF2ZSBubyBpZGVhIH5vfgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
