Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EAAA185631
	for <lists+intel-gfx@lfdr.de>; Sat, 14 Mar 2020 19:34:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEAC86E073;
	Sat, 14 Mar 2020 18:34:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FA326E073
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Mar 2020 18:33:57 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id a5so13344775wmb.0
 for <intel-gfx@lists.freedesktop.org>; Sat, 14 Mar 2020 11:33:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1ZFggP/KB5IuYSjqkr4ukzQXQvorOP7oMUzHhD1JsjM=;
 b=XA6iSuRxNa31U601gkhKqVGSEvieTwi+AqSYD6t7OfZLo7SYYPn52rgahz/S1AWzsS
 uBQWUr6z8iYIGHnfk39PqbtHEuSnu6gxCwVuN9IzPxCDCaj0oZ4jptZ0cr7JI1t3IG7P
 iUUBmw6UlulWj/2HerZfUVH+AYLiVCHRUekHolhTwqJf66mU4JNKEx73OabDHFTlA4ri
 UHSj4jzfnPB7WLOTFg+W1bCLAt9oyTW5qm5vz4vZp/ZMHEDg+gPYbeAOSeh8AEQMUmaW
 iTf15SWvKgyIovMqQ3V0fETRpYCa49XKFK7x+V+0gKjlHyS0dq8fXkk5bmZlMt20KUzt
 aHwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1ZFggP/KB5IuYSjqkr4ukzQXQvorOP7oMUzHhD1JsjM=;
 b=kPe8lygZjVR+UcQf7jokQqIkAadMnddjp5qLtaqc54B+Nsq0g8aXEw9kOjomsPvrTK
 PliXiwNEo2haaMWOzu2YN3/S9//OKYurhojaR/LUJi9ojeQggeMpo7Xh7TBMy0tYZuMA
 n9QLQHlEm6XUhH9ZI/eSKGJD5J5R0z8MFEAK6Sy0yNhX4FDAwIaZ9mgdCnLJkynCPqys
 6+2+BSewFrNZs3yAiI3+ZmGab/qfyg+HK8KTO2EFHxQAbCOYe99eI85g+0lTYjhEoSbj
 0QFkxXNWCmzR1CF9oIUqNsNp4pszDgHat0+wCBfHRq/Bw5/pfA0tehZIfT29+hoQa3rN
 OPEA==
X-Gm-Message-State: ANhLgQ3kEp5f8WCJXqIgAUbt9S/YKRiC6U8amQ5/RF+QG/4AZbzYJsRd
 j6cmCZjmTe6dmb/fobaCpFc=
X-Google-Smtp-Source: ADFU+vuldgaP89OpmVl/JRInD+GPk/VRVkbuNCn1JIsxMidZqGMh9nUHbfc0IM/N+Ng1aJVtVqUZUQ==
X-Received: by 2002:a1c:4d13:: with SMTP id o19mr17607551wmh.186.1584210836022; 
 Sat, 14 Mar 2020 11:33:56 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id
 s127sm22450820wmf.28.2020.03.14.11.33.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 14 Mar 2020 11:33:55 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Sat, 14 Mar 2020 21:33:39 +0300
Message-Id: <20200314183344.17603-3-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200314183344.17603-1-wambui.karugax@gmail.com>
References: <20200314183344.17603-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/7] drm/i915/lrc: convert to struct drm_device
 based logging macros.
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Convert various instances of the printk based drm logging macros to the
struct drm_device based logging macros.

Note that this converts DRM_DEBUG_DRIVER() to drm_dbg() but does not
convert DRM_DEBUG() due to the lack of an analogous drm_device based
macro.

References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html
Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 112531b29f59..f09dd87324b9 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3432,7 +3432,8 @@ static int intel_init_workaround_bb(struct intel_engine_cs *engine)
 
 	ret = lrc_setup_wa_ctx(engine);
 	if (ret) {
-		DRM_DEBUG_DRIVER("Failed to setup context WA page: %d\n", ret);
+		drm_dbg(&engine->i915->drm,
+			"Failed to setup context WA page: %d\n", ret);
 		return ret;
 	}
 
@@ -3539,7 +3540,8 @@ static bool unexpected_starting_state(struct intel_engine_cs *engine)
 	bool unexpected = false;
 
 	if (ENGINE_READ_FW(engine, RING_MI_MODE) & STOP_RING) {
-		DRM_DEBUG_DRIVER("STOP_RING still set in RING_MI_MODE\n");
+		drm_dbg(&engine->i915->drm,
+			"STOP_RING still set in RING_MI_MODE\n");
 		unexpected = true;
 	}
 
@@ -4483,7 +4485,7 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 		 * because we only expect rare glitches but nothing
 		 * critical to prevent us from using GPU
 		 */
-		DRM_ERROR("WA batch buffer initialization failed\n");
+		drm_err(&i915->drm, "WA batch buffer initialization failed\n");
 
 	if (HAS_LOGICAL_RING_ELSQ(i915)) {
 		execlists->submit_reg = uncore->regs +
@@ -4658,7 +4660,8 @@ populate_lr_context(struct intel_context *ce,
 	vaddr = i915_gem_object_pin_map(ctx_obj, I915_MAP_WB);
 	if (IS_ERR(vaddr)) {
 		ret = PTR_ERR(vaddr);
-		DRM_DEBUG_DRIVER("Could not map object pages! (%d)\n", ret);
+		drm_dbg(&engine->i915->drm,
+			"Could not map object pages! (%d)\n", ret);
 		return ret;
 	}
 
@@ -4751,7 +4754,8 @@ static int __execlists_context_alloc(struct intel_context *ce,
 
 	ret = populate_lr_context(ce, ctx_obj, engine, ring);
 	if (ret) {
-		DRM_DEBUG_DRIVER("Failed to populate LRC: %d\n", ret);
+		drm_dbg(&engine->i915->drm,
+			"Failed to populate LRC: %d\n", ret);
 		goto error_ring_free;
 	}
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
