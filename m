Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C23718A25D
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 19:31:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D67289B01;
	Wed, 18 Mar 2020 18:31:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 340C589B01;
 Wed, 18 Mar 2020 18:31:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20607595-1500050 for multiple; Wed, 18 Mar 2020 18:31:18 +0000
MIME-Version: 1.0
In-Reply-To: <20200318182518.31618-1-ville.syrjala@linux.intel.com>
References: <20200318182518.31618-1-ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 dri-devel@lists.freedesktop.org
Message-ID: <158455627665.6873.13693628810443739641@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 18 Mar 2020 18:31:16 +0000
Subject: Re: [Intel-gfx] [PATCH] drm: Skip drm_mode_config_validate() for
 !modeset
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTAzLTE4IDE4OjI1OjE4KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gZHJtX21vZGVf
Y29uZmlnX2luaXQoKSBtYXkgbm90IGhhdmUgYmVlbiBjYWxsZWQgd2hlbiB0aGUgZHJpdmVyL2Rl
dmljZQo+IGRvZXNuJ3Qgc3VwcG9ydCBtb2Rlc2V0LiBUaGF0IHdpbGwgY2F1c2UgZHJtX21vZGVf
Y29uZmlnX3ZhbGlkYXRlKCkKPiB0byBvb3BzLiBTa2lwIHRoZSB2YWxpZGF0aW9uIGZvciAhbW9k
ZXNldC4KPiAKPiBUT0RPOiBXZSBtYXkgd2FudCB0byBjb25zaWRlciBjYWxsaW5nIGRybV9tb2Rl
X2NvbmZpZ19pbml0KCkKPiB1bmNvbmRpdGlvbmFsbHkgdG8gYXZvaWQgc2ltaWxhciBpc3N1ZXMg
ZWxzZXdoZXJlLi4uCj4gCj4gRml4ZXM6IDc0ZDJhYWNiZTg0MCAoImRybTogVmFsaWRhdGUgZW5j
b2Rlci0+cG9zc2libGVfY2xvbmVzIikKPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
