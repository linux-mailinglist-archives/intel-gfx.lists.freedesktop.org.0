Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7F557FF2
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 12:10:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4002E6E0C0;
	Thu, 27 Jun 2019 10:10:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9F466E0C0
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 10:10:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17041629-1500050 for multiple; Thu, 27 Jun 2019 11:10:08 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190627080045.8814-1-lionel.g.landwerlin@intel.com>
 <20190627080045.8814-5-lionel.g.landwerlin@intel.com>
 <156162407789.20851.7175557604200284018@skylake-alporthouse-com>
 <4cfb5122-fcac-2c03-12c3-5a384e2b14f4@intel.com>
In-Reply-To: <4cfb5122-fcac-2c03-12c3-5a384e2b14f4@intel.com>
Message-ID: <156163020502.20851.10446281158625526596@skylake-alporthouse-com>
Date: Thu, 27 Jun 2019 11:10:05 +0100
Subject: Re: [Intel-gfx] [PATCH v5 04/10] drm/i915/perf: implement active
 wait for noa configurations
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNi0yNyAwOTo1MjozNCkKPiBPbiAyNy8w
Ni8yMDE5IDExOjI3LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBUaGlzIGlzIG9wZXJhdGluZyBp
bnNpZGUgdGhlIHVzZXIgY29udGV4dCByaWdodD8gKElmIEkgcmVtZW1iZXIKPiA+IGNvcnJlY3Rs
eSwgeW91IHBsdWcgaW50byB0aGUgdXNlciBkaXNwYXRjaCkgSWYgc28sIHdoZXJlIGRvIHlvdSBz
YXZlIGFuZAo+ID4gcmVzdG9yZSB0aGUgQ1NfR1BSIG92ZXJ3cml0dGVuPwo+IAo+IAo+IER1aCEg
SW4gYSBwcmV2aW91cyBpdGVyYXRpb24gSSB3YXMgc2F2aW5nIHRoaXMgaW4gdGhlIHNjcmF0Y2gg
Qk8gYXMgYSAKPiBnaXZlbiBsb2NhdGlvbi4KPiAKPiBTaG91bGQgSSBhbGxvYyBteSBvd24gYnVm
ZmVyPwoKWW91IG9ubHkgbmVlZCBhIGZldyB0ZW1wb3JhcmllcyByaWdodD8gWW91IGNhbiBzcXVl
ZXplIGludG8KZW5naW5lLT5ndC0+c2NyYXRjaC4gV2UgbmVlZCB0byBtYXJrIG91dCByZXNlcnZl
ZCBmaWVsZHMgaW4gdGhlcmUhCgpQaWNrIGFuIG9mZnNldCBpbiB0aGUgdXBwZXIgMmsgYXMgYSBz
dGFydGluZyBwb2ludC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
