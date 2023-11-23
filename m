Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7C97F57B6
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Nov 2023 06:14:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8308E10E6CA;
	Thu, 23 Nov 2023 05:14:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EB3910E6CA
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Nov 2023 05:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700716481; x=1732252481;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ImjLB3R92JR3je4Yis+Yl6Swa+CS7RjREglRAP1AnBE=;
 b=nQ/jLVtVM/EEqA1Cjd3jDUh6noJJtCOMo0Gh5poPn435N2zMroHdZFe+
 LPBsUx/pwqgk9gSFSZ282wj+VFUFkjPGJ119jlDKFVSp3ArM/w1jHINET
 z1m2L00l0Zq7XaE0pzEbl+u/3JDtp6HHUzbkVJ5s1kA4ZYavBLQIEJROJ
 J01/URGrV0XS8xbH5uVQ60p0KVjrpJGd+opMrfXn1xrVhXIQR2wEE1MjR
 TAE1F9SqwAATblDr+Pv64/eUyd12QbIub5SOrOMOueDFOiVzKOQYZdDtr
 /vIqDV6ukwjAWyvqlAtimnPctAIgBsLfehakft4x9JGSFg3pfQgESAyKz g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="458696749"
X-IronPort-AV: E=Sophos;i="6.04,220,1695711600"; d="scan'208";a="458696749"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 21:14:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="1098684753"
X-IronPort-AV: E=Sophos;i="6.04,220,1695711600"; d="scan'208";a="1098684753"
Received: from shekharc-desk.iind.intel.com ([10.190.239.54])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 21:14:39 -0800
From: Shekhar Chauhan <shekhar.chauhan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Nov 2023 10:44:29 +0530
Message-Id: <20231123051430.3348945-1-shekhar.chauhan@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/1] drm/i915/mtl: Fix Wa_22016670082
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Wa_22016670082 is applicable on GT and Media.
For GT, an MCR register is required instead of MMIO.

v1: Introduce the fix
v2: Minor cosmetic change for naming convention
    of the register and adding a Todo for later
    changes in the code.

Shekhar Chauhan (1):
  drm/i915/mtl: Fix Wa_22016670082

 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 6 ++++++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 2 +-
 2 files changed, 7 insertions(+), 1 deletion(-)

-- 
2.34.1

