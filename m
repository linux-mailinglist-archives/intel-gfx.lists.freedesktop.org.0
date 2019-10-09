Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0A9D0BC2
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 11:49:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9A0F6E950;
	Wed,  9 Oct 2019 09:49:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 183BF6E950;
 Wed,  9 Oct 2019 09:49:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18774966-1500050 for multiple; Wed, 09 Oct 2019 10:49:12 +0100
MIME-Version: 1.0
To: Colin King <colin.king@canonical.com>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191009093935.17895-1-colin.king@canonical.com>
References: <20191009093935.17895-1-colin.king@canonical.com>
Message-ID: <157061455107.18808.11664822517679571894@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 09 Oct 2019 10:49:11 +0100
Subject: Re: [Intel-gfx] [PATCH][next] drm/i915: remove redundant variable
 err
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDb2xpbiBLaW5nICgyMDE5LTEwLTA5IDEwOjM5OjM1KQo+IEZyb206IENvbGluIElh
biBLaW5nIDxjb2xpbi5raW5nQGNhbm9uaWNhbC5jb20+Cj4gCj4gQW4gZWFybGllciBjb21taXQg
cmVtb3ZlZCBhbnkgZXJyb3IgYXNzaWdubWVudHMgdG8gZXJyIGFuZCB3ZQo+IGFyZSBub3cgbGVm
dCB3aXRoIGEgemVybyBhc3NpZ25tZW50IHRvIGVyciBhbmQgYSBjaGVjayB0aGF0IGlzCj4gYWx3
YXlzIGZhbHNlLiBDbGVhbiB0aGlzIHVwIGJ5IHJlbW92aW5nIHRoZSByZWR1bmRhbnQgdmFyaWFi
bGUKPiBlcnIgYW5kIHRoZSBlcnJvciBjaGVjay4KCk9oLCB3ZSBhZGQgb25lIGFnYWluIHNob3J0
bHkuIE1pZ2h0IGFzIHdlbGwgd2FpdC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
