Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 819A74BA60
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 15:44:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB7736E3DA;
	Wed, 19 Jun 2019 13:44:36 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1C0B6E3DA
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 13:44:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16953674-1500050 for multiple; Wed, 19 Jun 2019 14:44:22 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <156095099601.21217.16674831332921779518@skylake-alporthouse-com>
 <20190619134251.5986-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190619134251.5986-1-tvrtko.ursulin@linux.intel.com>
Message-ID: <156095186352.21217.17402210319551985906@skylake-alporthouse-com>
Date: Wed, 19 Jun 2019 14:44:23 +0100
Subject: Re: [Intel-gfx] [PATCH v4 28/33] drm/i915: Store ggtt pointer in
 intel_gt
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNi0xOSAxNDo0Mjo1MSkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IFRoaXMgd2lsbCBiZWNv
bWUgdXNlZnVsIGluIHRoZSBmb2xsb3dpbmcgcGF0Y2guCj4gCj4gdjI6Cj4gICogQXNzaWduIHRo
ZSBwb2ludGVyIHRocm91Z2ggYSBoZWxwZXIgb24gdGhlIHRvcCBsZXZlbCB0byB3b3JrIGFyb3Vu
ZAo+ICAgIHRoZSBsYXllcmluZyB2aW9sYXRpb24uIChDaHJpcykKPiAKPiB2MzoKPiAgKiBIYW5k
bGUgc2VsZnRlc3RzLgo+IAo+IHY0Ogo+ICAqIE1vdmUgY2FsbCB0byBpbnRlbF9ndF9pbml0X2h3
IGludG8gbW9ja19pbml0X2dndHQuIChDaHJpcykKPiAKPiBTaWduZWQtb2ZmLWJ5OiBUdnJ0a28g
VXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IFJldmlld2VkLWJ5OiBSb2RyaWdv
IFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+ICMgdjIKUmV2aWV3ZWQtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
