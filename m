Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8AD0420D8
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2019 11:32:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CAC1894C3;
	Wed, 12 Jun 2019 09:32:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8230D89467
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jun 2019 09:32:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16873869-1500050 
 for multiple; Wed, 12 Jun 2019 10:31:13 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Jun 2019 10:31:11 +0100
Message-Id: <20190612093111.11684-9-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190612093111.11684-1-chris@chris-wilson.co.uk>
References: <20190612093111.11684-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 8/8] drm/i915: Add a label for config
 DRM_I915_SPIN_REQUEST
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

SWYgd2UgZG9uJ3QgZ2l2ZSBpdCBhIGxhYmVsLCBpdCBkb2VzIG5vdCBhcHBlYXIgYXMgYSBjb25m
aWd1cmF0aW9uCm9wdGlvbi4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgpDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5p
bnRlbC5jb20+ClJldmlld2VkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4
LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLnByb2ZpbGUgfCAy
ICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLnByb2ZpbGUgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9LY29uZmlnLnByb2ZpbGUKaW5kZXggNjEzYjc1M2NiMjdhLi44MjczZDNiYWFm
ZTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcucHJvZmlsZQorKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLnByb2ZpbGUKQEAgLTEzLDcgKzEzLDcgQEAg
Y29uZmlnIERSTV9JOTE1X1VTRVJGQVVMVF9BVVRPU1VTUEVORAogCSAgcnVudGltZSBwbSBhdXRv
c3VzcGVuZCBkZWxheSB0dW5hYmxlLgogCiBjb25maWcgRFJNX0k5MTVfU1BJTl9SRVFVRVNUCi0J
aW50CisJaW50ICJCdXN5d2FpdCBmb3IgcmVxdWVzdCBjb21wbGV0aW9uICh1cykiCiAJZGVmYXVs
dCA1ICMgbWljcm9zZWNvbmRzCiAJaGVscAogCSAgQmVmb3JlIHNsZWVwaW5nIHdhaXRpbmcgZm9y
IGEgcmVxdWVzdCAoR1BVIG9wZXJhdGlvbikgdG8gY29tcGxldGUsCi0tIAoyLjIwLjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
