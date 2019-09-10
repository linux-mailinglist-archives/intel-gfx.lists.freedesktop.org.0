Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 61994AEBD8
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 15:44:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 393AC6E8E8;
	Tue, 10 Sep 2019 13:44:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B18E36E0BB
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 13:44:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18439213-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 14:44:17 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Sep 2019 14:44:15 +0100
Message-Id: <20190910134417.14085-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/3] drm/i915: Force compilation with intel-iommu
 for CI validation
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

U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0t
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1ZyB8IDYgKysrKysrCiAxIGZpbGUg
Y2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvS2NvbmZpZy5kZWJ1ZyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcuZGVidWcKaW5k
ZXggMDA3ODZhMTQyZmYwLi4wNjcwOWRkNmEyZTAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L0tjb25maWcuZGVidWcKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5k
ZWJ1ZwpAQCAtMjAsNiArMjAsMTIgQEAgY29uZmlnIERSTV9JOTE1X1dFUlJPUgogY29uZmlnIERS
TV9JOTE1X0RFQlVHCiAgICAgICAgIGJvb2wgIkVuYWJsZSBhZGRpdGlvbmFsIGRyaXZlciBkZWJ1
Z2dpbmciCiAgICAgICAgIGRlcGVuZHMgb24gRFJNX0k5MTUKKwlzZWxlY3QgUENJX01TSQorCXNl
bGVjdCBJT01NVV9BUEkKKwlzZWxlY3QgSU9NTVVfSU9WQQorCXNlbGVjdCBORUVEX0RNQV9NQVBf
U1RBVEUKKwlzZWxlY3QgRE1BUl9UQUJMRQorCXNlbGVjdCBJTlRFTF9JT01NVQogICAgICAgICBz
ZWxlY3QgREVCVUdfRlMKICAgICAgICAgc2VsZWN0IFBSRUVNUFRfQ09VTlQKICAgICAgICAgc2Vs
ZWN0IFJFRkNPVU5UX0ZVTEwKLS0gCjIuMjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
