Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A7541D893
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Sep 2021 13:24:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5424A6EB95;
	Thu, 30 Sep 2021 11:24:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF6E96EB7E
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Sep 2021 11:24:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="310708360"
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="310708360"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 04:24:41 -0700
X-IronPort-AV: E=Sophos;i="5.85,336,1624345200"; d="scan'208";a="555743439"
Received: from vmurthy-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.37.18])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2021 04:24:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Date: Thu, 30 Sep 2021 14:24:30 +0300
Message-Id: <cover.1633000838.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/6] drm/i915: incidental -EPERM considered
 harmful
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

I think using return -1 to indicate errors in kernel is generally a bad
idea. There are specific cases, such as returning invalid indexes, where
it might be justified, but functions that are expected to return actual
kernel error codes should return actual kernel error codes, not
incidental -EPERM.

Fix a handful of these cases as an example. I thought DSI needed a
little cleanup first instead of just making the conversion.

BR,
Jani.


Jani Nikula (6):
  drm/i915/dsi: pass struct mipi_dsi_packet pointer, not the entire
    struct
  drm/i915/dsi: fuse dsi_send_pkt_payld() and add_payld_to_queue()
  drm/i915/dsi: return -EBUSY instead of -1
  drm/i915/hdmi: return -EINVAL instead of -1
  drm/i915/drv: return -EIO instead of -1
  drm/i915/dram: return -ENOENT instead of -1

 drivers/gpu/drm/i915/display/icl_dsi.c    | 64 +++++++++--------------
 drivers/gpu/drm/i915/display/intel_hdmi.c |  2 +-
 drivers/gpu/drm/i915/i915_drv.c           |  7 +--
 drivers/gpu/drm/i915/intel_dram.c         |  4 +-
 4 files changed, 32 insertions(+), 45 deletions(-)

-- 
2.30.2

