Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 503EB7AF19C
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 19:15:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E18AF10E145;
	Tue, 26 Sep 2023 17:15:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07AC610E40B
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 17:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695748551; x=1727284551;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vnIJBbbe+Oo3ZRtgPQLv+1wE97gS/J5ou8BXjZ0qV1w=;
 b=miYnBgBIHeOADyqWBNvlo6sDSMjHvUAxxL0wwL0d+n5bHzBzw8a8Vxsx
 FG1wQUS1P5uVWek7XQQpwNFn9eif1JDy2i+LuxhbO6HajBeEWtucaLfXN
 WrPjteirNscZRpA36vltC7S9HjPnV9JAmodpRdyK68pPcdMHBFUraLLte
 Pm/QHsi/9ivkYH3eZldz+kjwHCkGM8MqjqvyHehDTaeaDWjeWb+tMWkUa
 G56qocuPA1sztPqM90wK7lrxt+8Xaglrr2/Riyj9yPeLMwqto+va3RCfS
 NLNMu+/4TpXvpXN7GDOxUkliVTAgjqOrucmh8dGTlkttUk9tYnZu/WhFQ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="378899691"
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; d="scan'208";a="378899691"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 10:15:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="778207833"
X-IronPort-AV: E=Sophos;i="6.03,178,1694761200"; d="scan'208";a="778207833"
Received: from wagnert-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.52.202])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 10:15:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Sep 2023 20:15:40 +0300
Message-Id: <cover.1695747484.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 0/3] drm/i915: split display from drm_i915_private
 and i915_drv.h
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com, rodrigo.vivi@intel.com,
 matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We've been gradually separating display code from the rest of the i915
driver code over the past few years. We can't get much further than this
without some more drastic changes.

One of them is separating struct drm_i915_private and struct
intel_display almost completely. The former would remain for core driver
code and gem, while the latter would be for display. Long term, i915
display code would not include i915_drv.h, and would not have access to
struct drm_i915_private definion.

For display code, struct drm_i915_private would be opaque, and for the
rest of the driver, struct intel_display would be opaque.

Naturally, such separation helps the upcoming xe driver integration with
i915 display code. It's basically a requirement if (and that's still an
if) we decide to use aux-bus to have a i915.ko/xe.ko <->
intel-display.ko split. Regardless of that, I think this is a big
maintainability plus on its own too. The everything-includes-everything
model is really a nightmare.

Here are some draft ideas how this could be started. It will be a lot of
churn especially in the display code, but I believe the end result will
be cleaner.

BR,
Jani.


Jani Nikula (3):
  drm/i915: rough ideas for further separating display code from the
    rest
  drm/i915/hdmi: drafting what struct intel_display usage would look
    like
  drm/i915: draft what feature test macros would look like

 .../gpu/drm/i915/display/intel_display_core.h    | 16 ++++++++++++++++
 .../gpu/drm/i915/display/intel_display_device.c  | 13 +++++++++++++
 .../gpu/drm/i915/display/intel_display_device.h  |  4 ++++
 drivers/gpu/drm/i915/display/intel_hdmi.c        | 15 ++++++++++-----
 drivers/gpu/drm/i915/i915_drv.h                  | 11 ++++++++++-
 5 files changed, 53 insertions(+), 6 deletions(-)

-- 
2.39.2

