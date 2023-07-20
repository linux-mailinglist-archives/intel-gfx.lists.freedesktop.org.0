Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B66A75AEC4
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 14:54:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8501F10E147;
	Thu, 20 Jul 2023 12:54:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EED4810E147
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jul 2023 12:54:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689857657; x=1721393657;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=no/6zVIw3l05f9UTuosaHgIMfGS5uBhyOUzBbl9+NUk=;
 b=ezwbo3hcCLoEXK22VJFdgjABR5KbNUt/GWqf+wCHndAWH1PDmasJy02C
 rps8YihtA9bZPbwndjjwJ8QJ2IaL9L82pUPo87UlIVPIJh3mVPUjdhe4i
 Cxv+jDtqhtPZXO1HygeQ9vs/ougzl+gSmQWx6A+tBq776P7vzmR1lm/b2
 Cuv4E0iRbZIDIDLqUpdyw5RlsvAKzW0EplEE3bFxmKemlDMl1KeUhl9Vx
 W5PZTICyQb4MOuexzUZHS8LCxrs9v9CawjDZ7NlKa5UYxLSfLx1ABXj+g
 2xAMSM0dSvhjNF3rskJIB9YltoC5UWAXevGpZvfrNrlrI6pWqH/DQJ1fj A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="351582755"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="351582755"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 05:54:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="794477584"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="794477584"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 05:54:09 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jul 2023 15:54:13 +0300
Message-Id: <20230720125418.236140-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/5] drm/i915: Fix connector HPD polling
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

This patchset replaces [1], adding two patches to fix a connector
detection issue overriding the state of forced connectors.

[1] https://patchwork.freedesktop.org/series/120931/

Imre Deak (5):
  drm/i915: Avoid endless HPD poll detect loop via runtime
    suspend/resume
  drm: Add an HPD poll helper to reschedule the poll work
  drm/i915: Fix HPD polling, reenabling the output poll work as needed
  drm/i915: Don't change the status of forced connectors during hotplug
    detect
  drm/i915: Don't change the status of forced connectors during HPD poll
    detect

 drivers/gpu/drm/drm_probe_helper.c           | 68 ++++++++++-----
 drivers/gpu/drm/i915/display/intel_crt.c     |  6 --
 drivers/gpu/drm/i915/display/intel_dp.c      |  6 --
 drivers/gpu/drm/i915/display/intel_hdmi.c    |  6 --
 drivers/gpu/drm/i915/display/intel_hotplug.c | 89 ++++++++++++++++++--
 include/drm/drm_probe_helper.h               |  1 +
 6 files changed, 127 insertions(+), 49 deletions(-)

-- 
2.37.2

