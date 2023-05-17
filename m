Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DAEBA706848
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 14:38:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CB2C10E40F;
	Wed, 17 May 2023 12:38:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE49910E40F
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 May 2023 12:38:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684327106; x=1715863106;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1Qmaa7568CUISk7ETYRIhwidh7L8x0s6Nh2sAWLssfI=;
 b=K2j2fNtcLkkwhqSdG6zoH428kQpECtmqziiEboJAQkY6fEb4KQWvg1hH
 CMpYLsyZ3W/RfnlpsBmJ/WMSdGSJxbXiYV4306nj9PE8Ci4d/Sa4Ok0Ch
 03rm7VV3+hJM11WHZXok5pJDVUhCxmt2OVxns7sJ1qU3snDr4qITVA83B
 d86Wm8ZHYly50TbLYVkf2osWOMm0Wh5wc7nDem9k/6MMMYYTfvW4ub6na
 fIhm9OO9pAjhnX0d9271mls0tihNUAjgZTxxwpL4EF6KB9WLS8u967q7E
 8DGmHj3csRM1sRTa9rX8gwLtZYek/lvC7G/qcRT8H27uXoC0H5U1EY1BZ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="354916110"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="354916110"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 05:38:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="679253562"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="679253562"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 05:38:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 May 2023 15:38:15 +0300
Message-Id: <cover.1684327004.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/6] drm/i915/color: register & get config
 abstractions
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

Move the color related registers to intel_color_regs.h and move the
color config reads to intel_color_get_config() to declutter i915_reg.h
and intel_display.c, respectively.

BR,
Jani.

Jani Nikula (6):
  drm/i915/regs: split out intel_color_regs.h
  drm/i915/color: move CHV CGM pipe mode read to intel_color
  drm/i915: move HSW+ gamma mode read to intel_color
  drm/i915: move ILK+ CSC mode read to intel_color
  drm/i915/color: move SKL+ gamma and CSC enable read to intel_color
  drm/i915/color: move pre-SKL gamma and CSC enable read to intel_color

 drivers/gpu/drm/i915/display/hsw_ips.c        |   1 +
 drivers/gpu/drm/i915/display/intel_color.c    |  97 +++++++
 .../gpu/drm/i915/display/intel_color_regs.h   | 272 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.c  |  45 ---
 drivers/gpu/drm/i915/display/intel_overlay.c  |   1 +
 drivers/gpu/drm/i915/i915_reg.h               | 260 -----------------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   1 +
 7 files changed, 372 insertions(+), 305 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_color_regs.h

-- 
2.39.2

