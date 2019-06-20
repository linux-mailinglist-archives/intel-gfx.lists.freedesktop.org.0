Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA994C7CC
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 09:03:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 905F16E4F0;
	Thu, 20 Jun 2019 07:03:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1CB56E4EC
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 07:03:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16961261-1500050 
 for multiple; Thu, 20 Jun 2019 08:03:16 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jun 2019 08:03:17 +0100
Message-Id: <20190620070319.27729-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: Rings are always flushed
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

T3VyIGludGVsX3JpbmdzIGFyZSBhbHdheXMgZmx1c2hlZCBhcyB0aGV5IGFyZSBjb250aW51YWxs
eSB1c2VkIHRvIHN1Ym1pdApjb21tYW5kcyB0byB0aGUgR1BVLCBhbmQgc28gZG8gbm90IG5lZWQg
dG8gYmUgZmx1c2hlZCBvbiB1bnBpbm5pbmcuIFRoaXMKYXZvaWRzIHB1bGxpbmcgaW4gdGhlIGZs
dXNoX2dndHRfd3JpdGVzIGxvY2tpbmcgaW50b3Ugb3VyIGNvbnRleHQKdW5waW4sIHdoaWNoIHdl
IHdhbnQgdG8gYWxsb3cgZnJvbSBhdG9taWMgY29udGV4dCAoZm9yIHNpbXBsaWNpdHkpLgoKU2ln
bmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jIHwgMSArCiAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9y
aW5nYnVmZmVyLmMKaW5kZXggMTIwMTBlNzk4ODY4Li44YjFkYTU3YzM3NjQgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yaW5nYnVmZmVyLmMKQEAgLTEyMTksNiArMTIxOSw3IEBA
IHZvaWQgaW50ZWxfcmluZ191bnBpbihzdHJ1Y3QgaW50ZWxfcmluZyAqcmluZykKIAlpbnRlbF9y
aW5nX3Jlc2V0KHJpbmcsIHJpbmctPnRhaWwpOwogCiAJR0VNX0JVR19PTighcmluZy0+dm1hKTsK
KwlpOTE1X3ZtYV91bnNldF9nZ3R0X3dyaXRlKHJpbmctPnZtYSk7CiAJaWYgKGk5MTVfdm1hX2lz
X21hcF9hbmRfZmVuY2VhYmxlKHJpbmctPnZtYSkpCiAJCWk5MTVfdm1hX3VucGluX2lvbWFwKHJp
bmctPnZtYSk7CiAJZWxzZQotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
