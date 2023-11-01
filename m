Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C17587DDF2B
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Nov 2023 11:16:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A2F810E009;
	Wed,  1 Nov 2023 10:16:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45BD210E009
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Nov 2023 10:16:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698833787; x=1730369787;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5rbaMPwnNvDFyGEvrSCIyCCljfNhCKQd2fRdL4OV4EY=;
 b=L1zViLw4VUjrHakXiq5tOP0SwZS45ko+vLZmwL6LJ6F67AcfTQeaS37L
 su0CbykwLQsVa8VL2lHBSVWO3JihyWykpDSS+ZAmSgeYh9W046QtXyjZW
 oPxpeoFdJ6p39T8DKK+p23huhF4/u2MK+Yz3cGTb5xr/8hS38sZb1k5Js
 vgkH2m7DeR14/e6mqY3KOOzzbjW0+dvfMjPtS2Sp0acjZADmONFCPI3NM
 7xCoU5/V/+TIWaSCvpBOx+m+AH5rroaXRAvSR54HCenQRplU/JB9xOjsE
 xYKdV+zDBd5gQLl7TZVKqQRULesMysuaufBey5RobzGflh3AaDvunCgDP A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="385647399"
X-IronPort-AV: E=Sophos;i="6.03,267,1694761200"; d="scan'208";a="385647399"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2023 03:16:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,267,1694761200"; 
   d="scan'208";a="2044682"
Received: from sartorig-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.166])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2023 03:16:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Nov 2023 12:16:15 +0200
Message-Id: <cover.1698833543.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/5] drm/i915/dsi: gpio refactors
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
Cc: jani.nikula@intel.com, Hans de Goede <hdegoede@redhat.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is something I've had laying around for more than a year I
think. Andy's series [1] reminded me of it. I don't think the two series
conflict, or if they do, it's trivial.

BR,
Jani.

[1] https://patchwork.freedesktop.org/series/125516/

Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Hans de Goede <hdegoede@redhat.com>

Jani Nikula (5):
  drm/i915/dsi: assume BXT gpio works for non-native GPIO
  drm/i915/dsi: switch mipi_exec_gpio() from dev_priv to i915
  drm/i915/dsi: clarify GPIO exec sequence
  drm/i915/dsi: rename platform specific *_exec_gpio() to
    *_gpio_set_value()
  drm/i915/dsi: bxt/icl GPIO set value do not need gpio source

 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 73 +++++++++-----------
 1 file changed, 34 insertions(+), 39 deletions(-)

-- 
2.39.2

