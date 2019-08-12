Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 387AF89BCB
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 12:45:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F7536E4D4;
	Mon, 12 Aug 2019 10:45:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B81B6E4D4
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 10:45:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17967550-1500050 for multiple; Mon, 12 Aug 2019 11:44:31 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190812091045.29587-6-chris@chris-wilson.co.uk>
References: <20190812091045.29587-1-chris@chris-wilson.co.uk>
 <20190812091045.29587-6-chris@chris-wilson.co.uk>
Message-ID: <156560667015.2301.4966068073571425460@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 12 Aug 2019 11:44:30 +0100
Subject: Re: [Intel-gfx] [PATCH 6/8] drm/i915/guc: Keep the engine awake
 until the tasklet is idle
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDgtMTIgMTA6MTA6NDMpCj4gRm9yIHRoZSBndWMs
IHdlIG5lZWQgdG8ga2VlcCB0aGUgZW5naW5lIGF3YWtlIChhbmQgbm90IHBhcmtlZCkgYW5kIG5v
dAo+IGp1c3QgdGhlIGd0LiBJZiB3ZSBsZXQgdGhlIGVuZ2luZSBwYXJrLCB3ZSBkaXNhYmxlIHRo
ZSBpcnEgYW5kIHN0b3AKPiBwcm9jZXNzaW5nIHRoZSB0YXNrbGV0LCBsZWF2aW5nIHN0YXRlIG91
dHN0YW5kaW5nIGluc2lkZSB0aGUgdGFza2xldC4KPiAKPiBUaGUgZG93bnNpZGUgaXMsIG9mIGNv
dXJzZSwgd2Ugbm93IGhhdmUgdG8gd2FpdCB1bnRpbCB0aGUgdGFza2xldCBpcyBydW4KPiBiZWZv
cmUgd2UgY29uc2lkZXIgdGhlIGVuZ2luZSBpZGxlLgoKRndpdywgYmVjYXVzZSBvZiB0aGlzIEkg
dGhpbmsgaXQgbWF5IGJlIHByZWZlcmFibGUgdG8ga2VlcCB0byB1c2luZyBHVApwbSBmb3IgdGhl
IHRhc2tsZXQ7IGFuZCBhcHBseSBEYW5pZWxlJ3MgcGF0Y2ggdG8ga2VlcApORUVEU19CUkVBRENS
VU1CX1RBU0tMRVQgc2V0ICh3aGljaCBpcyB0aGUgcmlnaHQgdGhpbmcgdG8gZG8gYW55d2F5IG5v
dwp0aGF0IHdlIHN0b3Agc3dpdGNoaW5nIGJldHdlZW4gc3VibWlzc2lvbiBtb2RlcykuCi1DaHJp
cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
