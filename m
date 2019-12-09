Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDB41164DE
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 02:54:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15BE96E0A1;
	Mon,  9 Dec 2019 01:54:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14BE26E0A1
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2019 01:54:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19507034-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 09 Dec 2019 01:54:12 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: intel-gfx@lists.freedesktop.org
References: <20191208233456.3074345-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191208233456.3074345-1-chris@chris-wilson.co.uk>
Message-ID: <157585645132.2308.13356858023763278738@skylake-alporthouse-com>
Date: Mon, 09 Dec 2019 01:54:11 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Suppress unclaimed mmio
 warnings for irq enabling
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTItMDggMjM6MzQ6NTYpCj4gRGVzcGl0ZSB0YWtp
bmcgdGhlIGludGVsX2d0IHdha2VyZWYsIGFuZCBhc3NlcnRpbmcgdGhhdCB3ZSBkbyBpbmRlZWQK
PiBob2xkIHRoZSBydW50aW1lLXBtIHdha2VyZWYgZm9yIHRoZSBkZXZpY2UsIG91ciBtbWlvIGRl
YnVnIGluc2lzdHMgdGhhdAo+IHRoZSBpcnEgZW5hYmxpbmcgaXMgbm90IGJlaW5nIHJlY29nbmlz
ZWQ6CgpTY3JhdGNoIHRoZSBkcm9wcGluZyBvZiBmdywgd2UgbWlzcyBpbnRlcnJ1cHRzLgotQ2hy
aXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
