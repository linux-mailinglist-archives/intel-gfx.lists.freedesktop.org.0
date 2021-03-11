Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA009337EFB
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 21:20:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62F266E53C;
	Thu, 11 Mar 2021 20:20:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com
 [IPv6:2607:f8b0:4864:20::635])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3355B6E536
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 20:20:26 +0000 (UTC)
Received: by mail-pl1-x635.google.com with SMTP id q12so324872plr.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 12:20:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=037x0s1NuuVARwngWoEU+ClMBVQyZ4NhgosKv9WBglw=;
 b=1xqC4U/MpH8LbmImFhHrsKMQed3eQdmOy435PIXfhbDUcSifUC7FPn/IfxRascW2Uc
 Y0Vyx+X21QocQitNPIlNDH2mQ057eOK4KJonnszgRBqb2smum4rsUbFcQSavfEp0LcF1
 JYhXfvO/vzATMB04kSrDkifBYj+Eyn5++zeHuUvQcy88ejyMKcfTROgXc+4Btvmn4Ou9
 ckblxlv3NvO22Ze6bMuXiVcOs8afr8hpDmQTmeH5UJsYc0WcwCi1NgKkpTjHdlztzv2d
 r+igHFv8RhOM+ZXKl68Mt49GsxoikHWZ9tlZKD+DIGMAzgftOYRJDpQOBOKQM0efCLF3
 VCJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=037x0s1NuuVARwngWoEU+ClMBVQyZ4NhgosKv9WBglw=;
 b=GhmWoGV132YD8Jtz4r0Zx5+hwwgBMMJ+tV2sYXU/wmAGXqatLNfdAOXtEsJBHN4rg+
 L4nuep4fo/RJ1qXykaSXZneXBjVWplqCkvRYdkLK6UKJNHYVTixaJl2hCtVLuFytKFDI
 NKRv0OEf4YWkP65mdNFRoYgZk3veX5yMl8HhU8MweR6UloPmuJxe5yLXzfwiazCi+cme
 PUIdGD6e6R61vD7QfRMACFrCgyXovfUkJEAwaugsalQATRXNPeDcPH87wwYclLatPBcv
 h8JdO3cV6oAefnYmsz4Y2vR+NjO3LxZvk2ngbR7HzpL00Ka4tbEIZsAKhhzsR2LYw9is
 Q1sQ==
X-Gm-Message-State: AOAM533Dv6MEOdMytx5hio+DVoCLONvAUkQTHmU7n0BbAf4K97BMiihx
 OK1BDsKJoQCm7VIgZJM0sYKonYt/KP2YJw==
X-Google-Smtp-Source: ABdhPJzFyA+2WBBJNRqQPhuFY6/pIOGUqowzUKAr1LuobL4knc+8/MA383SF2wUd2HlLthV6El6x0w==
X-Received: by 2002:a17:90a:8417:: with SMTP id
 j23mr10602820pjn.224.1615494025327; 
 Thu, 11 Mar 2021 12:20:25 -0800 (PST)
Received: from omlet.lan (jfdmzpr05-ext.jf.intel.com. [134.134.139.74])
 by smtp.gmail.com with ESMTPSA id i62sm3122636pgc.11.2021.03.11.12.20.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Mar 2021 12:20:24 -0800 (PST)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 14:20:17 -0600
Message-Id: <20210311202017.1133327-2-jason@jlekstrand.net>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210311202017.1133327-1-jason@jlekstrand.net>
References: <cover.1611354210.git.ashutosh.dixit@intel.com>
 <20210311202017.1133327-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/1] drm/i915: Disable pread/pwrite ioctl's for
 future platforms (v2)
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

Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
---
 drivers/gpu/drm/i915/i915_drv.h |  1 +
 drivers/gpu/drm/i915/i915_gem.c | 18 ++++++++++++++++++
 2 files changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 1d45d7492d10d..3f74188fa8090 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1633,6 +1633,7 @@ tgl_stepping_get(struct drm_i915_private *dev_priv)
 #define HAS_SECURE_BATCHES(dev_priv) (INTEL_GEN(dev_priv) < 6)
 #define HAS_WT(dev_priv)	HAS_EDRAM(dev_priv)
 
+#define HAS_PREAD_PWRITE(dev_priv)	(!INTEL_INFO(dev_priv)->no_pread_pwrite)
 #define HWS_NEEDS_PHYSICAL(dev_priv)	(INTEL_INFO(dev_priv)->hws_needs_physical)
 
 #define HAS_LOGICAL_RING_CONTEXTS(dev_priv) \
diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index b2e3b5cfccb4a..78ad5a9dd4784 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -374,10 +374,19 @@ int
 i915_gem_pread_ioctl(struct drm_device *dev, void *data,
 		     struct drm_file *file)
 {
+	struct drm_i915_private *i915 = to_i915(dev);
 	struct drm_i915_gem_pread *args = data;
 	struct drm_i915_gem_object *obj;
 	int ret;
 
+	/* Pread is disallowed for all platforms after TGL-LP */
+	if (INTEL_GEN(i915) >= 12 && !IS_TIGERLAKE(i915))
+		return -EOPNOTSUPP;
+
+	/* All discrete memory platforms are Gen12 or above */
+	if (WARN_ON(HAS_LMEM(i915)))
+		return -EOPNOTSUPP;
+
 	if (args->size == 0)
 		return 0;
 
@@ -675,10 +684,19 @@ int
 i915_gem_pwrite_ioctl(struct drm_device *dev, void *data,
 		      struct drm_file *file)
 {
+	struct drm_i915_private *i915 = to_i915(dev);
 	struct drm_i915_gem_pwrite *args = data;
 	struct drm_i915_gem_object *obj;
 	int ret;
 
+	/* Pwrite is disallowed for all platforms after TGL-LP */
+	if (INTEL_GEN(i915) >= 12 && !IS_TIGERLAKE(i915))
+		return -EOPNOTSUPP;
+
+	/* All discrete memory platforms are Gen12 or above */
+	if (WARN_ON(HAS_LMEM(i915)))
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
