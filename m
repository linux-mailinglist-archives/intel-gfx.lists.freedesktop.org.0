Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD1F6080DA
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 23:39:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7770210E08D;
	Fri, 21 Oct 2022 21:39:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9DA310E4D0
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 21:39:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666388379; x=1697924379;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/YrXFjhlnFewf2kbaqDHz/Olhf6VaN/r3P1NF+yUPMQ=;
 b=CSMsDcoDnzbAbAfHvRMNjKs3ZK6Dt6AYNn2Hbg6tExOUpqHF592oEkfE
 gtJlWhkBUznaLG5D3up5T1kv0cLnXOykjX1jz77z0H9jmlji0Q7GfKMoX
 OhBUctvQWTZj3WWhMTzLLSv1+QrSUk1/e23p6H/uJKPbyMD1PwsZb+yY3
 ctylfQ5D3Amy865FEe36AuawAJ+LpCO+F09Cni5E4JXs/nQe0Zz2cvK1p
 fbPeODJjnHrIngiFBIdTYlt2ygKeHAIRDsbe4yrhfPRRW16UVJlWqMzAt
 TuDxezg64iQw9SpDro2nLvM1smddzPF4n0jSV/MRsOJrzrOG2a5+nIy9n Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="308795348"
X-IronPort-AV: E=Sophos;i="5.95,203,1661842800"; d="scan'208";a="308795348"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 14:39:39 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="699511241"
X-IronPort-AV: E=Sophos;i="5.95,203,1661842800"; d="scan'208";a="699511241"
Received: from anushasr-mobl7.jf.intel.com ([10.24.14.105])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 14:39:38 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Oct 2022 14:39:44 -0700
Message-Id: <20221021213948.516041-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] Prep series - CDCLK code churn
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
Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

No functional changes. The series is more of a prep series
for the mid_cdclk_config series:
https://patchwork.freedesktop.org/series/109694/

Main change:
 - Change usage of "crawler" and "squasher". Use crawling and
squashing instead.
 - Handle both squash and crawl similar in terms of checking
if the platform supports them or not. With the changes introduced,
both are a display feature flag.
 - Move code from bxt_set_cdclk() to make it more modularized
and easy to read and understand.

v2: Change function names to align with rest of the driver.
No major changes.

Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>

Anusha Srivatsa (4):
  drm/i915/display: Change terminology for cdclk actions
  drm/i915/display: Introduce HAS_CDCLK_SQUASH macro
  drm/i915/display: Move chunks of code out of bxt_set_cdclk()
  drm/i915/display: Move squash_ctl register programming to its own
    function

 drivers/gpu/drm/i915/display/intel_cdclk.c | 80 ++++++++++++----------
 drivers/gpu/drm/i915/i915_drv.h            |  1 +
 drivers/gpu/drm/i915/i915_pci.c            |  1 +
 drivers/gpu/drm/i915/intel_device_info.h   |  1 +
 4 files changed, 48 insertions(+), 35 deletions(-)

-- 
2.25.1

