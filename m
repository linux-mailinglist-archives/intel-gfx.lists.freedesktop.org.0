Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5FA05AD5A3
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 17:01:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 900FE10E3F9;
	Mon,  5 Sep 2022 15:01:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1A8A10E3F9
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Sep 2022 15:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662390072; x=1693926072;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=GyvtmDRi4F1P6isVgtk24dPHJU26iR2ZYGOU2M6qpnw=;
 b=O4IoymGnU19XVuyLoAl1jKy4wigk1zjipRcu50ZfUIaJFnLEUvEqXDtA
 3fOxHS7f/nSvOl6KuERF/3GqIh2takF/KR4QPbJExMjSp1Pa3y5sXQykq
 IprseJJEoIasL0MXX7HceEYVswlGeDbJuhx4QjImzkizocyptJkTxjvP5
 8inCZU+wdiYC31DIECfJXQ+JGCztXhCpNupFHngKIqPxz5gGuDAuTFqyz
 /U9yWJwn009xD4oLBJsquceon2yKHDIsU9Xu5FVGLdEbA6tWGWChgugyc
 jLVh1wfuQYHi3Hu/g7LEKKMPmdZEHR30V5cf6o39TV8oC7HkL/Iba65Pc Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="297192684"
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="297192684"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 08:01:11 -0700
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="675320886"
Received: from smaciag-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.57.57])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 08:01:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Sep 2022 18:00:48 +0300
Message-Id: <cover.1662390010.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/5] drm/i915: i915_drv.h > i915_gem.h cleanup
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

Some more i915_drv.h cleanup, move the i915_gem.h stuff there.

Jani Nikula (5):
  drm/i915: remove unused macro I915_GTT_OFFSET_NONE
  drm/i915: remove unused i915_gem_set_global_seqno() declaration
  drm/i915: un-inline i915_gem_drain_workqueue()
  drm/i915: un-inline i915_gem_drain_freed_objects()
  drm/i915: split out i915_gem.c declarations to i915_gem.h

 drivers/gpu/drm/i915/i915_drv.h | 75 ---------------------------------
 drivers/gpu/drm/i915/i915_gem.c | 37 ++++++++++++++++
 drivers/gpu/drm/i915/i915_gem.h | 43 +++++++++++++++++++
 3 files changed, 80 insertions(+), 75 deletions(-)

-- 
2.34.1

