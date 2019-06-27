Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0435A57FF5
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 12:13:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6B386E02A;
	Thu, 27 Jun 2019 10:13:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9BDD6E02A
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 10:13:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17041703-1500050 for multiple; Thu, 27 Jun 2019 11:13:08 +0100
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190627091914.30795-1-jani.nikula@intel.com>
References: <20190627091914.30795-1-jani.nikula@intel.com>
Message-ID: <156163038452.20851.16048224810916743715@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 27 Jun 2019 11:13:04 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/irq: make
 i945gm_vblank_work_func() static again
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

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wNi0yNyAxMDoxOToxNCkKPiBUaGUgc3RhdGljIGtl
eXdvcmQgd2FzIGFwcGFyZW50bHkgYWNjaWRlbnRhbGx5IHJlbW92ZWQgaW4gY29tbWl0Cj4gMDhm
YThmZDBmYWE1ICgiZHJtL2k5MTU6IFN3aXRjaCB0byBwZXItY3J0YyB2YmxhbmsgdmZ1bmNzIiks
IGxlYWRpbmcgdG8KPiBzcGFyc2Ugd2FybmluZzoKPiAKPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2lycS5jOjMzODI6Njogd2FybmluZzogc3ltYm9sCj4gJ2k5NDVnbV92Ymxhbmtfd29ya19m
dW5jJyB3YXMgbm90IGRlY2xhcmVkLiBTaG91bGQgaXQgYmUgc3RhdGljPwo+IAo+IE1ha2UgdGhl
IGZ1bmN0aW9uIHN0YXRpYyBhZ2Fpbi4KPiAKPiBGaXhlczogMDhmYThmZDBmYWE1ICgiZHJtL2k5
MTU6IFN3aXRjaCB0byBwZXItY3J0YyB2YmxhbmsgdmZ1bmNzIikKPiBDYzogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBDYzogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGludGVsLmNvbT4KCjMgcGVvcGxlICh3ZWxsIDIgYW5kIGEgcm9ib3QpIHNlbmQg
cGF0Y2hlcyBmb3IgdGhlIHNhbWUgY29tcGlsZXIKd2FybmluZyEgVGhhdCBtZWFucyBzb21ldGhp
bmcsIHJpZ2h0PwoKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
