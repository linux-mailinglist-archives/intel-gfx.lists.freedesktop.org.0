Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF43645FE4
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 18:17:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D93C789811;
	Wed,  7 Dec 2022 17:17:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEB2289811
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670433453; x=1701969453;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=gPKzAWNwkdYqBFnOrLRjhBSidooJOoMekzsRZhB56ic=;
 b=mAvDEZYoHFaTduHs436DFkylhQ55OUlxdEOZRly6woF8F8J7vXtplyYQ
 iUS1mMvVkJ+EvT8+yvSFOaKMTsxpvUwW3TFl3BPCFJ8jqb+RMmz6/ZbTG
 fn20/D1sjUlpdoItw8spGYOv5N8qg+VvZIIhhUxYDFyn79dM6TllN68xi
 RHd7giBIStfwZTOj0L+NRY79hh3edDLwN20AfEormoffhv1OttmJN2n+c
 ZIbkwsPifdibW1rUl0e6nf3vOP/DFgpQdfKemflrdqvuR/8Ti4kjqrzcX
 kWbkVWuATBRPOoR2mKN328n7WLNjt9EXG2y2Spz3qvSDt/5QkaiR3fQ/P g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="315663328"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="315663328"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 09:17:33 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="788968507"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="788968507"
Received: from fbackhou-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.36.192])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 09:17:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Dec 2022 19:17:17 +0200
Message-Id: <cover.1670433372.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 00/11] drm/i915/display: switch to intel_de_*
 register accessors
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

v2 of https://patchwork.freedesktop.org/series/111281/

Drop the dubious intel_de_rewrite_fw() thing.

Jani Nikula (10):
  drm/i915/de: return the old register value from intel_de_rmw()
  drm/i915/crt: drop a bunch of unnecessary register variables
  drm/i915/crt: switch to intel_de_* register accessors in display code
  drm/i915/power: switch to intel_de_* register accessors in display
    code
  drm/i915/dmc: switch to intel_de_* register accessors in display code
  drm/i915/dp-aux: switch to intel_de_* register accessors in display
    code
  drm/i915/gmbus: switch to intel_de_* register accessors in display
    code
  drm/i915/wm: switch to intel_de_* register accessors in display code
  drm/i915/snps: switch to intel_de_* register accessors in display code
  drm/i915/tc: switch to intel_de_* register accessors in display code

Maarten Lankhorst (1):
  drm/i915/de: Add more macros to remove all direct calls to uncore

 drivers/gpu/drm/i915/display/intel_crt.c      | 53 +++++++-----------
 drivers/gpu/drm/i915/display/intel_de.h       | 39 ++++++++++++-
 .../drm/i915/display/intel_display_power.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      |  6 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c   | 29 +++++-----
 drivers/gpu/drm/i915/display/intel_gmbus.c    | 46 ++++++----------
 drivers/gpu/drm/i915/display/intel_snps_phy.c | 15 +++--
 drivers/gpu/drm/i915/display/intel_tc.c       | 55 ++++++-------------
 drivers/gpu/drm/i915/display/skl_watermark.c  | 42 ++++++--------
 9 files changed, 134 insertions(+), 153 deletions(-)

-- 
2.34.1

