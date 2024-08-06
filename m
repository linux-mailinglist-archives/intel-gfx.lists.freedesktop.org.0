Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A40E949B82
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 00:50:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7D6C10E0C1;
	Tue,  6 Aug 2024 22:50:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="URuXeHel";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B6FB10E0C1
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Aug 2024 22:50:18 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id B5FA96112A;
 Tue,  6 Aug 2024 22:50:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2111AC4AF0C;
 Tue,  6 Aug 2024 22:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1722984617;
 bh=BYhbY42/awdN5ih8e6wzjh9dbH1EcXE+2Jb9xJYjvsc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=URuXeHelvrEwJdKctlsDYC0/Wg+GAQjcld3kSf2QQTTq6Xk5e6YKKRWMRa1D5mavB
 JjpX4Xphvyf88Dzp1/U7yBONohmcIqTG3iF6Ez99AlbLiQIchHkjCLbeVEXwsDL4wV
 WR+OMXBeAlWJNdPk3Bd+rA7CFXgk6LbHPe3DqXpRgAGojUiuQrW6uGtAJl4CMiGAeg
 bE6uXzHhB+U84CHEq9l9HSGxexSFpmf+hMFUT3YNj9QLe9KVy31u5T6T3rXaefBRwP
 D+4rnbMQTZ79+XMUaHSrY8Fugqf9rJJ8di1FZ8aSTFYP+HTyw7x05gEAJKyuyPZdQO
 UaFCetJnC7nlg==
From: Namhyung Kim <namhyung@kernel.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>
Cc: Ian Rogers <irogers@google.com>, Jiri Olsa <jolsa@kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-perf-users@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
Subject: [PATCH 02/10] tools/include: Sync uapi/drm/i915_drm.h with the kernel
 sources
Date: Tue,  6 Aug 2024 15:50:05 -0700
Message-ID: <20240806225013.126130-3-namhyung@kernel.org>
X-Mailer: git-send-email 2.46.0.rc2.264.g509ed76dc8-goog
In-Reply-To: <20240806225013.126130-1-namhyung@kernel.org>
References: <20240806225013.126130-1-namhyung@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

To pick up changes from:

  0f1bb41bf396 drm/i915: Support replaying GPU hangs with captured context image

This should be used to beautify DRM syscall arguments and it addresses
these tools/perf build warnings:

  Warning: Kernel ABI header differences:
    diff -u tools/include/uapi/drm/i915_drm.h include/uapi/drm/i915_drm.h

Please see tools/include/uapi/README for details (it's in the first patch
of this series).

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Signed-off-by: Namhyung Kim <namhyung@kernel.org>
---
 tools/include/uapi/drm/i915_drm.h | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/tools/include/uapi/drm/i915_drm.h b/tools/include/uapi/drm/i915_drm.h
index d4d86e566e07..535cb68fdb5c 100644
--- a/tools/include/uapi/drm/i915_drm.h
+++ b/tools/include/uapi/drm/i915_drm.h
@@ -2163,6 +2163,15 @@ struct drm_i915_gem_context_param {
  * supports this per context flag.
  */
 #define I915_CONTEXT_PARAM_LOW_LATENCY		0xe
+
+/*
+ * I915_CONTEXT_PARAM_CONTEXT_IMAGE:
+ *
+ * Allows userspace to provide own context images.
+ *
+ * Note that this is a debug API not available on production kernel builds.
+ */
+#define I915_CONTEXT_PARAM_CONTEXT_IMAGE	0xf
 /* Must be kept compact -- no holes and well documented */
 
 	/** @value: Context parameter value to be set or queried */
@@ -2564,6 +2573,24 @@ struct i915_context_param_engines {
 	struct i915_engine_class_instance engines[N__]; \
 } __attribute__((packed)) name__
 
+struct i915_gem_context_param_context_image {
+	/** @engine: Engine class & instance to be configured. */
+	struct i915_engine_class_instance engine;
+
+	/** @flags: One of the supported flags or zero. */
+	__u32 flags;
+#define I915_CONTEXT_IMAGE_FLAG_ENGINE_INDEX (1u << 0)
+
+	/** @size: Size of the image blob pointed to by @image. */
+	__u32 size;
+
+	/** @mbz: Must be zero. */
+	__u32 mbz;
+
+	/** @image: Userspace memory containing the context image. */
+	__u64 image;
+} __attribute__((packed));
+
 /**
  * struct drm_i915_gem_context_create_ext_setparam - Context parameter
  * to set or query during context creation.
-- 
2.46.0.rc2.264.g509ed76dc8-goog

