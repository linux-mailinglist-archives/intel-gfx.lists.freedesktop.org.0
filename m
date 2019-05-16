Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1D521071
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 00:07:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D1A788007;
	Thu, 16 May 2019 22:07:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E36388007
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2019 22:07:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16582218-1500050 for multiple; Thu, 16 May 2019 23:07:45 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190516215634.16675-1-daniele.ceraolospurio@intel.com>
 <20190516215634.16675-5-daniele.ceraolospurio@intel.com>
In-Reply-To: <20190516215634.16675-5-daniele.ceraolospurio@intel.com>
Message-ID: <155804446344.21432.9807432886672990654@skylake-alporthouse-com>
Date: Thu, 16 May 2019 23:07:43 +0100
Subject: Re: [Intel-gfx] [RFC 4/7] drm/i915: move and rename i915_runtime_pm
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

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA1LTE2IDIyOjU2OjMxKQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmgKPiBpbmRleCBiOTY0Y2E3YWY5Yzgu
LjBlMzgxN2Y5Nzg1ZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9y
dW50aW1lX3BtLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3Bt
LmgKPiBAQCAtNiw2ICs2LDcgQEAKPiAgI2lmbmRlZiBfX0lOVEVMX1JVTlRJTUVfUE1fSF9fCj4g
ICNkZWZpbmUgX19JTlRFTF9SVU5USU1FX1BNX0hfXwo+ICAKPiArI2luY2x1ZGUgPGxpbnV4L2Rl
dmljZS5oPgoKVGhlcmUgZG9lc24ndCBzZWVtIHRvIGJlIGFueSBwZWVraW5nIGludG8gc3RydWN0
IGRldmljZSwgc28gZG8gd2Ugbm90Cmp1c3QgbmVlZCB0aGUgc3RydWN0IGRldmljZSBmb3J3YXJk
IGRlY2wgaGVyZT8KCj4gICNpbmNsdWRlIDxsaW51eC9zdGFja2RlcG90Lmg+Cj4gICNpbmNsdWRl
IDxsaW51eC90eXBlcy5oPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
