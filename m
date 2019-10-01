Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95199C36CB
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 16:14:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2CB789C07;
	Tue,  1 Oct 2019 14:14:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EB6389C07
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 14:14:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18680804-1500050 for multiple; Tue, 01 Oct 2019 15:14:47 +0100
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191001134534.14747-2-janusz.krzysztofik@linux.intel.com>
References: <20191001134534.14747-1-janusz.krzysztofik@linux.intel.com>
 <20191001134534.14747-2-janusz.krzysztofik@linux.intel.com>
Message-ID: <156993928289.1880.2454750875956461783@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 01 Oct 2019 15:14:42 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix i915_inject_load_error()
 name to read *_probe_*
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW51c3ogS3J6eXN6dG9maWsgKDIwMTktMTAtMDEgMTQ6NDU6MzMpCj4gQ29tbWl0
IDUwZDg0NDE4ZjU4NiAoImRybS9pOTE1OiBBZGQgaTkxNSB0byBpOTE1X2luamVjdF9wcm9iZV9m
YWlsdXJlIikKPiBpbnRyb2R1Y2VkIG5ldyBmdW5jdGlvbnMgdW5mb3J0dW5hdGVseSBuYW1lZCBp
bmNvbXBhdGlibHkgd2l0aCBydWxlcwo+IGVzdGFibGlzaGVkIGJ5IGNvbW1pdCBmMmRiNTNmMTRk
M2QgKCJkcm0vaTkxNTogUmVwbGFjZSAiX2xvYWQiIHdpdGgKPiAiX3Byb2JlIiBjb25zZXF1ZW50
bHkiKS4gIEZpeCBpdCBmb3IgY29uc2lzdGVuY3kuCj4gCj4gU3VnZ2VzdGVkLWJ5OiBNaWNoYcWC
IFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTog
SmFudXN6IEtyenlzenRvZmlrIDxqYW51c3oua3J6eXN6dG9maWtAbGludXguaW50ZWwuY29tPgo+
IENjOiBNaWNoYcWCIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4gQ2M6
IE1pY2hhxYIgV2luaWFyc2tpIDxtaWNoYWwud2luaWFyc2tpQGludGVsLmNvbT4KPiBDYzogUGlv
dHIgUGnDs3Jrb3dza2kgPHBpb3RyLnBpb3Jrb3dza2lAaW50ZWwuY29tPgo+IENjOiBUb21hc3og
TGlzIDx0b21hc3oubGlzQGludGVsLmNvbT4KPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMu
bGFodGluZW5AbGludXguaW50ZWwuY29tPgoKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
