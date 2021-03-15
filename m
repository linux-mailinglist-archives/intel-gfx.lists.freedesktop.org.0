Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8765033BC3B
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Mar 2021 15:34:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E59189DA7;
	Mon, 15 Mar 2021 14:34:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EB4089BEC
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Mar 2021 14:34:42 +0000 (UTC)
Received: by mail-pl1-x635.google.com with SMTP id d23so12189499plq.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Mar 2021 07:34:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CmHS2y60rTDgtSz42Ly3Q4aYmzkC3eRySaxOqwoqXEo=;
 b=NYJXncy4fhn21Fj2lMrloo4KMCAXdujk1mVadZxowWTKbhSZREbqRYmVfQNpxrW4k2
 xFLUacwb+r1cMKB3Fl+BCnwOSdWEvej6+/W/hq7UWud9HM5t3U3WzouD0GJyYc1TvA2t
 A5yle/2C3sd9PcMYjRBrU4qLJutwkTnW1DyfKS+ls0/w9ceC6k2Khnci8FNMbLbrVysK
 HCIY++Q/YyH/BA8spA8O9mfgirZMV2xzaRHPZ/b0jpibvHkvq2FmuZaWA0w7zMS3JuiF
 +RiBiYYVn+OChLv+ieuHwOHeCiY6J4t0JYKEcqQQ/r4iLgCNiqfR5PTQgzy8Q9ifFNXf
 1U5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CmHS2y60rTDgtSz42Ly3Q4aYmzkC3eRySaxOqwoqXEo=;
 b=kwmAHMYqFu8DyxdPlrOKjgYHxjS0diUJOkxfPQwqlGww9nyoif2IMxUiPBnlX49X4I
 CdfekjaxAKcBn8lPgSHcEP9Y5pYcpWKr8SHBBPW/t3s9nb8RItZfskSPQupXXGIpEjVS
 AV61w1NQguFh5RxvXLguUOpe30uCu9IiFDog4p3yyqyrXtsJwz/Knp8bwOy1i85lk+/B
 R+J5BDgX2BSTteWcxYqqcO3bumbb7ETUx0jWwJCLvBKhadd3XxpQ/f2m1HPplM/8f/Ju
 Rf2v3PxLAPTXHOtOJmoT4agLmw6pvb5PFUlaeUhDu2c1STiRuMfk30dHDqc6Pr+ON+ox
 Ro+Q==
X-Gm-Message-State: AOAM5303BCR8Jhjadp+JKvy+5xojSqmMDurJNf8K5/BY7ayQP5jXazC3
 otpJ0uF8CTtJSLg0qXyQ63LXfWl8xB65yA==
X-Google-Smtp-Source: ABdhPJwk8kfTxmiUPo2zWMDtpz8KLN91i6jwA1jaTUkvT0GcfBMFRY6bp2St5nLn/MwqXtXlYIZAnA==
X-Received: by 2002:a17:90a:1049:: with SMTP id
 y9mr13173017pjd.173.1615818881985; 
 Mon, 15 Mar 2021 07:34:41 -0700 (PDT)
Received: from omlet.com (jfdmzpr06-ext.jf.intel.com. [134.134.137.75])
 by smtp.gmail.com with ESMTPSA id x190sm13520383pfx.166.2021.03.15.07.34.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 07:34:41 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Mon, 15 Mar 2021 09:34:28 -0500
Message-Id: <20210315143428.1471489-4-jason@jlekstrand.net>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210315143428.1471489-1-jason@jlekstrand.net>
References: <20210315143428.1471489-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Disable pread/pwrite ioctl's for
 future platforms (v3)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ashutosh Dixit <ashutosh.dixit@intel.com>

The rationale for this change is roughly as follows:

 1. The functionality can be done entirely in userspace with a
    combination of mmap + memcpy

 2. The only reason anyone in userspace is still using it is because
    someone implemented bo_subdata that way in libdrm ages ago and
    they're all too lazy to write the 5 lines of code to do a map.

 3. This falls cleanly into the category of things which will only get
    more painful with local memory support.

These ioctls aren't used much anymore by "real" userspace drivers.
Vulkan has never used them and neither has the iris GL driver.  The old
i965 GL driver does use PWRITE for glBufferSubData but it only supports
up through Gen11; Gen12 was never enabled in i965.  The compute driver
has never used PREAD/PWRITE.  The only remaining user is the media
driver which uses it exactly twice and they're easily removed [1] so
expecting them to drop it going forward is reasonable.

IGT changes which handle this kernel change have also been submitted [2].

[1] https://github.com/intel/media-driver/pull/1160
[2] https://patchwork.freedesktop.org/series/81384/

v2 (Jason Ekstrand):
 - Improved commit message with the status of all usermode drivers
 - A more future-proof platform check

v3 (Jason Ekstrand):
 - Drop the HAS_LMEM checks as they're already covered by the version
   checks

Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Reviewed-by: Jason Ekstrand <jason@jlekstrand.net>
---
 drivers/gpu/drm/i915/i915_gem.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index b2e3b5cfccb4a..80915467e0d84 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -374,10 +374,17 @@ int
 i915_gem_pread_ioctl(struct drm_device *dev, void *data,
 		     struct drm_file *file)
 {
+	struct drm_i915_private *i915 = to_i915(dev);
 	struct drm_i915_gem_pread *args = data;
 	struct drm_i915_gem_object *obj;
 	int ret;
 
+	/* PREAD is disallowed for all platforms after TGL-LP.  This also
+	 * covers all platforms with local memory.
+	 */
+	if (INTEL_GEN(i915) >= 12 && !IS_TIGERLAKE(i915))
+		return -EOPNOTSUPP;
+
 	if (args->size == 0)
 		return 0;
 
@@ -675,10 +682,17 @@ int
 i915_gem_pwrite_ioctl(struct drm_device *dev, void *data,
 		      struct drm_file *file)
 {
+	struct drm_i915_private *i915 = to_i915(dev);
 	struct drm_i915_gem_pwrite *args = data;
 	struct drm_i915_gem_object *obj;
 	int ret;
 
+	/* PWRITE is disallowed for all platforms after TGL-LP.  This also
+	 * covers all platforms with local memory.
+	 */
+	if (INTEL_GEN(i915) >= 12 && !IS_TIGERLAKE(i915))
+		return -EOPNOTSUPP;
+
 	if (args->size == 0)
 		return 0;
 
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
