Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E3B7CCEC8
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Oct 2023 22:53:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64FA110E329;
	Tue, 17 Oct 2023 20:53:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F4CC10E329
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Oct 2023 20:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697575981; x=1729111981;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vv4mlRwFznpQzYiocwAAsa0LEGa0tmXjNWYLzyeSSPg=;
 b=Y0T7JK0bYYnIvvPyni/re4IB2QGa7bQLjKKFyWzarftC6qdn/b+4bbX7
 Chj2PyuHCYvMR3mOJp70nODLb+8o4A9yxJpVlEQeNVloKgyBrtjWeC/j8
 XX6SqN2CQf+WwVeDD/Eql4DTh9Xvr41RFlhtGGokzyPcEOrMw52fht5E3
 WZygqXr5kXJdNABoXc1OLHiW+eqNeZh7DT6larH+K5H+OupESuKmR2yXY
 AgyUSc4lOkbJLB4831i3aeWFx3NdeevAyxF/Ky4Oc3b1YSnBRsGmQRpw2
 fJG29j7Kp62kWSu7zBjF/Xg4saNa9O8SgCsl6JnrEvLpw2SKBRsoBfxom g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="452352858"
X-IronPort-AV: E=Sophos;i="6.03,233,1694761200"; d="scan'208";a="452352858"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 13:53:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="879933736"
X-IronPort-AV: E=Sophos;i="6.03,233,1694761200"; d="scan'208";a="879933736"
Received: from pvanderz-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.249.38.156])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 13:52:58 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Oct 2023 23:52:48 +0300
Message-Id: <20231017205249.129601-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/1] display device info as a separate
 debugfs entry
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

Expose the display device info as a separate debugfs entry to list out
display device info and remove the same from i915_capabilities

v2: rename the debugs entry to i915_display_capabilities and patch
    description changes

v3: Exclude the patch to remove display device and runtime info from
    i915_capabilities from this patch series. Remove this only after
    IGT starts using the i915_display_capabilities

Vinod Govindapillai (1):
  drm/i915/display: debugfs entry to list display capabilities

 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

-- 
2.34.1

