Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 99FA39F0864
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 10:48:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9BFC10EF7F;
	Fri, 13 Dec 2024 09:48:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JYY9lZMs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C84010EE6C;
 Fri, 13 Dec 2024 09:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734083314; x=1765619314;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TMqQwOVGyGiEnINYcODHbxupwz70t9WEuLYO0MGg4Fk=;
 b=JYY9lZMsi2o6LJz4L0lV/TKS+F9qYLsTCQcSvoIDhODtu1mAQsAtlnXu
 93dx1157ISlVWEDqRBSghW73wsgB0WI7SNhjQR55AnBqMI0J1rtSngsfv
 r0+09i4RDQI4mRU6oDJ68/2JoGdc3EJuQPjNQ99mGc7jQlRZ+3Hxig9rG
 r+/pAoTQFOKj8/C89wl4nhfQd8l8LAm4TOk4K/f+PFWIjVi9kmWf3DQDK
 J/NXF6xrMwH+JXYV6ge/Vz2CwpE1srH2WOb+p3/fhfQcldLD6Hos2UE0v
 8kdjnXQIusvSUkF6hB6Y483laIG+qU6d7TSWT3frfDRrk3ytHaQG8Tk2T A==;
X-CSE-ConnectionGUID: 4F1ZAtRMRvi7mXypLVnFgA==
X-CSE-MsgGUID: /6wubWIvQZqp4K4O82ylsw==
X-IronPort-AV: E=McAfee;i="6700,10204,11284"; a="34671932"
X-IronPort-AV: E=Sophos;i="6.12,230,1728975600"; d="scan'208";a="34671932"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 01:48:34 -0800
X-CSE-ConnectionGUID: XgU2xERiSQmqeH1+mTAbhQ==
X-CSE-MsgGUID: l/4KaPa3Qp28N9cUTfyxCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,230,1728975600"; d="scan'208";a="96378394"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.159])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 01:48:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v3 0/5] drm/i915/dp: convert to struct intel_display
Date: Fri, 13 Dec 2024 11:48:20 +0200
Message-Id: <cover.1734083244.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Rebase of [1].

BR,
Jani.


[1] https://lore.kernel.org/r/cover.1733827537.git.jani.nikula@intel.com


Jani Nikula (5):
  drm/i915/dp: s/intel_encoder/encoder/
  drm/i915/dp: s/intel_connector/connector/
  drm/i915/dp: convert to struct intel_display
  drm/i915/dp: convert interfaces to struct intel_display
  drm/i915/dp: finish link training conversion to struct intel_display

 drivers/gpu/drm/i915/display/intel_display.c  |   6 +-
 .../drm/i915/display/intel_display_driver.c   |   9 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 922 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dp.h       |  20 +-
 .../drm/i915/display/intel_dp_link_training.c |  14 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  12 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |   2 +-
 drivers/gpu/drm/i915/i915_driver.c            |   2 +-
 drivers/gpu/drm/xe/display/xe_display.c       |   2 +-
 9 files changed, 499 insertions(+), 490 deletions(-)

-- 
2.39.5

