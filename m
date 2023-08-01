Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B30276B4CD
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Aug 2023 14:33:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DEE310E3FA;
	Tue,  1 Aug 2023 12:33:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD4E110E3FA
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Aug 2023 12:33:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690893182; x=1722429182;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GQhCkkQX7XlbnqRrbpDzjdjEa3F4oamiRK8+eDxFCJs=;
 b=K3iJAYsJgL2J5hxP4EhAzqu7FM6eWDEYWyrGp0qQso6QlnHqzATqAfan
 dPUAy7bT1wXqPiIl5+5oTx/Tg2AbRGV9WtF/JTejbG22orl2ukK6pbVl+
 /5Fm2sJT9/zX7cCEAKWpFHm9YyfeC9WFf27nkjlkYFMez/CuzT2vrshN9
 apy7k7LA56EwmKuuxXHQB/4o9MdNiwWqQFzZjIdzJXaBv/99PN3gcIrfA
 GV+/7DeyMYhXTpx4oaWgR9U+iTiLOZd/LzfeYDdpR3HVci9+qzeDyK2ba
 2yxay9eHyRuc1AjzV3o5HNOsaKmVXIDAskS+Zksi6MhNphahASc5asuZT g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="366751089"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="366751089"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 05:32:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="852427249"
X-IronPort-AV: E=Sophos;i="6.01,247,1684825200"; d="scan'208";a="852427249"
Received: from igorban-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.36.188])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2023 05:32:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Aug 2023 15:32:48 +0300
Message-Id: <cover.1690886109.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RESEND 0/2] drm/i915/uncore: unclaimed reg debug race
 fix
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Resend of the first two patches of [1], dropping the third.

BR,
Jani.

[1] https://patchwork.freedesktop.org/series/120167/

Jani Nikula (2):
  drm/i915/uncore: split unclaimed_reg_debug() to header and footer
  drm/i915/uncore: fix race around i915->params.mmio_debug

 drivers/gpu/drm/i915/intel_uncore.c | 44 ++++++++++++++++++-----------
 1 file changed, 27 insertions(+), 17 deletions(-)

-- 
2.39.2

