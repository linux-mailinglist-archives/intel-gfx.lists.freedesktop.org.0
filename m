Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC466BF08E
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 19:17:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0558E10EF63;
	Fri, 17 Mar 2023 18:17:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B10D10EF8D;
 Fri, 17 Mar 2023 18:17:35 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id A2DF1B82696;
 Fri, 17 Mar 2023 18:17:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D4F7C433D2;
 Fri, 17 Mar 2023 18:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1679077052;
 bh=fbZaO/bjuHxIfSFiexEmKgUXmB5DqFSacCk1E1Qa7kA=;
 h=Date:From:To:Cc:Subject:From;
 b=NaiXWbmMipdUChL0sNZn8tHfaLYCNmL+GrJeQF+JVWwxbhF0cbT7JbbIdXL+Yln3C
 AYqXCMw7qwyYpUDj4C0DokfbR+wnEeW88kKEKjb0piZayVMG4sppxzRMg94P2yOVNq
 MUEYUkWMqcyM6KKsFxD94M36dquiAul4LFGp535RYZ5uXfi+HM991iMEVmHl/5wzDc
 t0MixSJk3S0gsYlC7ng1ePrMlMrvGKTV/gFlqLVumweHbTTROsxZEBKL3896j4jO/0
 UszBUQSoo7ug+g8Mo31pf/iXpDMbHRW0IwaESH1kFKqSHPgB3V/F7AWp8f4bOmi5oz
 sMTi4kpTm9KFw==
Date: Fri, 17 Mar 2023 12:18:01 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Message-ID: <ZBSu2QsUJy31kjSE@work>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH][next] drm/i915/uapi: Replace fake flex-array
 with flexible-array member
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
Cc: intel-gfx@lists.freedesktop.org, linux-hardening@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Zero-length arrays as fake flexible arrays are deprecated and we are
moving towards adopting C99 flexible-array members instead.

Address the following warning found with GCC-13 and
-fstrict-flex-arrays=3 enabled:
drivers/gpu/drm/i915/gem/i915_gem_context.c: In function ‘set_proto_ctx_engines.isra’:
drivers/gpu/drm/i915/gem/i915_gem_context.c:769:41: warning: array subscript n is outside array bounds of ‘struct i915_engine_class_instance[0]’ [-Warray-bounds=]
  769 |                 if (copy_from_user(&ci, &user->engines[n], sizeof(ci))) {
      |                                         ^~~~~~~~~~~~~~~~~
./include/uapi/drm/i915_drm.h:2494:43: note: while referencing ‘engines’
 2494 |         struct i915_engine_class_instance engines[0];

This helps with the ongoing efforts to tighten the FORTIFY_SOURCE
routines on memcpy() and help us make progress towards globally
enabling -fstrict-flex-arrays=3 [1].

Link: https://github.com/KSPP/linux/issues/21
Link: https://github.com/KSPP/linux/issues/271
Link: https://gcc.gnu.org/pipermail/gcc-patches/2022-October/602902.html [1]
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 include/uapi/drm/i915_drm.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 8df261c5ab9b..5e458d6f2895 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -2491,7 +2491,7 @@ struct i915_context_param_engines {
 #define I915_CONTEXT_ENGINES_EXT_LOAD_BALANCE 0 /* see i915_context_engines_load_balance */
 #define I915_CONTEXT_ENGINES_EXT_BOND 1 /* see i915_context_engines_bond */
 #define I915_CONTEXT_ENGINES_EXT_PARALLEL_SUBMIT 2 /* see i915_context_engines_parallel_submit */
-	struct i915_engine_class_instance engines[0];
+	struct i915_engine_class_instance engines[];
 } __attribute__((packed));
 
 #define I915_DEFINE_CONTEXT_PARAM_ENGINES(name__, N__) struct { \
-- 
2.34.1

