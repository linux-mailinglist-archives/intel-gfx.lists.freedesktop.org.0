Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 755344ADEB1
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 17:54:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 419C710E771;
	Tue,  8 Feb 2022 16:54:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E48910E79C
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 16:54:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644339249; x=1675875249;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oHC5sDS0NJHXeq2pAHvZMJCXTQx4HT03nswt/bpXWrk=;
 b=WHB14Yn4//2C+yrdiLF/mpm5+Eor61OVwUAX+onhF7j6rTFttlBuUOx7
 GpavKY5JlpydE9lYScCi0HDjXxj7yTja6enHr8Q+GYFT4nYka4VAVicUv
 ZuM7PHSjZQkLIeIjH4clf9hWvigkti9/soKZs+MTN+oms9kucfS8xbf/w
 H1JVWOsTeeYQLK6p5iiSbdsvhEec0awLlYjKrPEhN82RYqol9Ltgh4xbd
 D82EatHhznq1CwmvNhyH0Kj3VEo8TLeIwLgAmlk+SFs56npDJhZQQKYv0
 uPGHNJ3YnBc3pR3giTZR0A09DY2c1e8zTZBBMmDnzuX1pcxMuLdEQpW6H Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="246581668"
X-IronPort-AV: E=Sophos;i="5.88,353,1635231600"; d="scan'208";a="246581668"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 08:54:08 -0800
X-IronPort-AV: E=Sophos;i="5.88,353,1635231600"; d="scan'208";a="700906997"
Received: from ijbeckin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.19.63])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 08:54:07 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Feb 2022 18:54:01 +0200
Message-Id: <cover.1644339170.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/2] drm/i915: split out intel_vtd.[ch] from
 i915_drv.h
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

Another rebase & resend of [1].


[1] https://patchwork.freedesktop.org/series/98789/

Jani Nikula (2):
  drm/i915: split out intel_vtd.[ch] from i915_drv.h
  drm/i915/vtd: rename functions to have the usual prefix

 drivers/gpu/drm/i915/Makefile                |  1 +
 drivers/gpu/drm/i915/display/intel_bw.c      |  1 +
 drivers/gpu/drm/i915/display/intel_display.c |  5 +-
 drivers/gpu/drm/i915/display/intel_fb_pin.c  |  3 +-
 drivers/gpu/drm/i915/display/intel_fbc.c     |  1 +
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c |  3 +-
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c   |  1 +
 drivers/gpu/drm/i915/gem/i915_gemfs.c        |  1 +
 drivers/gpu/drm/i915/gt/intel_ggtt.c         | 14 +++---
 drivers/gpu/drm/i915/gt/intel_gtt.c          |  3 +-
 drivers/gpu/drm/i915/i915_debugfs.c          |  3 +-
 drivers/gpu/drm/i915/i915_driver.c           |  9 +---
 drivers/gpu/drm/i915/i915_drv.h              | 37 --------------
 drivers/gpu/drm/i915/i915_gpu_error.c        |  1 +
 drivers/gpu/drm/i915/intel_device_info.c     |  3 +-
 drivers/gpu/drm/i915/intel_pch.c             |  3 +-
 drivers/gpu/drm/i915/intel_pm.c              |  1 +
 drivers/gpu/drm/i915/intel_vtd.c             | 14 ++++++
 drivers/gpu/drm/i915/intel_vtd.h             | 51 ++++++++++++++++++++
 19 files changed, 96 insertions(+), 59 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/intel_vtd.c
 create mode 100644 drivers/gpu/drm/i915/intel_vtd.h

-- 
2.30.2

