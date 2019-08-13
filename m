Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A6678BA28
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2019 15:29:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E70489DA2;
	Tue, 13 Aug 2019 13:29:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C44C789DA8
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2019 13:29:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18000724-1500050 
 for multiple; Tue, 13 Aug 2019 14:29:17 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Aug 2019 14:29:16 +0100
Message-Id: <20190813132916.20382-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190813132916.20382-1-chris@chris-wilson.co.uk>
References: <20190813132916.20382-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Save/restore interrupts around
 breadcrumb disable
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

U3RvcCBhc3N1bWluZyB3ZSBvbmx5IGdldCBjYWxsZWQgd2l0aCBpcnFzLW9uIGZvciBkaXNhcm1p
bmcgdGhlCmJyZWFkY3J1bWJzLCBhbmQgZG8gYSBmdWxsIHNhdmUvcmVzdG9yZSBzcGluX2xvY2tf
aXJxLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+CkNjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9icmVhZGNydW1icy5jIHwgNSArKystLQog
MSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9icmVhZGNydW1icy5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfYnJlYWRjcnVtYnMuYwppbmRleCAxNWJiZGQ4Yzc1NTIu
LjJiYzljNDYwZTc4ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
YnJlYWRjcnVtYnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9icmVhZGNy
dW1icy5jCkBAIC02NywxNCArNjcsMTUgQEAgc3RhdGljIHZvaWQgX19pbnRlbF9icmVhZGNydW1i
c19kaXNhcm1faXJxKHN0cnVjdCBpbnRlbF9icmVhZGNydW1icyAqYikKIHZvaWQgaW50ZWxfZW5n
aW5lX2Rpc2FybV9icmVhZGNydW1icyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiB7
CiAJc3RydWN0IGludGVsX2JyZWFkY3J1bWJzICpiID0gJmVuZ2luZS0+YnJlYWRjcnVtYnM7CisJ
dW5zaWduZWQgbG9uZyBmbGFnczsKIAogCWlmICghYi0+aXJxX2FybWVkKQogCQlyZXR1cm47CiAK
LQlzcGluX2xvY2tfaXJxKCZiLT5pcnFfbG9jayk7CisJc3Bpbl9sb2NrX2lycXNhdmUoJmItPmly
cV9sb2NrLCBmbGFncyk7CiAJaWYgKGItPmlycV9hcm1lZCkKIAkJX19pbnRlbF9icmVhZGNydW1i
c19kaXNhcm1faXJxKGIpOwotCXNwaW5fdW5sb2NrX2lycSgmYi0+aXJxX2xvY2spOworCXNwaW5f
dW5sb2NrX2lycXJlc3RvcmUoJmItPmlycV9sb2NrLCBmbGFncyk7CiB9CiAKIHN0YXRpYyBpbmxp
bmUgYm9vbCBfX3JlcXVlc3RfY29tcGxldGVkKGNvbnN0IHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJx
KQotLSAKMi4yMy4wLnJjMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
