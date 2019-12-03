Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2AA10FF9D
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 15:09:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FEBB6E5D5;
	Tue,  3 Dec 2019 14:09:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC5E36E5C3
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 14:09:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19443418-1500050 for multiple; Tue, 03 Dec 2019 14:09:29 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191202110812.2334138-1-chris@chris-wilson.co.uk>
 <12198495-921a-4e69-9a4e-b2570a4d3648@linux.intel.com>
In-Reply-To: <12198495-921a-4e69-9a4e-b2570a4d3648@linux.intel.com>
Message-ID: <157538216929.7230.17800613062417348811@skylake-alporthouse-com>
Date: Tue, 03 Dec 2019 14:09:29 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Remove direct invocation of
 breadcrumb signaling
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMi0wMyAxNDowNjo1MSkKPiAKPiBPbiAwMi8x
Mi8yMDE5IDExOjA4LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBPbmx5IHNpZ25hbCB0aGUgYnJl
YWRjcnVtYnMgZnJvbSBpbnNpZGUgdGhlIGlycV93b3JrLCBzaW1wbGlmeWluZyBvdXIKPiA+IGlu
dGVyZmFjZSBhbmQgY2FsbGluZyBjb252ZW50aW9ucy4KPiAKPiBNYWtpbmcgSWNlbGFrZSBzaWdu
YWxpbmcgbGF0ZW5jeSBsb29rIGJldHRlcj8gOikgQSBmZXcgbW9yZSB3b3JkcyBhYm91dCAKPiBt
b3RpdmF0aW9uIHdvdWxkIGJlIGdvb2QuCgpBdCB0aGlzIHBvaW50LCB3ZSdyZSBqdXN0IHJlbW92
aW5nIGEgZmV3IGN0cy9zdHMKKHNwaW5fbG9ja19pcnFzYXZlL3Jlc3RvcmUpIGZyb20gdGhlIGV4
ZWNsaXN0cyBwYXRocy4gSXQganVzdCBtYWtlcyBtZQpmZWVsIGhhcHBpZXIgdG8gaGF2ZSBmZXdl
ciBfaXJxIGRvdHRlZCBhcm91bmQgcHJpb3IgdG8gUlQuIFRoZSB0cmFkZS1vZmYKaXMgdGhhdCB0
aGV5IHdpbGwgaG91bmQgdXMgZm9yIHVzaW5nIGlycV93b3JrIGluc3RlYWQhIDopCi1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
