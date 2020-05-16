Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 493411D614F
	for <lists+intel-gfx@lfdr.de>; Sat, 16 May 2020 15:28:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD6776E21A;
	Sat, 16 May 2020 13:28:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 202DA6E21A
 for <intel-gfx@lists.freedesktop.org>; Sat, 16 May 2020 13:28:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21214570-1500050 for multiple; Sat, 16 May 2020 14:28:16 +0100
MIME-Version: 1.0
In-Reply-To: <20200514123838.3017-2-ville.syrjala@linux.intel.com>
References: <20200514123838.3017-1-ville.syrjala@linux.intel.com>
 <20200514123838.3017-2-ville.syrjala@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158963569526.29850.12146935623702308405@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Sat, 16 May 2020 14:28:15 +0100
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915: Document our lackluster
 FSB frequency readout
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTA1LTE0IDEzOjM4OjM3KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gRG9jdW1lbnQg
dGhlIGZhY3QgdGhhdCB3ZSBhcmVuJ3QgcmVhZGluZyBvdXQgdGhlIGFjdHVhbCBGU0IKPiBmcmVx
dWVuY3kgYnV0IHJhdGhlciBqdXN0IHRoZSBzdGF0ZSBvZiB0aGUgRlNCIHN0cmFwcy4KPiBTb21l
IEJJT1NlbiBhbGxvdyB5b3UgdG8gY29uZmlndXJlIHRoZSB0d28gaW5kZXBlbmRlbnRseS4KPiBT
byBpZiBzb21lb25lIHNldHMgdGhlIHR3byB1cCBpbiBhbiBpbmNvbnNpc3RlbnQgbWFubmVyCj4g
d2UnbGwgZ2V0IHRoZSB3cm9uZyBhbnN3ZXIgaGVyZSBhbmQgdGh1cyB3aWxsIGVuZCB1cCB3aXRo
Cj4gaW5jb3JyZWN0IGF1eC9wcHMgY2xvY2sgZGl2aWRlcnMuIEFsYXMsIHByb3BlciBkb2NzIGFy
ZSBubwo+IGxvbmdlciBhcm91bmQgc28gd2UgY2FuJ3QgZG8gYW55IGJldHRlci4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1D
aHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
