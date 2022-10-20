Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE56605E24
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 12:47:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F962892E4;
	Thu, 20 Oct 2022 10:47:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E29C10E1A1
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 10:47:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666262860; x=1697798860;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=udWF11wQoZCFOrOqWYDu5p0rt+goGoQXMIz+0clT1gQ=;
 b=FkjSOLReVsOTFpLDOv4updixF5B/2/SyvDy/V4AixkEwII/Xp2xzEla0
 v30REg0RZGLduUbILEzXgS1fNTCCan7VcV9t/yel1HSLVMvR6vWV2xtQC
 nsmTP587WATxsM9uTvlPIQGsf1TUS8ACpZCSAvwlxBEFL6OJln4IXS708
 aESjm4zzAQQ7exGSxbQ7BAifGslx4rJT7oERk58rnVrtWSOEgXyPBkmwm
 IRu7B84yaRJswXTJsPtTtsh5sQdQuVNwRsF/V6beXJhGM7vdw3ogOb7m4
 8qOREi2cyx9JAmYC2clIAvBjUY8zEc0SIDEI5hUtlt57m1zRSxoSogUef g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="368721444"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="368721444"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 03:47:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="804801545"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="804801545"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga005.jf.intel.com with ESMTP; 20 Oct 2022 03:47:37 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Oct 2022 16:16:34 +0530
Message-Id: <20221020104635.874860-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/1] Remove Connector iterator macro
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

Remove connector iterator macro (for_each_connector_on_encoder)
as it is only used once and changing the function to use macros
currently present.

--v2
-remove bogus indentation [Ville]
-change found_connector to intel_connector struct and return
that, bypassing a check [Ville]

--v3
-use a imperative mood in subject and commit message [Jani]

Suraj Kandpal (1):
  drm/i915: Remove one use macro

 drivers/gpu/drm/i915/display/intel_display.h     |  4 ----
 .../gpu/drm/i915/display/intel_modeset_setup.c   | 16 ++++++++++++----
 2 files changed, 12 insertions(+), 8 deletions(-)

-- 
2.25.1

