Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 697EA781097
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Aug 2023 18:41:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C747110E0AA;
	Fri, 18 Aug 2023 16:41:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FA7810E0D4
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Aug 2023 16:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692376907; x=1723912907;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZzIudcFZyUKjQku/jmhmzqPUVg+ncba7VWx0gVLNJBg=;
 b=ba/Yd7oWyLeIQaebidqhfqn9VeTblCZn1UJo6SrEc4w2C06eZ4D8LD0T
 T3rErQnVfxB7Zzigmj+LAK/3h8tEvwcZOH7crN7E7kXYZXtJvdxAq+nF/
 SeNI5tj8YjRwkZ2bUubzV3lscQYsTfwuwhwpXsgYQBmobz9xmWvrkSitB
 ETXOuYAPwF/KH5wIuzGVoeJ+yulHmGNBduwasZvgguZCefb5zrxno7fup
 /r3qB4ZJ0yORBu5Av8hzVlkD6gVh9VFpsLnO4f9u8jyeMGY5TEkVq0Q+c
 zwYvuvxmQAlIdzNHR8Vr+Vh8/FgUvsSEa+kxp4+H2lCD0iMQso8P7arJE Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="370600413"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="370600413"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 09:41:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="728653589"
X-IronPort-AV: E=Sophos;i="6.01,183,1684825200"; d="scan'208";a="728653589"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga007.jf.intel.com with ESMTP; 18 Aug 2023 09:41:43 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Aug 2023 19:41:40 +0300
Message-Id: <20230818164142.27045-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/2] Implement MBUS state changes according to
 spec
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

We were previsously updating MBUS/DBOX/DBUF CTL registers incorrectly,
doing it in a single place, even though BSpec instructs to do it before
or after DDB reallocation depending on the scenario, also we missed
a vblank wait in one scenario, which forced us to use a full modeset
in all cases when MBUS join state needed to be changed, preventing
fastset to be done in certain cases.
This patch series attempts to fix that.

Stanislav Lisovskiy (2):
  drm/i915: Update mbus in intel_dbuf_mbus_update and do it properly
  drm/i915: Implement vblank synchronized MBUS join changes

 drivers/gpu/drm/i915/display/intel_display.c |  2 -
 drivers/gpu/drm/i915/display/skl_watermark.c | 41 +++++++++++++++-----
 2 files changed, 32 insertions(+), 11 deletions(-)

-- 
2.37.3

