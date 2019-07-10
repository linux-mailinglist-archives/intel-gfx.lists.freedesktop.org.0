Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C00064792
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 15:52:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0031089830;
	Wed, 10 Jul 2019 13:52:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6E6C89830
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 13:52:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17200269-1500050 for multiple; Wed, 10 Jul 2019 14:51:56 +0100
MIME-Version: 1.0
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190710134937.25835-1-ville.syrjala@linux.intel.com>
References: <20190710134937.25835-1-ville.syrjala@linux.intel.com>
Message-ID: <156276671483.4055.15258594647096908962@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 10 Jul 2019 14:51:54 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Don't pass stack garbage to pcode
 in the second data register
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
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDE5LTA3LTEwIDE0OjQ5OjM3KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gWmVybyBpbml0
aWFsaXplIHZhbDIgc28gdGhhdCB3ZSBkb24ndCBwYXNzIHN0YWNrIGdhcmJhZ2UgdG8KPiB0aGUg
cGNvZGUgcWd2IHJlYWQgY29tbWFuZC4gSSBzdXNwZWN0IGluIHRoaXMgY2FzZSBwY29kZQo+IGp1
c3QgaWdub3JlcyB0aGUgaW5pdGlhbCB2YWx1ZSBpbiB0aGF0IHJlZ2lzdGVycywgYnV0IGJldHRl
cgo+IHNhZmUgdGhhbiBzb3JyeS4KPiAKPiBDYzogRGFuIENhcnBlbnRlciA8ZGFuLmNhcnBlbnRl
ckBvcmFjbGUuY29tPgo+IFJlcG9ydGVkLWJ5OiBEYW4gQ2FycGVudGVyIDxkYW4uY2FycGVudGVy
QG9yYWNsZS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KCkZhaXIgZW5vdWdoIHRvIGJlIGRlZmVuc2l2ZSwKUmV2aWV3
ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
