Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3345C1AE64F
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 21:53:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 644B46E9D5;
	Fri, 17 Apr 2020 19:53:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18CE36E9D5
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 19:53:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20938195-1500050 for multiple; Fri, 17 Apr 2020 20:53:08 +0100
MIME-Version: 1.0
In-Reply-To: <20200417134720.16654-2-ville.syrjala@linux.intel.com>
References: <20200417134720.16654-1-ville.syrjala@linux.intel.com>
 <20200417134720.16654-2-ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158715318727.2062.5482656497103455336@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 17 Apr 2020 20:53:07 +0100
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Move the TRANS_DDI_FUNC_CTL
 enable to a later point
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTA0LTE3IDE0OjQ3OjE4KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gTm8gcmVhc29u
IHRoYXQgSSBjYW4gc2VlIHdoeSB3ZSBzaG91bGQgZW5hYmxlIFRSQU5TX0RESV9GVU5DX0NUTAo+
IGJlZm9yZSB3ZSBzZXQgdXAgdGhlIHdhdGVybWFya3Mgb2YgY29uZm9naXVyZSB0aGUgbWJ1cyBz
dHVmZi4KPiBJbiBmYWN0IHJlb3JkZXJpbmcgdGhlc2Ugc2VlbXMgdG8gbWF0Y2ggdGhlIGJzcGVj
IHNlcXVlbmNlIGJldHRlciwKPiBhbmQgY3JpY3VhbGx5IHdpbGwgYWxsb3cgdXMgdG8gcHVzaCB0
aGUgVFJBTlNfRERJX0ZVTkNfQ1RMIGVuYWJsZQo+IGludG8gdGhlIGVuY29kZXIgZW5hYmxlIGhv
b2sgYXMgYSBmb2xsb3d1cC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgoKSSBzaG91bGQgbm90IGNvbW1lbnQgYmV5b25k
IHRoZSBjb2RlIGFwcGVhcnMgdG8gd29yaywKQWNrZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
