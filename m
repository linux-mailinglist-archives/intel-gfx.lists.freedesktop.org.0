Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2DB0C2E6F
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 09:55:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7C2389F38;
	Tue,  1 Oct 2019 07:55:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8964F89F38
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 07:55:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18675157-1500050 
 for multiple; Tue, 01 Oct 2019 08:55:31 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Oct 2019 08:55:27 +0100
Message-Id: <20191001075527.12879-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] TGL HAX drm/i915/tgl: Defer direct submission
 from interrupt context
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

LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDYgKysrKystCiAxIGZp
bGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMuYwppbmRleCBlZjllYjMzMzBhMzcuLjg5MDZkODZjNzZkZSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKQEAgLTIxNjcsMTAgKzIxNjcsMTQgQEAgc3RhdGlj
IHZvaWQgX19zdWJtaXRfcXVldWVfaW1tKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkK
IHsKIAlzdHJ1Y3QgaW50ZWxfZW5naW5lX2V4ZWNsaXN0cyAqIGNvbnN0IGV4ZWNsaXN0cyA9ICZl
bmdpbmUtPmV4ZWNsaXN0czsKIAorCWlmIChSRUFEX09OQ0UoZW5naW5lLT5leGVjbGlzdHMucGVu
ZGluZ1swXSkpCisJCXJldHVybjsKKwogCWlmIChyZXNldF9pbl9wcm9ncmVzcyhleGVjbGlzdHMp
KQogCQlyZXR1cm47IC8qIGRlZmVyIHVudGlsIHdlIHJlc3RhcnQgdGhlIGVuZ2luZSBmb2xsb3dp
bmcgcmVzZXQgKi8KIAotCWlmIChleGVjbGlzdHMtPnRhc2tsZXQuZnVuYyA9PSBleGVjbGlzdHNf
c3VibWlzc2lvbl90YXNrbGV0KQorCWlmIChleGVjbGlzdHMtPnRhc2tsZXQuZnVuYyA9PSBleGVj
bGlzdHNfc3VibWlzc2lvbl90YXNrbGV0ICYmCisJICAgICFpbl9pcnEoKSkKIAkJX19leGVjbGlz
dHNfc3VibWlzc2lvbl90YXNrbGV0KGVuZ2luZSk7CiAJZWxzZQogCQl0YXNrbGV0X2hpX3NjaGVk
dWxlKCZleGVjbGlzdHMtPnRhc2tsZXQpOwotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
