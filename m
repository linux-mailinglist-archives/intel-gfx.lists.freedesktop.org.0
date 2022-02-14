Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 436444B541C
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Feb 2022 16:02:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C59410E237;
	Mon, 14 Feb 2022 15:02:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 595BD10E237
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Feb 2022 15:02:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644850958; x=1676386958;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1eNbbBos76TSomDGJUe/qnEKgLd4dn/MaCqA0hKFKLo=;
 b=RjeVubNf9u3f2rULJfzGNkZRYSguAmtybrht+OC3xdC43q3rnAS7syWb
 TDQJsns7HZpW6rMwcxfBB8elLmaKP4/V2TqHmhuSMGGoplP1nLT3Poab9
 h26SUZGBq48l6/YlvuWNw7V+MDLHD+JAOzPxffl5KmmwsFvCyMJOcSV3X
 XLo9acJIHX47TU23McLH6R6EEU+z82+/SWcXVS81n1IUHg0suAZ0u29z6
 utCCip/r0cOWFwfA0f1F89T32yufM9V7KDEaeLD04fcuGot5YLhsFDwKh
 AZuAIcE5Nt6XX0mU21IdtGKamAWxCYQiWXxI5wqwOs+mAcPHABo4Sfa9D w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10257"; a="237514353"
X-IronPort-AV: E=Sophos;i="5.88,368,1635231600"; d="scan'208";a="237514353"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 07:02:11 -0800
X-IronPort-AV: E=Sophos;i="5.88,368,1635231600"; d="scan'208";a="485511379"
Received: from unknown (HELO localhost) ([10.252.13.38])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 07:02:10 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Feb 2022 17:02:05 +0200
Message-Id: <cover.1644850884.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] drm/i915/fbdev: hide struct intel_fbdev
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

Jani Nikula (2):
  drm/i915/fbdev: add intel_fbdev_to_framebuffer() helper
  drm/i915/fbdev: hide struct intel_fbdev in intel_fbdev.c

 .../drm/i915/display/intel_display_debugfs.c  |  6 ++---
 .../drm/i915/display/intel_display_types.h    | 21 ----------------
 drivers/gpu/drm/i915/display/intel_fbdev.c    | 25 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fbdev.h    |  7 ++++++
 4 files changed, 35 insertions(+), 24 deletions(-)

-- 
2.30.2

