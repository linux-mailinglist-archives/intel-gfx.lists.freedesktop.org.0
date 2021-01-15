Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B2E2F7E1E
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 15:26:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B4646E42E;
	Fri, 15 Jan 2021 14:26:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA1686E428
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jan 2021 14:26:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23607314-1500050 
 for multiple; Fri, 15 Jan 2021 14:26:25 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Jan 2021 14:26:23 +0000
Message-Id: <20210115142623.29897-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gem: Mark private i915_gem_stolen
 functions as static
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3N0b2xlbi5jOjYyNDo1OiBlcnJvcjog
bm8gcHJldmlvdXMgcHJvdG90eXBlIGZvciDigJhfX2k5MTVfZ2VtX29iamVjdF9jcmVhdGVfc3Rv
bGVu4oCZIFstV2Vycm9yPW1pc3NpbmctcHJvdG90eXBlc10KIGludCBfX2k5MTVfZ2VtX29iamVj
dF9jcmVhdGVfc3RvbGVuKHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICptZW0sCiAgICAgXn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgpkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fc3RvbGVuLmM6NjQ5OjU6IGVycm9yOiBubyBwcmV2aW91cyBwcm90b3R5cGUgZm9yIOKA
mF9pOTE1X2dlbV9vYmplY3Rfc3RvbGVuX2luaXTigJkgWy1XZXJyb3I9bWlzc2luZy1wcm90b3R5
cGVzXQogaW50IF9pOTE1X2dlbV9vYmplY3Rfc3RvbGVuX2luaXQoc3RydWN0IGludGVsX21lbW9y
eV9yZWdpb24gKm1lbSwKICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+CgpTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1hdHRo
ZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fc3RvbGVuLmMgfCAxNCArKysrKysrLS0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDcgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc3RvbGVuLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fc3RvbGVuLmMKaW5kZXggMjdkOTViZGRiZjRkLi5iMjIxNDkyNTMxZWYg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zdG9sZW4uYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc3RvbGVuLmMKQEAgLTYyMSw5
ICs2MjEsOSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Rfb3BzIGk5
MTVfZ2VtX29iamVjdF9zdG9sZW5fb3BzID0gewogCS5yZWxlYXNlID0gaTkxNV9nZW1fb2JqZWN0
X3JlbGVhc2Vfc3RvbGVuLAogfTsKIAotaW50IF9faTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9zdG9s
ZW4oc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1lbSwKLQkJCQkgICAgc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKm9iaiwKLQkJCQkgICAgc3RydWN0IGRybV9tbV9ub2RlICpzdG9sZW4p
CitzdGF0aWMgaW50IF9faTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9zdG9sZW4oc3RydWN0IGludGVs
X21lbW9yeV9yZWdpb24gKm1lbSwKKwkJCQkJICAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qg
Km9iaiwKKwkJCQkJICAgc3RydWN0IGRybV9tbV9ub2RlICpzdG9sZW4pCiB7CiAJc3RhdGljIHN0
cnVjdCBsb2NrX2NsYXNzX2tleSBsb2NrX2NsYXNzOwogCXVuc2lnbmVkIGludCBjYWNoZV9sZXZl
bDsKQEAgLTY0NiwxMCArNjQ2LDEwIEBAIGludCBfX2k5MTVfZ2VtX29iamVjdF9jcmVhdGVfc3Rv
bGVuKHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICptZW0sCiAJcmV0dXJuIDA7CiB9CiAKLWlu
dCBfaTkxNV9nZW1fb2JqZWN0X3N0b2xlbl9pbml0KHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9u
ICptZW0sCi0JCQkJIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCi0JCQkJIHJlc291
cmNlX3NpemVfdCBzaXplLAotCQkJCSB1bnNpZ25lZCBpbnQgZmxhZ3MpCitzdGF0aWMgaW50IF9p
OTE1X2dlbV9vYmplY3Rfc3RvbGVuX2luaXQoc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKm1l
bSwKKwkJCQkJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKKwkJCQkJcmVzb3VyY2Vf
c2l6ZV90IHNpemUsCisJCQkJCXVuc2lnbmVkIGludCBmbGFncykKIHsKIAlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSA9IG1lbS0+aTkxNTsKIAlzdHJ1Y3QgZHJtX21tX25vZGUgKnN0b2xl
bjsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
