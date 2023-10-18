Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7934A7CE15B
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Oct 2023 17:41:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AEE510E17D;
	Wed, 18 Oct 2023 15:41:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 018EE10E0BF
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Oct 2023 15:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697643687; x=1729179687;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iWUgseySsYwIA+VHp2v4IbIO91QZAWeqR+HUi2Uomow=;
 b=kbDtI3xfVqhCrosD72/pFp7hQUMgYJT0ZUsbx16eiUZ8/AbkbSgfsPxb
 G/jO0kMC5aV4C6CJMQy9w2glOC9mOOu6tKQHkxOdd9Cb+bs5bXx57e9Ik
 umOEMBn9phIhMtmDc3mOT1DD3xNqp61u+zYOyPaAuRBnwL4Qi9behMxjB
 yxyd97vLf5QyJf0c5W4lYr0g6pyXCKh+Qn75xgDBPBPHSxGqDzQ4A3V+0
 MoGBGuJ1qcJZsSomXbGcmY1i/oRP5yRrQv9vuAYK4gXjQnfsEj74EkuMm
 VkZNO2CvGYtBmS1SAvcklfnZbPzEytiA4J9UYkJmv02MtM1ZY4VILnKJE w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="388902926"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="388902926"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 08:41:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="733219355"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="733219355"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga006.jf.intel.com with SMTP; 18 Oct 2023 08:41:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Oct 2023 18:41:23 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Oct 2023 18:41:19 +0300
Message-ID: <20231018154123.5479-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/4] drm/i915/mst: MST modeset sequence fixes
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Fixes for issues I noticed while perusing the MST modeset sequence.

Ville Syrjälä (4):
  drm/i915/mst: Swap TRANSCONF vs. FECSTALL_DIS_DPTSTREAM_DPTTG disable
  drm/i915/mst: Disable transcoder before deleting the payload
  drm/i915/mst: Clear ACT just before triggering payload allocation
  drm/i915/mst: Always write CHICKEN_TRANS

 drivers/gpu/drm/i915/display/intel_display.c |  3 ++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c  | 26 +++++++++-----------
 2 files changed, 14 insertions(+), 15 deletions(-)

-- 
2.41.0

