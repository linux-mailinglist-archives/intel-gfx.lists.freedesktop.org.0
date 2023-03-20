Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A8C6C0DBB
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 10:54:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9094B8920E;
	Mon, 20 Mar 2023 09:54:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93E1D8920E
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 09:54:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679306083; x=1710842083;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/vgPJrmVEIMf7UQJCRF3LVgzti31mcdfHzZt6iyBMrY=;
 b=Jm9C8mduQSGmMctUcgiyf6m/Xq/zMtwo0dZC7/g++KYg5OvMFnNkOwJR
 y/3j0bfmdTidyIlZm1aWVDei3g+vps9DTGpD5HnblhN5zyPpzM68Ogc4s
 +ZwYn03xESfWGLcY6BqgiwrKWGFTp7h/o9V3skQs2ckEEM+J+0Hx/UOr+
 3s3+hPNwBXJzTSUnu4Ue+WbWlvGYmdiih/pW16IZ9wg5b8ZH0RPTnz0KP
 e5VH509OInKEWjJ8Y6CiVzERdeo9k3Ay+g0Bv2knJgeSkEvWF9SoUZNlu
 ZWapX5ELE9sls69h+4E9esUquPubsMyee7g7TyGVCl2F0MvD2Vc6R3kQX Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="366336412"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="366336412"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 02:54:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="631067048"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="631067048"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga003.jf.intel.com with SMTP; 20 Mar 2023 02:54:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Mar 2023 11:54:38 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Mar 2023 11:54:32 +0200
Message-Id: <20230320095438.17328-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/6] drm/i915: Fix various issues with noarm
 register writes
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
Cc: Drew Davenport <ddavenport@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The CSC unit on SKL/GLK/ICL is borked in various ways. This
can cause black screens and/or premature noarm register latching.
And DC5+PSR can in general also cause premature noarm register
latching. Deal with it all.

Cc: Manasi Navare <navaremanasi@google.com>
Cc: Drew Davenport <ddavenport@chromium.org>
Cc: Imre Deak <imre.deak@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>

Ville Syrjälä (6):
  drm/i915: Split icl_color_commit_noarm() from skl_color_commit_noarm()
  drm/i915: Move CSC load back into .color_commit_arm() when PSR is
    enabled on skl/glk
  drm/i915: Add a .color_post_update() hook
  drm/i915: Workaround ICL CSC_MODE sticky arming
  drm/i915: Disable DC states for all commits
  drm/i915/psr: Define more PSR mask bits

 drivers/gpu/drm/i915/display/intel_color.c    | 102 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_color.h    |   1 +
 drivers/gpu/drm/i915/display/intel_display.c  |  31 +++++-
 .../drm/i915/display/intel_display_power.c    |  15 +++
 .../drm/i915/display/intel_display_power.h    |   1 +
 drivers/gpu/drm/i915/i915_reg.h               |  10 +-
 6 files changed, 151 insertions(+), 9 deletions(-)

-- 
2.39.2

