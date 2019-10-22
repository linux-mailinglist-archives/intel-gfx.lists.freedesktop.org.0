Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2B1E0590
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 15:54:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5FE16E7EF;
	Tue, 22 Oct 2019 13:54:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 724F46E80B
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 13:54:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18926033-1500050 for multiple; Tue, 22 Oct 2019 14:54:15 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <0b58a54a-f484-7459-1e63-ce711f49837c@linux.intel.com>
References: <20191022131016.9065-1-chris@chris-wilson.co.uk>
 <0b58a54a-f484-7459-1e63-ce711f49837c@linux.intel.com>
Message-ID: <157175245213.8049.4480871379034831120@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 22 Oct 2019 14:54:12 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Move uncore fw
 selftests to operate on intel_gt
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0yMiAxNDo0NDozMSkKPiAKPiBPbiAyMi8x
MC8yMDE5IDE0OjEwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBGb3JjZXdha2UgaXMgdGhlIHNw
ZWNpYWxpdHkgb2YgdGhlIEdULCBzbyBpdCBpcyBuYXR1cmFsIHRvIHJ1biB0aGUKPiA+IGludGVs
X3VuY29yZV9mb3JjZXdha2UgdGVzdHMgb3ZlciB0aGUgR1QuIFNvIHBhc3MgaW50ZWxfZ3QgYXMg
dGhlCj4gPiBwYXJhbWV0ZXIgdG8gb3VyIHNlbGZ0ZXN0cy4KPiAKPiBJIGhhZCB0aGUgc2FtZSB1
cmdlIHllc3RlcmRheSBidXQgdGhlbiBlbmRlZCB1bnN1cmUgaG93IHRoZSBkaXNwbGF5L2d0IAo+
IHVuY29yZSBzcGxpdCBtYXkgYWZmZWN0IHRoaXMgb24gdGhlIGxvZ2ljYWwgbGV2ZWwuIFNvIEkn
bGwgbGVhdmUgdGhlIAo+IGRlY2lzaW9uIHRvIERhbmllbGUsIGhlIHNob3VsZCBrbm93IGJldHRl
ciB3aGF0IHBsYW5zIGFyZSB0aGVyZS4KPiAKPiBPbiB0aGUgcGFydGljdWxhciBwYXRjaCBvbmx5
IGNvbW1lbnQgaXMgdGhhdCBJIHdvdWxkIGNvbnNpZGVyIG9uZSBvciB0d28gCj4gaTkxNSBsb2Nh
bHMgZm9yIGJldHRlciByZWFkYWJpbGl0eS4KCllvdSBkb24ndCBoYXZlIHRoZSBpdGNoIGZvciBh
IEdUX0lORk8oKSB5ZXQ/CkknbGwga2VlcCBwaWxpbmcgdGhlbSB1cCB0aGVuIDspCi1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
