Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A97977FB34
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Aug 2023 17:53:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94E3B10E4F1;
	Thu, 17 Aug 2023 15:53:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7579410E4F1
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Aug 2023 15:53:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692287625; x=1723823625;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nEHQ1CD703T4rvi6HE2n44If/7fv3rn+WkuK38Am+Us=;
 b=W/RuAqpBT2mubVabNFrFAls5cTO6ztvwNwbSuymC1wGrc4U5L4FJBeE7
 3sbg3hp+asRoaRhpDWKS0osD+VgaO+ib10D5Ivk0ld2sx/81AG7ofSf/h
 jFw0FU7cuK3DPei6MwkMTtVE0UcN0MY4f/25eBmbWXfbYhsatL4HMxvuT
 w64VlSxtKtUmtJLGfsbLVkDwTkrAdMbVkdiSWGKsVjtOj0qdV947hF1dl
 og/5kXSChPvy4mA9dHwku880eLLRmCB7ZpedRank1I57AzRkTmzDvKmLV
 OQx/suLToWanHKJDr3WAVkTFsXzE17QZlFJq8uGc2DfxoAJlo53KKxoww w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="439227276"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="439227276"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 08:53:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="764150238"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="764150238"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.162])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 08:53:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Aug 2023 18:53:02 +0300
Message-Id: <cover.1692287501.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/6] drm/i915/color: cleanups and refactoring
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

Split out register macros to a separate file, and move more color
register access to intel_color.c.

Jani Nikula (6):
  drm/i915/regs: split out intel_color_regs.h
  drm/i915/color: move CHV CGM pipe mode read to intel_color
  drm/i915: move HSW+ gamma mode read to intel_color
  drm/i915: move ILK+ CSC mode read to intel_color
  drm/i915/color: move SKL+ gamma and CSC enable read to intel_color
  drm/i915/color: move pre-SKL gamma and CSC enable read to intel_color

 drivers/gpu/drm/i915/display/hsw_ips.c        |   1 +
 drivers/gpu/drm/i915/display/intel_color.c    |  97 ++++++
 .../gpu/drm/i915/display/intel_color_regs.h   | 286 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.c  |  45 ---
 drivers/gpu/drm/i915/display/intel_overlay.c  |   1 +
 drivers/gpu/drm/i915/i915_reg.h               | 274 -----------------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   1 +
 7 files changed, 386 insertions(+), 319 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_color_regs.h

-- 
2.39.2

