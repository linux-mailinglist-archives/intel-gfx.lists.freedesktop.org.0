Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B99505EB9CD
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 07:41:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB82A10E1F7;
	Tue, 27 Sep 2022 05:40:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9BB810E1F7
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 05:40:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664257245; x=1695793245;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ql1Iiul818j9tRgdBXHuHFnCjh7WZymITEHbCizNzqQ=;
 b=FEI6mYpLSI6nQdhlmuUeUwhP+veNnhaRmixxZnUF5ugLxuttQwkdupKH
 pE+U2UM9VUYCEeUm2O311OEsH5FG55C4w5+bKfm1sOc56kbM0yBHsB1Tu
 OQbBUj6aAZXytdzO7dhW+7GDLL48EScxR5/Sag3FfkPUppDR63Sx4qSgT
 PYGuXGGrvKynleIZ1NNWEQbfMvfpfbddy2gjkfv/5XnkXZKsrqi8s+VRT
 lJSCM9rPUtz+qQHJFIjAhO47RIBbbokEZ2UWDJYv4XFJdJ2dqEI7xzCzn
 lJuUayhRg+3ItCk35/MYt3avY7XnAwAeyiE/9qZge9oT1+epY4ABXmQ9q Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="299945919"
X-IronPort-AV: E=Sophos;i="5.93,348,1654585200"; d="scan'208";a="299945919"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 22:40:45 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="621395999"
X-IronPort-AV: E=Sophos;i="5.93,348,1654585200"; d="scan'208";a="621395999"
Received: from nvishwa1-desk.sc.intel.com ([172.25.29.76])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 26 Sep 2022 22:40:44 -0700
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Sep 2022 22:40:16 -0700
Message-Id: <20220927054016.21474-1-niranjana.vishwanathapura@intel.com>
X-Mailer: git-send-email 2.21.0.rc0.32.g243a4c7e27
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Remove unwanted pointer unpacking
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
Cc: chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In await_fence_array(), unpacking syncobj pointer is not needed.
Remove it.

Signed-off-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index cd75b0ca2555..8f5796cf9c9c 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -2954,11 +2954,6 @@ await_fence_array(struct i915_execbuffer *eb,
 	int err;
 
 	for (n = 0; n < eb->num_fences; n++) {
-		struct drm_syncobj *syncobj;
-		unsigned int flags;
-
-		syncobj = ptr_unpack_bits(eb->fences[n].syncobj, &flags, 2);
-
 		if (!eb->fences[n].dma_fence)
 			continue;
 
-- 
2.21.0.rc0.32.g243a4c7e27

