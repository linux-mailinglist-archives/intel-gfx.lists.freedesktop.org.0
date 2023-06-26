Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F3873D75E
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jun 2023 07:55:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2607110E05F;
	Mon, 26 Jun 2023 05:55:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCB8210E05F
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Jun 2023 05:55:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687758951; x=1719294951;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iGA9Yt4fRcwrJ0RZexWGaaPUPaWDJVSDMtYZfKt+8QM=;
 b=oC5XGFSrAiL8o5j4oKelXFTSBSykvQiTgfb9gx3ZsJbeesUFI6y0tYM9
 vn/4+warh7OiLpADgL5xvyqNAo0ZZHoj7+Oh6lk+atVaCK3ua2pcGYOVg
 g/OsNzcfeZJSpQAIc9TRsGcHF3TncUuCvSSdJyWktT7Q0ahdkmDGNOJtD
 4EezSqBc1aarFEBMMlIxT0mRkIlY/K/V67MBhS7ydTV9BlZYNlKkmAGPB
 z/SZeelueKJLkKHyTqmpU563dKBemGdyNSLElqsKJQegLcUfeXrVcFcqE
 dlHBcsdDInFb9sfpQxNiiA0HjIb6NMxmLgqwA7fx5xveeYC9vjd3cWED6 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="345934232"
X-IronPort-AV: E=Sophos;i="6.01,158,1684825200"; d="scan'208";a="345934232"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2023 22:55:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10752"; a="781287486"
X-IronPort-AV: E=Sophos;i="6.01,158,1684825200"; d="scan'208";a="781287486"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmsmga008.fm.intel.com with ESMTP; 25 Jun 2023 22:55:48 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Jun 2023 11:24:42 +0530
Message-Id: <20230626055444.1113796-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] MTL Degamma implementation
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

MTL onwards Degamma LUT/PRE-CSC LUT precision has been increased from
16 bits to 24 bits. Currently, drm framework only supports LUTs up to 16
bit precision. Until a new uapi comes along to support higher bitdepth,
upscale the values sent from userland to 24 bit before writing into the
HW to continue supporting degamma on MTL.

To avoid pipe config mismatch between 24 bit HW lut values and 16 bit
userspace sent values, convert back the 24 bit lut values read from HW
to 16 bit values.

Chaitanya Kumar Borah (2):
  drm/i915/color: Add function to load degamma LUT in MTL
  drm/i915/color: For MTL convert 24 bit lut values to 16 bit

 drivers/gpu/drm/i915/display/intel_color.c | 50 +++++++++++++++++++++-
 1 file changed, 48 insertions(+), 2 deletions(-)

-- 
2.25.1

