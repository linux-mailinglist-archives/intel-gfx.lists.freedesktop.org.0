Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BFA870F6AF
	for <lists+intel-gfx@lfdr.de>; Wed, 24 May 2023 14:41:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16F4810E0F5;
	Wed, 24 May 2023 12:41:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B32D610E0F5
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 May 2023 12:41:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684932110; x=1716468110;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7p+W8KdCbLdh+XPo1CVZckNEeFlfXbiDmc9UyB90xtQ=;
 b=Ms65eaSQkJeO0vtp750TdYr1I461nyTiG40TOb2ht75fQtb+IYgAusAF
 Iq5N/F3aX4xbKmx2fpC/X2m1cumFjiy3+55nAJ0Cqe0h+2MZrEzVw+hh+
 FB0+NcbJ6zVXXbfl22mgml7oouD2ldD6A2EbE793pFYZIyLMNP2wNcC0s
 r118/CSdyqIJr0uemuxglS11DV8KQ37baZmEIl0Bg6mpzHiG3EwcxMdq/
 2a5s6j+u0x88Uwr41wnsNXWZaPnzXrsBRp7+MgQ9i+EtRmKtjvk8TMq9D
 8mv1tc2H+NiWeHD+46x3XMvFR8to4PoynMz2Rf1UCVpNODteJh+snFuky A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="353575616"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="353575616"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 05:41:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="828561834"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="828561834"
Received: from kathrine-mobl2.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.251.223.215])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 05:41:47 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 May 2023 15:41:17 +0300
Message-Id: <20230524124124.378194-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 0/7] mtl: add support for pmdemand
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

pmdemand support patches for MTL

SAGV configuration support for MTL

v2: added one missing patch in the previous version

v3: chekcpatch warning fixes
    update index handling for the icl/tgl QGV point handling
    program pmdemand code simplified

v4: update to debufs and pipe values pmdemand regiters
    removed the macro usage in update_pmdemand_values

V5: Addressing comments from Gustavo and Jani
    And some other fixes for issues from CI

v6: Addressing some comments from Gustavo
    Updates to pmdemand state struct, active phys calculations
    Got rid of suppress warning patch from v5

v7: Rebased and updates to max ddiclk and acvit phys calculatoins

Mika Kahola (1):
  drm/i915/mtl: Add support for PM DEMAND

Vinod Govindapillai (6):
  drm/i915: fix the derating percentage for MTL
  drm/i915: update the QGV point frequency calculations
  drm/i915: store the peak bw per QGV point
  drm/i915: extract intel_bw_check_qgv_points()
  drm/i915: modify max_bw to return index to intel_bw_info
  drm/i915/mtl: find the best QGV point for the SAGV configuration

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_bw.c       | 353 +++++++----
 drivers/gpu/drm/i915/display/intel_bw.h       |   6 +
 drivers/gpu/drm/i915/display/intel_display.c  |  14 +
 .../gpu/drm/i915/display/intel_display_core.h |  11 +
 .../drm/i915/display/intel_display_driver.c   |   7 +
 .../gpu/drm/i915/display/intel_display_irq.c  |  23 +-
 .../drm/i915/display/intel_display_power.c    |   8 +
 drivers/gpu/drm/i915/display/intel_pmdemand.c | 550 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_pmdemand.h |  24 +
 drivers/gpu/drm/i915/i915_reg.h               |  36 +-
 11 files changed, 912 insertions(+), 121 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.h

-- 
2.34.1

