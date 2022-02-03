Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 214A14A85AD
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 15:03:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28B4710F97B;
	Thu,  3 Feb 2022 14:02:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AECC10F97B
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Feb 2022 14:02:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643896977; x=1675432977;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4pcbPaO99hQlwkrb7R30hSE4rWSMjeEVGlWIcDLTL9M=;
 b=I7xCKWfYmJXUMgSbl3Xvwl/daAdr4qSrHoC3VhBdOZxuFQ1idqvANyUC
 TegculfKFYaF54Of/FaDZNndu9i1jLL45Iw2TMHxMhOkoKNLIN1Pr2g37
 RyPQ6ZkVqmyXdhKYR194ABmBVIhMZ+hyLh3Ds3uxJ0TBTZ4yhJ8HC95kZ
 Ei7VlKxDOWiE/hQMwYULTPPc8uDi86q1Pw4Er3sDd60zNvF6Ezi0qW2qp
 U/X8Of8Hzi7AkaRvckDJSvQVtgY8gbuYEQieR3iuv50rxBXpfG1GljV5+
 WWRf9GFEYYivVBKsH+0IStnTtklhmFSF+GlJs2DvspaEtVBYHFZX24kfU g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="308875043"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="308875043"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 06:02:38 -0800
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="538750139"
Received: from cbrady-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.6.65])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 06:02:37 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Feb 2022 16:02:26 +0200
Message-Id: <cover.1643896905.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/7] drm/i915: split out function structs from
 i915_drv.h
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

Most of the structs can be hidden away.

Jani Nikula (7):
  drm/i915: group i915_drv.h forward declarations together
  drm/i915/color: hide struct intel_color_funcs
  drm/i915/hpd: hide struct intel_hotplug_funcs
  drm/i915/fdi: hide struct intel_fdi_funcs
  drm/i915/dpll: add intel_dpll_crtc_compute_clock()
  drm/i915/dpll: hide struct intel_dpll_funcs
  drm/i915/pm: hide struct drm_i915_clock_gating_funcs

 drivers/gpu/drm/i915/display/intel_color.c   | 19 +++++
 drivers/gpu/drm/i915/display/intel_display.c |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll.c    | 12 +++
 drivers/gpu/drm/i915/display/intel_dpll.h    |  1 +
 drivers/gpu/drm/i915/display/intel_fdi.c     |  5 ++
 drivers/gpu/drm/i915/display/intel_hotplug.c |  7 +-
 drivers/gpu/drm/i915/i915_drv.h              | 86 ++++++--------------
 drivers/gpu/drm/i915/i915_irq.c              | 10 +++
 drivers/gpu/drm/i915/i915_irq.h              |  1 +
 drivers/gpu/drm/i915/intel_pm.c              |  4 +
 10 files changed, 78 insertions(+), 69 deletions(-)

-- 
2.30.2

