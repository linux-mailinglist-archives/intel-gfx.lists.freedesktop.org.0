Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB159AD6D4
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 12:27:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9079D89B3B;
	Mon,  9 Sep 2019 10:27:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2981B89B3B
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 10:27:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18424517-1500050 for multiple; Mon, 09 Sep 2019 11:27:38 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190907105046.19934-1-chris@chris-wilson.co.uk>
 <60f438c4-9e89-7ae4-1cc8-1d8f6cc6ff61@linux.intel.com>
In-Reply-To: <60f438c4-9e89-7ae4-1cc8-1d8f6cc6ff61@linux.intel.com>
Message-ID: <156802485619.21072.10967539363950566302@skylake-alporthouse-com>
Date: Mon, 09 Sep 2019 11:27:36 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Remove incorrect BUG_ON
 for schedule-out
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wOS0wOSAxMToyMzo1NikKPiAKPiBPbiAwNy8w
OS8yMDE5IDExOjUwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBBcyB3ZSBtYXkgdW53aW5kIGlu
Y29tcGxldGUgcmVxdWVzdHMgKGZvciBwcmVlbXB0aW9uKSBwcmlvciB0bwo+ID4gcHJvY2Vzc2lu
ZyB0aGUgQ1NCIGFuZCB0aGUgc2NoZWR1bGUtb3V0IGV2ZW50cywgd2UgbWF5IHVwZGF0ZSBycS0+
ZW5naW5lCj4gPiAocmVzZXR0aW5nIGl0IHRvIHBvaW50IGJhY2sgdG8gdGhlIHBhcmVudCB2aXJ0
dWFsIGVuZ2luZSkgcHJpb3IgdG8KPiA+IGNhbGxpbmcgZXhlY2xpc3RzX3NjaGVkdWxlX291dCgp
LCBpbnZhbGlkYXRpbmcgdGhlIGFzc2VydGlvbiB0aGF0IHRoZQo+ID4gcmVxdWVzdCBzdGlsbCBw
b2ludHMgdG8gdGhlIGluZmxpZ2h0IGVuZ2luZS4gKFRoZSBsaWtlbGlob29kIG9mIHRoaXMgaXMK
PiA+IGluY3JlYXNlZCBpZiB0aGUgQ1NCIGludGVycnVwdCBwcm9jZXNzaW5nIGlzIHB1c2hlZCB0
byB0aGUga3NvZnRpcnFkIGZvcgo+ID4gYmVpbmcgdG9vIHNsb3cgYW5kIGRpcmVjdCBzdWJtaXNz
aW9uIG92ZXJ0YWtlcyBpdC4pCj4gPiAKPiA+IFJlcG9ydGVkLWJ5OiBWaW5heSBCZWxnYXVta2Fy
IDx2aW5heS5iZWxnYXVta2FyQGludGVsLmNvbT4KPiA+IEZpeGVzOiBkZjQwMzA2OTAyOWQgKCJk
cm0vaTkxNS9leGVjbGlzdHM6IExpZnQgcHJvY2Vzc19jc2IoKSBvdXQgb2YgdGhlIGlycS1vZmYg
c3BpbmxvY2siKQo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Cj4gPiBDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5p
bnRlbC5jb20+Cj4gPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNv
bT4KPiA+IENjOiBWaW5heSBCZWxnYXVta2FyIDx2aW5heS5iZWxnYXVta2FyQGludGVsLmNvbT4K
PiA+IC0tLQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDEgLQo+
ID4gICAxIGZpbGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMuYwo+ID4gaW5kZXggM2FhZDM1YjU3MGQ0Li4xNmYyMjYzNDk1MjUgMTAw
NjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiA+IEBAIC02MzEsNyArNjMx
LDYgQEAgZXhlY2xpc3RzX3NjaGVkdWxlX291dChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKPiA+
ICAgICAgIHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmN1ciwgKm9sZDsKPiA+ICAgCj4gPiAgICAg
ICB0cmFjZV9pOTE1X3JlcXVlc3Rfb3V0KHJxKTsKPiA+IC0gICAgIEdFTV9CVUdfT04oaW50ZWxf
Y29udGV4dF9pbmZsaWdodChjZSkgIT0gcnEtPmVuZ2luZSk7Cj4gPiAgIAo+ID4gICAgICAgb2xk
ID0gUkVBRF9PTkNFKGNlLT5pbmZsaWdodCk7Cj4gPiAgICAgICBkbwo+ID4gCj4gCj4gU28gdW53
aW5kIGZyb20gZGlyZWN0IHN1Ym1pc3Npb24gcmVzZXRzIHJxLT5lbmdpbmUgYW5kIHJhY2VzIHdp
dGggCj4gcHJvY2Vzc19jc2IgZnJvbSB0aGUgdGFza2xldCB3aGljaCBub3RpY2VzIHJlcXVlc3Qg
aGFzIGFjdHVhbGx5IAo+IGNvbXBsZXRlZD8KCll1cC4gVGhhdCdzIG5pY2UgYW5kIHN1Y2NpbmN0
IGNvbXBhcmVkIHRvIG15IHdhZmZsZS4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
