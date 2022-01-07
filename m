Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC6448781B
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jan 2022 14:21:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0655C10E885;
	Fri,  7 Jan 2022 13:21:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AAAC10E885
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jan 2022 13:21:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641561661; x=1673097661;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NqfyNdqcNEjbJWXIkumKkFVc6hOa5f29Y9HifKPGAIE=;
 b=KIhBZWaq7dn9Bs9CWiqwa9/JGIzFt6Odcp3hL5q2MofL+NaEaOQlScIk
 PlGJv/hrJFChEZ8LzbvxCAO9gyG3LpcWD5uiR1wrgPl2uLIdGtBbtPtf/
 PBEsNXRhLZFYIDA9pIeDvSvy30F61iSknfpKAk1nCMJmD8lHm6s4S+QIX
 Qs58ozXVtBPVcl/u1Tk7mPOBZid6ZW3TZviuIrP8XzbgfV5Z6NBxWzrmV
 7nuGB3cwC9lH+H8syp55F71WoGJ+HiwuzyvIdUTd1xaV1AP6RAg94bh98
 J3noJwTKRhc3knVDPspcUOmJG/jRnAqnNx1eDtrxHPPqoS8ls8mAt5uEh g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10219"; a="222855913"
X-IronPort-AV: E=Sophos;i="5.88,270,1635231600"; d="scan'208";a="222855913"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 05:21:00 -0800
X-IronPort-AV: E=Sophos;i="5.88,270,1635231600"; d="scan'208";a="689787303"
Received: from dgreerx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.24.206])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 05:20:58 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 Jan 2022 15:20:42 +0200
Message-Id: <cover.1641561552.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/5] drm/i915: clean up i915_drv.h, part 1
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

First five patches from [1], chopping it up a bit.

BR,
Jani.

[1] https://patchwork.freedesktop.org/series/98515/


Jani Nikula (5):
  drm/i915: split out i915_getparam.h from i915_drv.h
  drm/i915: split out i915_cmd_parser.h from i915_drv.h
  drm/i915: split out i915_gem_evict.h from i915_drv.h
  drm/i915: split out gem/i915_gem_userptr.h from i915_drv.h
  drm/i915: split out gem/i915_gem_tiling.h from i915_drv.h

 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  2 ++
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c    |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_tiling.h    | 18 ++++++++++
 drivers/gpu/drm/i915/gem/i915_gem_userptr.c   |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_userptr.h   | 14 ++++++++
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +-
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |  1 +
 drivers/gpu/drm/i915/i915_cmd_parser.c        |  1 +
 drivers/gpu/drm/i915/i915_cmd_parser.h        | 26 ++++++++++++++
 drivers/gpu/drm/i915/i915_driver.c            |  1 +
 drivers/gpu/drm/i915/i915_drv.h               | 34 -------------------
 drivers/gpu/drm/i915/i915_gem.c               |  1 +
 drivers/gpu/drm/i915/i915_gem_evict.c         |  1 +
 drivers/gpu/drm/i915/i915_gem_evict.h         | 24 +++++++++++++
 drivers/gpu/drm/i915/i915_gem_gtt.c           |  1 +
 drivers/gpu/drm/i915/i915_getparam.c          |  2 ++
 drivers/gpu/drm/i915/i915_getparam.h          | 15 ++++++++
 drivers/gpu/drm/i915/i915_ioc32.c             |  1 +
 drivers/gpu/drm/i915/i915_vma.c               |  3 +-
 19 files changed, 113 insertions(+), 36 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_tiling.h
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_userptr.h
 create mode 100644 drivers/gpu/drm/i915/i915_cmd_parser.h
 create mode 100644 drivers/gpu/drm/i915/i915_gem_evict.h
 create mode 100644 drivers/gpu/drm/i915/i915_getparam.h

-- 
2.30.2

