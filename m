Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE3B5B598A
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 13:45:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D277B10E3D1;
	Mon, 12 Sep 2022 11:45:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C365E10E3CF
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 11:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662983123; x=1694519123;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ol1bubC3Wg31wJpAjl7PbG5iWb6gGOAY0bEXhIQHvOQ=;
 b=hzoz9NyVOcnmKvALXtM+THbvHQd/zraIpJAnTywCyRTkMn/oC0Zd7xq5
 4KyQEZyV5Vi6+z2veeI2jKEUtZIktCC1a3/fCHT7SKid2XkC3zGHG4jdO
 E9+g8UU4Z6H+zOukK+fk4mN/14EKgtQYYKj/rwhPC2jYbKUhDe/TK1Y5c
 XBhy6DezF/EjZyQU4qFQFAxu4nfT7l2x6Wz7CkGvx4Zv3s4Cc5oSdDVMC
 z3UJZKbGSHim/Qr+HWsXQUdTExTvn6HbxeRFIfzwNSxP1KE9zI2rXh03h
 j03pwXx7/rdBzXPH1GLKjZ4tGJ3Adqvw6Flsm5/EkWD6ZmWgPGly0wfdv Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10467"; a="359568553"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="359568553"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 04:45:22 -0700
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="678052081"
Received: from abijaz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.58.140])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 04:45:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 14:45:11 +0300
Message-Id: <cover.1662983005.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/5] drm/i915/ipc: ipc and sub-struct
 refactoring, take 2
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

This is a rewrite of [1] after Ville NAK'd intel_ipc.[ch] and moved skl
watermark stuff to skl_watermark.[ch].

BR,
Jani.


[1] https://patchwork.freedesktop.org/series/108157/


Jani Nikula (5):
  drm/i915/ipc: refactor and rename IPC functions
  drm/i915/ipc: move IPC debugfs to skl_watermark.c
  drm/i915/ipc: register debugfs only if IPC available
  drm/i915/display: move IPC under display wm sub-struct
  drm/i915/ipc: use intel_uncore_rmw() to enable/disable

 drivers/gpu/drm/i915/display/intel_display.c  |  6 +-
 .../gpu/drm/i915/display/intel_display_core.h |  2 +
 .../drm/i915/display/intel_display_debugfs.c  | 54 +----------
 drivers/gpu/drm/i915/display/skl_watermark.c  | 94 +++++++++++++++----
 drivers/gpu/drm/i915/display/skl_watermark.h  |  6 +-
 drivers/gpu/drm/i915/i915_driver.c            |  2 +-
 6 files changed, 86 insertions(+), 78 deletions(-)

-- 
2.34.1

