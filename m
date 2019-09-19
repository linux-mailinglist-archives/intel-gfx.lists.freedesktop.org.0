Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1BF5B7BF4
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 16:17:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 207716F960;
	Thu, 19 Sep 2019 14:17:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B37176F960
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 14:17:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18546882-1500050 for multiple; Thu, 19 Sep 2019 15:16:54 +0100
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <48a647c1e9e59b27b9fcd2193835dad68bf3839f.1568901239.git.jani.nikula@intel.com>
References: <cover.1568901239.git.jani.nikula@intel.com>
 <48a647c1e9e59b27b9fcd2193835dad68bf3839f.1568901239.git.jani.nikula@intel.com>
Message-ID: <156890261244.31102.9382248560877726747@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 19 Sep 2019 15:16:52 +0100
Subject: Re: [Intel-gfx] [PATCH 11/13] drm/i915: move gem init up from
 modeset init
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

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wOS0xOSAxNTowMzo1OCkKPiBQYWlyIHRoZSBnZW0g
aW5pdCBhbmQgY2xlYW51cCBpbiB0aGUgc2FtZSBsYXllci4gVGhpcyBtb3ZlcyB0aGUgZ2VtIGlu
aXQKPiBiZWZvcmUgdGhlIG1vZGVzZXQgaW5pdC4KClRoZSBpbXBvcnRhbnQgcGFydCBoZXJlIHdh
cyB0aGF0IEJJT1MgdGFrZW92ZXIgYnkgZGlzcGxheSBpcyBiZWZvcmUgd2UKY2xlYXIgdGhlIEdH
VFQgaW4gaTkxNV9nZW1faW5pdCAtPiBpOTE1X2luaXRfZ2d0dC4gaWlyYyBtYXJraW5nIHVwIHRo
ZQpwcmVhbGxvY2F0ZWQgR0dUVCByYW5nZXMgaXMgaW4gaW50ZWxfbW9kZXNldF9pbml0LgotQ2hy
aXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
