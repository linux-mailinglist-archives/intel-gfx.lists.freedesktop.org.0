Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 344C411A88
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 15:54:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB4EB89449;
	Thu,  2 May 2019 13:53:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 839D689449
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 13:53:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16429697-1500050 for multiple; Thu, 02 May 2019 14:53:54 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190501114541.10077-1-chris@chris-wilson.co.uk>
 <20190501114541.10077-3-chris@chris-wilson.co.uk>
 <2aec6c87-7142-4756-b4ed-db9ff6e057d7@linux.intel.com>
In-Reply-To: <2aec6c87-7142-4756-b4ed-db9ff6e057d7@linux.intel.com>
Message-ID: <155680523278.9023.7792263043329338669@skylake-alporthouse-com>
Date: Thu, 02 May 2019 14:53:52 +0100
Subject: Re: [Intel-gfx] [PATCH 03/14] drm/i915/execlists: Flush the tasklet
 on parking
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNS0wMiAxNDo0ODoxOCkKPiAKPiBPbiAwMS8w
NS8yMDE5IDEyOjQ1LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBUaWR5IHVwIHRoZSBjbGVhbnVw
IHNlcXVlbmNlIGJ5IGFsd2F5cyBlbnN1cmUgdGhhdCB0aGUgdGFza2xldCBpcwo+ID4gZmx1c2hl
ZCBvbiBwYXJraW5nIChiZWZvcmUgd2UgY2xlYW51cCkuIFRoZSBwYXJraW5nIHByb3ZpZGVzIGEK
PiA+IGNvbnZlbmllbnQgcG9pbnQgdG8gZW5zdXJlIHRoYXQgdGhlIGJhY2tlbmQgaXMgdHJ1bHkg
aWRsZS4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Cj4gPiAtLS0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
bHJjLmMgICAgICAgICB8IDcgKysrKysrLQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9ndWNfc3VibWlzc2lvbi5jIHwgMSArCj4gPiAgIDIgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xy
Yy5jCj4gPiBpbmRleCA4NTFlNjJkZGNiODcuLjdiZTU0Yjg2OGQ4ZSAxMDA2NDQKPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+ID4gQEAgLTIzMzEsNiArMjMzMSwxMSBAQCBzdGF0
aWMgaW50IGdlbjhfaW5pdF9yY3NfY29udGV4dChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKPiA+
ICAgICAgIHJldHVybiBpOTE1X2dlbV9yZW5kZXJfc3RhdGVfZW1pdChycSk7Cj4gPiAgIH0KPiA+
ICAgCj4gPiArc3RhdGljIHZvaWQgZXhlY2xpc3RzX3Bhcmsoc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqZW5naW5lKQo+ID4gK3sKPiA+ICsgICAgIHRhc2tsZXRfa2lsbCgmZW5naW5lLT5leGVjbGlz
dHMudGFza2xldCk7Cj4gCj4gSXNuJ3QgaXQgYWN0dWFsbHkgYSBwcm9ibGVtIGlmIHRhc2tsZXQg
aXMgc2NoZWR1bGVkIGFuZCB1bnN0YXJ0ZWQsIG9yIAo+IGV2ZW4gaW4gcHJvZ3Jlc3MgYXQgdGhl
IHBvaW50IG9mIGVuZ2luZSBnZXR0aW5nIHBhcmtlZD8KClRoYXQgd291bGQgYmUgYSBicm9rZW4g
ZHJpdmVyLiA6fAoKV2UgbXVzdCBiZSBxdWl0ZSBzdXJlIHRoYXQgZW5naW5lIGlzbid0IGdvaW5n
IHRvIHNlbmQgYW4gaW50ZXJydXB0IGFzIHdlIAphcmUganVzdCBhYm91dCB0byBkcm9wIHRoZSB3
YWtlcmVmIHdlIG5lZWQgdG8gc2VydmljZSB0aGF0IGludGVycnVwdC4KCnRhc2tsZXRfa2lsbCgp
CkdFTV9CVUdfT04oZW5naW5lLT5leGVjbGlzdHMuYWN0aXZlKTsKLUNocmlzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
