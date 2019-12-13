Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F88611E4E2
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 14:49:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E5CC6E88A;
	Fri, 13 Dec 2019 13:49:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3EAE6E88A
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 13:49:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19568180-1500050 for multiple; Fri, 13 Dec 2019 13:49:11 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191213133453.22152-1-ville.syrjala@linux.intel.com>
 <20191213133453.22152-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20191213133453.22152-4-ville.syrjala@linux.intel.com>
Message-ID: <157624494933.7535.13913041147105843426@skylake-alporthouse-com>
Date: Fri, 13 Dec 2019 13:49:09 +0000
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915/fbc: Nuke fbc_supported()
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDE5LTEyLTEzIDEzOjM0OjUxKQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gZmJjX3N1cHBv
cnRlZCgpIGlzIGp1c3QgYSBwb2ludGxlc3Mgd3JhcHBlciBmb3IgSEFTX0ZCQygpLiBHZXQKPiBy
aWQgb2YgaXQuIEluIHBsYWNlcyB3aGVyZSB3ZSdyZSBvcGVyYXRpbmcgb24gYSBzcGVjaWZpYyBw
bGFuZQo+IHdlIGNhbiByZXBsYWNlIHRoaXMgd2l0aCBhIHBsYW5lLT5oYXNfZmJjIGNoZWNrIHRv
IGF2b2lkCj4gZG9pbmcgYW55dGhpbmcgZm9yIGNydGNzIHRoYXQgZG9uJ3QgZXZlbiBzdXBwb3J0
IGZiYy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFA
bGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
