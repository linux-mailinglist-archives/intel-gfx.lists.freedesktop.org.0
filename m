Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F8866BE56
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Jan 2023 13:56:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01E9010E3FA;
	Mon, 16 Jan 2023 12:56:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74E9910E298
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Jan 2023 12:56:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673873781; x=1705409781;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2JcZaJQhlgKz8NjC1oWVQM2eSEIEcTns6fSQxr+E4HA=;
 b=NT8CEBiS5ZnXBnezKtW0DsLTeHGgOyvhmL5zi3ZULiC54CVhVkiGR3w7
 FjI7KJLx8VHhdYo2euy0D8Btu5zg2aXF7GcxNSlT8QLVuiDqULTg+rryR
 u53T5kWabFsnW8w7tJFYRfmI+JmO44PeGjccipcWGEvbNos6hqyaHFTdQ
 MEB8KeALloQzJ7/6WmfB10F9/e971Z67zqP9VOqX7D67fks50nKbtwgzh
 BGN2eoM5VfsaZi43GXLiAC1Jak3UrPJHR7+647Rkr3ETC76/idbcIwzgo
 qGmH/3P2HLVtSRZxwZszdQzWE4cHystiCHRCrYSPUjPhpyFDQ0YfDi29j w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="386799980"
X-IronPort-AV: E=Sophos;i="5.97,221,1669104000"; d="scan'208";a="386799980"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2023 04:56:20 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="904320267"
X-IronPort-AV: E=Sophos;i="5.97,221,1669104000"; d="scan'208";a="904320267"
Received: from amakarev-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.13.137])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2023 04:56:19 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Jan 2023 14:56:11 +0200
Message-Id: <cover.1673873708.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/5] drm/i915: extract vblank/scanline code
 to a separate file
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

Basically just https://patchwork.freedesktop.org/series/111854/ with the
two controversial patches dropped for now.

BR,
Jani.

Jani Nikula (5):
  drm/i915/irq: split out vblank/scanline code to intel_vblank.[ch]
  drm/i915/display: move more scanline functions to intel_vblank.[ch]
  drm/i915/display: use common function for checking scanline is moving
  drm/i915/vblank: use intel_de_read()
  drm/i915/vblank: add and use intel_de_read64_2x32() to read vblank
    counter

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_crtc.c     |   1 +
 drivers/gpu/drm/i915/display/intel_de.h       |   7 +
 drivers/gpu/drm/i915/display/intel_display.c  |  54 +--
 .../drm/i915/display/intel_display_trace.h    |   1 +
 drivers/gpu/drm/i915/display/intel_vblank.c   | 441 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_vblank.h   |  23 +
 drivers/gpu/drm/i915/i915_irq.c               | 408 ----------------
 drivers/gpu/drm/i915/i915_irq.h               |   6 -
 9 files changed, 476 insertions(+), 466 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_vblank.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_vblank.h

-- 
2.34.1

