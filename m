Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 197386B3BC1
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Mar 2023 11:10:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E27B10E9C5;
	Fri, 10 Mar 2023 10:10:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA53B10E9C5
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 10:10:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678443032; x=1709979032;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LkFJFuP1BH4TTW5bHrLQsNncZH3dng5ixdgNfxCwyIQ=;
 b=CNY9vwUsU1avTtzIVc59WjoPrCIWJquxOTvHYIkbO2vynxk0IIV6EA9t
 3l7Yjb3VkEmxKyPXCu6mc/zigR7bHigx9fg51ySlk9lTL0l4YQZTToVdF
 dHHiOuWgs8RJeJfyubpzmdrBwuaD1hf6/PVsw+9DrGhrDsjJLhDb5ZKBf
 bz1cR4BDKLrBCd8jm1PofL5dw/DcA2K0w8AanJW5SX6X1rt6VSAJXQ4QR
 W4rNVak+dP3tKyEgOSwrmOp8rO7bI2smM/YU1IGeGuZNCBkdCALQCZfDc
 zzAqS+BHmqWxXs4SHFiHcvCxlGCNIQVBPOrL8/jy8sodHAYmNVIk14Lfe g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="335392966"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="335392966"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 02:10:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="766777305"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="766777305"
Received: from nirmoyda-desk.igk.intel.com ([10.102.42.231])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 02:10:31 -0800
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Mar 2023 11:10:24 +0100
Message-Id: <20230310101024.4700-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/gt: Update engine_init_common
 documentation
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
Cc: Matt Roper <matthew.d.roper@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Change the function doc to reflect updated name.

v2: un-kerneldoc the comment(Matt).
    :s/engines_init_common/engine_init_common(Andi)

Cc: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index ad3413242100..5c6c9a6d469c 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1428,8 +1428,8 @@ create_kernel_context(struct intel_engine_cs *engine)
 						  &kernel, "kernel_context");
 }
 
-/**
- * intel_engines_init_common - initialize cengine state which might require hw access
+/*
+ * engine_init_common - initialize engine state which might require hw access
  * @engine: Engine to initialize.
  *
  * Initializes @engine@ structure members shared between legacy and execlists
-- 
2.39.0

