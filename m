Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFFC6B03D8
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 11:19:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5D8010E106;
	Wed,  8 Mar 2023 10:19:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CEDD10E106
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Mar 2023 10:19:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678270750; x=1709806750;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=v93d4OMCff6BahLp7hWaWayHwhkd1IfbUP7dVip/ueU=;
 b=lo3DI1k5Q24gCCnXhyDQJSXTktApFV+jWQoT2Z++/yWVPzQDIyXGmfw1
 ROlMtezYJMGZmCkz9zvWl0+KDVvpli59xbM5n6Miywmv+B43g8FZ2DXcU
 E6SPef4HW53TxUjfQ7QC9lgHMwvH5r39JBue9kT8gsuQW5cvDKQIMNYwZ
 e+gwbqugy2TAlW3iTBN/lkkAsFcZRBwmoOzTjCzROsJX6jmuAiSlJwlAw
 QlcQeEkF8lzapcz9Nc69s9T9C3sGQ7xSCYXtEo8GCh4cLqcJluQK+W3hn
 2f/FaG4IAxThCtDevTek6TfaCJn4D1nZbHSNzWib7/DxSaOZS1RLbZ9zi A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="319949164"
X-IronPort-AV: E=Sophos;i="5.98,243,1673942400"; d="scan'208";a="319949164"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 02:18:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="765949619"
X-IronPort-AV: E=Sophos;i="5.98,243,1673942400"; d="scan'208";a="765949619"
Received: from bnilawar-desk1.iind.intel.com ([10.145.169.158])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 02:18:50 -0800
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Mar 2023 15:51:07 +0530
Message-Id: <20230308102109.2386712-1-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] drm/i915/mtl: Disable MC6 for MTL A step
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
Cc: hima.b.chilmakuru@intel.com, rodrigo.vivi@intel.com,
 gregory.f.germano@intel.com, srikanth.nandamuri@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Disabling MC6 for A step as it is not feasible to extend 
Wa_14017073508 in forcewake path to cover all corner cases. 
Reverting the commit 8f70f1ec587da. 

Badal Nilawar (2):
  Revert "drm/i915/mtl: Add Wa_14017073508 for SAMedia"
  drm/i915/mtl: Disable MC6 for MTL A step

 drivers/gpu/drm/i915/gt/intel_gt_pm.c     | 27 -----------------------
 drivers/gpu/drm/i915/gt/intel_rc6.c       |  8 +++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c | 13 +----------
 drivers/gpu/drm/i915/i915_reg.h           |  9 --------
 4 files changed, 9 insertions(+), 48 deletions(-)

-- 
2.25.1

