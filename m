Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6BAE37360
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 13:51:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F63E89203;
	Thu,  6 Jun 2019 11:51:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F12D189203
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2019 11:51:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16812864-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 06 Jun 2019 12:51:52 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: intel-gfx@lists.freedesktop.org
References: <20190531113245.30042-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190531113245.30042-1-chris@chris-wilson.co.uk>
Message-ID: <155982190941.19464.9612763812107224043@skylake-alporthouse-com>
Date: Thu, 06 Jun 2019 12:51:49 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Report an earlier wedged event
 when suspending the engines
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDUtMzEgMTI6MzI6NDUpCj4gT24gaTkxNV9nZW1f
bG9hZF9wb3dlcl9jb250ZXh0KCkgd2UgZG8gY2FyZSB3aGV0aGVyIG9yIG5vdCB3ZSBzdWNjZWVk
IGluCj4gY29tcGxldGluZyB0aGUgc3dpdGNoIGJhY2sgdG8gdGhlIGtlcm5lbCBjb250ZXh0ICh2
aWEgaWRsaW5nIHRoZQo+IGVuZ2luZXMpLiBDdXJyZW50bHksIHdlIGRldGVjdCBpZiBhbiBlcnJv
ciBvY2N1cnMgd2hpbGUgd2Ugd2FpdCwgYnV0IHdlCj4gZG8gbm90IHJlcG9ydCBvbmUgaWYgaXQg
b2NjdXJyZWQgYmVmb3JlaGFuZCAoYW5kIHRoZSBzdGF0dXMgb2YgdGhlCj4gc3dpdGNoIGlzIHVu
ZGVmaW5lZCkuIENoZWNrIHRoZSBjdXJyZW50IHRlcm1pbmFsbHkgd2VkZ2VkIHN0YXR1cyBvbgo+
IGVudGVyaW5nIHRoZSB3YWl0LCBhbmQgcmVwb3J0IGl0IGFmdGVyIGZsdXNoaW5nIHRoZSByZXF1
ZXN0cywgYXMgaWYgaXQKPiBoYWQgb2NjdXJyZWQgZHVyaW5nIG91ciBvd24gd2FpdC4KCkJ1Z3pp
bGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTA4MjQK
PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
