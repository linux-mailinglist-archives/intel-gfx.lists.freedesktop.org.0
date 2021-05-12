Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A03537BE3B
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 15:31:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B28276E081;
	Wed, 12 May 2021 13:31:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 713456E081
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 May 2021 13:31:04 +0000 (UTC)
IronPort-SDR: X7OCxjwh5niTh5aWtKIWG5Hy7y6Svt56YMrhN+7xydDa3NkcO1VvNuQeDJXn0vY9tqsyURG1v9
 JaK52datht3w==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="263632181"
X-IronPort-AV: E=Sophos;i="5.82,293,1613462400"; d="scan'208";a="263632181"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 06:30:54 -0700
IronPort-SDR: 1B5IJYIj325vwQtANdnIBDCC9Xt45tENUzQSGHUf7iTD16eqXBvLjCI3xcGreaASwBybNQDktG
 zhHZhaTt4wEA==
X-IronPort-AV: E=Sophos;i="5.82,293,1613462400"; d="scan'208";a="622444560"
Received: from olovaszi-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.33.202])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 06:30:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 May 2021 16:30:43 +0300
Message-Id: <cover.1620825897.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 0/3] drm/i915: split out new intel_backlight.[ch]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Long overdue refactoring.

This should not conflict with Lyude's dpcd backlight refactoring [1],
but if it does, that series should have precedence.

BR,
Jani.

[1] https://patchwork.freedesktop.org/series/84754/


Jani Nikula (3):
  drm/i915/backlight: extract backlight code to a separate file
  drm/i915/backlight: mass rename functions to have intel_backlight_
    prefix
  drm/i915/panel: mass rename functions to have intel_panel_ prefix

 drivers/gpu/drm/i915/Makefile                 |    1 +
 drivers/gpu/drm/i915/display/g4x_dp.c         |    4 +-
 drivers/gpu/drm/i915/display/icl_dsi.c        |   13 +-
 .../gpu/drm/i915/display/intel_backlight.c    | 1776 ++++++++++++++++
 .../gpu/drm/i915/display/intel_backlight.h    |   52 +
 .../gpu/drm/i915/display/intel_connector.c    |    4 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |    4 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   16 +-
 .../drm/i915/display/intel_dp_aux_backlight.c |   12 +-
 drivers/gpu/drm/i915/display/intel_dvo.c      |    2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |    2 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |   18 +-
 drivers/gpu/drm/i915/display/intel_opregion.c |    5 +-
 drivers/gpu/drm/i915/display/intel_panel.c    | 1786 +----------------
 drivers/gpu/drm/i915/display/intel_panel.h    |   41 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |   16 +-
 16 files changed, 1894 insertions(+), 1858 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_backlight.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_backlight.h

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
