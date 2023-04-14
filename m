Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D536E1F82
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 11:42:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75DE510E0D5;
	Fri, 14 Apr 2023 09:42:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BB0B10E0D5
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Apr 2023 09:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681465329; x=1713001329;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=erzc6Zy5RMalwPWlzE41dAoQQF5fS84GH0hXdgEdB5Q=;
 b=DmoFE0YPkoNPpiIQmYcYQ+XP/qUJLNCWO38yyct64VcdewuPPF1SBiyE
 qaR2BZiAUN15gUqImkZfbuLXB0Q+nnW2e0Y4X8B0Yg1xleOUUp7+LYsVl
 WGUxiuQ24Jbwni4t5m2heRjwZJNd0iRwLgB3kqUFl7o9esKnw+87gTzAo
 zJUKlKAckMp0xHcGGAFgjW8IEsb88vL4SEn4fDNj0EpTfkLKmaagoNrAZ
 grsYL1EMaFAVG3yDH/oh19SvvpLg37s2pKPPhEw2rEqcba0Xo/YDxcX+q
 kMgOYY904HPl79MXhpSQ2jcvtuMNwbqvhfLHD+VbhDusuo6eWDsRg9Bmd Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="346258965"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="346258965"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 02:42:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="801137800"
X-IronPort-AV: E=Sophos;i="5.99,195,1677571200"; d="scan'208";a="801137800"
Received: from bauinger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.117])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 02:42:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Apr 2023 12:41:52 +0300
Message-Id: <cover.1681465222.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 00/10] drm/i915/display: split out high level
 display entry points
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

v2 of https://patchwork.freedesktop.org/series/116431/ with the minor
review comments addressed.

BR,
Jani.

Jani Nikula (10):
  drm/i915/display: remove intel_display_commit_duplicated_state()
  drm/i915/display: start high level display driver file
  drm/i915/display: move intel_modeset_probe_defer() to
    intel_display_driver.[ch]
  drm/i915/display: rename intel_modeset_probe_defer() ->
    intel_display_driver_probe_defer()
  drm/i915/display: move modeset probe/remove functions to
    intel_display_driver.c
  drm/i915/display: rename intel_display_driver_* functions
  drm/i915/display: add intel_display_reset.[ch]
  drm/i915/display: move display suspend/resume to
    intel_display_driver.[ch]
  drm/i915/display: rename intel_display_driver_suspend/resume functions
  drm/i915/display: add intel_display_driver_early_probe()

 drivers/gpu/drm/i915/Makefile                 |   2 +
 drivers/gpu/drm/i915/display/intel_display.c  | 691 +-----------------
 drivers/gpu/drm/i915/display/intel_display.h  |  29 +-
 .../drm/i915/display/intel_display_driver.c   | 581 +++++++++++++++
 .../drm/i915/display/intel_display_driver.h   |  36 +
 .../drm/i915/display/intel_display_reset.c    | 135 ++++
 .../drm/i915/display/intel_display_reset.h    |  14 +
 drivers/gpu/drm/i915/gt/intel_reset.c         |   6 +-
 drivers/gpu/drm/i915/i915_driver.c            |  34 +-
 drivers/gpu/drm/i915/i915_irq.c               |   2 +-
 drivers/gpu/drm/i915/i915_pci.c               |   3 +-
 11 files changed, 817 insertions(+), 716 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_driver.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_driver.h
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_reset.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_reset.h

-- 
2.39.2

