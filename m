Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 641B65B905B
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 00:04:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE51910EA0C;
	Wed, 14 Sep 2022 22:04:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E78E610EA0C;
 Wed, 14 Sep 2022 22:04:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663193081; x=1694729081;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GOlSpFmGeM0sP/vnESNoIbklewwjtMtkgUzqxu1aS54=;
 b=mNYFbs0YxU5qG33qOLhEOlmtCySqatrhP1myW7TVJBONE2ux0on1SuFS
 PKEEG1djGhmHFlJizlfdQVS70bIrrUQI0po2grapXPUxbRGAFOzM+t3ix
 AIVi/pwldTzfI5KSY8y2bUHvBINxIKjbqPsa4J17m4UobDqValMWen3Lf
 camEsWrZQoL15R3Nbqj6XBdnh7403AGacgiJXUWGpU5Jbw2p7d0Gu4v+G
 GGa9X8N+lHvuO6DKQOsm1DuSXf7tSPeGkx07igxmqwD0K8a5EPGDogSDP
 xgi66+/gTCv/guPQUqJSpmi9vhm8qzdJfhvgsPTwh+D6+mh/9PzUuERm2 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="278280790"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="278280790"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 15:04:40 -0700
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="647570920"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 15:04:40 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Sep 2022 15:04:23 -0700
Message-Id: <20220914220427.3091448-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] Further multi-gt handling
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

Now that MTL is going to start providing two GTs, there are a few more
places in the driver that need to iterate over each GT instead of
operating directly on gt0.  Also some more deliberate cleanup is needed,
in cases where we fail GT/engine initialization after the first GT has
been fully setup.

Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Chris Wilson (1):
  drm/i915/gt: Cleanup partial engine discovery failures

Tvrtko Ursulin (3):
  drm/i915: Make GEM resume all engines
  drm/i915: Make GEM suspend all GTs
  drm/i915: Handle all GTs on driver (un)load paths

 drivers/gpu/drm/i915/gem/i915_gem_pm.c    | 33 ++++++++++++++--
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 16 ++++++--
 drivers/gpu/drm/i915/i915_driver.c        |  3 +-
 drivers/gpu/drm/i915/i915_gem.c           | 46 +++++++++++++++++------
 4 files changed, 78 insertions(+), 20 deletions(-)

-- 
2.37.3

