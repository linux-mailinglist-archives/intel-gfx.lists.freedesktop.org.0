Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 731E81F708
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2019 17:01:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1860E891DD;
	Wed, 15 May 2019 15:00:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2708A891F4
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2019 15:00:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16566215-1500050 
 for multiple; Wed, 15 May 2019 16:00:41 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 May 2019 16:00:41 +0100
Message-Id: <20190515150042.8409-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190515150042.8409-1-chris@chris-wilson.co.uk>
References: <20190515150042.8409-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Hook into the reboot notifier to
 cancel outstanding GPU operations
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
Cc: janusz.krzysztofik@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2hlbiB0aGUgc3lzdGVtIGlzIGJlaW5nIHNodXRkb3duLCB3ZSBubyBsb25nZXIgY2FyZSBhYm91
dCB0aGUgcmVzdWx0cwpvZiBvdXRzdGFuZGluZyBHUFUgb3BlcmF0aW9ucywgYW5kIHNvIHdlIGNh
biBjYW5jZWwgdGhlbSB0byBzcGVlZCB1cCB0aGUKcmVib290LiBUaGlzIGhlbHBzIG1vc3QgaWYg
d2UgaGFwcGVuIHRvIGJlIHN0dWNrIHdhaXRpbmcgZm9yIGEgdGltZW91dAp0byBkZWNsYXJlIHRo
ZSBHUFUgaHVuZy4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgfCAxNCArKysr
KysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9wY2kuYwppbmRleCBlODExOWJjYmYxNzguLjQwMWViNmM3MWFlMSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3BjaS5jCkBAIC04OTgsMTEgKzg5OCwyNSBAQCBzdGF0aWMgaW50IGk5MTVfcGNpX3By
b2JlKHN0cnVjdCBwY2lfZGV2ICpwZGV2LCBjb25zdCBzdHJ1Y3QgcGNpX2RldmljZV9pZCAqZW50
KQogCXJldHVybiAwOwogfQogCitzdGF0aWMgdm9pZCBpOTE1X3BjaV9zaHV0ZG93bihzdHJ1Y3Qg
cGNpX2RldiAqcGRldikKK3sKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNTsKKworCWk5
MTUgPSBwY2lfZ2V0X2RydmRhdGEocGRldik7CisJaWYgKCFpOTE1KSAvKiBkcml2ZXIgbG9hZCBh
Ym9ydGVkPyAqLworCQlyZXR1cm47CisKKwkvKiBDYW5jZWwgYW55IG91dHN0YW5kaW5nIHJlbmRl
cmluZyAqLworCWlmIChSRUFEX09OQ0UoaTkxNS0+Z3QuYXdha2UpKQorCQlpOTE1X2dlbV9zZXRf
d2VkZ2VkKGk5MTUpOworfQorCiBzdGF0aWMgc3RydWN0IHBjaV9kcml2ZXIgaTkxNV9wY2lfZHJp
dmVyID0gewogCS5uYW1lID0gRFJJVkVSX05BTUUsCiAJLmlkX3RhYmxlID0gcGNpaWRsaXN0LAog
CS5wcm9iZSA9IGk5MTVfcGNpX3Byb2JlLAogCS5yZW1vdmUgPSBpOTE1X3BjaV9yZW1vdmUsCisJ
LnNodXRkb3duID0gaTkxNV9wY2lfc2h1dGRvd24sCiAJLmRyaXZlci5wbSA9ICZpOTE1X3BtX29w
cywKIH07CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
