Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D7FF28CD
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 09:13:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C79086EEC2;
	Thu,  7 Nov 2019 08:13:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F0D26EEBE
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2019 08:13:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19110685-1500050 
 for multiple; Thu, 07 Nov 2019 08:12:58 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Nov 2019 08:12:52 +0000
Message-Id: <20191107081252.10542-28-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191107081252.10542-1-chris@chris-wilson.co.uk>
References: <20191107081252.10542-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 28/28] drm/i915/gem: Honour O_NONBLOCK before
 throttling execbuf submissions
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

Q2hlY2sgdGhlIHVzZXIncyBmbGFncyBvbiB0aGUgc3RydWN0IGZpbGUgYmVmb3JlIGRlY2lkaW5n
IHdoZXRoZXIgb3Igbm90CnRvIHN0YWxsIGJlZm9yZSBzdWJtaXR0aW5nIGEgcmVxdWVzdC4gVGhp
cyBhbGxvd3MgdXMgdG8gcmVhc29uYWJseQpjaGVhcGx5IGhvbm91ciBPX05PTkJMT0NLIHdpdGhv
dXQgY2hlY2tpbmcgYXQgbW9yZSBjcml0aWNhbCBwaGFzZXMKZHVyaW5nIHJlcXVlc3Qgc3VibWlz
c2lvbi4KClN1Z2dlc3RlZC1ieTogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGlu
dXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4Lmlu
dGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRl
bC5jb20+Ci0tLQogLi4uL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jICAg
IHwgMjEgKysrKysrKysrKysrLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMo
KyksIDcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dl
bV9leGVjYnVmZmVyLmMKaW5kZXggNGY2Yjg0N2VhMDExLi4xMzNlYWM2NDcxMjYgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwpAQCAtMjE5Miwx
NSArMjE5MiwyMiBAQCBzdGF0aWMgaW50IF9fZWJfcGluX2VuZ2luZShzdHJ1Y3QgaTkxNV9leGVj
YnVmZmVyICplYiwgc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQogCWludGVsX2NvbnRleHRfdGlt
ZWxpbmVfdW5sb2NrKHRsKTsKIAogCWlmIChycSkgewotCQlpZiAoaTkxNV9yZXF1ZXN0X3dhaXQo
cnEsCi0JCQkJICAgICAgSTkxNV9XQUlUX0lOVEVSUlVQVElCTEUsCi0JCQkJICAgICAgTUFYX1ND
SEVEVUxFX1RJTUVPVVQpIDwgMCkgewotCQkJaTkxNV9yZXF1ZXN0X3B1dChycSk7Ci0JCQllcnIg
PSAtRUlOVFI7Ci0JCQlnb3RvIGVycl9leGl0OwotCQl9CisJCWJvb2wgbm9uYmxvY2sgPSBlYi0+
ZmlsZS0+ZmlscC0+Zl9mbGFncyAmIE9fTk9OQkxPQ0s7CisJCWxvbmcgdGltZW91dDsKKworCQl0
aW1lb3V0ID0gTUFYX1NDSEVEVUxFX1RJTUVPVVQ7CisJCWlmIChub25ibG9jaykKKwkJCXRpbWVv
dXQgPSAwOwogCisJCXRpbWVvdXQgPSBpOTE1X3JlcXVlc3Rfd2FpdChycSwKKwkJCQkJICAgIEk5
MTVfV0FJVF9JTlRFUlJVUFRJQkxFLAorCQkJCQkgICAgdGltZW91dCk7CiAJCWk5MTVfcmVxdWVz
dF9wdXQocnEpOworCisJCWlmICh0aW1lb3V0IDwgMCkgeworCQkJZXJyID0gbm9uYmxvY2sgPyAt
RVdPVUxEQkxPQ0sgOiB0aW1lb3V0OworCQkJZ290byBlcnJfZXhpdDsKKwkJfQogCX0KIAogCWVi
LT5lbmdpbmUgPSBjZS0+ZW5naW5lOwotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
