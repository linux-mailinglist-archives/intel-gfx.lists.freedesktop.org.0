Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CAE679A6
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jul 2019 12:21:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FEDA6E3CB;
	Sat, 13 Jul 2019 10:21:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61B8B6E3CB
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jul 2019 10:21:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17265927-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jul 2019 11:21:47 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: intel-gfx@lists.freedesktop.org
References: <20190713100016.8026-1-chris@chris-wilson.co.uk>
 <20190713100016.8026-4-chris@chris-wilson.co.uk>
In-Reply-To: <20190713100016.8026-4-chris@chris-wilson.co.uk>
Message-ID: <156301330482.9436.5108189477763770977@skylake-alporthouse-com>
Date: Sat, 13 Jul 2019 11:21:44 +0100
Subject: Re: [Intel-gfx] [PATCH 04/11] drm/i915/guc: move guc irq functions
 to intel_guc parameter
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDctMTMgMTE6MDA6MDkpCj4gRnJvbTogRGFuaWVs
ZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiAKPiBO
byBmdW5jdGlvbmFsIGNoYW5nZSwganVzdCBtb3ZpbmcgdGhlIGd1Y190b19pOTE1IGZyb20gdGhl
IGNhbGxlciBpbnRvCj4gdGhlIGlycSBmdW5jdGlvbi4gVGhpcyB3aWxsIGhlbHAgd2l0aCB0aGUg
dXBjb21pbmcgbW92ZSBvZiBndWMgdW5kZXIKPiBpbnRlbF9ndC4KPiAKPiBTaWduZWQtb2ZmLWJ5
OiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29t
PgoKSSBzZWNvbmQgdGhlIG9waW5pb24gdGhhdCB3ZSBuZWVkIHRvIG1vdmUgdGhlIGd1YyBoYW5k
bGVycyBvdXQgb2YKaTkxNV9pcnEuYzsgY2VudHJhbCBkaXNwYXRjaCBpbnRvIGZ1bmN0aW9uYWwg
dW5pdHMuCgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
