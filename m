Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0ADE7397
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 15:27:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96F2E6E8C2;
	Mon, 28 Oct 2019 14:27:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B0B96E8C1
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 14:27:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18994384-1500050 
 for multiple; Mon, 28 Oct 2019 14:27:10 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Oct 2019 14:26:51 +0000
Message-Id: <20191028142652.1987-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/selftests: Initialise ret
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

S2VlcCBzbWF0Y2ggcXVpZXQsCgpkcml2ZXJzL2dwdS9kcm0vaTkxNS8vZ2VtL3NlbGZ0ZXN0cy9p
OTE1X2dlbV9jb250ZXh0LmM6MTI2OCBfX2lndF9jdHhfc3NldSgpIGVycm9yOiB1bmluaXRpYWxp
emVkIHN5bWJvbCAncmV0Jy4KZHJpdmVycy9ncHUvZHJtL2k5MTUvL2dlbS9zZWxmdGVzdHMvaTkx
NV9nZW1fY29udGV4dC5jOjEyODAgX19pZ3RfY3R4X3NzZXUoKSBlcnJvcjogdW5pbml0aWFsaXpl
ZCBzeW1ib2wgJ3JldCcuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5
MTVfZ2VtX2NvbnRleHQuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxm
dGVzdHMvaTkxNV9nZW1fY29udGV4dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0
ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMKaW5kZXggZDFkODczZjIzMzM4Li5jNmU2MTU2NGJiNWUg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1f
Y29udGV4dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9n
ZW1fY29udGV4dC5jCkBAIC0xMTg4LDcgKzExODgsNyBAQCBfX2lndF9jdHhfc3NldShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIHsKIAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAq
b2JqOwogCWludCBpbnN0ID0gMDsKLQlpbnQgcmV0OworCWludCByZXQgPSAwOwogCiAJaWYgKElO
VEVMX0dFTihpOTE1KSA8IDkgfHwgIVJVTlRJTUVfSU5GTyhpOTE1KS0+c3NldS5oYXNfc2xpY2Vf
cGcpCiAJCXJldHVybiAwOwotLSAKMi4yNC4wLnJjMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
