Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 002211786FC
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 01:24:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1DD76EA67;
	Wed,  4 Mar 2020 00:24:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3F2C6EA67
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 00:24:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20435177-1500050 
 for multiple; Wed, 04 Mar 2020 00:23:32 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Mar 2020 00:23:31 +0000
Message-Id: <20200304002331.2126072-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gvt: Inlcude intel_gvt.h where needed
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2d2dC5jOjI2NDo2OiBlcnJvcjogbm8gcHJldmlvdXMg
cHJvdG90eXBlIGZvciDigJhpbnRlbF9ndnRfY2xlYW5fZGV2aWNl4oCZIFstV2Vycm9yPW1pc3Np
bmctcHJvdG90eXBlc10KZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2d2dC5jOjMwMTo1OiBlcnJv
cjogbm8gcHJldmlvdXMgcHJvdG90eXBlIGZvciDigJhpbnRlbF9ndnRfaW5pdF9kZXZpY2XigJkg
Wy1XZXJyb3I9bWlzc2luZy1wcm90b3R5cGVzXQoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFA
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9ndnQuYyB8IDEgKwogMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3Z0L2d2dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2d2dC5jCmluZGV4IDg3
YmVkMzJmMTE5MS4uYTEzNjdiZDRmZTUwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndnQvZ3Z0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2d2dC5jCkBAIC0zNSw2
ICszNSw3IEBACiAjaW5jbHVkZSA8bGludXgva3RocmVhZC5oPgogCiAjaW5jbHVkZSAiaTkxNV9k
cnYuaCIKKyNpbmNsdWRlICJpbnRlbF9ndnQuaCIKICNpbmNsdWRlICJndnQuaCIKICNpbmNsdWRl
IDxsaW51eC92ZmlvLmg+CiAjaW5jbHVkZSA8bGludXgvbWRldi5oPgotLSAKMi4yNS4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
