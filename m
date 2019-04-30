Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A6FF272
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 11:07:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73798890FE;
	Tue, 30 Apr 2019 09:07:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31F09890FE
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 09:07:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16404486-1500050 for multiple; Tue, 30 Apr 2019 10:07:08 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <b2e49bdb-af3d-962e-314d-9a59ff4d3e0e@linux.intel.com>
References: <20190429180020.27274-1-chris@chris-wilson.co.uk>
 <20190429180020.27274-4-chris@chris-wilson.co.uk>
 <b2e49bdb-af3d-962e-314d-9a59ff4d3e0e@linux.intel.com>
Message-ID: <155661522684.27886.11138143515403810714@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 30 Apr 2019 10:07:06 +0100
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: Disable semaphore busywaits
 on saturated systems
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
Cc: Dmitry Ermilov <dmitry.ermilov@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0wNC0zMCAwOTo1NTo1OSkKPiAKPiBPbiAyOS8w
NC8yMDE5IDE5OjAwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gU28gSSBhbSBzdGlsbCBsZWFuaW5n
IHRvd2FyZHMgYmVpbmcgY2F1dGlvdXMgYW5kIGp1c3QgYWJhbmRvbmluZyAKPiBzZW1hcGhvcmVz
IGZvciBub3cuCgpGd2l3LCB3ZSBoYXZlIGFub3RoZXIgNCB3ZWVrcyB0byBwdWxsIHRoZSBwbHVn
IGZvciA1LjIuCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
