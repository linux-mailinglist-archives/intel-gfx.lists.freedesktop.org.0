Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2088269F0
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jan 2024 09:58:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF31110E1AE;
	Mon,  8 Jan 2024 08:58:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E2B110E1BF
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 08:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704704313; x=1736240313;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=D8i8YQSxvKDmaVRZv9cpYHTzXofRYkzmrTtHQGjxTt4=;
 b=dEyygenWyMWqnqzxDshEs759I0hpuWBSp+faFZBlwnpSFY8KjYFG4QTk
 laCS4xjOOc688f3Tn7uzHsttQsB4Er6PWV1MwBa+HSKMsSsxXwxNUOwtK
 Lt27zxMot/s+Oagpnm4pMyPAq7ha+UurbEU6ae+qBP5bscPbh4xeVtPw/
 T/gqfYJq9p/yi7x73T2q+EN18sMcg7bxIcyl5o+JxbFjXSbTVTjAFown0
 oqKMIh2mNB1ZzdjcJMQ6O7Yy9xZ2lBiZ+OHPBlHqgSSpmzvoMaXZOx3Rn
 wK63zNCHhsjpO4XjmyhTuKx473b5i/XLEAHVWInxZ8PEk9bNugcA7BuPF A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="4623033"
X-IronPort-AV: E=Sophos;i="6.04,340,1695711600"; 
   d="scan'208";a="4623033"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 00:58:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="1112681004"
X-IronPort-AV: E=Sophos;i="6.04,340,1695711600"; d="scan'208";a="1112681004"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga005.fm.intel.com with ESMTP; 08 Jan 2024 00:58:31 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/3] Bigjoiner refactoring
Date: Mon,  8 Jan 2024 10:58:27 +0200
Message-Id: <20240108085830.18584-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

There are few things we need to do for bigjoiner, in order
to improve code maintenance and also make testing for Bigjoiner
easier.
Those series contain addition of bigjoiner force debugfs option,
in order to be able to force bigjoiner even if there is no display
support, also we refactor pipe vs transcoder logic, as currently
it is a bit scattered between *_commit_modeset_enables/disables
and *_crtc_enable/disable functions. Same applies to encoders.
We made a decision to handle all the slaves in correspondent master
hook, so slaves and slave checks no longer would be in modesetting
level logic.

Stanislav Lisovskiy (3):
  drm/i915: Add bigjoiner force enable option to debugfs
  drm/i915/bigjoiner: Refactor bigjoiner state readout
  Start separating pipe vs transcoder set logic for bigjoiner during
    modeset

 drivers/gpu/drm/i915/display/intel_ddi.c      |   3 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 170 ++++++++++++++----
 .../drm/i915/display/intel_display_debugfs.c  |  59 ++++++
 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   3 +-
 5 files changed, 202 insertions(+), 35 deletions(-)

-- 
2.37.3

