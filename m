Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1639A555053
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jun 2022 17:54:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B1BE10E386;
	Wed, 22 Jun 2022 15:54:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7735010E386
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jun 2022 15:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655913295; x=1687449295;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eCZeNTXuiwc+4HWrxnOvjhQ854YmhH2w9FdAMz1Qm60=;
 b=azsfTcdIkRMpRv2kGYtSO7IdDFLbihKEWqWe4KIbfGSAgS8fpQ4456se
 gFKgvWmuTlAY0VAbNYSq0qOvKtQHmod1ZSbhMQV+/K2iT3vAAPqGaRLAr
 /rz4ZeCH4qNK3Q4pbelpGdQswq3GBtpEVo2jT2xbwo1OIH0JoKybQ704i
 ibN4DeQH+8WsY+JzqSCbGI+lV0a2NPAiFvN467lEmrH+GiHYaUYHBOO4D
 B7SSjwH7gm68zItK9Mo+Pl0WsrBxEFo4a5X988m07juwpZ8GZ6VaBdbGq
 Cm8ko6IW4GM9KOqK+I8mnQ1PCs+olDPTFc3UorEV7e5zuOfigu2nqewzA Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="280504021"
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="280504021"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 08:54:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="690567545"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga002.fm.intel.com with SMTP; 22 Jun 2022 08:54:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Jun 2022 18:54:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Jun 2022 18:54:43 +0300
Message-Id: <20220622155452.32587-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/9] drm/i915: g4x/vlv/chv CxSR/wm
 fixes/cleanups
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Fix some remaining issues around plane updates vs. CxSR on
gmch platforms. Also throw in a few watermark fixes/cleanups,
and finally flip on atomic for g4x since everything is ready.

v2: Just rebase from a year ago

Ville Syrjälä (9):
  drm/i915: Split g4x_compute_pipe_wm() into two
  drm/i915: Split vlv_compute_pipe_wm() into two
  drm/i915: Simplify up g4x watermark sanitation
  drm/i915: Simplify up vlv watermark sanitation
  drm/i915: Add missing invalidate to g4x wm readout
  drm/i915: Fix g4x/vlv/chv CxSR vs. format/tiling/rotation changes
  drm/i915: Fix pipe gamma enable/disable vs. CxSR on gmch platforms
  drm/i915: Write watermarks for disabled pipes on gmch platforms
  drm/i915: Enable atomic by default on ctg/elk

 .../gpu/drm/i915/display/intel_atomic_plane.c |  53 ++++-
 drivers/gpu/drm/i915/display/intel_color.c    |   4 +
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
 drivers/gpu/drm/i915/i915_driver.c            |   7 +-
 drivers/gpu/drm/i915/intel_pm.c               | 206 ++++++++++--------
 5 files changed, 165 insertions(+), 109 deletions(-)

-- 
2.35.1

