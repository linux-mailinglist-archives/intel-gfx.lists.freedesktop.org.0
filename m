Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8059EAECE1
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 16:23:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74D3D6E0D6;
	Tue, 10 Sep 2019 14:23:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14C1D6E0D6
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 14:23:46 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18439691-1500050 
 for multiple; Tue, 10 Sep 2019 15:23:41 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Sep 2019 15:23:39 +0100
Message-Id: <20190910142339.17072-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190910134417.14085-1-chris@chris-wilson.co.uk>
References: <20190910134417.14085-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Force compilation with intel-iommu
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
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1ZyB8IDcgKysrKysrKwogMSBmaWxl
IGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L0tjb25maWcuZGVidWcgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLmRlYnVnCmlu
ZGV4IDAwNzg2YTE0MmZmMC4uYzVjMDBjYWQ2YmExIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9LY29uZmlnLmRlYnVnCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcu
ZGVidWcKQEAgLTIwLDYgKzIwLDEzIEBAIGNvbmZpZyBEUk1fSTkxNV9XRVJST1IKIGNvbmZpZyBE
Uk1fSTkxNV9ERUJVRwogICAgICAgICBib29sICJFbmFibGUgYWRkaXRpb25hbCBkcml2ZXIgZGVi
dWdnaW5nIgogICAgICAgICBkZXBlbmRzIG9uIERSTV9JOTE1CisJc2VsZWN0IFBDSV9NU0kKKwlz
ZWxlY3QgSU9NTVVfQVBJCisJc2VsZWN0IElPTU1VX0lPVkEKKwlzZWxlY3QgTkVFRF9ETUFfTUFQ
X1NUQVRFCisJc2VsZWN0IERNQVJfVEFCTEUKKwlzZWxlY3QgSU5URUxfSU9NTVUKKwlzZWxlY3Qg
SU5URUxfSU9NTVVfREVGQVVMVF9PTgogICAgICAgICBzZWxlY3QgREVCVUdfRlMKICAgICAgICAg
c2VsZWN0IFBSRUVNUFRfQ09VTlQKICAgICAgICAgc2VsZWN0IFJFRkNPVU5UX0ZVTEwKLS0gCjIu
MjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
