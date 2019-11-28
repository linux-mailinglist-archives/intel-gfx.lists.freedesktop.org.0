Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E86AA10CCB4
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2019 17:22:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D22C6E85B;
	Thu, 28 Nov 2019 16:22:50 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 129C26E85B
 for <Intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2019 16:22:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19379049-1500050 for multiple; Thu, 28 Nov 2019 16:22:44 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20191128161051.12753-1-tvrtko.ursulin@linux.intel.com>
 <157495798936.8489.15571641017234842307@skylake-alporthouse-com>
In-Reply-To: <157495798936.8489.15571641017234842307@skylake-alporthouse-com>
Message-ID: <157495816250.8489.12919668392873215641@skylake-alporthouse-com>
Date: Thu, 28 Nov 2019 16:22:42 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: Report frequency as zero
 while GPU is sleeping
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTEtMjggMTY6MTk6NDkpCj4gUXVvdGluZyBUdnJ0
a28gVXJzdWxpbiAoMjAxOS0xMS0yOCAxNjoxMDo1MSkKPiA+IEZyb206IFR2cnRrbyBVcnN1bGlu
IDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gPiAKPiA+IFdlIHVzZWQgdG8gcmVwb3J0IHRo
ZSBtaW5pbXVtIHBvc3NpYmxlIGZyZXF1ZW5jeSBhcyBib3RoIHJlcXVlc3RlZCBhbmQKPiA+IGFj
dGl2ZSB3aGlsZSBHUFUgd2FzIGluIHNsZWVwIHN0YXRlLiBUaGlzIHdhcyBhIGNvbnNlcXVlbmNl
IG9mIHNhbXBsaW5nCj4gPiB0aGUgdmFsdWUgZnJvbSB0aGUgImN1cnJlbnQgZnJlcXVlbmN5IiBm
aWVsZCBpbiBvdXIgc29mdHdhcmUgdHJhY2tpbmcuCj4gPiAKPiA+IFRoaXMgd2FzIHN0cmljdGx5
IHNwZWFraW5nIHdyb25nLCBidXQgZ2l2ZW4gdGhhdCB1bnRpbCByZWNlbnRseSB0aGUKPiA+IGN1
cnJlbnQgZnJlcXVlbmN5IGluIHNsZWVwaW5nIHN0YXRlIHVzZWQgdG8gYmUgZXF1YWwgdG8gbWlu
aW11bSwgaXQgZGlkCj4gPiBub3Qgc3RhbmQgb3V0IHN1ZmZpY2llbnRseSB0byBiZSBub3RpY2Vk
IGFzIHN1Y2guCj4gPiAKPiA+IEFmdGVyIHNvbWUgcmVjZW50IGNoYW5nZXMgaGF2ZSBtYWRlIHRo
ZSBjdXJyZW50IGZyZXF1ZW5jeSBiZSByZXBvcnRlZAo+ID4gYXMgbGFzdCBhY3RpdmUgYmVmb3Jl
IEdQVSB3ZW50IHRvIHNsZWVwLCBtZWFuaW5nIGJvdGggcmVxdWVzdGVkIGFuZCBhY3RpdmUKPiA+
IGZyZXF1ZW5jaWVzIGNvdWxkIGVuZCB1cCBiZWluZyByZXBvcnRlZCBhdCB0aGVpciBtYXhpbXVt
IHZhbHVlcyBmb3IgdGhlCj4gPiBkdXJhdGlvbiBvZiB0aGUgR1BVIGlkbGUgc3RhdGUsIGl0IGJl
Y2FtZSBtdWNoIG1vcmUgb2J2aW91cyB0aGF0IHRoaXMgZG9lcwo+ID4gbm90IG1ha2Ugc2Vuc2Uu
Cj4gPiAKPiA+IFRvIGZpeCB0aGlzIHdlIHdpbGwgbm93IHNhbXBsZSB0aGUgZnJlcXVlbmN5IGNv
dW50ZXJzIG9ubHkgd2hlbiB0aGUgR1BVIGlzCj4gPiBhd2FrZS4gQXMgYSBjb25zZXF1ZW5jZSBy
ZXBvcnRlZCBmcmVxdWVuY2llcyBjb3VsZCBiZSByZXBvcnRlZCBhcyBiZWxvdwo+ID4gdGhlIEdQ
VSByZXBvcnRlZCBtaW5pbXVtIGJ1dCB0aGF0IHNob3VsZCBiZSBtdWNoIGxlc3MgY29uZnVzaW5n
IHRoYXQgdGhlCj4gPiBjdXJyZW50IHNpdHVhdGlvbi4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTog
VHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiAKPiBIbW0uIDAvMCB3
aGlsZSBvZmYsIHRoYXQgd2lsbCBiZSBhIGJpdCBvZiBhIHNob2NrLgoKVGhlcmUgaXMgYSBjb25z
aXN0ZW5jeSBxdWVzdGlvbiBvZiB3aGV0aGVyIHdlIHNob3VsZCBkbyB0aGUgc2FtZSB0aHJvdWdo
CnRoZSBbc2Vjb25kIGNsYXNzIDtdIHN5c2ZzLyBpbnRlcmZhY2UuCi1DaHJpcwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
