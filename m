Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC85DC40DE
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 21:18:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F9A26E1F9;
	Tue,  1 Oct 2019 19:18:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2F876E1F9
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 19:18:45 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18685076-1500050 for multiple; Tue, 01 Oct 2019 20:18:44 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190930183045.662-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20190930183045.662-1-ville.syrjala@linux.intel.com>
Message-ID: <156995751990.1880.4809881819069686604@skylake-alporthouse-com>
Date: Tue, 01 Oct 2019 20:18:39 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix g4x sprite scaling stride
 check with GTT remapping
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDE5LTA5LTMwIDE5OjMwOjQ1KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gSSBmb3Jnb3Qg
dG8gdXBkYXRlIHRoZSBnNHggc3ByaXRlIHNjYWxpbmcgc3RyaWRlIGNoZWNrIHdoZW4gR1RUCj4g
cmVtYXBwaW5nIHdhcyBpbnRyb2R1Y2VkLiBUaGUgc3RyaWRlIG9mIHRoZSBvcmlnaW5hbCBmcmFt
ZWJ1ZmZlcgo+IGlzIGlycmVsZXZhbnQgd2hlbiByZW1hcHBpbmcgaXMgdXNlZCBhbmQgaW5zdGVh
ZCB3ZSB3YW50IHRvIGNoZWNrCj4gdGhlIHN0cmlkZSBvZiB0aGUgcmVtYXBwZWQgdmlldy4KPiAK
PiBBbHNvIGRyb3AgdGhlIGR1cGxpY2F0ZSB3aWR0aF9ieXRlcyBjaGVjay4gV2UgYWxyZWFkeSBj
aGVjayB0aGF0Cj4gYSBmZXcgbGluZXMgZWFybGllci4KPiAKPiBGaXhlczogZGY3OWNmNDQxOTEw
ICgiZHJtL2k5MTU6IFN0b3JlIHRoZSBmaW5hbCBwbGFuZSBzdHJpZGUgaW4gcGxhbmVfc3RhdGUi
KQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+CgpTbyBiYXNpY2FsbHkgLnN0cmlkZSA9IGludGVsX2ZiX3BpdGNoKCkKUmV2aWV3
ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
