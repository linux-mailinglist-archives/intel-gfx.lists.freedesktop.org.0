Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC6DDFEC7
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 09:56:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FBE06E429;
	Tue, 22 Oct 2019 07:56:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A3186E42E
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 07:56:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18920670-1500050 for multiple; Tue, 22 Oct 2019 08:56:35 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191022075151.5781-2-chris@chris-wilson.co.uk>
References: <20191022075151.5781-1-chris@chris-wilson.co.uk>
 <20191022075151.5781-2-chris@chris-wilson.co.uk>
Message-ID: <157173099231.2684.14654341150413322087@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 22 Oct 2019 08:56:32 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Defer mocs setup until
 after the initial context is loaded
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTAtMjIgMDg6NTE6NTEpCj4gT24gbXkga2JsIGd0
NGUsIHRoZXJlIGlzIGEgZGlzdGluY3Rpb24gYmV0d2VlbiB0aGUgcG93ZXIgY29udGV4dCBhbmQg
dGhlCj4gbm9ybWFsIGNvbnRleHRzLiBXZSBtdXN0IGRlbGF5IHRoZSBtb2NzIHNldHVwIHVudGls
IGFmdGVyIHdlIGhhdmUgcHJpbWVkCj4gdGhlIGtlcm5lbCBjb250ZXh0IHRvIHJlY29yZCB0aGUg
bW9jcyByZWdpc3RlciBzZXR0aW5ncyB3aXRoaW4gdGhlCj4gY29udGV4dCBpbWFnZS4KPiAKPiBG
aXhlczogZWNhMGI3MjA4OTY5ICgiZHJtL2k5MTU6IERvIGluaXRpYWwgbW9jcyBjb25maWd1cmF0
aW9uIGRpcmVjdGx5IikKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KPiBDYzogUHJhdGhhcCBLdW1hciBWYWxzYW4gPHByYXRoYXAua3VtYXIu
dmFsc2FuQGludGVsLmNvbT4KPiBDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51
eC5pbnRlbC5jb20+CgpIbW0sIGFmdGVyIHNlbmRpbmcgdGhlIHBhdGNoLCBJIHJlcmFuIHRoZSB0
ZXN0cyBhbmQgaXQgaGFkIGxvc3QgdGhlIGwzY2MKY29uZmlndXJhdGlvbiBhZ2Fpbi4gUHJvYmxl
bSBub3Qgc29sdmVkLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
