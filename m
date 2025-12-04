Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A0ECA297D
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 08:07:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBF5F10E877;
	Thu,  4 Dec 2025 07:07:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CpFHwZnc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0440C10E872;
 Thu,  4 Dec 2025 07:07:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764832058; x=1796368058;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=X2+8MdVvZIZX6r9R5jQYCGeEJa4SIUjKFwWHi8qeous=;
 b=CpFHwZncGFIUP9ixJLYwEUGwtLCEUnCMiFBkODbVR5ESGGomMeQDMOrT
 2knrP9J2+AyIzwFi48V0ECQCijjwn4f2WUKwptyBMyIJZg5JFizXFMw1g
 wtqOfnns7CM6Y03NkNcVJJpH+nhsmHkDoC55jPTK+R6z2jmFKqBfQx+5M
 Mux1aom0pMG1NBDZcT3YbV6HP571+9U75AOMOAY8NM0QISSuhzD5oLpwi
 xt1kwz2QRp3Y5HnBU5+YY6RGvOcZ3ZucYb7nbQ5BGRsLT/c5Bbj29mtjs
 aslJjC1IAPtWrpb/4nl8ydhUS2mDce2pf/TVNiNmKYoumo4b+l6ijZMyH Q==;
X-CSE-ConnectionGUID: zP4v1b5vQnKj3PtgWa9ZpA==
X-CSE-MsgGUID: NEM1KQndTJivNtXY5RvuZw==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="70457096"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="70457096"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 23:07:37 -0800
X-CSE-ConnectionGUID: OVvatKuBR2icLUfsjJ4RTw==
X-CSE-MsgGUID: fey1CPsqQyadWESl8I/okw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="199323766"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.248])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 23:07:35 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 0/3] Selective Fetch and async flip
Date: Thu,  4 Dec 2025 09:07:15 +0200
Message-ID: <20251204070718.1090778-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

This patch set contains fixes for Selective Fetch async flip
sequences. On async flip selective fetch is choosing full frame
update. Also subsequent flip/update is still using full frame update
to ensure plane with pending async flip is not taken in to selective
fetch/update.

v4:
  - rework if-else if to if-if
  - added comment updated
  - check crtc_state->async_flip_planes in
    psr2_sel_fetch_pipe_state_supported
v3:
  - rebase
  - fix old_crtc_state->pipe_srcsz_early_tpt
  - fix using intel_atomic_get_new_crtc_state
v2:
  - check also crtc_state->async_flip_planes in
    psr2_sel_fetch_plane_state_supported

Jouni Högander (3):
  drm/i915/psr: Set plane id bit in crtc_state->async_flip_planes for
    PSR
  drm/i915/psr: Perform full frame update on async flip
  drm/i915/psr: Allow async flip when Selective Fetch enabled

 drivers/gpu/drm/i915/display/intel_display.c |  8 --------
 drivers/gpu/drm/i915/display/intel_plane.c   | 10 ++++++----
 drivers/gpu/drm/i915/display/intel_psr.c     |  3 ++-
 3 files changed, 8 insertions(+), 13 deletions(-)

-- 
2.43.0

