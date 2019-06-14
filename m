Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 204E54644B
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 18:34:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AB5689319;
	Fri, 14 Jun 2019 16:34:49 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AECA89319
 for <Intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 16:34:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16905230-1500050 for multiple; Fri, 14 Jun 2019 17:34:44 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190614151731.17608-1-tvrtko.ursulin@linux.intel.com>
 <20190614151731.17608-28-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190614151731.17608-28-tvrtko.ursulin@linux.intel.com>
Message-ID: <156053008166.7796.13819964204219315430@skylake-alporthouse-com>
Date: Fri, 14 Jun 2019 17:34:41 +0100
Subject: Re: [Intel-gfx] [RFC 27/31] drm/i915: Compartmentalize ring buffer
 creation
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xNCAxNjoxNzoyNykKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IENvbnRpbnVpbmcgb24g
dGhlIHRoZW1lIG9mIGNvbXBhcnRtZW50YWxpemluZyB0aGUgY29kZSBiZXR0ZXIgdG8gbWFrZQo+
IGZ1dHVyZSBzcGxpdCBiZXR3ZWVuIGd0IGFuZCBkaXNwbGF5IGluIGdsb2JhbCBpOTE1IGNsZWFy
ZXIuCj4gCj4gdjI6Cj4gICogUGFzcyBpbiBnZ3R0IGluc3RlYWQgb2YgZ3QuIChDaHJpcykKPiAK
PiBTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29t
PgoKQ29tbWVudHMgYWJvdXQgdGhlIHJlc2lkdWFsIGk5MTUtPmdndHQgbm90d2l0aHN0YW5kaW5n
LApSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1D
aHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
