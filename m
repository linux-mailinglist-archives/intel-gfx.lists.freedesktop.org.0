Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B714AFE5B
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 16:10:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD2C86EB13;
	Wed, 11 Sep 2019 14:10:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55DB26EB13
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 14:10:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18452459-1500050 for multiple; Wed, 11 Sep 2019 15:10:47 +0100
MIME-Version: 1.0
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190911140824.GA7482@intel.com>
References: <20190911135000.23272-1-ville.syrjala@linux.intel.com>
 <156821036908.3439.5160277708812427100@skylake-alporthouse-com>
 <20190911140824.GA7482@intel.com>
Message-ID: <156821104560.3439.11951855416839074175@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 11 Sep 2019 15:10:45 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix DRM_I915_DEBUG IOMMU stuff
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMTktMDktMTEgMTU6MDg6MjQpCj4gPiBBbHJlYWR5
IGluIHRoZSB1cGRhdGVkCj4gPiA0MWRmZDVmNjdhZTQgKCJkcm0vaTkxNTogRm9yY2UgY29tcGls
YXRpb24gd2l0aCBpbnRlbC1pb21tdSBmb3IgQ0kgdmFsaWRhdGlvbiIpCj4gCj4gVGhhdCdzIG5v
dCB1cHN0cmVhbSB0aG91Z2guIFNvIG15IGJ1aWxkIGlzIHN0aWxsIGJyb2tlbi4KCkl0IHNob3Vs
ZCBiZSB0aGVyZS4gSSBjaGVja2VkIGluIGRybS10aXAuIENvdWxkIHlvdSBkb3VibGUgY2hlY2sg
aWYgSSd2ZQpzb21laG93IGRlbHVkZWQgbXlzZWxmPwotQ2hyaXMKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
