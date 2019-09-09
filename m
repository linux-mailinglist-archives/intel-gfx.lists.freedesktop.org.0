Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1EA3AD77E
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 13:00:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FE2E89AB9;
	Mon,  9 Sep 2019 11:00:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE9FF89A57
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 11:00:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18424997-1500050 
 for multiple; Mon, 09 Sep 2019 12:00:14 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Sep 2019 12:00:09 +0100
Message-Id: <20190909110011.8958-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190909110011.8958-1-chris@chris-wilson.co.uk>
References: <20190909110011.8958-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/6] drm/i915: Force compilation with
 intel-iommu for CI validation
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
LQogZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1ZyB8IDIgKysKIDEgZmlsZSBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9L
Y29uZmlnLmRlYnVnIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1ZwppbmRleCAw
MDc4NmExNDJmZjAuLmViY2I2ZGJjMjM5MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvS2NvbmZpZy5kZWJ1ZworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLmRlYnVn
CkBAIC0yMCw2ICsyMCw4IEBAIGNvbmZpZyBEUk1fSTkxNV9XRVJST1IKIGNvbmZpZyBEUk1fSTkx
NV9ERUJVRwogICAgICAgICBib29sICJFbmFibGUgYWRkaXRpb25hbCBkcml2ZXIgZGVidWdnaW5n
IgogICAgICAgICBkZXBlbmRzIG9uIERSTV9JOTE1CisJc2VsZWN0IFBDSV9NU0kKKwlzZWxlY3Qg
SU5URUxfSU9NTVUKICAgICAgICAgc2VsZWN0IERFQlVHX0ZTCiAgICAgICAgIHNlbGVjdCBQUkVF
TVBUX0NPVU5UCiAgICAgICAgIHNlbGVjdCBSRUZDT1VOVF9GVUxMCi0tIAoyLjIzLjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
