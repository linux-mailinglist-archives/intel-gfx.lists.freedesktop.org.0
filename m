Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A0B49C049
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 01:43:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3390810E494;
	Wed, 26 Jan 2022 00:43:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28F9310E4BE;
 Wed, 26 Jan 2022 00:43:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643157792; x=1674693792;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UpbbcZpwzfcCzfISXksjwshseGQ6gnNSGK7OOGXSORo=;
 b=Mn4L5M2qouunk4QGCjRTb5eLhEtHpufPRdN2bjirfo5apOlR4JwQWdHs
 ERtS6quHsQlH1EJrcQ1jwZ9sgNxsTvj+nXUR2NRV2sDXMotrmW/lKLjlk
 DZy1tMVV/hbJdnHeTTS028dj/N8164LVwudI4gdKVZsDpKmcPo7/LEC0b
 wc7WGotGBAl+HIqzAIlYE8x00/FaAWB1mZO3e5hF1/VvQECGdHBJdpFoy
 zOApKa3jemVZ8EIMT5MzMy307AI5zxkPPnz/pPy3BzgyLbw3fcaelXzuh
 9W4Y15RVyhhktpJ0tvjw4vr/EjPiXiOSH2FONdIQTCLaHl5Y26lapG343 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="309766311"
X-IronPort-AV: E=Sophos;i="5.88,316,1635231600"; d="scan'208";a="309766311"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2022 16:43:11 -0800
X-IronPort-AV: E=Sophos;i="5.88,316,1635231600"; d="scan'208";a="563241481"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2022 16:43:11 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jan 2022 16:43:44 -0800
Message-Id: <20220126004345.1137674-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220126004345.1137674-1-lucas.demarchi@intel.com>
References: <20220126004345.1137674-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Do not spam log with missiing
 arch support
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Following what was done in drm_cache.c, when the stub for
remap_io_mapping() was added in commit 67c430bbaae1 ("drm/i915: Skip
remap_io_mapping() for non-x86 platforms"), it was added a log message.
However the WARN_ON_ONCE() should already be enough - we don't want to
spam the log with those messages.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_mm.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_mm.h b/drivers/gpu/drm/i915/i915_mm.h
index 76f1d53bdf34..ed04fc756271 100644
--- a/drivers/gpu/drm/i915/i915_mm.h
+++ b/drivers/gpu/drm/i915/i915_mm.h
@@ -22,7 +22,6 @@ int remap_io_mapping(struct vm_area_struct *vma,
 		     unsigned long addr, unsigned long pfn, unsigned long size,
 		     struct io_mapping *iomap)
 {
-	pr_err("Architecture has no %s() and shouldn't be calling this function\n", __func__);
 	WARN_ON_ONCE(1);
 	return 0;
 }
-- 
2.34.1

