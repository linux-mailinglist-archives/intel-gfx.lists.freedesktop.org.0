Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEEF788F03D
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 21:36:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E73B410FFEB;
	Wed, 27 Mar 2024 20:36:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fsBh3dY1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15D7E10FFEB
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Mar 2024 20:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711571782; x=1743107782;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=DveoASuNsLHluQFPlCxwrC5QKlA8EFAnoThUJXHSEvs=;
 b=fsBh3dY1Abv34zYKxhY92Dlv1QXrZTk51igyht6TbKvMFuwWPdH9Qq5n
 eca1HFiGD6KZt9fVx0sY9fXz9Tb7Xo0JR9JSp+k96qMEsfBNA+pxH81d0
 JmztlWkK4rBVemCM4qiuSF6uCuHNyZPTM5Yk8ehjsrZUG0Ny7NDxDJfZs
 956DvlxMoEjQp0iCdIXBtXePNe7vk5ehmTdw3AmuXSOJAlmSsdjtSE7pU
 xzQ/1ODn3lqcHp32zsAlj4HW2YFYZWOow48SMLbV+OUPUINWTQQqesbBL
 ezC4OY1AOIcjUwwlZJFLSY7fG78jpynBSlkvmC2nDyBTVFXMwQ5w4kBAa g==;
X-CSE-ConnectionGUID: 1mMV59iCTKqbp0/qr72nmg==
X-CSE-MsgGUID: 6gf+MP9sTo+Nz+veVvi1MQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="29181658"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="29181658"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 13:36:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="827785973"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="827785973"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 27 Mar 2024 13:36:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Mar 2024 22:36:19 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/2] drm/i915: Disable port sync when bigjoiner is used
Date: Wed, 27 Mar 2024 22:36:15 +0200
Message-ID: <20240327203616.20502-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240327203616.20502-1-ville.syrjala@linux.intel.com>
References: <20240327203616.20502-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The current modeset sequence can't handle port sync and bigjoiner
at the same time. Refuse port sync when bigjoiner is needed,
at least until we fix the modeset sequence.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index a3d3d4942eb1..fa6fe9ec8027 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4244,6 +4244,7 @@ static bool crtcs_port_sync_compatible(const struct intel_crtc_state *crtc_state
 				       const struct intel_crtc_state *crtc_state2)
 {
 	return crtc_state1->hw.active && crtc_state2->hw.active &&
+		!crtc_state1->bigjoiner_pipes && !crtc_state2->bigjoiner_pipes &&
 		crtc_state1->output_types == crtc_state2->output_types &&
 		crtc_state1->output_format == crtc_state2->output_format &&
 		crtc_state1->lane_count == crtc_state2->lane_count &&
-- 
2.43.2

