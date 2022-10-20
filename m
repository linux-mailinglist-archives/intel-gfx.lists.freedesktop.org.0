Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79005605BD8
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 12:07:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69FC010E18D;
	Thu, 20 Oct 2022 10:07:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F1B310E18D
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 10:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666260435; x=1697796435;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mo6I5Zii5kJenlq/5bRWMmLcyu1jAvrravK7KXuVyiU=;
 b=B4iE63X1mYCWqdS9dfFW/DXo6lPJRBl8GKShG6DqIsSkqcgk3dxT65ZW
 4Z8cqXurkLolYs2nnOs+EPiNvecMuOE245jpYB4s1041nrEsbw9auVZKl
 hw4KhqLDp4yedM4I3VBCwmp7+qzD+WwRtrneLWtS2o9pLS8Evh6vAAFGf
 cYVZWN3N7rKnLECtjg13qhpmiKtEWA/iboEXi/3TIY+i88QZIU5OgkIHh
 kUVtEKE4lIfjFkLndUYqMMVkQX7G/JnbETBlD0wFyDI7AyP98/Z9L3VKV
 ldk70R73QXAviuGPnCZKfTp6Z6Oxu0vvc/nxfmH4HOJCoUgsBpPKI8Z+X A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="304281496"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="304281496"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 03:07:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="718970962"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="718970962"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Oct 2022 03:07:12 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Oct 2022 15:36:08 +0530
Message-Id: <20221020100609.868855-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/1] Removing Connector iterator macro
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

Removing connector iterator macro (for_each_connector_on_encoder)
as it is only used once and changing the function to use macros
currently present.

--v2
-removing bogus indentation [Ville]
-changing found_connector to intel_connector struct and returning
that bypassing a check [Ville]

Suraj Kandpal (1):
  drm/i915: Removing one use macro

 drivers/gpu/drm/i915/display/intel_display.h     |  4 ----
 .../gpu/drm/i915/display/intel_modeset_setup.c   | 16 ++++++++++++----
 2 files changed, 12 insertions(+), 8 deletions(-)

-- 
2.25.1

