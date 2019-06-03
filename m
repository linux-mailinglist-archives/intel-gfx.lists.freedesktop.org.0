Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D29331F0
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2019 16:20:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D27D489240;
	Mon,  3 Jun 2019 14:20:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4164C89242
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2019 14:20:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16775794-1500050 
 for multiple; Mon, 03 Jun 2019 14:59:16 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Jun 2019 14:59:10 +0100
Message-Id: <20190603135910.15979-15-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190603135910.15979-1-chris@chris-wilson.co.uk>
References: <20190603135910.15979-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/15] drm/i915: Add a label for config
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
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5wcm9maWxlIHwgMiAr
LQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5wcm9maWxlIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvS2NvbmZpZy5wcm9maWxlCmluZGV4IDYxM2I3NTNjYjI3YS4uODI3M2QzYmFhZmU0
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLnByb2ZpbGUKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5wcm9maWxlCkBAIC0xMyw3ICsxMyw3IEBAIGNv
bmZpZyBEUk1fSTkxNV9VU0VSRkFVTFRfQVVUT1NVU1BFTkQKIAkgIHJ1bnRpbWUgcG0gYXV0b3N1
c3BlbmQgZGVsYXkgdHVuYWJsZS4KIAogY29uZmlnIERSTV9JOTE1X1NQSU5fUkVRVUVTVAotCWlu
dAorCWludCAiQnVzeXdhaXQgZm9yIHJlcXVlc3QgY29tcGxldGlvbiAodXMpIgogCWRlZmF1bHQg
NSAjIG1pY3Jvc2Vjb25kcwogCWhlbHAKIAkgIEJlZm9yZSBzbGVlcGluZyB3YWl0aW5nIGZvciBh
IHJlcXVlc3QgKEdQVSBvcGVyYXRpb24pIHRvIGNvbXBsZXRlLAotLSAKMi4yMC4xCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
