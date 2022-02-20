Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8E14BCFE8
	for <lists+intel-gfx@lfdr.de>; Sun, 20 Feb 2022 17:37:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F74F10E226;
	Sun, 20 Feb 2022 16:37:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E8F510E226
 for <intel-gfx@lists.freedesktop.org>; Sun, 20 Feb 2022 16:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645375066; x=1676911066;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sPsqCZ30sBzc/R2UYlYb4urqCecC5B5jSKaeSrG1hPw=;
 b=RI4POnj+KJafBJv+zNasnJcakBmeMnSR5nr4XAm8H5S5l1eQocFUCHFi
 rCzDtnffTKWuwxrxQUGO47D7Xt6RNdL2nI2sjKlzG8bEoBE1YxkEGCJ+G
 FBNqY3LdW4gMd/Qh7KsyMLmt4dSOkvl2mEn8yNBd0wUv8763U6Q2VjLZD
 rC8d6y2PBpfrqLInbDiytAXDf8PWbbCjmggOGwwskekA2M4UTCKr4lb+K
 WJGDQiVxLsoxoAT8Mx3ZeynDfiTzu0JIo9N92vSn4g9c6hasnuskxmRb2
 zHtLnP2lpE4zt5/Oy3nSPSmdN7DtFhaEoyaUy/IFhyw+ULfLq2Jp7wxAD g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10264"; a="314650634"
X-IronPort-AV: E=Sophos;i="5.88,383,1635231600"; d="scan'208";a="314650634"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2022 08:37:45 -0800
X-IronPort-AV: E=Sophos;i="5.88,383,1635231600"; d="scan'208";a="490199488"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2022 08:37:43 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 20 Feb 2022 22:07:24 +0530
Message-Id: <20220220163730.5021-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/6] DGFX OpRegion
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This series setup DGFX OpRegion.

v2 has addressed the review comment to keep only opregion
abstraction stuff in "Abstract opregion function" opregion
patch and some other error handling as mentioned in the 
patches commitlog.

v3 has addressed review comment from Manasi.

Anshuman Gupta (6):
  drm/i915/opregion: Add intel_opregion_init() wrapper
  drm/i915/opregion: Abstract opregion function
  drm/i915/opregion: Add dgfx opregion func
  drm/i915/opregion: Cond dgfx opregion func registration
  drm/i915/dgfx: OPROM OpRegion Setup
  drm/i915/dgfx: Get VBT from rvda

 drivers/gpu/drm/i915/display/intel_opregion.c | 544 ++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_opregion.h |   8 +-
 drivers/gpu/drm/i915/i915_driver.c            |   2 +-
 3 files changed, 503 insertions(+), 51 deletions(-)

-- 
2.26.2

