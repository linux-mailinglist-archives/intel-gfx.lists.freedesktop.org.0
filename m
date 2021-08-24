Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B423F772C
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 16:24:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7C6C6E237;
	Wed, 25 Aug 2021 14:24:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4B8F6E0E7;
 Tue, 24 Aug 2021 22:54:45 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1A9836128A;
 Tue, 24 Aug 2021 22:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629845685;
 bh=61EGsvStJTvoj2rByjNfkTgYkBZ9S/mMONay7AcUprY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=G2reUi7c4D2Gdx8CkPBA7QqrYRhpayxDLiITEUA35AdXbbbl8+OnyXMOglk8TnOU9
 Gi8yDzqV8vrbH6rboARmfvIQEfJ+lCSVeT06ZHaCw2fLAy8IQlMOSM3tcK2uzvIKaZ
 ANN+X631EFzTy3QKG08vtwTDpgRn8cJRFTwks4ikjyYRmmrBV0Ag5MLCUSmXbEcwWy
 RNeSud//VpBm4b05r5fjuCC+15a7L9VaLbAAXbxFyihbzzOaI0lYfQcAv/Hwh5GxQj
 PqVvjb0VOb+nCGcO0eZoeEUFtv/LJGT3o0gbo56xshiPUNgkKuWK3VRSeyxefFHKIr
 yMkC+4ts0x/Hw==
From: Nathan Chancellor <nathan@kernel.org>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Jason Ekstrand <jason@jlekstrand.net>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 "Michael J. Ruhl" <michael.j.ruhl@intel.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 llvm@lists.linux.dev, Nathan Chancellor <nathan@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Date: Tue, 24 Aug 2021 15:54:25 -0700
Message-Id: <20210824225427.2065517-2-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210824225427.2065517-1-nathan@kernel.org>
References: <20210824225427.2065517-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 25 Aug 2021 14:24:33 +0000
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/selftests: Do not use import_obj
 uninitialized
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Clang warns a couple of times:

drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c:63:6: warning:
variable 'import_obj' is used uninitialized whenever 'if' condition is
true [-Wsometimes-uninitialized]
        if (import != &obj->base) {
            ^~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c:80:22: note:
uninitialized use occurs here
        i915_gem_object_put(import_obj);
                            ^~~~~~~~~~
drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c:63:2: note: remove
the 'if' if its condition is always false
        if (import != &obj->base) {
        ^~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c:38:46: note:
initialize the variable 'import_obj' to silence this warning
        struct drm_i915_gem_object *obj, *import_obj;
                                                    ^
                                                     = NULL

Shuffle the import_obj initialization above these if statements so that
it is not used uninitialized.

Fixes: d7b2cb380b3a ("drm/i915/gem: Correct the locking and pin pattern for dma-buf (v8)")
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
index ffae7df5e4d7..532c7955b300 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c
@@ -59,13 +59,13 @@ static int igt_dmabuf_import_self(void *arg)
 		err = PTR_ERR(import);
 		goto out_dmabuf;
 	}
+	import_obj = to_intel_bo(import);
 
 	if (import != &obj->base) {
 		pr_err("i915_gem_prime_import created a new object!\n");
 		err = -EINVAL;
 		goto out_import;
 	}
-	import_obj = to_intel_bo(import);
 
 	i915_gem_object_lock(import_obj, NULL);
 	err = __i915_gem_object_get_pages(import_obj);
@@ -176,6 +176,7 @@ static int igt_dmabuf_import_same_driver(struct drm_i915_private *i915,
 		err = PTR_ERR(import);
 		goto out_dmabuf;
 	}
+	import_obj = to_intel_bo(import);
 
 	if (import == &obj->base) {
 		pr_err("i915_gem_prime_import reused gem object!\n");
@@ -183,8 +184,6 @@ static int igt_dmabuf_import_same_driver(struct drm_i915_private *i915,
 		goto out_import;
 	}
 
-	import_obj = to_intel_bo(import);
-
 	i915_gem_object_lock(import_obj, NULL);
 	err = __i915_gem_object_get_pages(import_obj);
 	if (err) {
-- 
2.33.0

