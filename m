Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 830A27CF1B
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 22:51:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD1E96E2F9;
	Wed, 31 Jul 2019 20:51:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA5FC6E312
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 20:51:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17768927-1500050 for multiple; Wed, 31 Jul 2019 21:50:59 +0100
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <op.z5szt9oaxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
References: <20190731143856.35460-1-michal.wajdeczko@intel.com>
 <20190731143856.35460-3-michal.wajdeczko@intel.com>
 <156459524738.15787.7598049383578433853@skylake-alporthouse-com>
 <op.z5szt9oaxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Message-ID: <156460625839.2512.2810555587976164881@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 31 Jul 2019 21:50:58 +0100
Subject: Re: [Intel-gfx] [PATCH v2 2/4] drm/i915/uc: Consider enable_guc
 modparam during fw selection
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

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDE5LTA3LTMxIDE4OjUwOjIzKQo+IE9uIFdlZCwg
MzEgSnVsIDIwMTkgMTk6NDc6MjcgKzAyMDAsIENocmlzIFdpbHNvbiAgCj4gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4gd3JvdGU6Cj4gCj4gPiBRdW90aW5nIE1pY2hhbCBXYWpkZWN6a28gKDIw
MTktMDctMzEgMTU6Mzg6NTQpCj4gPj4gK3N0YXRpYyBjb25zdCBjaGFyICpfX292ZXJyaWRlX2d1
Y19maXJtd2FyZV9wYXRoKHZvaWQpCj4gPj4gK3sKPiA+PiArICAgICAgIGlmIChpOTE1X21vZHBh
cmFtcy5lbmFibGVfZ3VjICYgKEVOQUJMRV9HVUNfU1VCTUlTU0lPTiB8fAo+ID4+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgRU5BQkxFX0dVQ19MT0FEX0hVQykpCj4g
Pgo+ID4gIHx8ID8KPiAKPiBvb3BzLCB0aGFua3MgZm9yIGNhdGNoaW5nIHRoaXMgKGxhc3QgbWlu
dXRlIGFkZGl0aW9uLCBocnJyKQoKV2l0aCB0aGF0LApSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
