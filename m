Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7039C10DA80
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 21:14:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9430E6E97C;
	Fri, 29 Nov 2019 20:14:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D41A46E951
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 20:14:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19399574-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 20:14:28 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Nov 2019 20:14:27 +0000
Message-Id: <20191129201427.1398860-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191129201427.1398860-1-chris@chris-wilson.co.uk>
References: <20191129201427.1398860-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915: Serialise i915_active_wait() with
 its retirement
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

QXMgdGhlIGk5MTVfYWN0aXZlLnJldGlyZSgpIG1heSBiZSBydW5uaW5nIG9uIGFub3RoZXIgQ1BV
IGFzIHdlIGRldGVjdAp0aGF0IHRoZSBpOTE1X2FjdGl2ZSBpcyBpZGxlLCB3ZSBtYXkgbm90IHdh
aXQgZm9yIHRoZSByZXRpcmVtZW50IGl0c2VsZi4KV2FpdCBmb3IgdGhlIHJlbW90ZSBjYWxsYmFj
ayBieSB3YWl0aW5nIGZvciB0aGUgcmV0aXJlbWVudCB3b3JrZXIuCgpCdWd6aWxsYTogaHR0cHM6
Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEyNDI0ClNpZ25lZC1vZmYt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpSZXZpZXdlZC1ieTog
VHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUuYwppbmRleCA0NzkxOTVlY2JjNmMuLmU4
NjMwZWUzMzMzNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5jCkBAIC00NjksNiArNDY5
LDcgQEAgaW50IGk5MTVfYWN0aXZlX3dhaXQoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYpCiAJaWYg
KHdhaXRfdmFyX2V2ZW50X2ludGVycnVwdGlibGUocmVmLCBpOTE1X2FjdGl2ZV9pc19pZGxlKHJl
ZikpKQogCQlyZXR1cm4gLUVJTlRSOwogCisJZmx1c2hfd29yaygmcmVmLT53b3JrKTsKIAlyZXR1
cm4gMDsKIH0KIAotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
