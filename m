Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56EFE53C156
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 01:30:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99FED10FBD1;
	Thu,  2 Jun 2022 23:30:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCB4210FBD1;
 Thu,  2 Jun 2022 23:30:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654212621; x=1685748621;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=P+0rq0X5cVIzecEoc0FDyJB2X5Ngh5aTpsR5dUOrAHw=;
 b=iqbE18etAQ3GeB4CYpAmbiCcphc18wCVmBz6ea5tKfWoNZLxIRA8UqyS
 KINYvt97jLC+PB9ZIs+Wl8mFpr5AXqDq8hcBFr/VfkdKUCUGnx2gozvup
 NdPaSBAXvAaPS6AMEgoZC6RM/0fI7S0l6rmVCKC3p6RIsVxvDqoY78foc
 IAAd8KQAqXD1/bsIjAXk5a0dwtBxauYnI5gRwdh9N/c7GaLRP6Vr8D4RT
 GmK2Lkb7tJ0ErGSB0NGtpuBgo0xmcTf4spDtTS0srew2vX4PGT5rj9gG9
 XDjnflHiUNQXiMDq9VnAmnzAd3I83769ry0FvM6HHsQuF0DU8We/om8n3 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="362486376"
X-IronPort-AV: E=Sophos;i="5.91,272,1647327600"; d="scan'208";a="362486376"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 16:30:21 -0700
X-IronPort-AV: E=Sophos;i="5.91,272,1647327600"; d="scan'208";a="905217730"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 16:30:21 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Jun 2022 16:30:19 -0700
Message-Id: <20220602233019.1659283-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/pvc: GuC depriv applies to PVC
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

We missed this setting in the initial device info patch's definition of
XE_HPC_FEATURES.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 047a6e326031..a5a1a7647320 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1089,6 +1089,7 @@ static const struct intel_device_info ats_m_info = {
 	XE_HP_FEATURES, \
 	.dma_mask_size = 52, \
 	.has_3d_pipeline = 0, \
+	.has_guc_deprivilege = 1, \
 	.has_l3_ccs_read = 1, \
 	.has_one_eu_per_fuse_bit = 1
 
-- 
2.35.3

