Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FAF6C0BA4
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 20:45:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAB1F6E1F6;
	Fri, 27 Sep 2019 18:45:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E30E6E1F6
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 18:45:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18643827-1500050 for multiple; Fri, 27 Sep 2019 19:45:28 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190927173409.31175-8-matthew.auld@intel.com>
References: <20190927173409.31175-1-matthew.auld@intel.com>
 <20190927173409.31175-8-matthew.auld@intel.com>
Message-ID: <156960992399.1880.3111390577826546992@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 27 Sep 2019 19:45:24 +0100
Subject: Re: [Intel-gfx] [PATCH 07/22] drm/i915: support creating LMEM
 objects
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
Cc: daniel.vetter@ffwll.ch
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDktMjcgMTg6MzM6NTQpCj4gK2NvbnN0IHUzMiBp
bnRlbF9yZWdpb25fbWFwW10gPSB7Cj4gKyAgICAgICBbSU5URUxfTUVNT1JZX1NNRU1dID0gQklU
KElOVEVMX1NNRU0gKyBJTlRFTF9NRU1PUllfVFlQRV9TSElGVCkgfCBCSVQoMCksCj4gKyAgICAg
ICBbSU5URUxfTUVNT1JZX0xNRU1dID0gQklUKElOVEVMX0xNRU0gKyBJTlRFTF9NRU1PUllfVFlQ
RV9TSElGVCkgfCBCSVQoMCksCj4gKyAgICAgICBbSU5URUxfTUVNT1JZX1NUT0xFTl0gPSBCSVQo
SU5URUxfU1RPTEVOICsgSU5URUxfTUVNT1JZX1RZUEVfU0hJRlQpIHwgQklUKDApLAo+ICt9OwoK
I2RlZmluZSBSRUdJT05fTUFQKHR5cGUsIGluc3QpIFwKCUJJVCh0eXBlICsgU0hJRlQpIHwgQklU
KGluc3QpCgpCSVQoaW5zdCkgbG9va3Mgb2RkLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
