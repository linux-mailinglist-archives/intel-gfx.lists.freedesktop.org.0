Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 925189E74F
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2019 14:04:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D48A89349;
	Tue, 27 Aug 2019 12:04:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B53BA89349
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Aug 2019 12:04:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18277074-1500050 for multiple; Tue, 27 Aug 2019 13:03:47 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190827115413.31225-1-chris@chris-wilson.co.uk>
References: <20190827115413.31225-1-chris@chris-wilson.co.uk>
Message-ID: <156690742523.15406.5516780195775937383@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 27 Aug 2019 13:03:45 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: stall on render flush
 before writing seqno
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMjcgMTI6NTQ6MTMpCj4gUXVpdGUgcmFyZWx5
IHdlIHNlZSB0aGF0IHRoZSBDUyBjb21wbGV0aW9uIGV2ZW50IGZpcmVzIGJlZm9yZSB0aGUKPiBi
cmVhZGNydW1iIGlzIGNvaGVyZW50LiBUcnkgcmVhcnJhbmdpbmcgdGhlIGJyZWFkY3J1bWIgd3Jp
dGUgc2VxdWVuY2UKPiBzdWNoIHRoYXQgdGhlIENTX1NUQUxMIGlzIG9uIHRoZSBwb3N0LXN5bmMg
d3JpdGUgcGlwZWNvbnRyb2wuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFA
bGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9s
cmMuYyB8IDE3ICsrKysrKysrLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlv
bnMoKyksIDkgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMK
PiBpbmRleCA4MGEzZjFkYmI0NTYuLjY2OWU4YmQ5ZjgzMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2xyYy5jCj4gQEAgLTI5NjEsMTggKzI5NjEsMTcgQEAgc3RhdGljIHUzMiAqZ2Vu
OF9lbWl0X2ZpbmlfYnJlYWRjcnVtYihzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpyZXF1ZXN0LCB1MzIg
KmNzKQo+ICAKPiAgc3RhdGljIHUzMiAqZ2VuOF9lbWl0X2ZpbmlfYnJlYWRjcnVtYl9yY3Moc3Ry
dWN0IGk5MTVfcmVxdWVzdCAqcmVxdWVzdCwgdTMyICpjcykKPiAgewo+IC0gICAgICAgY3MgPSBn
ZW44X2VtaXRfZ2d0dF93cml0ZV9yY3MoY3MsCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICByZXF1ZXN0LT5mZW5jZS5zZXFubywKPiAtICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHJlcXVlc3QtPnRpbWVsaW5lLT5od3NwX29mZnNldCwKPiAtICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFBJUEVfQ09OVFJPTF9SRU5ERVJfVEFSR0VU
X0NBQ0hFX0ZMVVNIIHwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFBJ
UEVfQ09OVFJPTF9ERVBUSF9DQUNIRV9GTFVTSCB8Cj4gLSAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBQSVBFX0NPTlRST0xfRENfRkxVU0hfRU5BQkxFKTsKPiAtCj4gICAgICAg
ICAvKiBYWFggZmx1c2grd3JpdGUrQ1NfU1RBTEwgYWxsIGluIG9uZSB1cHNldHMgZ2VtX2NvbmN1
cnJlbnRfYmx0OmtibCAqLwo+ICAgICAgICAgY3MgPSBnZW44X2VtaXRfcGlwZV9jb250cm9sKGNz
LAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFBJUEVfQ09OVFJPTF9GTFVT
SF9FTkFCTEUgfAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFBJUEVfQ09O
VFJPTF9DU19TVEFMTCwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBQSVBF
X0NPTlRST0xfUkVOREVSX1RBUkdFVF9DQUNIRV9GTFVTSCB8Cj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgUElQRV9DT05UUk9MX0RFUFRIX0NBQ0hFX0ZMVVNIIHwKPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBQSVBFX0NPTlRST0xfRENfRkxVU0hfRU5B
QkxFLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDApOwo+ICsgICAgICAg
Y3MgPSBnZW44X2VtaXRfZ2d0dF93cml0ZV9yY3MoY3MsCj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICByZXF1ZXN0LT5mZW5jZS5zZXFubywKPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHJlcXVlc3QtPnRpbWVsaW5lLT5od3NwX29mZnNldCwKPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFBJUEVfQ09OVFJPTF9GTFVTSF9F
TkFCTEUgfAoKT3IgcGVyaGFwcyB3ZSBuZWVkIFBJUEVfQ09OVFJPTF9EQ19GTFVTSF9FTkFCTEUg
aGVyZS4KCkkgdGhpbmsgdGhhdCBtaWdodCBtYWtlIG1vcmUgc2Vuc2UgKHJlcGxhY2UgRENfRkxV
U0ggd2l0aCB3aGF0ZXZlciBtaWdodApmbHVzaCB0aGUgcG9zdC1zeW5jIHdyaXRlKS4KLUNocmlz
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
