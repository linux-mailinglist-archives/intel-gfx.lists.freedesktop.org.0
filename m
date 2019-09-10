Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC70AEBD9
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 15:44:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9DD36E0BB;
	Tue, 10 Sep 2019 13:44:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B86B6E0BB
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 13:44:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18439215-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 14:44:18 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Sep 2019 14:44:17 +0100
Message-Id: <20190910134417.14085-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190910134417.14085-1-chris@chris-wilson.co.uk>
References: <20190910134417.14085-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/3] iommu/intel: Ignore igfx_off
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

LS0tCiBkcml2ZXJzL2lvbW11L2ludGVsLWlvbW11LmMgfCAyIC0tCiAxIGZpbGUgY2hhbmdlZCwg
MiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2lvbW11L2ludGVsLWlvbW11LmMg
Yi9kcml2ZXJzL2lvbW11L2ludGVsLWlvbW11LmMKaW5kZXggMzRmNmEzZDkzYWUyLi5jOThjZGZk
OTE2OTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvaW9tbXUvaW50ZWwtaW9tbXUuYworKysgYi9kcml2
ZXJzL2lvbW11L2ludGVsLWlvbW11LmMKQEAgLTQzOSw4ICs0MzksNiBAQCBzdGF0aWMgaW50IF9f
aW5pdCBpbnRlbF9pb21tdV9zZXR1cChjaGFyICpzdHIpCiAJCQlub19wbGF0Zm9ybV9vcHRpbiA9
IDE7CiAJCQlwcl9pbmZvKCJJT01NVSBkaXNhYmxlZFxuIik7CiAJCX0gZWxzZSBpZiAoIXN0cm5j
bXAoc3RyLCAiaWdmeF9vZmYiLCA4KSkgewotCQkJZG1hcl9tYXBfZ2Z4ID0gMDsKLQkJCXByX2lu
Zm8oIkRpc2FibGUgR0ZYIGRldmljZSBtYXBwaW5nXG4iKTsKIAkJfSBlbHNlIGlmICghc3RybmNt
cChzdHIsICJmb3JjZWRhYyIsIDgpKSB7CiAJCQlwcl9pbmZvKCJGb3JjaW5nIERBQyBmb3IgUENJ
IGRldmljZXNcbiIpOwogCQkJZG1hcl9mb3JjZWRhYyA9IDE7Ci0tIAoyLjIzLjAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
