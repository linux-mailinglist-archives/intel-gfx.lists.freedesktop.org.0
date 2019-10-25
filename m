Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2EE1E5042
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2019 17:37:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33AA96EAAE;
	Fri, 25 Oct 2019 15:37:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FD8F6EA96
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 15:37:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18964855-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2019 16:37:30 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Oct 2019 16:37:23 +0100
Message-Id: <20191025153728.23689-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191025153728.23689-1-chris@chris-wilson.co.uk>
References: <20191025153728.23689-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/7] drm/i915: setup io-mapping for LMEM
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

RnJvbTogQWJkaWVsIEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVAbGludXguaW50ZWwuY29tPgoK
Q3JlYXRlIGFuIGlvLW1hcHBpbmcgdG8gZGVzY3JpYmUgdGhlIENQVSBhcGVydHVyZSBmb3IgbG1l
bS4KClNpZ25lZC1vZmYtYnk6IEFiZGllbCBKYW51bGd1ZSA8YWJkaWVsLmphbnVsZ3VlQGxpbnV4
LmludGVsLmNvbT4KQ2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KUmV2
aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lvbl9sbWVtLmMgfCAyOCArKysrKysrKysrKysr
KysrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lvbl9sbWVt
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9yZWdpb25fbG1lbS5jCmluZGV4IDE5OTUz
MjA1NmUxYi4uOWEzNTFhZjQ1Y2U2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9yZWdpb25fbG1lbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lv
bl9sbWVtLmMKQEAgLTksOCArOSwzMiBAQAogI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9yZWdpb24u
aCIKICNpbmNsdWRlICJpbnRlbF9yZWdpb25fbG1lbS5oIgogCitzdGF0aWMgdm9pZAorcmVnaW9u
X2xtZW1fcmVsZWFzZShzdHJ1Y3QgaW50ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtKQoreworCWlvX21h
cHBpbmdfZmluaSgmbWVtLT5pb21hcCk7CisJaW50ZWxfbWVtb3J5X3JlZ2lvbl9yZWxlYXNlX2J1
ZGR5KG1lbSk7Cit9CisKK3N0YXRpYyBpbnQKK3JlZ2lvbl9sbWVtX2luaXQoc3RydWN0IGludGVs
X21lbW9yeV9yZWdpb24gKm1lbSkKK3sKKwlpbnQgcmV0OworCisJaWYgKCFpb19tYXBwaW5nX2lu
aXRfd2MoJm1lbS0+aW9tYXAsCisJCQkJbWVtLT5pb19zdGFydCwKKwkJCQlyZXNvdXJjZV9zaXpl
KCZtZW0tPnJlZ2lvbikpKQorCQlyZXR1cm4gLUVJTzsKKworCXJldCA9IGludGVsX21lbW9yeV9y
ZWdpb25faW5pdF9idWRkeShtZW0pOworCWlmIChyZXQpCisJCWlvX21hcHBpbmdfZmluaSgmbWVt
LT5pb21hcCk7CisKKwlyZXR1cm4gcmV0OworfQorCiBjb25zdCBzdHJ1Y3QgaW50ZWxfbWVtb3J5
X3JlZ2lvbl9vcHMgaW50ZWxfcmVnaW9uX2xtZW1fb3BzID0gewotCS5pbml0ID0gaW50ZWxfbWVt
b3J5X3JlZ2lvbl9pbml0X2J1ZGR5LAotCS5yZWxlYXNlID0gaW50ZWxfbWVtb3J5X3JlZ2lvbl9y
ZWxlYXNlX2J1ZGR5LAorCS5pbml0ID0gcmVnaW9uX2xtZW1faW5pdCwKKwkucmVsZWFzZSA9IHJl
Z2lvbl9sbWVtX3JlbGVhc2UsCiAJLmNyZWF0ZV9vYmplY3QgPSBfX2k5MTVfZ2VtX2xtZW1fb2Jq
ZWN0X2NyZWF0ZSwKIH07Ci0tIAoyLjI0LjAucmMxCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
