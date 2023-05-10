Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E79F66FD9F4
	for <lists+intel-gfx@lfdr.de>; Wed, 10 May 2023 10:51:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49A5C10E466;
	Wed, 10 May 2023 08:51:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD36710E466
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 May 2023 08:51:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683708676; x=1715244676;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uBAbKOGKipREYwXVMUmcGocR4ctzPSThn148BYMRkS4=;
 b=XxBwLnp5lTahbf2CgVGMW4qTbaB4hXX3J5JfzjuQdlIETChzoRp/SErU
 fEXCzATvBjaEBb1nL8gbYW0VWrGbhZd4fopOOeOrGsUyaQ+O5NSLI7/bN
 X/JcAnfsUl+l16kbds+Rc6eeA1L00yr2Rry0X78MdxYTQXR8ci2kx2eD+
 ZRZx1eWeRg1DygU/YPgaQ6bkdcpqKvQICZzn9s5VoW4TsYRJ5b58GzAMp
 qDY5W3j25RfxIkwX0z0PdDqd4K7XVYdZXIg6Y5RWB4CY1Oe+DNgAvhqZ0
 vefJRsgEW8TLjCyUdOvRvodYBSPT2nVB1ldfRXp1QPxTs/0xULGm6g/px Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="330526991"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="330526991"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 01:51:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="702183649"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="702183649"
Received: from iisaev-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.62.141])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 01:51:07 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 May 2023 11:50:43 +0300
Message-Id: <20230510085043.599326-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fix typo in intel_frontbuffer
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
Cc: chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix obvious typo in intel_frontbuffer forward declaration.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object_types.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index 830c11431ee8..cb362b09bf21 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -18,7 +18,7 @@
 #include "i915_vma_resource.h"
 
 struct drm_i915_gem_object;
-struct intel_fronbuffer;
+struct intel_frontbuffer;
 struct intel_memory_region;
 
 /*
-- 
2.34.1

