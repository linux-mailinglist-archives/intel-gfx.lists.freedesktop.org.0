Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D1C8A5E23
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 01:18:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 939041128A9;
	Mon, 15 Apr 2024 23:18:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="arbAikvj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6DD91128AB
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Apr 2024 23:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713223119; x=1744759119;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=05VybkSaM0Lx3uX/KGyydTM8GThaKe0SQW4qYAMGItc=;
 b=arbAikvjgSRLQvUbMIjL1Gtc+t1V7FHRYZs2eNVQe3ifCJQ5qNxzeoKr
 5Ya+mumfLiho5M55jo+hoc/DQPleODFvuzVQnL1V6U4n4yMgTOasQTPpo
 6S9b8nXJ4XlIwQSDF9cRD0djhhdO1NPi0ee3D1owsAezUW9AZCKbaXEEx
 xDSQGvflSNuNy3vBbzHuPW85lcn5kuHpV9w/M/8uoqRiyHNvkMGfcZ5d1
 mGbTVfLIxM+NufmzYZ299PAtKIjlF5nlotpBIupITURvhogLgo8pBfNbl
 uKuNCDZAhlHQKR4lJeFwRDb3yLTehW1PzOsAS5gNtuGHf60GcF/3qr8Ar w==;
X-CSE-ConnectionGUID: 3ouXXLm7QuK+qTPg2IRgJQ==
X-CSE-MsgGUID: SD3dlIWXS4KO34b/9edLGw==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="31115486"
X-IronPort-AV: E=Sophos;i="6.07,204,1708416000"; d="scan'208";a="31115486"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 16:18:11 -0700
X-CSE-ConnectionGUID: zWIifIrYRGm1rbdv55jPFg==
X-CSE-MsgGUID: uCubUhveT4WnkCOTHWVEFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,204,1708416000"; d="scan'208";a="21963811"
Received: from valcore-skull-1.fm.intel.com ([10.1.39.17])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 16:18:10 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Subject: [xe-for-ci 3/3] drm/xe/gsc: define GSC FW for LNL
Date: Mon, 15 Apr 2024 16:17:46 -0700
Message-ID: <20240415231746.1230684-4-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240415231746.1230684-1-daniele.ceraolospurio@intel.com>
References: <20240415231746.1230684-1-daniele.ceraolospurio@intel.com>
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

Interface and compatibility versions are the same as MTL.

Note that the FW is still in development and the current release is
for CI only. Theefore, we'll need to keep this patch in the xe-for-ci
branch until we get the finalized FW release.

Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/xe/xe_uc_fw.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/xe/xe_uc_fw.c b/drivers/gpu/drm/xe/xe_uc_fw.c
index f27e96c47baa..ae38172b6e0e 100644
--- a/drivers/gpu/drm/xe/xe_uc_fw.c
+++ b/drivers/gpu/drm/xe/xe_uc_fw.c
@@ -126,6 +126,7 @@ struct fw_blobs_by_type {
 
 /* for the GSC FW we match the compatibility version and not the release one */
 #define XE_GSC_FIRMWARE_DEFS(fw_def, major_ver)		\
+	fw_def(LUNARLAKE,	major_ver(intel-ci/xe, gsc, lnl, 1, 0, 0))	\
 	fw_def(METEORLAKE,	major_ver(i915,	gsc,	mtl,	1, 0, 0))
 
 #define MAKE_FW_PATH(dir__, uc__, shortname__, version__)			\
-- 
2.43.0

