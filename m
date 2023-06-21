Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 725B87383D6
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jun 2023 14:32:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB3CA10E456;
	Wed, 21 Jun 2023 12:32:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28F2F10E456
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jun 2023 12:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687350723; x=1718886723;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=set9z3XaJ1hbOlzWrVJW8dBXXL/giQGIEfVelwm77aY=;
 b=ZmLhtcjixVmkxUG1mI3TEQUBrJH64ex/hZ1kGUTsYvQTQEwKlS7tukRf
 n3dC5C1QcCvspQYsyPZolr/x5HT+jQN6Ll/ZZBxM2Y8RiZv3N2otQuT89
 byA98yO2gbjto9qbcyCAr8NSFPrr5Fx/t6UV1BxQ2McRF0vRXm0DFVUUQ
 ryZbumOXMm7d/nS0pIa3xerTdkM3U3A5kQw5tQj0XA9tBE8ovPydtE6ad
 S6OWJfVBdEr/AyMuKv1fXQlMLejJZkYALpK5LVSKqlkEMb6cfzhkY1nrH
 HCbGJJZ9+O54FzZo8vyiVk0x1GuJ8ml2kgNZGygsTQUTy6mKnQfoOKEhO Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="344890184"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="344890184"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 05:32:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10747"; a="744161224"
X-IronPort-AV: E=Sophos;i="6.00,260,1681196400"; d="scan'208";a="744161224"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2023 05:32:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Jun 2023 15:31:55 +0300
Message-Id: <20230621123156.14907-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/doc: fix duplicate declaration warning
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We have duplicate kernel-doc directives for the same struct, leading to:

/home/jani/src/linux/Documentation/gpu/driver-uapi.rst:2279: WARNING: Duplicate C declaration, also defined at rfc/i915_scheduler:3.
Declaration is '.. c:struct:: i915_context_engines_parallel_submit'.

Use the Sphinx C domain namespace for the rfc document to fix this.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 Documentation/gpu/rfc/i915_scheduler.rst | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/gpu/rfc/i915_scheduler.rst b/Documentation/gpu/rfc/i915_scheduler.rst
index d630f15ab795..ec086e7a43ff 100644
--- a/Documentation/gpu/rfc/i915_scheduler.rst
+++ b/Documentation/gpu/rfc/i915_scheduler.rst
@@ -135,9 +135,13 @@ Add I915_CONTEXT_ENGINES_EXT_PARALLEL_SUBMIT and
 drm_i915_context_engines_parallel_submit to the uAPI to implement this
 extension.
 
+.. c:namespace-push:: rfc
+
 .. kernel-doc:: include/uapi/drm/i915_drm.h
         :functions: i915_context_engines_parallel_submit
 
+.. c:namespace-pop::
+
 Extend execbuf2 IOCTL to support submitting N BBs in a single IOCTL
 -------------------------------------------------------------------
 Contexts that have been configured with the 'set_parallel' extension can only
-- 
2.39.2

