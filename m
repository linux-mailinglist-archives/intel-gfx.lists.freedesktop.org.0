Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C00B3FB67E
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Aug 2021 14:53:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08E4E89CAF;
	Mon, 30 Aug 2021 12:53:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F58389CAF
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Aug 2021 12:53:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10091"; a="218306588"
X-IronPort-AV: E=Sophos;i="5.84,363,1620716400"; d="scan'208";a="218306588"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2021 05:53:49 -0700
X-IronPort-AV: E=Sophos;i="5.84,363,1620716400"; d="scan'208";a="530328881"
Received: from anikolae-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.249.47.21])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2021 05:53:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Date: Mon, 30 Aug 2021 15:53:39 +0300
Message-Id: <cover.1630327990.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/5] drm/i915/display: debugfs cleanups
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Some minor cleanupi of the display debugfs code.

BR,
Jani.


Jani Nikula (5):
  drm/i915/debugfs: clean up LPSP status
  drm/i915/debugfs: clean up LPSP capable
  drm/i915/debugfs: register LPSP capability on all platforms
  drm/i915/display: stop returning errors from debugfs registration
  drm/i915/debugfs: pass intel_connector to
    intel_connector_debugfs_add()

 .../gpu/drm/i915/display/intel_connector.c    |   2 +-
 .../drm/i915/display/intel_display_debugfs.c  | 114 ++++++------------
 .../drm/i915/display/intel_display_debugfs.h  |  10 +-
 3 files changed, 45 insertions(+), 81 deletions(-)

-- 
2.20.1

