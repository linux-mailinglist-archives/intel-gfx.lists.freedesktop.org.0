Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F8D556A42
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 15:19:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 284C46E427;
	Wed, 26 Jun 2019 13:19:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2A576E427
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 13:19:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17031478-1500050 for multiple; Wed, 26 Jun 2019 14:19:14 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190626065303.31624-2-chris@chris-wilson.co.uk>
References: <20190626065303.31624-1-chris@chris-wilson.co.uk>
 <20190626065303.31624-2-chris@chris-wilson.co.uk>
Message-ID: <156155515028.2637.10811736221699001726@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 26 Jun 2019 14:19:10 +0100
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/selftests: Drop manual request
 wakerefs around hangcheck
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDYtMjYgMDc6NTI6NTkpCj4gV2Ugbm8gbG9uZ2Vy
IG5lZWQgdG8gbWFudWFsbHkgYWNxdWlyZSBhIHdha2VyZWYgZm9yIHJlcXVlc3QgZW1pc3Npb24s
IHNvCj4gZHJvcCB0aGUgcmVkdW5kYW50IHdha2VyZWZzLCBsZXR0aW5nIHVzIHRlc3Qgb3VyIHdh
a2VyZWYgaGFuZGxpbmcgbW9yZQo+IHByZWNpc2VseS4KClJlZmVyZW5jZXM6IDc5ZmZhYzg1OTlj
NCAoImRybS9pOTE1OiBJbnZlcnQgdGhlIEdFTSB3YWtlcmVmIGhpZXJhcmNoeSIpCj4gU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
