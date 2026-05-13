Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UMsgMjovBGo/FAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 09:58:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B8052F332
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2026 09:58:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95D1110ED3D;
	Wed, 13 May 2026 07:58:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SDmv1yEk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57EFB10ED3D;
 Wed, 13 May 2026 07:58:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778659126; x=1810195126;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MBWJVON/3iXYI42yAN3FMzphkm5c/PUJZbsL74C/2O0=;
 b=SDmv1yEk1EsCcPPPn0wmsi7ko/kiZJJd9Di5+r0POM+biTIS+QBmUe88
 vmUyZPA5I37NgjIs+mU7pB4QJ3O0Mtgw9t8IDmH3JekPDAsinKr2UEfAv
 yGpyDZBYowmT+VARXBtih4cMFvlwT6RdZUjXA+OhdnOxVM3Em5PuVpBUF
 WjIaR312d+tm6t7zmqIXyWK2o6B81TEoHD2tk1KMsQiPJR0yXWwirewKN
 QCDaJbosDcxAVoS49vUeHYHr5IKFqI6bYJNjwvAN5P/9E730tVPNzChVb
 23O9VdudyWhybVo4mDevv0K4qJ2LOa82qvul39ZQrZWwzgYnVKlo+8Z8s g==;
X-CSE-ConnectionGUID: Te4KSwLQTU6nlrlB+Ik+Ug==
X-CSE-MsgGUID: AOQwahd3SBqm6q6IKspQfQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="90159438"
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="90159438"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 00:58:45 -0700
X-CSE-ConnectionGUID: IzC4YSyBQp2k1zzn8pyI5g==
X-CSE-MsgGUID: VRqQhIwtRdu/vXjMenrgtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,232,1770624000"; d="scan'208";a="242970649"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.61])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 00:58:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 0/6] drm/i915: crtc iteration cleanups
Date: Wed, 13 May 2026 10:58:34 +0300
Message-ID: <cover.1778659089.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
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
X-Rspamd-Queue-Id: 38B8052F332
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

Resend of [1].

[1] https://lore.kernel.org/r/cover.1777287836.git.jani.nikula@intel.com

Jani Nikula (6):
  drm/{i915,xe}: move xe_display_flush_cleanup_work() to i915 display
  drm/i915/display: switch from drm_for_each_crtc() to
    for_each_intel_crtc()
  drm/i915/display: always pass display->drm to for_each_intel_crtc*()
  drm/i915/display: pass struct intel_display to all
    for_each_intel_crtc*() macros
  drm/i915/display: stop passing i to for_each_*_intel_crtc_in_state()
    macros
  drm/i915/display: stop passing i to
    for_each_pipe_crtc_modeset_{enable,disable}()

 drivers/gpu/drm/i915/display/i9xx_wm.c        |  32 +--
 drivers/gpu/drm/i915/display/intel_atomic.c   |   3 +-
 drivers/gpu/drm/i915/display/intel_bw.c       |  11 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  14 +-
 drivers/gpu/drm/i915/display/intel_crtc.c     |  13 +-
 drivers/gpu/drm/i915/display/intel_dbuf_bw.c  |   7 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  10 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 193 +++++++++---------
 drivers/gpu/drm/i915/display/intel_display.h  |  80 ++++----
 .../drm/i915/display/intel_display_debugfs.c  |   6 +-
 .../drm/i915/display/intel_display_power.c    |   2 +-
 .../drm/i915/display/intel_display_trace.h    |   6 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  11 +-
 drivers/gpu/drm/i915/display/intel_dp_test.c  |   2 +-
 .../gpu/drm/i915/display/intel_dp_tunnel.c    |   8 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |   2 +-
 drivers/gpu/drm/i915/display/intel_drrs.c     |   4 +-
 drivers/gpu/drm/i915/display/intel_fbdev.c    |   6 +-
 drivers/gpu/drm/i915/display/intel_fdi.c      |   3 +-
 .../drm/i915/display/intel_fifo_underrun.c    |   4 +-
 drivers/gpu/drm/i915/display/intel_flipq.c    |   2 +-
 .../gpu/drm/i915/display/intel_global_state.c |   8 +-
 .../drm/i915/display/intel_initial_plane.c    |   4 +-
 drivers/gpu/drm/i915/display/intel_link_bw.c  |   2 +-
 .../gpu/drm/i915/display/intel_load_detect.c  |   2 +-
 .../drm/i915/display/intel_modeset_setup.c    |  32 +--
 drivers/gpu/drm/i915/display/intel_plane.c    |   9 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c |   6 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |   2 +-
 drivers/gpu/drm/i915/display/intel_tc.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      |   4 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |  38 ++--
 drivers/gpu/drm/xe/display/xe_display.c       |  27 +--
 34 files changed, 252 insertions(+), 305 deletions(-)

-- 
2.47.3

