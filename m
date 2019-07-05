Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5974F60A4A
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2019 18:31:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC0936E501;
	Fri,  5 Jul 2019 16:31:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E34066E501
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jul 2019 16:31:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17146074-1500050 for multiple; Fri, 05 Jul 2019 17:31:06 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190705150713.23401-1-chris@chris-wilson.co.uk>
References: <20190705142908.4921-4-mika.kuoppala@linux.intel.com>
 <20190705150713.23401-1-chris@chris-wilson.co.uk>
Message-ID: <156234426508.19568.18051982001969746582@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 05 Jul 2019 17:31:05 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gtt: Introduce release_pd_entry
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDctMDUgMTY6MDc6MTMpCj4gRnJvbTogTWlrYSBL
dW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gQnkgZW5jYXBzdWxh
dGluZyB0aGUgbG9ja2luZyB1cHBlciBsZXZlbCBhbmQgdXNlZCBjaGVjayBmb3IgZW50cnkKPiBp
bnRvIGEgaGVscGVyIGZ1bmN0aW9uLCB3ZSBjYW4gdXNlIGl0IGluIGFsbCBjYWxsc2l0ZXMuCj4g
Cj4gdjI6IGdldCByaWQgb2YgYXRvbWljX3JlYWRzIG9uIGxvd2VyIGxldmVsIGNsZWFycyAoQ2hy
aXMpCj4gCj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IFNp
Z25lZC1vZmYtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29t
PgoKQSBuaWNlIGJpdCBvZiBuZWVkbGVzcyBkdXBsaWNpdHkgZWxpbWluYXRlZC4KUmV2aWV3ZWQt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
