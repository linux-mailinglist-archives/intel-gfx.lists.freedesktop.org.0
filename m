Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C082B7CFE
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 16:37:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77BA26EBD4;
	Thu, 19 Sep 2019 14:37:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08D3D6EBD4
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 14:36:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18547148-1500050 for multiple; Thu, 19 Sep 2019 15:36:41 +0100
MIME-Version: 1.0
To: Andi Shyti <andi.shyti@intel.com>,
 Intel GFX <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190919143840.20384-1-andi.shyti@intel.com>
References: <20190919143840.20384-1-andi.shyti@intel.com>
Message-ID: <156890379979.591.12461723355355541613@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 19 Sep 2019 15:36:39 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Extract GT render sleep (rc6)
 management
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

UXVvdGluZyBBbmRpIFNoeXRpICgyMDE5LTA5LTE5IDE1OjM4OjQwKQo+IENvbnRpbnVpbmcgdGhl
IHRoZW1lIG9mIGJyZWFraW5nIGludGVsX3BtLmMgdXAgaW4gYSByZWFzb25hYmxlIGNodW5rIG9m
Cj4gcG93ZXJtYW5hZ2VtZW50IHV0aWxpdGllcywgcHVsbCBvdXQgdGhlIHJjNiBzZXR1cCBpbnRv
IGl0cyBHVCBoYW5kbGVyLgo+IAo+IEJhc2VkIG9uIGEgcGF0Y2ggYnkgQ2hyaXMgV2lsc29uLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IEFuZGkgU2h5dGkgPGFuZGkuc2h5dGlAaW50ZWwuY29tPgo+IENj
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KCk5vdGhpbmcganVtcGVk
IG91dCBhcyBvZGQgb24gcmVhZGluZywgYW5kIEknbSBjb25maWRlbnQgaW4gb3VyIGRldGVjdGlv
bgpvZiBsYWNrIG9mIHJjNiBpbiBpZ3QuCgpIb3BpbmcgQ0kgZG9lc24ndCBwcm92ZSBtZSB3cm9u
ZywKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgot
Q2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
