Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 887B0FD135
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 23:57:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5CB06EF43;
	Thu, 14 Nov 2019 22:57:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3CB76E43C
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Nov 2019 22:57:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19206184-1500050 
 for multiple; Thu, 14 Nov 2019 22:57:37 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Nov 2019 22:57:36 +0000
Message-Id: <20191114225736.616885-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191114225736.616885-1-chris@chris-wilson.co.uk>
References: <20191114225736.616885-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/5] drm/i915/gem: Silence sparse for RCU
 protection inside the constructor
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

SW5zaWRlIHRoZSBjb25zdHJ1Y3Rvciwgd2hpbGUgY2xvbmluZywgd2UgbmVlZCB0byByZXBsYWNl
IHRoZQpkc3QtPmVuZ2luZXMuIEhhdmluZyBmb3Jnb3R0ZW4gdGhhdCBkc3QtPmVuZ2luZXMgaXMg
bWFya2VkIGFzIFJDVQpwcm90ZWN0ZWQsIHdlIG5lZWQgdG8gYWRkIHRoZSBhcHByb3ByaWF0ZSBh
bm5vdGF0aW9ucyB0byBtYWtlIHNwYXJzZQpoYXBweS4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRr
by51cnN1bGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fY29udGV4dC5jIHwgNiArKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250
ZXh0LmMKaW5kZXggMTI4NGY0NzMwM2ZhLi42ZjFlNjE4MWY2N2EgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYwpAQCAtMjAwOSw3ICsyMDA5LDggQEAgc3Rh
dGljIGludCBjbG9uZV9lbmdpbmVzKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpkc3QsCiAJdXNl
cl9lbmdpbmVzID0gaTkxNV9nZW1fY29udGV4dF91c2VyX2VuZ2luZXMoc3JjKTsKIAlpOTE1X2dl
bV9jb250ZXh0X3VubG9ja19lbmdpbmVzKHNyYyk7CiAKLQlmcmVlX2VuZ2luZXMoZHN0LT5lbmdp
bmVzKTsKKwkvKiBTZXJpYWxpc2VkIGJ5IGNvbnN0cnVjdG9yICovCisJZnJlZV9lbmdpbmVzKF9f
Y29udGV4dF9lbmdpbmVzX3N0YXRpYyhkc3QpKTsKIAlSQ1VfSU5JVF9QT0lOVEVSKGRzdC0+ZW5n
aW5lcywgY2xvbmUpOwogCWlmICh1c2VyX2VuZ2luZXMpCiAJCWk5MTVfZ2VtX2NvbnRleHRfc2V0
X3VzZXJfZW5naW5lcyhkc3QpOwpAQCAtMjA0NCw3ICsyMDQ1LDggQEAgc3RhdGljIGludCBjbG9u
ZV9zc2V1KHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpkc3QsCiAJdW5zaWduZWQgbG9uZyBuOwog
CWludCBlcnI7CiAKLQljbG9uZSA9IGRzdC0+ZW5naW5lczsgLyogbm8gbG9ja2luZyByZXF1aXJl
ZDsgc29sZSBhY2Nlc3MgKi8KKwkvKiBubyBsb2NraW5nIHJlcXVpcmVkOyBzb2xlIGFjY2VzcyB1
bmRlciBjb25zdHJ1Y3RvciovCisJY2xvbmUgPSBfX2NvbnRleHRfZW5naW5lc19zdGF0aWMoZHN0
KTsKIAlpZiAoZS0+bnVtX2VuZ2luZXMgIT0gY2xvbmUtPm51bV9lbmdpbmVzKSB7CiAJCWVyciA9
IC1FSU5WQUw7CiAJCWdvdG8gdW5sb2NrOwotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
