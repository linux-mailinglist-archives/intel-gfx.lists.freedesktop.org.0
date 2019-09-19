Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91397B7E48
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 17:35:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF1056F80B;
	Thu, 19 Sep 2019 15:35:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC00B6F814
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 15:35:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18548051-1500050 for multiple; Thu, 19 Sep 2019 16:35:10 +0100
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <27f91b448f5012a9925368f5cd1cc22b7e2ff4d3.1568901239.git.jani.nikula@intel.com>
References: <cover.1568901239.git.jani.nikula@intel.com>
 <27f91b448f5012a9925368f5cd1cc22b7e2ff4d3.1568901239.git.jani.nikula@intel.com>
Message-ID: <156890730882.1196.15081287994237584832@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 19 Sep 2019 16:35:08 +0100
Subject: Re: [Intel-gfx] [PATCH 07/13] drm/i915: split
 intel_modeset_driver_remove() to pre/post irq uninstall
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wOS0xOSAxNTowMzo1NCkKPiBTcGxpdCBpbnRlbF9t
b2Rlc2V0X2RyaXZlcl9yZW1vdmUoKSB0byB0d28sIHRoZSBwYXJ0IHdpdGggd29ya2luZyBpcnFz
Cj4gYmVmb3JlIGlycSB1bmluc3RhbGwsIGFuZCB0aGUgcGFydCBhZnRlciBpcnEgdW5pbnN0YWxs
Lgo+IAo+IFRoZSBlcnJvciBwYXRoIGluIGk5MTVfZHJpdmVyX21vZGVzZXRfcHJvYmUoKSBsb29r
cyBvYnZpb3VzbHkgd2VpcmQKPiBhZnRlciB0aGlzLCBidXQgcmVtYWlucyBhcyBnb29kIG9yIGJy
b2tlbiBhcyBpdCBldmVyIHdhcy4gTm8gZnVuY3Rpb25hbAo+IGNoYW5nZXMuCj4gCj4gU2lnbmVk
LW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KCk1lbW9yeSBzYXlz
IF9ub2lycSBpcyB1c2VkIGJ5IHBtIGNvZGUgYXMgaGF2aW5nIGlycXMgYXZhaWxhYmxlIGlzIHRo
ZQpub3JtLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
