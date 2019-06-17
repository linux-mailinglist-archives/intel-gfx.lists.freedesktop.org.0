Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A5E490C9
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 22:04:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3133B89FF7;
	Mon, 17 Jun 2019 20:04:52 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2AF089FF7
 for <Intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 20:04:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16932226-1500050 for multiple; Mon, 17 Jun 2019 21:04:44 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190617181236.7981-1-tvrtko.ursulin@linux.intel.com>
 <20190617181236.7981-28-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190617181236.7981-28-tvrtko.ursulin@linux.intel.com>
Message-ID: <156080188437.7889.12060904142028052550@skylake-alporthouse-com>
Date: Mon, 17 Jun 2019 21:04:44 +0100
Subject: Re: [Intel-gfx] [RFC 27/33] drm/i915: Compartmentalize
 i915_gem_init_ggtt
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xNyAxOToxMjozMCkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IENvbnRpbnVpbmcgb24g
dGhlIHRoZW1lIG9mIGJldHRlciBsb2dpY2FsIG9yZ2FuaXphdGlvbiBvZiBvdXIgY29kZSwgbWFr
ZQo+IHRoZSBmaXJzdCBzdGVwIHRvd2FyZHMgbWFraW5nIHRoZSBnZ3R0IGNvZGUgYmV0dGVyIGlz
b2xhdGVkIGZyb20gd2lkZXIKPiBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZS4KPiAKPiB2MjoKPiAg
KiBCcmluZyB0aGUgaWNrbGUgb25pb24gdW53aW5kIGJhY2suIChDaHJpcykKPiAgKiBSZW5hbWUg
dG8gaTkxNV9pbml0X2dndHQuIChDaHJpcykKPiAKPiBTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJz
dWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
