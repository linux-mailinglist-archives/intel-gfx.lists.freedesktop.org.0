Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8DE46EF39
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 18:00:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2C1A10E4AB;
	Thu,  9 Dec 2021 16:54:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE5AE10E11E
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 13:51:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639057869; x=1670593869;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=scS9bKyM70SI5RwKgsgsA7NrKAeTavonCcAMJEF6UNM=;
 b=ZLtEAp9I3/nsJDACPj7F1q2e91k3XUeoDVDFmiF1EOS7n4dbC+U6BM+2
 yUD8909SxpjUxR+f9/dsnqaPtdAH4VVVe6PRsfU4p89Mi5iSj1pc/+5MQ
 pys29e1pLvHUngPDBrpyeD+XusfRSfNjIe/AZD6LSEp/aUBkDdGJPOeV5
 nGyaG61ruzarDrXGENbUf65yE6FOc0HnWcpY0zhOskqaJUo14uB/gHyKu
 tGUQf+kHGtIG2XTHaK2Z902dW/Ip/aXVHn5mMV2gGI9K9kdTUHKox/g6F
 MHzRHPRraLiK4kViMgBp1M7PBVeyXE9GaEYTspj4LaID9ma/Lq2u7walb A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="237904306"
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="237904306"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 05:51:09 -0800
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="680331714"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.252.19.112])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 05:51:07 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Dec 2021 15:50:55 +0200
Message-Id: <cover.1639057801.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/7] drm/i915: include reductions
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

Remove some useless includes as well as ones that can be removed with
trivial changes.

Jani Nikula (7):
  drm/i915/reset: remove useless intel_display_types.h include
  drm/i915/active: remove useless i915_utils.h include
  drm/i915/psr: avoid intel_frontbuffer.h include with declaration
  drm/i915/fbc: avoid intel_frontbuffer.h include with declaration
  drm/i915/fb: reduce include dependencies
  drm/i915/pxp: un-inline intel_pxp_is_enabled()
  drm/i915/pxp: remove useless includes

 drivers/gpu/drm/i915/display/intel_fbc.h         |  3 +--
 drivers/gpu/drm/i915/display/intel_frontbuffer.h |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.h         | 11 ++++++-----
 drivers/gpu/drm/i915/gt/intel_reset.c            |  1 -
 drivers/gpu/drm/i915/i915_active_types.h         |  2 --
 drivers/gpu/drm/i915/pxp/intel_pxp.c             |  5 +++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h             | 14 ++++++++------
 drivers/gpu/drm/i915/pxp/intel_pxp_types.h       |  2 --
 8 files changed, 21 insertions(+), 19 deletions(-)

-- 
2.30.2

