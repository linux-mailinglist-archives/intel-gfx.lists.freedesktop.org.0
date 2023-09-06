Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DCC793B49
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Sep 2023 13:31:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 761CA10E135;
	Wed,  6 Sep 2023 11:31:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DFBE10E135
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Sep 2023 11:31:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693999891; x=1725535891;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jzocvDvPF2BGF51HN17gTUEAkkvkZTnjutS9m/QBdyk=;
 b=kQ6AKT/BPJtaYzk02Mzw75gNahxlNmEd+oa7y5PtiP4Vb2LV5SjStY/G
 BQqmWb1fiYlExUMZjz5W0CGtU3fH2Z7zHDmoiiWVQLehW/xn58CH429PP
 14b/h20B5Zgaf+RiIkVSXriYysBFOj8q4QqLNUc5GxgiUjmz05kHaJjWu
 c1IeUK+V0LzgLBxyRIxibvnm22vIh808JfW3gvYeLsczvEiyRZT1RsrYe
 4omvseSS3KUBZXwPi/0POfnnh08RiM6DJxdN0UAtYprLPgGarVw6XPtj3
 uTU3GssDhsq72PDx6jRdv3gf354gGY57lWAhWTTuK/FQxJaSqwkAaFmV/ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="357353581"
X-IronPort-AV: E=Sophos;i="6.02,231,1688454000"; d="scan'208";a="357353581"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 04:31:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="865109416"
X-IronPort-AV: E=Sophos;i="6.02,231,1688454000"; d="scan'208";a="865109416"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 04:31:27 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Sep 2023 13:31:16 +0200
Message-ID: <20230906113121.30472-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/5] Update GGTT with MI_UPDATE_GTT on MTL
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
Cc: andi.shyti@intel.com, chris.p.wilson@linux.intel.com,
 matthew.d.roper@intel.com, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Implement a way to update GGTT using MI_UPDATE_GTT command 
when possible for MTL as a suggested work around for
a HW bug.

Chris Wilson (1):
  drm/i915: Lift runtime-pm acquire callbacks out of intel_wakeref.mutex

Nirmoy Das (4):
  drm/i915: Create a kernel context for GGTT updates
  drm/i915: Implement __for_each_sgt_daddr_next
  drm/i915: Implement GGTT update method with MI_UPDATE_GTT
  drm/i915: Enable GGTT updates with binder in MTL

 drivers/gpu/drm/i915/gt/intel_engine.h       |   2 +
 drivers/gpu/drm/i915/gt/intel_engine_cs.c    |  33 ++-
 drivers/gpu/drm/i915/gt/intel_engine_types.h |   3 +
 drivers/gpu/drm/i915/gt/intel_ggtt.c         | 235 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt.c           |  18 ++
 drivers/gpu/drm/i915/gt/intel_gt.h           |   2 +
 drivers/gpu/drm/i915/gt/intel_gtt.c          |   5 +
 drivers/gpu/drm/i915/gt/intel_gtt.h          |   5 +
 drivers/gpu/drm/i915/i915_driver.c           |   5 +
 drivers/gpu/drm/i915/i915_scatterlist.h      |  10 +
 drivers/gpu/drm/i915/intel_wakeref.c         |  43 ++--
 11 files changed, 338 insertions(+), 23 deletions(-)

-- 
2.41.0

