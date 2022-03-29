Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 702D74EB6D4
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 01:35:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 597E010E4ED;
	Tue, 29 Mar 2022 23:35:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0894D10E513
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 23:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648596929; x=1680132929;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TyeSweiLif+ZUIivCUUv40j8ctExpaAM/VUo4tQQKvg=;
 b=DpDUtW6N1hsJS3UQlpSG4ysv84XN7KxiF08en7De8d/T7uIgeegADjrr
 fj+KPV21rVw1bjFyIP50T7m/cxOYk9iIXXrNARh8pEnnzQNkoGHdEDViL
 lIkBy4uJSnKj4iU9qeeQgFaT9TgNG7R/48LSQXKwv83Y153BPzN9fLDeQ
 Vg0FLbYTQzsO8EYbmclQ4REKSoMOGOc7/XYpa+zUw/n85mlpm+Xfpx1TO
 pziVG179lqcTBRzBwJenFeO/Bn5sHqqjqttrC5POV0zyjoK1Vqxw/84cX
 nG5KQAKBxvWMNjjxq9BuWuT6XfDhzHXTgbNPOsJnFbGH3H/y5A6Wt1d1W w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="239330654"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="239330654"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 16:35:29 -0700
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="521654579"
Received: from brettpem-mobl1.amr.corp.intel.com (HELO
 cgbowman-desk1.amr.corp.intel.com) ([10.209.80.244])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 16:35:28 -0700
From: Casey Bowman <casey.g.bowman@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Mar 2022 16:35:16 -0700
Message-Id: <20220329233518.1008877-1-casey.g.bowman@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/2] Splitting intel-gtt calls for non-x86
 platforms
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
Cc: thomas.hellstrom@linux.intel.com, lucas.demarchi@intel.com,
 chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The intel-gtt module defines some functions used by i915, but they are
only supported by x86 platforms. In order to bring i915 to a more
arch-neutral state, we split out these functions and provide stubs in
the case of non-x86 builds.

There may be a better filename choice for the files used in splitting
the calls, it's very much open to discussion.

v2: Refactored to move gmch functions, renamed exported functions

Casey Bowman (2):
  drm/i915/gt: Split intel-gtt functions by arch
  drm/i915: Require INTEL_GTT to depend on X86

 drivers/gpu/drm/i915/Kconfig            |   2 +-
 drivers/gpu/drm/i915/Makefile           |   2 +
 drivers/gpu/drm/i915/gt/intel_ggtt.c    | 663 +-----------------------
 drivers/gpu/drm/i915/gt/intel_gt.c      |   4 +-
 drivers/gpu/drm/i915/gt/intel_gt.h      |   9 +
 drivers/gpu/drm/i915/gt/intel_gt_gmch.c | 653 +++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_gmch.h |  46 ++
 drivers/gpu/drm/i915/gt/intel_gtt.h     |   9 +
 8 files changed, 736 insertions(+), 652 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gt/intel_gt_gmch.c
 create mode 100644 drivers/gpu/drm/i915/gt/intel_gt_gmch.h

-- 
2.25.1

