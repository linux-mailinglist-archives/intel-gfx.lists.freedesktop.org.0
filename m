Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B30616DB2
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 20:19:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 830A910E595;
	Wed,  2 Nov 2022 19:19:30 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 913C410E589;
 Wed,  2 Nov 2022 19:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667416763; x=1698952763;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5fnK83yg6jKl6KjHVJPI1b46Zx2u4MyBAuqCJkbI1hc=;
 b=fLgscHxgmIEKJMz33P6DQkt0eplm2XLpiqXDJ0/scrtqv7jE+XADmaq7
 YRo5VgrCV42o5JUmg81xyTeTOAAFPU88v3tOcIPGG6tT45z5fCBCxOxG/
 5FnCQ9iKUfWOGBfe2mFRwqxiE1islIsVYOFcqdp6DOqy9os7GMt+1xhHf
 wPYVkWX2qlWZ/u6GmCoQ6IAI1Rj6gROrGZ+7utXBmDkEjrjt+exDZ+xsO
 DuV8LkX3Tfz5OSZfhIisPJa+aQtPBTUaIUbnyogBJMCYkvMD8e0dI0266
 ZGFIkokHm1nLg4ea3LtqlJ8gJTGHcwev8sCJMi/8ljVjJir3otlNCu0jP A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="289213508"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="289213508"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 12:19:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="777017562"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="777017562"
Received: from relo-linux-5.jf.intel.com ([10.165.21.154])
 by fmsmga001.fm.intel.com with ESMTP; 02 Nov 2022 12:19:22 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Wed,  2 Nov 2022 12:21:07 -0700
Message-Id: <20221102192109.2492625-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/2] Fix for two GuC issues
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

Fix for a deadlock issue between the GuC busyness stats worker and GT
resets. Also fix kernel contexts not getting the correct scheduling
priority at start of day.

v2: Rename existing uses of _trylock rather than adding a _noretry
version. Also improve the comment a bit.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>


John Harrison (2):
  drm/i915/guc: Properly initialise kernel contexts
  drm/i915/guc: Don't deadlock busyness stats vs reset

 drivers/gpu/drm/i915/gem/i915_gem_mman.c       |  2 +-
 drivers/gpu/drm/i915/gt/intel_reset.c          | 18 ++++++++++++++++--
 drivers/gpu/drm/i915/gt/intel_reset.h          |  1 +
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c  |  7 ++++++-
 4 files changed, 24 insertions(+), 4 deletions(-)

-- 
2.37.3

