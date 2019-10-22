Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03024E0741
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 17:26:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EB636E84C;
	Tue, 22 Oct 2019 15:26:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6BDC6E84C
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 15:26:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18927264-1500050 for multiple; Tue, 22 Oct 2019 16:25:51 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <0b58a54a-f484-7459-1e63-ce711f49837c@linux.intel.com>
References: <20191022131016.9065-1-chris@chris-wilson.co.uk>
 <0b58a54a-f484-7459-1e63-ce711f49837c@linux.intel.com>
Message-ID: <157175794860.8049.13307208238514445813@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 22 Oct 2019 16:25:48 +0100
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
ciB3aGF0IHBsYW5zIGFyZSB0aGVyZS4KClRoZSB3b3JzdCBjYXNlIGlzIHRoYXQgd2UgYSBzZXQg
b2Ygc3VidGVzdHNbXSB0aGF0IGFyZSBydW4gYWdhaW5zdCBpOTE1LAphbmQgYSBzZXQgdGhhdCBp
cyBydW4gYWdhaW5zdCBpbnRlbF9ndC4gRG9lc24ndCBzb3VuZCB0ZXJyaWJsZSB0YmguCi1DaHJp
cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
