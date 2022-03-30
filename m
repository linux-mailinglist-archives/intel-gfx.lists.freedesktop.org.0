Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DBC24ED061
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 01:48:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E5FA10E16F;
	Wed, 30 Mar 2022 23:48:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0549610E07A
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 23:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648684094; x=1680220094;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DutiXu1kw9IoamXIHp6n6kv0tAB0vgbsRhHzEN4UStg=;
 b=ICj4+AICdP/oqcs7HoPI8B2/TZmbnag8Gc/Y2Cc6/rvURu2BdacY6xz8
 Pr0PcgwVZFJHulXoptzXX76u1hGUKewlz7dthhLEKD20l6yd2zGDxqEnk
 ZUas/j24iteMmfwTHxSDb5583lmi3GlOT8szazohn2E7r+AxP895YRdHB
 qXNI0Q9tNCwrQpAp6Rycs4apdbZ+nvpp7wfu53F2Z4QreBTtagKf4uMPK
 /3C2sIXD9POQpVf9FhZ0V20gco51ueJSqpToPsnNn7hrnbc9DDlOPQrZd
 sw8OC8B29oH/1jPywYcuNxV83cti6TMBQzFWB5zhO3hrfEaOIZixZRQNe A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="239600464"
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="239600464"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 16:48:13 -0700
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="547057111"
Received: from mcbewley-mobl.ger.corp.intel.com (HELO
 cgbowman-desk1.amr.corp.intel.com) ([10.209.48.13])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 16:48:13 -0700
From: Casey Bowman <casey.g.bowman@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Mar 2022 16:48:09 -0700
Message-Id: <20220330234809.1218210-3-casey.g.bowman@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220330234809.1218210-1-casey.g.bowman@intel.com>
References: <20220330234809.1218210-1-casey.g.bowman@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 2/2] drm/i915: Require INTEL_GTT to depend on
 X86
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
Cc: thomas.hellstrom@linux.intel.com, lucas.demarchi@intel.com,
 chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The intel-gtt module is not used on other, non-x86 platforms, so we
will restrict it to x86 platforms only.

Signed-off-by: Casey Bowman <casey.g.bowman@intel.com>
---
 drivers/gpu/drm/i915/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index 98c5450b8eac..b8d45d259337 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -4,7 +4,7 @@ config DRM_I915
 	depends on DRM
 	depends on X86 && PCI
 	depends on !PREEMPT_RT
-	select INTEL_GTT
+	select INTEL_GTT if X86
 	select INTERVAL_TREE
 	# we need shmfs for the swappable backing store, and in particular
 	# the shmem_readpage() which depends upon tmpfs
-- 
2.25.1

