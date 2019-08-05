Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCA9820F8
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2019 17:59:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 302CB6E4BA;
	Mon,  5 Aug 2019 15:59:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86DC089FD9;
 Mon,  5 Aug 2019 15:59:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17894656-1500050 for multiple; Mon, 05 Aug 2019 16:58:58 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
References: <20190805154554.3476-1-christian.koenig@amd.com>
In-Reply-To: <20190805154554.3476-1-christian.koenig@amd.com>
Message-ID: <156502073694.28464.1595909334726483969@skylake-alporthouse-com>
Date: Mon, 05 Aug 2019 16:58:56 +0100
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: stop pruning reservation
 object after wait
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

UXVvdGluZyBDaHJpc3RpYW4gS8O2bmlnICgyMDE5LTA4LTA1IDE2OjQ1OjUwKQo+IFRoZSByZXNl
cnZhdGlvbiBvYmplY3Qgc2hvdWxkIGJlIGNhcGFibGUgb2YgaGFuZGxpbmcgaXRzIGludGVybmFs
IG1lbW9yeQo+IG1hbmFnZW1lbnQgaXRzZWxmLiBBbmQgc2luY2Ugd2Ugc2VhcmNoIGZvciBhIGZy
ZWUgc2xvdCB0byBhZGQgdGhlIGZlbmNlCj4gZnJvbSB0aGUgYmVnaW5uaW5nIHRoaXMgaXMgYWN0
dWFsbHkgYSB3YXN0ZSBvZiB0aW1lIGFuZCBvbmx5IG1pbmltYWwgaGVscGZ1bC4KCiJGcm9tIHRo
ZSBiZWdpbm5pbmc/IiBBdHRlbXB0aW5nIHRvIHBydW5lIHNpZ25hbGVkIGZlbmNlcyBvbiBpbnNl
cnRpb24gaXMKcXVpdGUgcmVjZW50LgoKSG93ZXZlciwgdGhhdCBkb2Vzbid0IGhlbHAgdGhlIGNh
c2VzIHdoZXJlIHJlc2VydmF0aW9uX29iamVjdCBrZWVwcyBvbgpob2xkaW5nIGEgcmVmZXJlbmNl
IHRvIHRoZSBmZW5jZXMgZm9yIGlkbGUgb2JqZWN0cy4gSXQncyBhbiBhYnNvbHV0ZQpuaWdodG1h
cmUgb2YgYSByZWZlcmVuY2UgdHJhcC4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
